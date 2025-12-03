@interface PDFPageBackgroundManager
- (BOOL)_expectedQualityIndexForPageIndex:(unint64_t)index forQuality:(int *)quality;
- (BOOL)_findPageIndexNeedingUpdate:(unint64_t *)update forQuality:(int *)quality;
- (PDFPageBackgroundManager)initWithDelegate:(id)delegate andRenderingProperties:(id)properties;
- (id)backgroundImageForPageIndex:(unint64_t)index withFoundQuality:(int *)quality;
- (void)_cleanup;
- (void)_clear;
- (void)_drawPageImage:(unint64_t)image forQuality:(int)quality;
- (void)_shiftImagesAtIndex:(unint64_t)index downwards:(BOOL)downwards;
- (void)_update;
- (void)dealloc;
- (void)didInsertPageAtIndex:(unint64_t)index;
- (void)didRemovePageAtIndex:(unint64_t)index;
- (void)didSwapPageAtIndex:(unint64_t)index withIndex:(unint64_t)withIndex;
- (void)forceSetBackgroundImage:(id)image forPageIndex:(unint64_t)index;
- (void)forceUpdateActivePageIndex:(unint64_t)index withMaxDuration:(double)duration;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateActivePageIndex:(unint64_t)index;
- (void)willForceUpdate;
@end

@implementation PDFPageBackgroundManager

- (PDFPageBackgroundManager)initWithDelegate:(id)delegate andRenderingProperties:(id)properties
{
  delegateCopy = delegate;
  propertiesCopy = properties;
  v21.receiver = self;
  v21.super_class = PDFPageBackgroundManager;
  v8 = [(PDFPageBackgroundManager *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_documentDelegate, delegateCopy);
    objc_storeWeak(&v9->_renderingProperties, propertiesCopy);
    v9->_activePageIndex = -1;
    for (i = 32; i != 56; i += 8)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = *(&v9->super.isa + i);
      *(&v9->super.isa + i) = v11;
    }

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("PDFKit.PDFPageBackgroundManager", v13);
    workQueue = v9->_workQueue;
    v9->_workQueue = v14;

    *&v9->_isCancled = 0;
    v9->_willForceUpdate = 0;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [standardUserDefaults persistentDomainForName:@"com.apple.universalaccess"];

    v18 = [v17 objectForKey:@"reduceTransparency"];
    v19 = v18;
    if (v18 && ([v18 BOOLValue] & 1) != 0 || (objc_msgSend(propertiesCopy, "enableBackgroundImages") & 1) == 0)
    {
      v9->_isCancled = 1;
    }

    [propertiesCopy addObserver:v9 forKeyPath:@"darkMode" options:0 context:objc_opt_class()];
  }

  return v9;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  [WeakRetained removeObserver:self forKeyPath:@"darkMode" context:objc_opt_class()];

  self->_isCancled = 1;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = 0;
  selfCopy->_isWorking = 1;
  do
  {
    v6 = selfCopy->_backgroundImageCache[v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v6;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = objc_loadWeakRetained(&selfCopy->_documentDelegate);
          document = [v12 document];
          v14 = [document pageAtIndex:{objc_msgSend(v11, "unsignedIntegerValue")}];

          [v12 recieveBackgroundImage:0 atBackgroundQuality:v5 forPage:v14];
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    ++v5;
  }

  while (v5 != 3);
  objc_sync_exit(selfCopy);

  v15.receiver = selfCopy;
  v15.super_class = PDFPageBackgroundManager;
  [(PDFPageBackgroundManager *)&v15 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (objc_opt_class() == context)
  {
    objc_initWeak(&location, self);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PDFPageBackgroundManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E8151400;
    objc_copyWeak(&v16, &location);
    dispatch_async(workQueue, block);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PDFPageBackgroundManager;
    [(PDFPageBackgroundManager *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __75__PDFPageBackgroundManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _clear];
    WeakRetained = v2;
    if (v2[3] != -1)
    {
      [v2 forceUpdateActivePageIndex:0.0 withMaxDuration:?];
      WeakRetained = v2;
    }
  }
}

- (void)updateActivePageIndex:(unint64_t)index
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activePageIndex != index)
  {
    obj->_activePageIndex = index;
    [(PDFPageBackgroundManager *)obj _update];
  }

  objc_sync_exit(obj);
}

- (void)willForceUpdate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_willForceUpdate = 1;
  objc_sync_exit(obj);
}

- (void)forceUpdateActivePageIndex:(unint64_t)index withMaxDuration:(double)duration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isWorking = 1;
  objc_sync_exit(selfCopy);

  selfCopy->_activePageIndex = index;
  v7 = dispatch_group_create();
  objc_initWeak(&location, selfCopy);
  workQueue = selfCopy->_workQueue;
  block = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __71__PDFPageBackgroundManager_forceUpdateActivePageIndex_withMaxDuration___block_invoke;
  v14 = &unk_1E8151650;
  objc_copyWeak(v16, &location);
  v15 = selfCopy;
  v16[1] = index;
  dispatch_group_async(v7, workQueue, &block);
  if (duration > 0.0)
  {
    v9 = dispatch_time(0, (duration * 1000000000.0));
    if (dispatch_group_wait(v7, v9))
    {
      durationCopy = duration;
      NSLog(&cfstr_WarningUnableT.isa, index, durationCopy, block, v12, v13, v14);
    }
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __71__PDFPageBackgroundManager_forceUpdateActivePageIndex_withMaxDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _drawPageImage:*(a1 + 48) forQuality:0];
    *(v3 + 65) = 0;
    [v3 _update];
    WeakRetained = v3;
  }
}

- (id)backgroundImageForPageIndex:(unint64_t)index withFoundQuality:(int *)quality
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 0;
  while (1)
  {
    v8 = selfCopy->_backgroundImageCache[v7];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v10 = [(NSMutableDictionary *)v8 objectForKey:v9];

    if (v10)
    {
      break;
    }

    if (++v7 == 3)
    {
      goto LABEL_6;
    }
  }

  *quality = v7;
LABEL_6:
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)didInsertPageAtIndex:(unint64_t)index
{
  [(PDFPageBackgroundManager *)self _shiftImagesAtIndex:index downwards:1];

  [(PDFPageBackgroundManager *)self _update];
}

- (void)didRemovePageAtIndex:(unint64_t)index
{
  [(PDFPageBackgroundManager *)self _shiftImagesAtIndex:index + 1 downwards:0];

  [(PDFPageBackgroundManager *)self _update];
}

- (void)didSwapPageAtIndex:(unint64_t)index withIndex:(unint64_t)withIndex
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  for (i = 32; i != 56; i += 8)
  {
    v8 = *(&selfCopy->super.isa + i);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v10 = [v8 objectForKey:v9];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:withIndex];
    v12 = [v8 objectForKey:v11];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:withIndex];
    if (v10)
    {
      [v8 setObject:v10 forKey:v13];
    }

    else
    {
      [v8 removeObjectForKey:v13];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    if (v12)
    {
      [v8 setObject:v12 forKey:v14];
    }

    else
    {
      [v8 removeObjectForKey:v14];
    }
  }

  objc_sync_exit(selfCopy);

  [(PDFPageBackgroundManager *)selfCopy _update];
}

- (void)forceSetBackgroundImage:(id)image forPageIndex:(unint64_t)index
{
  imageCopy = image;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_backgroundImageCache[0];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)v7 setObject:imageCopy forKey:v8];

  objc_sync_exit(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_documentDelegate);
  document = [WeakRetained document];
  v11 = [document pageAtIndex:index];
  [WeakRetained recieveBackgroundImage:imageCopy atBackgroundQuality:0 forPage:v11];
}

- (void)_update
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isCancled && !selfCopy->_isWorking && !selfCopy->_willForceUpdate)
  {
    selfCopy->_isWorking = 1;
    v10 = 0;
    v9 = 0;
    if ([(PDFPageBackgroundManager *)selfCopy _findPageIndexNeedingUpdate:&v10 forQuality:&v9])
    {
      objc_initWeak(&location, selfCopy);
      workQueue = selfCopy->_workQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__PDFPageBackgroundManager__update__block_invoke;
      block[3] = &unk_1E8151678;
      objc_copyWeak(v6, &location);
      v7 = v9;
      v6[1] = v10;
      block[4] = selfCopy;
      dispatch_async(workQueue, block);
      objc_destroyWeak(v6);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PDFPageBackgroundManager *)selfCopy _cleanup];
      v4 = selfCopy;
      objc_sync_enter(v4);
      selfCopy->_isWorking = 0;
      objc_sync_exit(v4);
    }
  }

  objc_sync_exit(selfCopy);
}

void __35__PDFPageBackgroundManager__update__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _drawPageImage:*(a1 + 48) forQuality:*(a1 + 56)];
    [v4 _cleanup];
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4[65] = 0;
    objc_sync_exit(v3);

    [*(a1 + 32) _update];
    WeakRetained = v4;
  }
}

- (BOOL)_findPageIndexNeedingUpdate:(unint64_t *)update forQuality:(int *)quality
{
  if (self->_activePageIndex == -1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_documentDelegate);
  document = [WeakRetained document];

  activePageIndex = self->_activePageIndex;
  if (activePageIndex <= 1)
  {
    activePageIndex = 1;
  }

  v9 = (activePageIndex - 1);
  pageCount = [document pageCount];
  if (pageCount - 1 >= (LODWORD(self->_activePageIndex) + 1))
  {
    v11 = LODWORD(self->_activePageIndex) + 1;
  }

  else
  {
    v11 = pageCount - 1;
  }

  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); v9 <= v11; ++v9)
  {
    v23 = 0;
    if ([(PDFPageBackgroundManager *)self _expectedQualityIndexForPageIndex:v9 forQuality:&v23])
    {
      v13 = self->_backgroundImageCache[v23];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      v15 = [(NSMutableDictionary *)v13 objectForKey:v14];

      if (!v15)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
        [i addObject:v16];
      }
    }
  }

  v17 = [i count];
  v18 = v17 != 0;
  if (v17)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__PDFPageBackgroundManager__findPageIndexNeedingUpdate_forQuality___block_invoke;
    v22[3] = &unk_1E81516A0;
    v22[4] = self;
    [i sortUsingComparator:v22];
    firstObject = [i firstObject];
    *update = [firstObject unsignedIntegerValue];

    [(PDFPageBackgroundManager *)self _expectedQualityIndexForPageIndex:*update forQuality:quality];
  }

  return v18;
}

BOOL __67__PDFPageBackgroundManager__findPageIndexNeedingUpdate_forQuality___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 24);
  v5 = a3;
  v6 = v4 - [a2 intValue];
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = [v5 intValue];

  v9 = v4 - v8;
  if (v4 - v8 < 0)
  {
    v9 = v8 - v4;
  }

  return v7 > v9;
}

- (void)_drawPageImage:(unint64_t)image forQuality:(int)quality
{
  v4 = *&quality;
  v69[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_documentDelegate);
  document = [WeakRetained document];
  v9 = [document pageAtIndex:image];
  if (v9)
  {
    v65 = 0;
    v10 = [WeakRetained backgroundImageForPage:v9 withQuality:&v65];
    v11 = v65;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = selfCopy->_backgroundImageCache[v4];
    if (v10 && v11 == v4)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:image];
      [(NSMutableDictionary *)v13 setObject:v10 forKey:v14];

      objc_sync_exit(selfCopy);
    }

    else
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:image];
      v16 = [(NSMutableDictionary *)v13 objectForKey:v15];

      objc_sync_exit(selfCopy);
      if (v16)
      {
        [WeakRetained recieveBackgroundImage:v16 atBackgroundQuality:v4 forPage:v9];
        v10 = v16;
      }

      else
      {
        v63 = objc_loadWeakRetained(&selfCopy->_renderingProperties);
        displayBox = [v63 displayBox];
        [v9 boundsForBox:displayBox];
        v19 = v18;
        v21 = v20;
        v22 = kPDFPageBackgroundQualityFactors[v4];
        if ((PDFKitDeviceIsN61() & 1) != 0 || PDFKitDeviceIsN56())
        {
          v25 = 400.0;
        }

        else
        {
          v25 = 800.0;
        }

        v26 = v25;
        v27 = v22 * v19;
        v28 = v22 * v21;
        if (v22 * v19 > v25 || v28 > v25)
        {
          v23.n128_u64[0] = 0;
          v24.n128_u64[0] = 0;
          v29 = PDFRectMake(v23, v24, v22 * v19, v28);
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v36.n128_u64[0] = 0;
          v37.n128_u64[0] = 0;
          v38 = PDFRectMake(v36, v37, v26, v26);
          v42 = PDFScaleRectToRect(v29, v31, v33, v35, v38, v39, v40, v41);
          v27 = v27 * v42;
          v28 = v28 * v42;
        }

        MachSeconds = GetMachSeconds();
        v68[0] = @"PDFPageImageProperty_BackgroundColor";
        pageBackgroundColor = [v63 pageBackgroundColor];
        v69[0] = pageBackgroundColor;
        v68[1] = @"PDFPageImageProperty_DarkModeRendering";
        v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v63, "isDarkMode")}];
        v69[1] = v45;
        v68[2] = @"PDFPageImageProperty_WithRotation";
        v69[2] = MEMORY[0x1E695E110];
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];

        v10 = [v9 imageOfSize:displayBox forBox:v62 withOptions:{ceil(v27), ceil(v28)}];
        if (v10 && !selfCopy->_isCancled)
        {
          if (GetDefaultsWriteLogPerfTimes())
          {
            date = [MEMORY[0x1E695DF00] date];
            [date timeIntervalSince1970];
            v48 = v47;

            [v10 size];
            v50 = v49;
            [v10 size];
            v52 = v51;
            v53 = GetMachSeconds();
            NSLog(&cfstr_Pdfkit2Logperf_3.isa, image, v50, v52, (v48 * 1000.0), v53 - MachSeconds);
          }

          v54 = selfCopy;
          objc_sync_enter(v54);
          v55 = selfCopy->_backgroundImageCache[v4];
          v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:image];
          [(NSMutableDictionary *)v55 setObject:v10 forKey:v56];

          objc_sync_exit(v54);
          v64 = 0;
          v57 = [(PDFPageBackgroundManager *)v54 _expectedQualityIndexForPageIndex:image forQuality:&v64];
          if (v64 == v4 && v57)
          {
            [WeakRetained recieveBackgroundImage:v10 atBackgroundQuality:v4 forPage:v9];
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v66[0] = @"page";
          v66[1] = @"quality";
          v67[0] = v9;
          v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
          v67[1] = v60;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
          [defaultCenter postNotificationName:@"PDFPageBackgroundComplete" object:v54 userInfo:v61];
        }
      }
    }
  }
}

- (BOOL)_expectedQualityIndexForPageIndex:(unint64_t)index forQuality:(int *)quality
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_documentDelegate);
  v7 = 0;
  v8 = 0;
  v9 = 1;
  while (1)
  {
    activePageIndex = selfCopy->_activePageIndex;
    document = [WeakRetained document];
    pageCount = [document pageCount];

    if (((activePageIndex - v7) & ~((activePageIndex - v7) >> 31)) <= index)
    {
      v13 = pageCount - 1;
      if (pageCount - 1 >= v7 + LODWORD(selfCopy->_activePageIndex))
      {
        v13 = v7 + LODWORD(selfCopy->_activePageIndex);
      }

      if (v13 >= index)
      {
        break;
      }
    }

    v9 = v8 < 2;
    v7 = kPDFPageBackgroundQualtyRanges[++v8];
    if (v8 == 2)
    {
      v9 = 0;
      goto LABEL_9;
    }
  }

  *quality = v8;
LABEL_9:

  objc_sync_exit(selfCopy);
  return v9;
}

- (void)_cleanup
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activePageIndex != -1)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_documentDelegate);
    v36 = selfCopy;
    document = [WeakRetained document];
    v4 = document;
    if (SLODWORD(selfCopy->_activePageIndex) <= 1)
    {
      activePageIndex = 1;
    }

    else
    {
      activePageIndex = selfCopy->_activePageIndex;
    }

    pageCount = [document pageCount];
    v7 = 0;
    v8 = (activePageIndex - 1);
    if (pageCount - 1 >= (LODWORD(selfCopy->_activePageIndex) + 1))
    {
      v9 = LODWORD(selfCopy->_activePageIndex) + 1;
    }

    else
    {
      v9 = pageCount - 1;
    }

    backgroundImageCache = selfCopy->_backgroundImageCache;
    v38 = v9;
    do
    {
      v10 = backgroundImageCache[v7];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v13)
      {
        v14 = *v43;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v42 + 1) + 8 * i);
            if ([v16 intValue] < v8 || v38 < objc_msgSend(v16, "intValue"))
            {
              v17 = [v4 pageAtIndex:{objc_msgSend(v16, "intValue")}];
              [WeakRetained recieveBackgroundImage:0 atBackgroundQuality:v7 forPage:v17];
              [v11 addObject:v16];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v13);
      }

      [v12 removeObjectsForKeys:v11];
      ++v7;
    }

    while (v7 != 3);
    if (v38 >= v8)
    {
      while (1)
      {
        v41 = 0;
        if ([(PDFPageBackgroundManager *)v36 _expectedQualityIndexForPageIndex:v8 forQuality:&v41])
        {
          break;
        }

LABEL_37:
        if (++v8 > v38)
        {
          goto LABEL_38;
        }
      }

      v18 = [v4 pageAtIndex:v8];
      v40 = 0;
      v19 = [WeakRetained backgroundImageForPage:v18 withQuality:&v40];
      v20 = v19;
      if (v19)
      {
        if (v41 == v40)
        {
          v21 = v19;
LABEL_36:

          goto LABEL_37;
        }

        v22 = backgroundImageCache[v41];
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        v21 = [v22 objectForKey:v23];

        if (v21)
        {
          [WeakRetained recieveBackgroundImage:v21 atBackgroundQuality:v41 forPage:v18];
        }

        v24 = backgroundImageCache[v40];
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [v24 removeObjectForKey:v25];

        if (v21)
        {
          goto LABEL_36;
        }
      }

      if (v41)
      {
        if (v41 == 1)
        {
          v30 = v36->_backgroundImageCache[2];
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          [(NSMutableDictionary *)v30 removeObjectForKey:v31];

          v32 = *backgroundImageCache;
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          [v32 removeObjectForKey:v29];
        }

        else
        {
          if (v41 != 2)
          {
LABEL_35:
            v21 = 0;
            goto LABEL_36;
          }

          v26 = v36->_backgroundImageCache[1];
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          [(NSMutableDictionary *)v26 removeObjectForKey:v27];

          v28 = *backgroundImageCache;
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          [v28 removeObjectForKey:v29];
        }
      }

      else
      {
        v33 = v36->_backgroundImageCache[2];
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [(NSMutableDictionary *)v33 removeObjectForKey:v34];

        v35 = v36->_backgroundImageCache[1];
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [(NSMutableDictionary *)v35 removeObjectForKey:v29];
      }

      goto LABEL_35;
    }

LABEL_38:

    selfCopy = v36;
  }

  objc_sync_exit(selfCopy);
}

- (void)_clear
{
  v2 = 0;
  backgroundImageCache = self->_backgroundImageCache;
  do
  {
    [(NSMutableDictionary *)backgroundImageCache[v2++] removeAllObjects];
  }

  while (v2 != 3);
}

- (void)_shiftImagesAtIndex:(unint64_t)index downwards:(BOOL)downwards
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = 0;
  obj = selfCopy;
  backgroundImageCache = selfCopy->_backgroundImageCache;
  do
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = backgroundImageCache[v6];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          intValue = [v13 intValue];
          v15 = [(NSMutableDictionary *)v9 objectForKey:v13];
          if (intValue < index)
          {
            v16 = intValue;
          }

          else
          {
            v16 = intValue + 1;
          }

          v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
          [(NSMutableDictionary *)v7 setObject:v15 forKey:v17];
        }

        v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v18 = backgroundImageCache[v6];
    backgroundImageCache[v6] = v7;
    v19 = v7;

    ++v6;
  }

  while (v6 != 3);
  objc_sync_exit(obj);
}

@end
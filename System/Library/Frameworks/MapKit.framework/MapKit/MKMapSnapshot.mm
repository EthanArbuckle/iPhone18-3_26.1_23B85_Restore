@interface MKMapSnapshot
+ (id)createSnapshotWithOptions:(id)a3 timeoutInSeconds:(int64_t)a4;
- (CGPoint)pointForCoordinate:(CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)_coordinateForPoint:(CGPoint)a3;
- (MKMapSnapshot)snapshotWithAnnotationView:(id)a3 atCoordinate:(CLLocationCoordinate2D)a4;
- (MKMapSnapshot)snapshotWithAnnotationView:(id)a3 atPoint:(CGPoint)a4;
- (id)_initWithSnapshot:(id)a3 traitCollection:(id)a4;
- (void)_compositeOnImages:(id)a3 drawQueue:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)_displayAppleLogoForMapType:(unint64_t)a3 callbackQueue:(id)a4 completionHandler:(id)a5;
- (void)_prepareForRenderWithAnnotationViews:(id)a3 workQueue:(id)a4 completionHandler:(id)a5;
@end

@implementation MKMapSnapshot

- (MKMapSnapshot)snapshotWithAnnotationView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_new();
    [v8 addSubview:v7];
  }

  v9 = [(MKMapSnapshot *)self image];
  [v9 size];
  v11 = v10;
  v13 = v12;
  v14 = [(MKMapSnapshot *)self image];
  [v14 scale];
  v16 = v15;
  v29.width = v11;
  v29.height = v13;
  UIGraphicsBeginImageContextWithOptions(v29, 0, v16);

  v17 = [(MKMapSnapshot *)self image];
  [v17 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  CurrentContext = UIGraphicsGetCurrentContext();
  UIGraphicsPushContext(CurrentContext);
  [v7 centerOffset];
  v20 = v19;
  v22 = v21;
  [v7 bounds];
  v23 = v20 + x - CGRectGetWidth(v30) * 0.5;
  [v7 bounds];
  Height = CGRectGetHeight(v31);
  CGContextTranslateCTM(CurrentContext, v23, v22 + y - Height * 0.5);
  v25 = [v7 layer];
  [v25 renderInContext:CurrentContext];

  UIGraphicsPopContext();
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v26;
}

- (MKMapSnapshot)snapshotWithAnnotationView:(id)a3 atCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  [(MKMapSnapshot *)self pointForCoordinate:latitude, longitude];
  v8 = [(MKMapSnapshot *)self snapshotWithAnnotationView:v7 atPoint:?];

  return v8;
}

+ (id)createSnapshotWithOptions:(id)a3 timeoutInSeconds:(int64_t)a4
{
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__33070;
  v23 = __Block_byref_object_dispose__33071;
  v24 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [[MKMapSnapshotter alloc] initWithOptions:v5];
  v8 = dispatch_get_global_queue(25, 0);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __81__MKMapSnapshot_MKMapSnapshotExtras__createSnapshotWithOptions_timeoutInSeconds___block_invoke;
  v16 = &unk_1E76CA648;
  v18 = &v19;
  v9 = v6;
  v17 = v9;
  [(MKMapSnapshotter *)v7 startWithQueue:v8 completionHandler:&v13];

  v10 = dispatch_time(0, 1000000000 * a4);
  if (dispatch_semaphore_wait(v9, v10))
  {
    [(MKMapSnapshotter *)v7 cancel:v13];
  }

  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __81__MKMapSnapshot_MKMapSnapshotExtras__createSnapshotWithOptions_timeoutInSeconds___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (CLLocationCoordinate2D)_coordinateForPoint:(CGPoint)a3
{
  [(VKMapSnapshot *)self->_snapshot coordinateForPoint:a3.x, a3.y];
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CGPoint)pointForCoordinate:(CLLocationCoordinate2D)coordinate
{
  [(VKMapSnapshot *)self->_snapshot pointForCoordinate:coordinate.latitude, coordinate.longitude];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_initWithSnapshot:(id)a3 traitCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v50.receiver = self;
  v50.super_class = MKMapSnapshot;
  v9 = [(MKMapSnapshot *)&v50 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    objc_storeStrong(&v9->_snapshot, a3);
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = [MEMORY[0x1E695DF70] array];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __51__MKMapSnapshot__initWithSnapshot_traitCollection___block_invoke;
    v46[3] = &unk_1E76CD590;
    v47 = v7;
    v15 = v13;
    v48 = v15;
    v16 = v14;
    v49 = v16;
    [v47 enumerateImagesWithBlock:v46];
    objc_storeStrong(p_isa + 4, v13);
    objc_storeStrong(p_isa + 5, v14);
    if ([p_isa[5] count] >= 2 && (v17 = objc_msgSend(p_isa[5], "count"), v17 == objc_msgSend(p_isa[4], "count")))
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
      if ([p_isa[5] count])
      {
        v19 = 0;
        do
        {
          v20 = [p_isa[5] objectAtIndexedSubscript:v19];
          v21 = [p_isa[4] objectAtIndexedSubscript:v19];
          [v18 registerImage:v20 withTraitCollection:v21];

          ++v19;
        }

        while (v19 < [p_isa[5] count]);
      }

      v22 = [v18 imageWithTraitCollection:v8];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
        v25 = p_isa[2];
        p_isa[2] = v24;
      }

      else
      {
        v25 = [p_isa[4] firstObject];
        v27 = [v18 imageWithTraitCollection:v25];
        v28 = p_isa[2];
        p_isa[2] = v27;
      }
    }

    else
    {
      v26 = [p_isa[5] firstObject];
      v18 = p_isa[2];
      p_isa[2] = v26;
    }

    v29 = p_isa[2];
    if (v29)
    {
      [v29 scale];
      v31 = v30;
      [v8 displayScale];
      if (vabdd_f64(v31, v32) >= 0.000001)
      {
        [p_isa[2] size];
        v34 = v33;
        v36 = v35;
        [v8 displayScale];
        v38 = v37;
        v51.width = v34;
        v51.height = v36;
        UIGraphicsBeginImageContextWithOptions(v51, 1, v38);
        v39 = p_isa[2];
        [v39 size];
        v41 = v40;
        [p_isa[2] size];
        [v39 drawInRect:{0.0, 0.0, v41, v42}];
        v43 = UIGraphicsGetImageFromCurrentImageContext();
        v44 = p_isa[2];
        p_isa[2] = v43;

        UIGraphicsEndImageContext();
      }

      objc_storeStrong(p_isa + 3, a4);
      v12 = p_isa;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void __51__MKMapSnapshot__initWithSnapshot_traitCollection___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
  [a1[4] scale];
  v7 = [v6 initWithCGImage:a3 scale:0 orientation:?];
  if (v7)
  {
    v8 = MEMORY[0x1E69DD1B8];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __51__MKMapSnapshot__initWithSnapshot_traitCollection___block_invoke_2;
    v13 = &unk_1E76CD568;
    v14 = a1[4];
    v16 = WORD2(a2);
    v15 = a2;
    v9 = [v8 traitCollectionWithTraits:&v10];
    [a1[5] addObject:{v9, v10, v11, v12, v13}];
    [a1[6] addObject:v7];
  }
}

void __51__MKMapSnapshot__initWithSnapshot_traitCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 scale];
  [v5 setDisplayScale:?];
  if (*(a1 + 40) == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v5 setUserInterfaceStyle:v4];
}

- (void)_displayAppleLogoForMapType:(unint64_t)a3 callbackQueue:(id)a4 completionHandler:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__MKMapSnapshot__displayAppleLogoForMapType_callbackQueue_completionHandler___block_invoke;
  v5[3] = &__block_descriptor_40_e39_v40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v5[4] = a3;
  [(MKMapSnapshot *)self _compositeOnImages:v5 drawQueue:0 callbackQueue:a4 completionHandler:a5];
}

void __77__MKMapSnapshot__displayAppleLogoForMapType_callbackQueue_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v8 = [v7 userInterfaceStyle] == 2;

  v14 = [MKAppleLogoImageView logoForMapType:*(a1 + 32) forDarkMode:v8];
  [v14 size];
  v10 = a5 - (v9 + 10.0);
  [v14 size];
  v12 = v11;
  [v14 size];
  [v14 drawInRect:{14.0, v10, v12, v13}];
}

- (void)_prepareForRenderWithAnnotationViews:(id)a3 workQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__MKMapSnapshot__prepareForRenderWithAnnotationViews_workQueue_completionHandler___block_invoke;
    v11[3] = &unk_1E76CD520;
    v12 = v8;
    v13 = self;
    [(MKMapSnapshot *)self _compositeOnImages:v11 drawQueue:MEMORY[0x1E69E96A0] callbackQueue:v9 completionHandler:v10];

    v10 = v12;
  }

  else
  {
    v10[2](v10);
  }
}

void __82__MKMapSnapshot__prepareForRenderWithAnnotationViews_workQueue_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{a2, a3, a4, a5}];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [v10 setBackgroundColor:v11];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        [v10 addSubview:{v17, v19}];
        v18 = *(a1 + 40);
        [v17 coordinate];
        [v18 pointForCoordinate:?];
        [v17 _updateAnchorPosition:1 alignToPixels:?];
        [v17 _updateFromMap];
        [v17 _didUpdatePosition];
        [v17 setNeedsLayout];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [v10 layoutBelowIfNeeded];
  [v10 drawViewHierarchyInRect:1 afterScreenUpdates:{a2, a3, a4, a5}];
}

- (void)_compositeOnImages:(id)a3 drawQueue:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v52 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (![(NSArray *)self->_allTraitCollections count])
  {
LABEL_23:
    dispatch_async(v11, v12);
    goto LABEL_20;
  }

  v13 = [(NSArray *)self->_allTraitCollections count];
  if (v13 != [(NSArray *)self->_allImages count])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v76.a) = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _allTraitCollections.count == _allImages.count", &v76, 2u);
    }

    goto LABEL_23;
  }

  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_allImages, "count")}];
  if ([(NSArray *)self->_allImages count]< 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
  }

  v14 = dispatch_group_create();
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_DEFAULT, 0);

  if (v10 && [(NSArray *)self->_allTraitCollections count]> 1)
  {
    v17 = dispatch_queue_create_with_target_V2(0, v16, v10);
  }

  else
  {
    v17 = v10;
  }

  v18 = v17;
  queue = v11;
  v48 = v10;
  v45 = v16;
  v46 = v12;
  if ([(NSArray *)self->_allTraitCollections count]<= 1)
  {
    v19 = v11;
  }

  else
  {
    v19 = dispatch_queue_create_with_target_V2(0, v16, v11);
  }

  v49 = v19;
  if ([(NSArray *)self->_allTraitCollections count])
  {
    v20 = 0;
    do
    {
      dispatch_group_enter(v14);
      v21 = [(NSArray *)self->_allTraitCollections objectAtIndexedSubscript:v20];
      v22 = [(NSArray *)self->_allImages objectAtIndexedSubscript:v20];
      [v22 size];
      v24 = v23;
      [v22 size];
      v26 = v25;
      [v21 displayScale];
      v28 = v27;
      v29 = v24 * v27;
      v30 = (v24 * v27);
      v31 = v26 * v27;
      v32 = (v26 * v27);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      v35 = CGBitmapContextCreate(0, v30, v32, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2006u);
      v36 = v29;
      v37 = v31;
      v77.origin.x = 0.0;
      v77.origin.y = 0.0;
      v77.size.width = v36;
      v77.size.height = v37;
      CGContextClearRect(v35, v77);
      v38 = [v22 CGImage];
      v78.origin.x = 0.0;
      v78.origin.y = 0.0;
      v78.size.width = v36;
      v78.size.height = v37;
      CGContextDrawImage(v35, v78, v38);
      CGContextTranslateCTM(v35, 0.0, v37);
      CGContextScaleCTM(v35, v28, -v28);
      CGContextGetCTM(&v76, v35);
      CGContextSetBaseCTM();
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke;
      v68[3] = &unk_1E76CD480;
      v71 = v35;
      v39 = v21;
      v69 = v39;
      v70 = v52;
      v72 = 0;
      v73 = 0;
      v74 = v24;
      v75 = v26;
      v40 = MEMORY[0x1A58E9F30](v68);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_3;
      v61[3] = &unk_1E76CD4A8;
      v66 = v35;
      v41 = v39;
      v62 = v41;
      v67 = DeviceRGB;
      v63 = v50;
      v64 = v51;
      v65 = v14;
      v42 = MEMORY[0x1A58E9F30](v61);
      if (v18)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_4;
        block[3] = &unk_1E76CD4F8;
        v59 = v40;
        v58 = v49;
        v60 = v42;
        dispatch_async(v18, block);
      }

      else
      {
        v40[2](v40);
        v42[2](v42);
      }

      ++v20;
    }

    while (v20 < [(NSArray *)self->_allTraitCollections count]);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_6;
  v53[3] = &unk_1E76CD8C8;
  v53[4] = self;
  v54 = v51;
  v55 = v50;
  v12 = v46;
  v56 = v46;
  v43 = v50;
  v44 = v51;
  v11 = queue;
  dispatch_group_notify(v14, queue, v53);

  v10 = v48;
LABEL_20:
}

uint64_t __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  if ([*(*(a1 + 32) + 40) count] < 2)
  {
    v7 = [*(*(a1 + 32) + 40) firstObject];
    v8 = *(a1 + 32);
    v3 = *(v8 + 16);
    *(v8 + 16) = v7;
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [*(*(a1 + 32) + 32) firstObject];
    v4 = [v2 imageWithTraitCollection:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }

  v9 = *(*(a1 + 56) + 16);

  return v9();
}

void __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke(uint64_t a1)
{
  UIGraphicsPushContext(*(a1 + 48));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_2;
  v4[3] = &unk_1E76CD458;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = *(a1 + 72);
  v6 = *(a1 + 56);
  v7 = v3;
  [v2 performAsCurrentTraitCollection:v4];
  UIGraphicsPopContext();
}

void __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  Image = CGBitmapContextCreateImage(*(a1 + 64));
  v3 = MEMORY[0x1E69DCAB8];
  [*(a1 + 32) displayScale];
  v4 = [v3 imageWithCGImage:Image scale:0 orientation:?];
  CGImageRelease(Image);
  CGColorSpaceRelease(*(a1 + 72));
  CGContextRelease(*(a1 + 64));
  [*(a1 + 40) registerImage:v4 withTraitCollection:*(a1 + 32)];
  [*(a1 + 48) addObject:v4];
  dispatch_group_leave(*(a1 + 56));
}

void __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MKMapSnapshot__compositeOnImages_drawQueue_callbackQueue_completionHandler___block_invoke_5;
  block[3] = &unk_1E76CD4D0;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
}

@end
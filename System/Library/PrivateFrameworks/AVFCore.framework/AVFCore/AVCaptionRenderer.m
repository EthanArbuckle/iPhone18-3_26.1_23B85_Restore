@interface AVCaptionRenderer
- (AVCaptionRenderer)init;
- (BOOL)setupFigCaptionClient;
- (BOOL)synchronizeWithCurrentAccessibilityPreferencesWithCompletionHandler:(id)a3;
- (CGRect)bounds;
- (NSArray)captionSceneChangesInRange:(CMTimeRange *)consideredTimeRange;
- (NSArray)captions;
- (id)description;
- (int)buildFigCaptionArrayFromAVCaptionArrayAndSubmitToRenderSession;
- (void)dealloc;
- (void)setCaptions:(NSArray *)captions;
- (void)setDefaultStyles:(id)a3;
- (void)teardownFigCaptionClient;
@end

@implementation AVCaptionRenderer

- (AVCaptionRenderer)init
{
  v7.receiver = self;
  v7.super_class = AVCaptionRenderer;
  v2 = [(AVCaptionRenderer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptionRendererInternal);
    v2->_internal = v3;
    if (!v3 || (v2->_internal->_captions = objc_alloc_init(MEMORY[0x1E695DEC8]), internal = v2->_internal, v5 = *(MEMORY[0x1E695F050] + 16), internal->_bounds.origin = *MEMORY[0x1E695F050], internal->_bounds.size = v5, v2->_internal->_sortedCaptions = 0, v2->_internal->_defaultStyles = 0, ![(AVCaptionRenderer *)v2 setupFigCaptionClient]))
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    [(AVCaptionRenderer *)self teardownFigCaptionClient];

    internal = self->_internal;
  }

  v4.receiver = self;
  v4.super_class = AVCaptionRenderer;
  [(AVCaptionRenderer *)&v4 dealloc];
}

- (NSArray)captions
{
  v2 = self->_internal->_captions;

  return v2;
}

- (void)setCaptions:(NSArray *)captions
{
  if (!captions)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "captions != nil"), 0}];
    objc_exception_throw(v11);
  }

  if (self->_internal->_captions != captions)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:captions copyItems:1];

    self->_internal->_captions = v9;
    sortedCaptions = self->_internal->_sortedCaptions;
    if (sortedCaptions)
    {

      self->_internal->_sortedCaptions = 0;
    }

    [(AVCaptionRenderer *)self teardownFigCaptionClient];

    [(AVCaptionRenderer *)self setupFigCaptionClient];
  }
}

- (CGRect)bounds
{
  internal = self->_internal;
  x = internal->_bounds.origin.x;
  y = internal->_bounds.origin.y;
  width = internal->_bounds.size.width;
  height = internal->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)synchronizeWithCurrentAccessibilityPreferencesWithCompletionHandler:(id)a3
{
  if (self->_internal->_captionClient)
  {
    v4 = FigCaptionClientSynchronizeDefaults();
    if (v4)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
      v6 = 0;
      if (!a3)
      {
        return v6;
      }

      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = 1;
  if (a3)
  {
LABEL_6:
    (*(a3 + 2))(a3, v5);
  }

  return v6;
}

- (void)setDefaultStyles:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    internal = self->_internal;
    p_internal = &self->_internal;
    internal->_defaultStyles = a3;
    v7 = [a3 textMarkupAttributes];
  }

  else
  {
    v7 = 0;
    p_internal = &self->_internal;
    self->_internal->_defaultStyles = 0;
  }

  captionClient = (*p_internal)->_captionClient;

  MEMORY[0x1EEDCD298](captionClient, v7);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, captions = %@>", NSStringFromClass(v4), self, self->_internal->_captions];
}

- (NSArray)captionSceneChangesInRange:(CMTimeRange *)consideredTimeRange
{
  captions = self->_internal->_captions;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  if ([(NSArray *)captions count])
  {
    v7 = objc_alloc_init(AVCaptionGrouper);
    sortedCaptions = self->_internal->_sortedCaptions;
    if (!sortedCaptions)
    {
      sortedCaptions = [(NSArray *)captions sortedArrayUsingComparator:&__block_literal_global_25];
      self->_internal->_sortedCaptions = sortedCaptions;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v9 = *&consideredTimeRange->start.epoch;
    v16 = *&consideredTimeRange->start.value;
    v17 = v9;
    v15[2] = __48__AVCaptionRenderer_captionSceneChangesInRange___block_invoke_2;
    v15[3] = &unk_1E7464FB0;
    v18 = *&consideredTimeRange->duration.timescale;
    v15[4] = v7;
    [(NSArray *)sortedCaptions enumerateObjectsUsingBlock:v15];
    v13 = *MEMORY[0x1E6960C88];
    v14 = *(MEMORY[0x1E6960C88] + 16);
    v10 = [(AVCaptionGrouper *)v7 flushAddedCaptionsIntoGroupsUpToTime:&v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__AVCaptionRenderer_captionSceneChangesInRange___block_invoke_3;
    v12[3] = &unk_1E74650C8;
    v12[4] = v6;
    [(NSArray *)v10 enumerateObjectsUsingBlock:v12];
  }

  return v6;
}

uint64_t __48__AVCaptionRenderer_captionSceneChangesInRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    [a2 timeRange];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  *&time1.value = v8;
  time1.epoch = v9;
  if (a3)
  {
    [a3 timeRange];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  time2 = v6;
  v4 = CMTimeCompare(&time1, &time2);
  if (v4 < 0)
  {
    return -1;
  }

  else
  {
    return v4 != 0;
  }
}

uint64_t __48__AVCaptionRenderer_captionSceneChangesInRange___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (a2)
  {
    [a2 timeRange];
  }

  *&v6.start.value = *(a1 + 40);
  v6.start.epoch = *(a1 + 56);
  *&time2.value = v8;
  time2.epoch = v9;
  result = CMTimeCompare(&v6.start, &time2);
  if (result <= 0)
  {
    v5 = *(a1 + 56);
    *&v6.start.value = *(a1 + 40);
    *&v6.start.epoch = v5;
    *&v6.duration.timescale = *(a1 + 72);
    CMTimeRangeGetEnd(&time2, &v6);
    *&v6.start.value = v8;
    v6.start.epoch = v9;
    result = CMTimeCompare(&v6.start, &time2);
    if ((result & 0x80000000) != 0)
    {
      return [*(a1 + 32) addCaption:a2];
    }
  }

  return result;
}

void __48__AVCaptionRenderer_captionSceneChangesInRange___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a2 captions] && objc_msgSend(objc_msgSend(a2, "captions"), "count"))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [a2 captions];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 region];
          v11 = [v9 animation];
          if (v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = v10 == 0;
          }

          if (v12)
          {
            if (v11)
            {
              goto LABEL_20;
            }
          }

          else if ([v10 scroll])
          {
LABEL_20:
            v14 = 1;
            v13 = 1;
            goto LABEL_22;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v13 = 0;
        v14 = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

LABEL_22:
  v15 = [AVCaptionRendererScene alloc];
  if (a2)
  {
    [a2 timeRange];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v16 = [(AVCaptionRendererScene *)v15 initWithTimeRange:v17 hasActiveCaptions:v14 needsPeriodicRefresh:v13];
  [*(a1 + 32) addObject:v16];
}

- (int)buildFigCaptionArrayFromAVCaptionArrayAndSubmitToRenderSession
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v4 = Mutable;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  captions = self->_internal->_captions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AVCaptionRenderer_buildFigCaptionArrayFromAVCaptionArrayAndSubmitToRenderSession__block_invoke;
  v8[3] = &unk_1E74650F0;
  v8[4] = &v9;
  v8[5] = v4;
  [(NSArray *)captions enumerateObjectsUsingBlock:v8];
  v6 = *(v10 + 6);
  if (!v6)
  {
    v6 = FigCaptionClientSetCaptionArray();
  }

  _Block_object_dispose(&v9, 8);
  CFRelease(v4);
  return v6;
}

void __83__AVCaptionRenderer_buildFigCaptionArrayFromAVCaptionArrayAndSubmitToRenderSession__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 _figCaptionData];
  if (a2)
  {
    [a2 timeRange];
  }

  v7 = FigCaptionCreate();
  if (v7)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = v7;
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), 0);
  }
}

- (BOOL)setupFigCaptionClient
{
  if (FigCaptionClientCreate() || FigCaptionClientSetCGContextDevice() || (CMClockGetHostTimeClock(), FigCaptionClientSetMasterClock()) || ([(AVCaptionRenderer *)self buildFigCaptionArrayFromAVCaptionArrayAndSubmitToRenderSession], FigCaptionClientSetBounds()) || FigCaptionClientSetCaptionCacheRange() || FigCaptionClientStart())
  {
    captionClient = self->_internal->_captionClient;
    if (captionClient)
    {
      CFRelease(captionClient);
      LOBYTE(captionClient) = 0;
      self->_internal->_captionClient = 0;
    }
  }

  else
  {
    LOBYTE(captionClient) = 1;
  }

  return captionClient;
}

- (void)teardownFigCaptionClient
{
  if (self->_internal->_captionClient)
  {
    FigCaptionClientStop();
    captionClient = self->_internal->_captionClient;
    if (captionClient)
    {
      CFRelease(captionClient);
      self->_internal->_captionClient = 0;
    }
  }
}

@end
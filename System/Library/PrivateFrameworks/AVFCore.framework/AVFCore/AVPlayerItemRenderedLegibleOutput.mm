@interface AVPlayerItemRenderedLegibleOutput
- (AVPlayerItemRenderedLegibleOutput)initWithDependencyFactory:(id)a3 videoDisplaySize:(CGSize)a4;
- (AVPlayerItemRenderedLegibleOutput)initWithVideoDisplaySize:(CGSize)a3;
- (BOOL)_attachToPlayerItem:(id)a3;
- (BOOL)suppressesPlayerRendering;
- (CGSize)videoDisplaySize;
- (double)advanceIntervalForDelegateInvocation;
- (id)_figRenderedLegibleOutputsDictionaryOptions;
- (void)_collectUncollectables;
- (void)_detachFromPlayerItem;
- (void)_pushRenderedCaptionImages:(id)a3 atItemTime:(id *)a4;
- (void)_signalFlush;
- (void)dealloc;
- (void)setAdvanceIntervalForDelegateInvocation:(double)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setSuppressesPlayerRendering:(BOOL)a3;
- (void)setVideoDisplaySize:(CGSize)a3;
@end

@implementation AVPlayerItemRenderedLegibleOutput

- (AVPlayerItemRenderedLegibleOutput)initWithVideoDisplaySize:(CGSize)a3
{
  if (a3.width == 0.0 || (height = a3.height, a3.height == 0.0))
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"AVPlayerItemRenderedLegibleOutput shall be initialized with a valid videoDisplaySize having non-zero height and width", v3, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v13);
  }

  width = a3.width;
  v11 = objc_alloc_init(AVPlayerItemRenderedLegibleOutputRealDependencyFactory);

  return [(AVPlayerItemRenderedLegibleOutput *)self initWithDependencyFactory:v11 videoDisplaySize:width, height];
}

- (AVPlayerItemRenderedLegibleOutput)initWithDependencyFactory:(id)a3 videoDisplaySize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v9.receiver = self;
  v9.super_class = AVPlayerItemRenderedLegibleOutput;
  v7 = [(AVPlayerItemOutput *)&v9 init];
  if (v7)
  {
    v7->_delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
    v7->_dependencyFactory = a3;
    v7->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayeritemrenderedlegibleoutput.ivars");
    v7->_videoDisplaySize.width = width;
    v7->_videoDisplaySize.height = height;
    v7->_suppressesPlayerRendering = 0;
  }

  return v7;
}

- (void)_collectUncollectables
{
  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }
}

- (void)dealloc
{
  [(AVPlayerItemRenderedLegibleOutput *)self _collectUncollectables];
  v3.receiver = self;
  v3.super_class = AVPlayerItemRenderedLegibleOutput;
  [(AVPlayerItemOutput *)&v3 dealloc];
}

- (void)_pushRenderedCaptionImages:(id)a3 atItemTime:(id *)a4
{
  delegateStorage = self->_delegateStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AVPlayerItemRenderedLegibleOutput__pushRenderedCaptionImages_atItemTime___block_invoke;
  v5[3] = &unk_1E74646E0;
  v5[4] = self;
  v5[5] = a3;
  v6 = *a4;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v5];
}

uint64_t __75__AVPlayerItemRenderedLegibleOutput__pushRenderedCaptionImages_atItemTime___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    return [a2 renderedLegibleOutput:v5 didOutputRenderedCaptionImages:v6 forItemTime:&v7];
  }

  return result;
}

- (void)_signalFlush
{
  delegateStorage = self->_delegateStorage;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AVPlayerItemRenderedLegibleOutput__signalFlush__block_invoke;
  v3[3] = &unk_1E7463C50;
  v3[4] = self;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
}

uint64_t __49__AVPlayerItemRenderedLegibleOutput__signalFlush__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 outputSequenceWasFlushed:v5];
  }

  return result;
}

- (BOOL)_attachToPlayerItem:(id)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!a3)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "playerItem != nil"), 0}];
    objc_exception_throw(v13);
  }

  v9 = [(AVPlayerItemRenderedLegibleOutputDependencyFactory *)self->_dependencyFactory playerItemOutputHostForPlayerItem:?];
  ivarAccessQueue = self->_ivarAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__AVPlayerItemRenderedLegibleOutput__attachToPlayerItem___block_invoke;
  v14[3] = &unk_1E7461068;
  v14[5] = v9;
  v14[6] = &v15;
  v14[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return (v11 & 1) == 0;
}

id __57__AVPlayerItemRenderedLegibleOutput__attachToPlayerItem___block_invoke(id result)
{
  *(*(*(result + 6) + 8) + 24) = *(*(result + 4) + 40) != 0;
  if ((*(*(*(result + 6) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 5) _weakReference];
    *(v1[4] + 40) = result;
  }

  return result;
}

- (void)_detachFromPlayerItem
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__AVPlayerItemRenderedLegibleOutput__detachFromPlayerItem__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (id)_figRenderedLegibleOutputsDictionaryOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(AVPlayerItemRenderedLegibleOutput *)self advanceIntervalForDelegateInvocation];
  v5 = v4;
  [(AVPlayerItemRenderedLegibleOutput *)self videoDisplaySize];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v9);
  if (v5 != 0.0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [v3 setObject:v7 forKey:*MEMORY[0x1E6972C38]];
  }

  [v3 setObject:DictionaryRepresentation forKey:*MEMORY[0x1E6972C40]];
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return v3;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  if (a3 | a4 && (!a3 || !a4))
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, "(newDelegate == nil && newDelegateQueue == NULL) || (newDelegate != nil && newDelegateQueue != NULL)"), 0}];
    objc_exception_throw(v10);
  }

  delegateStorage = self->_delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- (double)advanceIntervalForDelegateInvocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__AVPlayerItemRenderedLegibleOutput_advanceIntervalForDelegateInvocation__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __73__AVPlayerItemRenderedLegibleOutput_advanceIntervalForDelegateInvocation__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAdvanceIntervalForDelegateInvocation:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__20;
  v9 = __Block_byref_object_dispose__20;
  v10 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__AVPlayerItemRenderedLegibleOutput_setAdvanceIntervalForDelegateInvocation___block_invoke;
  v4[3] = &unk_1E7463C28;
  *&v4[7] = a3;
  v4[4] = self;
  v4[5] = &v11;
  v4[6] = &v5;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
  if (*(v12 + 24) == 1)
  {
    [objc_msgSend(v6[5] "referencedObject")];
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v11, 8);
}

double __77__AVPlayerItemRenderedLegibleOutput_setAdvanceIntervalForDelegateInvocation___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) != *(*(a1 + 32) + 56);
  *(*(*(a1 + 48) + 8) + 40) = *(*(a1 + 32) + 40);
  result = *(a1 + 56);
  *(*(a1 + 32) + 56) = result;
  return result;
}

- (BOOL)suppressesPlayerRendering
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVPlayerItemRenderedLegibleOutput_suppressesPlayerRendering__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSuppressesPlayerRendering:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__20;
  v11 = __Block_byref_object_dispose__20;
  v12 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVPlayerItemRenderedLegibleOutput_setSuppressesPlayerRendering___block_invoke;
  v5[3] = &unk_1E7464708;
  v5[4] = self;
  v5[5] = &v13;
  v6 = a3;
  v5[6] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v14 + 24) == 1)
  {
    [objc_msgSend(v8[5] "referencedObject")];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
}

id __66__AVPlayerItemRenderedLegibleOutput_setSuppressesPlayerRendering___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 48) != *(a1 + 56);
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 48) + 8) + 40) = result;
  *(*(a1 + 32) + 48) = *(a1 + 56);
  return result;
}

- (CGSize)videoDisplaySize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVPlayerItemRenderedLegibleOutput_videoDisplaySize__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[4] = self;
  v7[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __53__AVPlayerItemRenderedLegibleOutput_videoDisplaySize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)setVideoDisplaySize:(CGSize)a3
{
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"videoDisplaySize for AVPlayerItemRenderedLegibleOutput shall have non-zero height and width", v3, v4, v5, v6, v7, v10), 0}];
    objc_exception_throw(v9);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__20;
  v17 = __Block_byref_object_dispose__20;
  v18 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AVPlayerItemRenderedLegibleOutput_setVideoDisplaySize___block_invoke;
  v11[3] = &unk_1E7464730;
  v11[4] = self;
  v11[5] = &v19;
  v12 = a3;
  v11[6] = &v13;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  if (*(v20 + 24) == 1)
  {
    [objc_msgSend(v14[5] "referencedObject")];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

__n128 __57__AVPlayerItemRenderedLegibleOutput_setVideoDisplaySize___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64) != *(a1 + 56);
  if (*(*(a1 + 32) + 72) != *(a1 + 64))
  {
    v2 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
  *(*(*(a1 + 48) + 8) + 40) = *(*(a1 + 32) + 40);
  result = *(a1 + 56);
  *(*(a1 + 32) + 64) = result;
  return result;
}

@end
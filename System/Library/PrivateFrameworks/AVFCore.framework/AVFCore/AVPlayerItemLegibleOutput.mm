@interface AVPlayerItemLegibleOutput
- (AVPlayerItemLegibleOutput)init;
- (AVPlayerItemLegibleOutput)initWithDependencyFactory:(id)a3 mediaSubtypesForNativeRepresentation:(id)a4;
- (AVPlayerItemLegibleOutput)initWithMediaSubtypesForNativeRepresentation:(NSArray *)subtypes;
- (AVPlayerItemLegibleOutputTextStylingResolution)textStylingResolution;
- (BOOL)_attachToPlayerItem:(id)a3;
- (BOOL)suppressesPlayerRendering;
- (NSTimeInterval)advanceIntervalForDelegateInvocation;
- (id)_figLegibleOutputsDictionaryOptions;
- (void)_collectUncollectables;
- (void)_detachFromPlayerItem;
- (void)_pushAttributedStrings:(id)a3 andSampleBuffers:(id)a4 atItemTime:(id *)a5;
- (void)_signalFlush;
- (void)dealloc;
- (void)setAdvanceIntervalForDelegateInvocation:(NSTimeInterval)advanceIntervalForDelegateInvocation;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue;
- (void)setSuppressesPlayerRendering:(BOOL)a3;
- (void)setTextStylingResolution:(AVPlayerItemLegibleOutputTextStylingResolution)textStylingResolution;
@end

@implementation AVPlayerItemLegibleOutput

- (AVPlayerItemLegibleOutput)init
{
  v3 = [MEMORY[0x1E695DEC8] array];

  return [(AVPlayerItemLegibleOutput *)self initWithMediaSubtypesForNativeRepresentation:v3];
}

- (AVPlayerItemLegibleOutput)initWithMediaSubtypesForNativeRepresentation:(NSArray *)subtypes
{
  v5 = objc_alloc_init(AVPlayerItemLegibleOutputRealDependencyFactory);
  if (!subtypes)
  {
    subtypes = [MEMORY[0x1E695DEC8] array];
  }

  return [(AVPlayerItemLegibleOutput *)self initWithDependencyFactory:v5 mediaSubtypesForNativeRepresentation:subtypes];
}

- (AVPlayerItemLegibleOutput)initWithDependencyFactory:(id)a3 mediaSubtypesForNativeRepresentation:(id)a4
{
  v5 = self;
  v42 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v34 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "subtypes != nil";
LABEL_19:
    v27 = AVMethodExceptionReasonWithObjectAndSelector(v5, a2, @"invalid parameter not satisfying: %s", v18, v19, v20, v21, v22, v25);
LABEL_21:
    objc_exception_throw([v23 exceptionWithName:v24 reason:v27 userInfo:0]);
  }

  v40.receiver = self;
  v40.super_class = AVPlayerItemLegibleOutput;
  v5 = [(AVPlayerItemOutput *)&v40 init];
  if (v5)
  {
    v8 = objc_alloc_init(AVPlayerItemLegibleOutputInternal);
    *(v5 + 2) = v8;
    if (v8)
    {
      CFRetain(v8);
      *(*(v5 + 2) + 24) = objc_alloc_init(AVWeakReferencingDelegateStorage);
      *(*(v5 + 2) + 8) = a3;
      *(*(v5 + 2) + 16) = [a4 copy];
      *(*(v5 + 2) + 32) = av_readwrite_dispatch_queue_create("com.apple.avplayeritemlegibleoutput.ivars");
      *(*(v5 + 2) + 64) = [@"AVPlayerItemLegibleOutputTextStylingResolutionDefault" copy];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v9 = *(*(v5 + 2) + 16);
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = v5;
              v23 = MEMORY[0x1E695DF30];
              v24 = *MEMORY[0x1E695D940];
              v25 = "[mediaSubtypeObject isKindOfClass:[NSNumber class]]";
              goto LABEL_19;
            }

            v15 = [v14 unsignedLongLongValue];
            if (HIDWORD(v15))
            {
              v26 = v5;
              v23 = MEMORY[0x1E695DF30];
              v24 = *MEMORY[0x1E695D940];
              v25 = "integerValueAppearsToBeAFourCC";
              goto LABEL_19;
            }

            if (v15 == 1664495672)
            {
              v28 = v5;
              v23 = MEMORY[0x1E695DF30];
              v24 = *MEMORY[0x1E695D940];
              v27 = AVMethodExceptionReasonWithObjectAndSelector(v5, a2, @"Native representation is not available for media subtype 'c608'", v29, v30, v31, v32, v33, v35);
              goto LABEL_21;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)_collectUncollectables
{
  legibleOutputInternal = self->_legibleOutputInternal;
  if (legibleOutputInternal[4])
  {
    dispatch_release(legibleOutputInternal[4]);
    legibleOutputInternal = self->_legibleOutputInternal;
  }

  CFRelease(legibleOutputInternal);
}

- (void)dealloc
{
  legibleOutputInternal = self->_legibleOutputInternal;
  if (legibleOutputInternal)
  {

    [(AVPlayerItemLegibleOutput *)self _collectUncollectables];
    legibleOutputInternal = self->_legibleOutputInternal;
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemLegibleOutput;
  [(AVPlayerItemOutput *)&v4 dealloc];
}

- (void)_pushAttributedStrings:(id)a3 andSampleBuffers:(id)a4 atItemTime:(id *)a5
{
  delegateStorage = self->_legibleOutputInternal->delegateStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__AVPlayerItemLegibleOutput__pushAttributedStrings_andSampleBuffers_atItemTime___block_invoke;
  v6[3] = &unk_1E7465B68;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v7 = *a5;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v6];
}

uint64_t __80__AVPlayerItemLegibleOutput__pushAttributedStrings_andSampleBuffers_atItemTime___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);
      v7 = *(v3 + 56);
      v8 = *(v3 + 72);
      return [a2 legibleOutput:v4 didOutputAttributedStrings:v5 nativeSampleBuffers:v6 forItemTime:&v7];
    }
  }

  return result;
}

- (void)_signalFlush
{
  delegateStorage = self->_legibleOutputInternal->delegateStorage;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__AVPlayerItemLegibleOutput__signalFlush__block_invoke;
  v3[3] = &unk_1E7463C50;
  v3[4] = self;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
}

uint64_t __41__AVPlayerItemLegibleOutput__signalFlush__block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);

      return [a2 outputSequenceWasFlushed:v4];
    }
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

  v9 = [(AVPlayerItemLegibleOutputDependencyFactory *)self->_legibleOutputInternal->dependencyFactory playerItemOutputHostForPlayerItem:?];
  ivarAccessQueue = self->_legibleOutputInternal->ivarAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__AVPlayerItemLegibleOutput__attachToPlayerItem___block_invoke;
  v14[3] = &unk_1E7461068;
  v14[5] = v9;
  v14[6] = &v15;
  v14[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return (v11 & 1) == 0;
}

id __49__AVPlayerItemLegibleOutput__attachToPlayerItem___block_invoke(id result)
{
  *(*(*(result + 6) + 8) + 24) = *(*(*(result + 4) + 16) + 40) != 0;
  if ((*(*(*(result + 6) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 5) _weakReference];
    *(*(v1[4] + 16) + 40) = result;
  }

  return result;
}

- (void)_detachFromPlayerItem
{
  ivarAccessQueue = self->_legibleOutputInternal->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__AVPlayerItemLegibleOutput__detachFromPlayerItem__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (id)_figLegibleOutputsDictionaryOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(AVPlayerItemLegibleOutput *)self advanceIntervalForDelegateInvocation];
  if (v4 != 0.0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v3 setObject:v5 forKey:*MEMORY[0x1E6972428]];
  }

  nativeRepresentationSubtypes = self->_legibleOutputInternal->nativeRepresentationSubtypes;
  if (nativeRepresentationSubtypes)
  {
    [v3 setObject:nativeRepresentationSubtypes forKey:*MEMORY[0x1E6972430]];
  }

  v7 = [(NSString *)[(AVPlayerItemLegibleOutput *)self textStylingResolution] isEqualToString:@"AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly"];
  v8 = MEMORY[0x1E6972448];
  if (!v7)
  {
    v8 = MEMORY[0x1E6972440];
  }

  [v3 setObject:*v8 forKey:*MEMORY[0x1E6972438]];
  return v3;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue
{
  if (delegate)
  {
    if (!delegateQueue)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = "newDelegateQueue != NULL";
      goto LABEL_9;
    }
  }

  else if (delegateQueue)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "newDelegateQueue == NULL";
LABEL_9:
    v12 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", delegateQueue, v4, v5, v6, v7, v10), 0}];
    objc_exception_throw(v12);
  }

  delegateStorage = self->_legibleOutputInternal->delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- (NSTimeInterval)advanceIntervalForDelegateInvocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  legibleOutputInternal = self->_legibleOutputInternal;
  v10 = 0;
  ivarAccessQueue = legibleOutputInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__AVPlayerItemLegibleOutput_advanceIntervalForDelegateInvocation__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __65__AVPlayerItemLegibleOutput_advanceIntervalForDelegateInvocation__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 16) + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAdvanceIntervalForDelegateInvocation:(NSTimeInterval)advanceIntervalForDelegateInvocation
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__37;
  v9 = __Block_byref_object_dispose__37;
  v10 = 0;
  ivarAccessQueue = self->_legibleOutputInternal->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVPlayerItemLegibleOutput_setAdvanceIntervalForDelegateInvocation___block_invoke;
  v4[3] = &unk_1E7463C28;
  *&v4[7] = advanceIntervalForDelegateInvocation;
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

double __69__AVPlayerItemLegibleOutput_setAdvanceIntervalForDelegateInvocation___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) != *(*(*(a1 + 32) + 16) + 56);
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 16) + 40);
  result = *(a1 + 56);
  *(*(*(a1 + 32) + 16) + 56) = result;
  return result;
}

- (AVPlayerItemLegibleOutputTextStylingResolution)textStylingResolution
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__37;
  legibleOutputInternal = self->_legibleOutputInternal;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  ivarAccessQueue = legibleOutputInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVPlayerItemLegibleOutput_textStylingResolution__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __50__AVPlayerItemLegibleOutput_textStylingResolution__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 16) + 64) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setTextStylingResolution:(AVPlayerItemLegibleOutputTextStylingResolution)textStylingResolution
{
  if (([objc_msgSend(MEMORY[0x1E695DFD8] setWithObjects:{@"AVPlayerItemLegibleOutputTextStylingResolutionDefault", @"AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly", 0), "containsObject:", textStylingResolution}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Invalid text styling resolution %@", v6, v7, v8, v9, v10, textStylingResolution), 0}];
    objc_exception_throw(v12);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__37;
  v18 = __Block_byref_object_dispose__37;
  v19 = 0;
  ivarAccessQueue = self->_legibleOutputInternal->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__AVPlayerItemLegibleOutput_setTextStylingResolution___block_invoke;
  v13[3] = &unk_1E7464F40;
  v13[4] = textStylingResolution;
  v13[5] = self;
  v13[6] = &v20;
  v13[7] = &v14;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  if (*(v21 + 24) == 1)
  {
    [objc_msgSend(v15[5] "referencedObject")];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

id __54__AVPlayerItemLegibleOutput_setTextStylingResolution___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 32) != *(*(*(a1 + 40) + 16) + 64);
  result = *(*(*(a1 + 40) + 16) + 40);
  *(*(*(a1 + 56) + 8) + 40) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {

    result = [*(a1 + 32) copy];
    *(*(*(a1 + 40) + 16) + 64) = result;
  }

  return result;
}

- (BOOL)suppressesPlayerRendering
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  legibleOutputInternal = self->_legibleOutputInternal;
  v10 = 0;
  ivarAccessQueue = legibleOutputInternal->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVPlayerItemLegibleOutput_suppressesPlayerRendering__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
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
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  ivarAccessQueue = self->_legibleOutputInternal->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayerItemLegibleOutput_setSuppressesPlayerRendering___block_invoke;
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

id __58__AVPlayerItemLegibleOutput_setSuppressesPlayerRendering___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 16) + 48) != *(a1 + 56);
  result = *(*(*(a1 + 32) + 16) + 40);
  *(*(*(a1 + 48) + 8) + 40) = result;
  *(*(*(a1 + 32) + 16) + 48) = *(a1 + 56);
  return result;
}

@end
@interface AVVideoCompositionRenderHint
- (AVVideoCompositionRenderHint)initWithStartCompositionTime:(id *)time endCompositionTime:(id *)compositionTime subsequentStartCompositionTime:(id *)startCompositionTime subsequentEndCompositionTime:(id *)endCompositionTime;
- (void)dealloc;
@end

@implementation AVVideoCompositionRenderHint

- (AVVideoCompositionRenderHint)initWithStartCompositionTime:(id *)time endCompositionTime:(id *)compositionTime subsequentStartCompositionTime:(id *)startCompositionTime subsequentEndCompositionTime:(id *)endCompositionTime
{
  v20.receiver = self;
  v20.super_class = AVVideoCompositionRenderHint;
  v10 = [(AVVideoCompositionRenderHint *)&v20 init];
  if (v10)
  {
    v11 = objc_alloc_init(AVVideoCompositionRenderHintInternal);
    v10->_internal = v11;
    var3 = time->var3;
    *&v11->_startCompositionTime.value = *&time->var0;
    v11->_startCompositionTime.epoch = var3;
    internal = v10->_internal;
    v14 = *&compositionTime->var0;
    internal->_endCompositionTime.epoch = compositionTime->var3;
    *&internal->_endCompositionTime.value = v14;
    v15 = v10->_internal;
    v16 = *&startCompositionTime->var0;
    v15->_subsequentStartCompositionTime.epoch = startCompositionTime->var3;
    *&v15->_subsequentStartCompositionTime.value = v16;
    v17 = v10->_internal;
    v18 = *&endCompositionTime->var0;
    v17->_subsequentEndCompositionTime.epoch = endCompositionTime->var3;
    *&v17->_subsequentEndCompositionTime.value = v18;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVVideoCompositionRenderHint;
  [(AVVideoCompositionRenderHint *)&v3 dealloc];
}

@end
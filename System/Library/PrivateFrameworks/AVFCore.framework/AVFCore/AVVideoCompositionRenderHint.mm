@interface AVVideoCompositionRenderHint
- (AVVideoCompositionRenderHint)initWithStartCompositionTime:(id *)a3 endCompositionTime:(id *)a4 subsequentStartCompositionTime:(id *)a5 subsequentEndCompositionTime:(id *)a6;
- (void)dealloc;
@end

@implementation AVVideoCompositionRenderHint

- (AVVideoCompositionRenderHint)initWithStartCompositionTime:(id *)a3 endCompositionTime:(id *)a4 subsequentStartCompositionTime:(id *)a5 subsequentEndCompositionTime:(id *)a6
{
  v20.receiver = self;
  v20.super_class = AVVideoCompositionRenderHint;
  v10 = [(AVVideoCompositionRenderHint *)&v20 init];
  if (v10)
  {
    v11 = objc_alloc_init(AVVideoCompositionRenderHintInternal);
    v10->_internal = v11;
    var3 = a3->var3;
    *&v11->_startCompositionTime.value = *&a3->var0;
    v11->_startCompositionTime.epoch = var3;
    internal = v10->_internal;
    v14 = *&a4->var0;
    internal->_endCompositionTime.epoch = a4->var3;
    *&internal->_endCompositionTime.value = v14;
    v15 = v10->_internal;
    v16 = *&a5->var0;
    v15->_subsequentStartCompositionTime.epoch = a5->var3;
    *&v15->_subsequentStartCompositionTime.value = v16;
    v17 = v10->_internal;
    v18 = *&a6->var0;
    v17->_subsequentEndCompositionTime.epoch = a6->var3;
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
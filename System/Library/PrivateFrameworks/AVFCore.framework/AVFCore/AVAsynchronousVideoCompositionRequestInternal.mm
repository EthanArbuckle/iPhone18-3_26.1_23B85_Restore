@interface AVAsynchronousVideoCompositionRequestInternal
- (void)dealloc;
- (void)setCompositionTime:(id *)a3;
@end

@implementation AVAsynchronousVideoCompositionRequestInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAsynchronousVideoCompositionRequestInternal;
  [(AVAsynchronousVideoCompositionRequestInternal *)&v3 dealloc];
}

- (void)setCompositionTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_compositionTime.epoch = a3->var3;
  *&self->_compositionTime.value = v3;
}

@end
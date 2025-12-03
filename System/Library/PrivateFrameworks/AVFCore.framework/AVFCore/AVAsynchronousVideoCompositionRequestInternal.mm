@interface AVAsynchronousVideoCompositionRequestInternal
- (void)dealloc;
- (void)setCompositionTime:(id *)time;
@end

@implementation AVAsynchronousVideoCompositionRequestInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAsynchronousVideoCompositionRequestInternal;
  [(AVAsynchronousVideoCompositionRequestInternal *)&v3 dealloc];
}

- (void)setCompositionTime:(id *)time
{
  v3 = *&time->var0;
  self->_compositionTime.epoch = time->var3;
  *&self->_compositionTime.value = v3;
}

@end
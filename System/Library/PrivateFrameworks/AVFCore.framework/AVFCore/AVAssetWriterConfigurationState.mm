@interface AVAssetWriterConfigurationState
- (CGAffineTransform)preferredTransform;
- (void)dealloc;
- (void)setInitialMovieFragmentInterval:(id *)a3;
- (void)setInitialSegmentStartTime:(id *)a3;
- (void)setMovieFragmentInterval:(id *)a3;
- (void)setOverallDurationHint:(id *)a3;
- (void)setPreferredOutputSegmentInterval:(id *)a3;
- (void)setPreferredTransform:(CGAffineTransform *)a3;
@end

@implementation AVAssetWriterConfigurationState

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterConfigurationState;
  [(AVAssetWriterConfigurationState *)&v3 dealloc];
}

- (void)setMovieFragmentInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_movieFragmentInterval.epoch = a3->var3;
  *&self->_movieFragmentInterval.value = v3;
}

- (void)setInitialMovieFragmentInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_initialMovieFragmentInterval.epoch = a3->var3;
  *&self->_initialMovieFragmentInterval.value = v3;
}

- (void)setOverallDurationHint:(id *)a3
{
  v3 = *&a3->var0;
  self->_overallDurationHint.epoch = a3->var3;
  *&self->_overallDurationHint.value = v3;
}

- (CGAffineTransform)preferredTransform
{
  v3 = *&self[3].b;
  *&retstr->a = *&self[2].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].d;
  return self;
}

- (void)setPreferredTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_preferredTransform.tx = *&a3->tx;
  *&self->_preferredTransform.c = v4;
  *&self->_preferredTransform.a = v3;
}

- (void)setPreferredOutputSegmentInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_preferredOutputSegmentInterval.epoch = a3->var3;
  *&self->_preferredOutputSegmentInterval.value = v3;
}

- (void)setInitialSegmentStartTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_initialSegmentStartTime.epoch = a3->var3;
  *&self->_initialSegmentStartTime.value = v3;
}

@end
@interface AVAssetWriterConfigurationState
- (CGAffineTransform)preferredTransform;
- (void)dealloc;
- (void)setInitialMovieFragmentInterval:(id *)interval;
- (void)setInitialSegmentStartTime:(id *)time;
- (void)setMovieFragmentInterval:(id *)interval;
- (void)setOverallDurationHint:(id *)hint;
- (void)setPreferredOutputSegmentInterval:(id *)interval;
- (void)setPreferredTransform:(CGAffineTransform *)transform;
@end

@implementation AVAssetWriterConfigurationState

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterConfigurationState;
  [(AVAssetWriterConfigurationState *)&v3 dealloc];
}

- (void)setMovieFragmentInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_movieFragmentInterval.epoch = interval->var3;
  *&self->_movieFragmentInterval.value = v3;
}

- (void)setInitialMovieFragmentInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_initialMovieFragmentInterval.epoch = interval->var3;
  *&self->_initialMovieFragmentInterval.value = v3;
}

- (void)setOverallDurationHint:(id *)hint
{
  v3 = *&hint->var0;
  self->_overallDurationHint.epoch = hint->var3;
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

- (void)setPreferredTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_preferredTransform.tx = *&transform->tx;
  *&self->_preferredTransform.c = v4;
  *&self->_preferredTransform.a = v3;
}

- (void)setPreferredOutputSegmentInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_preferredOutputSegmentInterval.epoch = interval->var3;
  *&self->_preferredOutputSegmentInterval.value = v3;
}

- (void)setInitialSegmentStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_initialSegmentStartTime.epoch = time->var3;
  *&self->_initialSegmentStartTime.value = v3;
}

@end
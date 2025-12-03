@interface SFSpeechDetectorResult
- ($105C7F46451D331BD7843CF46B2B4F94)range;
- (SFSpeechDetectorResult)initWithRange:(id *)range;
@end

@implementation SFSpeechDetectorResult

- ($105C7F46451D331BD7843CF46B2B4F94)range
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (SFSpeechDetectorResult)initWithRange:(id *)range
{
  v7.receiver = self;
  v7.super_class = SFSpeechDetectorResult;
  result = [(SFSpeechDetectorResult *)&v7 init];
  if (result)
  {
    v5 = *&range->var0.var0;
    v6 = *&range->var0.var3;
    *&result->_range.duration.timescale = *&range->var1.var1;
    *&result->_range.start.epoch = v6;
    *&result->_range.start.value = v5;
  }

  return result;
}

@end
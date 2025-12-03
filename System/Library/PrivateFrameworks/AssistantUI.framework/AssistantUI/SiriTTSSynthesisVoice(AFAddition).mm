@interface SiriTTSSynthesisVoice(AFAddition)
- (uint64_t)AFVoiceFootprint;
@end

@implementation SiriTTSSynthesisVoice(AFAddition)

- (uint64_t)AFVoiceFootprint
{
  footprint = [self footprint];
  if (footprint > 3)
  {
    return 0;
  }

  else
  {
    return qword_241494528[footprint];
  }
}

@end
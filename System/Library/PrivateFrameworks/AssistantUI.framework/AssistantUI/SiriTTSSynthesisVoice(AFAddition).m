@interface SiriTTSSynthesisVoice(AFAddition)
- (uint64_t)AFVoiceFootprint;
@end

@implementation SiriTTSSynthesisVoice(AFAddition)

- (uint64_t)AFVoiceFootprint
{
  v1 = [a1 footprint];
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_241494528[v1];
  }
}

@end
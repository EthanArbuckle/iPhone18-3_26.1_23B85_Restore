@interface ImageAnalyzerMultiDetectorRecipient
- (_TtC6Vision35ImageAnalyzerMultiDetectorRecipient)init;
- (void)receiveObservations:(id)observations;
@end

@implementation ImageAnalyzerMultiDetectorRecipient

- (void)receiveObservations:(id)observations
{
  if (observations)
  {
    sub_1A5CA02B4();
    v4 = sub_1A5FD3F4C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1A5CA7BC8(v4);
}

- (_TtC6Vision35ImageAnalyzerMultiDetectorRecipient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
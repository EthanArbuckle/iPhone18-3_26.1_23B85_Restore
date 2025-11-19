@interface SNDetectSpeechUtteranceRequest
- (BOOL)isEqual:(id)a3;
- (double)decisionDelay;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SNDetectSpeechUtteranceRequest

- (double)decisionDelay
{
  v2 = self;
  v3 = sub_1C980037C();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNDetectSpeechUtteranceRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SNDetectSpeechUtteranceRequest.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNDetectSpeechUtteranceRequest.encode(with:)(v4);
}

@end
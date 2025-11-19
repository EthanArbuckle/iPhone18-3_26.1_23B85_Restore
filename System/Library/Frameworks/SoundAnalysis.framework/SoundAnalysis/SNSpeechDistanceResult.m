@interface SNSpeechDistanceResult
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTimeRange:(id *)a3;
@end

@implementation SNSpeechDistanceResult

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  SNSpeechDistanceResult.timeRange.getter(v9);
  v5 = v12;
  v6 = v11;
  v7 = v10;
  v8 = v9[1];
  retstr->var0.var0 = v9[0];
  *&retstr->var0.var1 = v8;
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = v6;
  retstr->var1.var3 = v5;
  return result;
}

- (void)setTimeRange:(id *)a3
{
  var3 = a3->var1.var3;
  v4[0] = a3->var0.var0;
  v4[1] = *&a3->var0.var1;
  v5 = *&a3->var0.var3;
  v6 = *&a3->var1.var1;
  v7 = var3;
  SNSpeechDistanceResult.timeRange.setter(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNSpeechDistanceResult.copy(with:)(v6);

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

  v6 = SNSpeechDistanceResult.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNSpeechDistanceResult.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  SNSpeechDistanceResult.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

@end
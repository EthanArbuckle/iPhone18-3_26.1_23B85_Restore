@interface SNSoundActionsResult
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)name;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
- (void)setTimeRange:(id *)range;
@end

@implementation SNSoundActionsResult

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  SNSoundActionsResult.timeRange.getter(v9);
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

- (void)setTimeRange:(id *)range
{
  var3 = range->var1.var3;
  v4[0] = range->var0.var0;
  v4[1] = *&range->var0.var1;
  v5 = *&range->var0.var3;
  v6 = *&range->var1.var1;
  v7 = var3;
  SNSoundActionsResult.timeRange.setter(v4);
}

- (NSString)name
{
  SNSoundActionsResult.name.getter();
  v2 = sub_1C9A92478();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_1C9A924A8();
  v6 = v5;
  selfCopy = self;
  SNSoundActionsResult.name.setter(v4, v6);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNSoundActionsResult.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SNSoundActionsResult.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SNSoundActionsResult.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNSoundActionsResult.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SNSoundActionsResult.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

@end
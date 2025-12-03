@interface _SNTimeDurationConstraint
- ($E36B78CDAC119E0352F6B513F3BB0FF8)durationRange;
- (BOOL)isEqual:(id)equal;
- (NSArray)enumeratedDurations;
- (_SNTimeDurationConstraint)initWithDurationRange:(id *)range;
- (_SNTimeDurationConstraint)initWithEnumeratedDurations:(id)durations;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SNTimeDurationConstraint

- (_SNTimeDurationConstraint)initWithEnumeratedDurations:(id)durations
{
  if (durations)
  {
    sub_1C97C8930();
    sub_1C9A92798();
  }

  return sub_1C97C614C();
}

- (_SNTimeDurationConstraint)initWithDurationRange:(id *)range
{
  var3 = range->var1.var3;
  v5[0] = *&range->var0.var0;
  v5[1] = *&range->var0.var3;
  v6 = *&range->var1.var1;
  v7 = var3;
  return sub_1C97C64A4(v5);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  _SNTimeDurationConstraint.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
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

  v6 = _SNTimeDurationConstraint.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _SNTimeDurationConstraint.encode(with:)(coderCopy);
}

- ($E36B78CDAC119E0352F6B513F3BB0FF8)durationRange
{
  sub_1C97C6C08(v9);
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

- (NSArray)enumeratedDurations
{
  selfCopy = self;
  sub_1C97C6CC4();

  sub_1C97C8930();
  v3 = sub_1C9A92768();

  return v3;
}

@end
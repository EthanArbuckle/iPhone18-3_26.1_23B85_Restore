@interface _SNTimeDurationConstraint
- ($E36B78CDAC119E0352F6B513F3BB0FF8)durationRange;
- (BOOL)isEqual:(id)a3;
- (NSArray)enumeratedDurations;
- (_SNTimeDurationConstraint)initWithDurationRange:(id *)a3;
- (_SNTimeDurationConstraint)initWithEnumeratedDurations:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SNTimeDurationConstraint

- (_SNTimeDurationConstraint)initWithEnumeratedDurations:(id)a3
{
  if (a3)
  {
    sub_1C97C8930();
    sub_1C9A92798();
  }

  return sub_1C97C614C();
}

- (_SNTimeDurationConstraint)initWithDurationRange:(id *)a3
{
  var3 = a3->var1.var3;
  v5[0] = *&a3->var0.var0;
  v5[1] = *&a3->var0.var3;
  v6 = *&a3->var1.var1;
  v7 = var3;
  return sub_1C97C64A4(v5);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  _SNTimeDurationConstraint.copy(with:)(v6);

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

  v6 = _SNTimeDurationConstraint.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _SNTimeDurationConstraint.encode(with:)(v4);
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
  v2 = self;
  sub_1C97C6CC4();

  sub_1C97C8930();
  v3 = sub_1C9A92768();

  return v3;
}

@end
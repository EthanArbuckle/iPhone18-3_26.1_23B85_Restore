@interface StringParams
- (BOOL)isEqual:(id)equal;
- (_TtC10FinanceKit12StringParams)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StringParams

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = StringParams.isEqual(_:)(v8);

  sub_1B7205418(v8, &qword_1EB98FCB0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_1B7802378();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10FinanceKit12StringParams_value);
  selfCopy = self;
  sub_1B7223414(v7, v3);
  v5 = sub_1B7802358();

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FinanceKit12StringParams_value);
  coderCopy = coder;
  selfCopy = self;
  sub_1B7222224(v4);
  sub_1B7223580();
  sub_1B7223654(&qword_1EB98FCC8, sub_1B7223580);
  v6 = sub_1B7800708();

  v7 = sub_1B7800838();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (_TtC10FinanceKit12StringParams)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
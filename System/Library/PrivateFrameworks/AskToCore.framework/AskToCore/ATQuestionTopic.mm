@interface ATQuestionTopic
- (ATQuestionTopic)init;
- (ATQuestionTopic)initWithRawValue:(id)value;
- (int64_t)hash;
@end

@implementation ATQuestionTopic

- (ATQuestionTopic)initWithRawValue:(id)value
{
  ObjectType = swift_getObjectType();
  v5 = sub_2410DF0C0();
  v6 = (self + OBJC_IVAR___ATQuestionTopic_rawValue);
  *v6 = v5;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(ATQuestionTopic *)&v9 init];
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR___ATQuestionTopic_rawValue);
  v3 = *(self + OBJC_IVAR___ATQuestionTopic_rawValue + 8);
  selfCopy = self;
  v5 = MEMORY[0x245CD9690](v2, v3);

  return v5;
}

- (ATQuestionTopic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface TempOptInReprompt
- (NSArray)keyCommands;
- (_TtC17SequoiaTranslator17TempOptInReprompt)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC17SequoiaTranslator17TempOptInReprompt)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueButtonPressed;
@end

@implementation TempOptInReprompt

- (NSArray)keyCommands
{
  sub_100005AD4(&unk_1003AFCC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002D95A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() keyCommandWithInput:v3 modifierFlags:0 action:"continueButtonPressed"];

  *(v2 + 32) = v4;
  sub_10025F6E4();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)continueButtonPressed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_10019E03C();
    swift_unknownObjectRelease();
  }
}

- (_TtC17SequoiaTranslator17TempOptInReprompt)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17SequoiaTranslator17TempOptInReprompt)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
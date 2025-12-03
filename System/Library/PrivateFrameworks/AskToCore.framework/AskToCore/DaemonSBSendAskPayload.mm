@interface DaemonSBSendAskPayload
- (_TtC9AskToCore22DaemonSBSendAskPayload)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DaemonSBSendAskPayload

- (_TtC9AskToCore22DaemonSBSendAskPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526578, &qword_2410E5480));
  selfCopy = self;
  coderCopy = coder;
  v8 = sub_2410DEF60();
  v9 = sub_2410DF0A0();
  [coderCopy encodeObject:v8 forKey:v9];
}

@end
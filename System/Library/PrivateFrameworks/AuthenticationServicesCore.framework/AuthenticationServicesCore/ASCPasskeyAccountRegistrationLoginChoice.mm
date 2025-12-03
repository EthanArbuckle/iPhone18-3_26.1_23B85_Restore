@interface ASCPasskeyAccountRegistrationLoginChoice
- (_TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice)init;
- (void)contactIdentifierValueWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPasskeyAccountRegistrationLoginChoice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C20DAA7C(coderCopy);
}

- (void)contactIdentifierValueWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1C2170BE4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C21768A0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C21799C0;
  v13[5] = v12;
  selfCopy = self;
  sub_1C2166D88(0, 0, v8, &unk_1C21768B0, v13);
}

- (_TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
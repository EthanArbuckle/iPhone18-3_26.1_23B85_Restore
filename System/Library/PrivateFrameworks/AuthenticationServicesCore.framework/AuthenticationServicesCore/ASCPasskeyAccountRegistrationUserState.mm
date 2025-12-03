@interface ASCPasskeyAccountRegistrationUserState
- (NSPersonNameComponents)name;
- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)phoneNumber;
- (_TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState)init;
- (void)encodeWithCoder:(id)coder;
- (void)setEmailAddress:(id)address;
- (void)setName:(id)name;
- (void)setPhoneNumber:(id)number;
- (void)setSelectedCredentialProviderExtensionIdentifier:(id)identifier;
@end

@implementation ASCPasskeyAccountRegistrationUserState

- (NSPersonNameComponents)name
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  sub_1C20EB3E8(self + v7, v6, &unk_1EBF23420, &unk_1C2176820);
  v8 = sub_1C216FF04();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C216FEE4();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setName:(id)name
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (name)
  {
    sub_1C216FEF4();
    v9 = sub_1C216FF04();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C216FF04();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_1C210C1D0(v8);
}

- (void)setEmailAddress:(id)address
{
  if (address)
  {
    v4 = sub_1C2170914();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  sub_1C210CFEC();
}

- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)phoneNumber
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPhoneNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  sub_1C210D3C4(number);
}

- (void)setSelectedCredentialProviderExtensionIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1C2170914();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1C210D748(v4, v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C2113480(coderCopy);
}

- (_TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
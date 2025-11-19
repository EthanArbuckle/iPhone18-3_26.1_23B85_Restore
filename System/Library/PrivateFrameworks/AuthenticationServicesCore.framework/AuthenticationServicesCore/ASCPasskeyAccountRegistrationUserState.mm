@interface ASCPasskeyAccountRegistrationUserState
- (NSPersonNameComponents)name;
- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)phoneNumber;
- (_TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState)init;
- (void)encodeWithCoder:(id)a3;
- (void)setEmailAddress:(id)a3;
- (void)setName:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setSelectedCredentialProviderExtensionIdentifier:(id)a3;
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

- (void)setName:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = self;
  sub_1C210C1D0(v8);
}

- (void)setEmailAddress:(id)a3
{
  if (a3)
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
  v9 = self;

  sub_1C210CFEC();
}

- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)phoneNumber
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPhoneNumber:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C210D3C4(a3);
}

- (void)setSelectedCredentialProviderExtensionIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1C2170914();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1C210D748(v4, v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2113480(v4);
}

- (_TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
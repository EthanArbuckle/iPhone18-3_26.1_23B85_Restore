@interface ASCPlatformPublicKeyAccountRegistration
- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)init;
- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)initWithEmailIdentifier:(id)identifier phoneIdentifier:(id)phoneIdentifier name:(id)name credentialRegistration:(id)registration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPlatformPublicKeyAccountRegistration

- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)initWithEmailIdentifier:(id)identifier phoneIdentifier:(id)phoneIdentifier name:(id)name credentialRegistration:(id)registration
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  if (identifier)
  {
    identifier = sub_1C2170914();
    v16 = v15;
    if (phoneIdentifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (name)
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = sub_1C216FF04();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    registrationCopy = registration;
    goto LABEL_8;
  }

  v16 = 0;
  if (!phoneIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  phoneIdentifier = sub_1C2170914();
  v18 = v17;
  if (!name)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C216FEF4();
  v19 = sub_1C216FF04();
  v20 = *(*(v19 - 8) + 56);
  registrationCopy2 = registration;
  v20(v14, 0, 1, v19);
LABEL_8:
  v24 = (&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_emailIdentifier);
  *v24 = identifier;
  v24[1] = v16;
  v25 = (&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_phoneIdentifier);
  *v25 = phoneIdentifier;
  v25[1] = v18;
  sub_1C20DB900(v14, self + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_name);
  *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_credentialRegistration) = registration;
  v26 = type metadata accessor for ASCPlatformPublicKeyAccountRegistration();
  v29.receiver = self;
  v29.super_class = v26;
  v27 = [(ASCPlatformPublicKeyAccountRegistration *)&v29 init];
  sub_1C20DB970(v14);
  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C211D604(coderCopy);
}

- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
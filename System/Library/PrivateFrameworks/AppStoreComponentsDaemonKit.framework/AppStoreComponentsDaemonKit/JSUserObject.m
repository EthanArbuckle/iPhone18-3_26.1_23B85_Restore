@interface JSUserObject
- (BOOL)isFitnessAppInstallationAllowed;
- (BOOL)isManagedAppleID;
- (BOOL)isUnderThirteen;
- (NSString)dsid;
- (_TtC27AppStoreComponentsDaemonKit12JSUserObject)init;
- (id)accountCachedServerDataBoolForKey:(id)a3;
- (id)accountCachedServerDataIntForKey:(id)a3;
- (id)accountCachedServerDataStringForKey:(id)a3;
- (id)cookieForUrlWithName:(id)a3 :(id)a4;
- (id)cookiesForUrl:(id)a3;
@end

@implementation JSUserObject

- (NSString)dsid
{
  v2 = self;
  sub_2226C25A4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_22273916C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isManagedAppleID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-v5];
  v7 = *&self->accounts[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *&self->accounts[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 16]);
  v8 = self;
  sub_2227384EC();
  v9 = sub_222738CFC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {

    sub_222660468(v6, &unk_27D013A90, &unk_222741DC0);
    return 0;
  }

  else
  {
    swift_getKeyPath();
    sub_222738CBC();

    v11 = v13[15];
    (*(v10 + 8))(v6, v9);
  }

  return v11;
}

- (BOOL)isUnderThirteen
{
  v2 = self;
  v3 = sub_2226C295C();

  return v3 & 1;
}

- (BOOL)isFitnessAppInstallationAllowed
{
  v2 = self;
  v3 = sub_2226C2BA8(v2);

  return v3 & 1;
}

- (id)cookiesForUrl:(id)a3
{
  sub_22273919C();
  v4 = self;
  v5 = sub_2226C2FE0();

  if (v5)
  {
    sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    v6 = sub_22273936C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cookieForUrlWithName:(id)a3 :(id)a4
{
  v5 = sub_22273919C();
  v7 = v6;
  v8 = sub_22273919C();
  v10 = v9;
  v11 = self;
  v12 = sub_2226C3498(v5, v7, v8, v10);

  return v12;
}

- (id)accountCachedServerDataStringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2226C7848(v4);

  return v6;
}

- (id)accountCachedServerDataBoolForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2226C7F0C(v4);

  return v6;
}

- (id)accountCachedServerDataIntForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2226C85D0(v4);

  return v6;
}

- (_TtC27AppStoreComponentsDaemonKit12JSUserObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
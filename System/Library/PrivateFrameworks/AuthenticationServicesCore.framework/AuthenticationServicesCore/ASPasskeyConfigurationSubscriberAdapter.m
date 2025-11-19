@interface ASPasskeyConfigurationSubscriberAdapter
- (BOOL)applyConfiguration:(id)a3 scope:(int64_t)a4 returningReasons:(id *)a5 error:(id *)a6;
- (BOOL)removeDeclarationKey:(id)a3 scope:(int64_t)a4 error:(id *)a5;
- (id)allDeclarationKeys;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)a3;
@end

@implementation ASPasskeyConfigurationSubscriberAdapter

- (id)configurationClasses
{
  v2 = sub_1C21708F4();
  v3 = NSClassFromString(v2);

  if (v3)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF24BA0, &unk_1C217F908);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C21768E0;
    *(v5 + 32) = ObjCClassMetadata;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24B98, &qword_1C217F900);
  v6 = sub_1C2170B54();

  return v6;
}

- (id)allDeclarationKeys
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASPasskeyConfigurationSubscriberAdapter_currentConfiguration);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
    swift_beginAccess();
    v5 = *(v3 + v4);
    v6 = self;

    v8 = sub_1C214A74C(v7);
    v9 = sub_1C214FBB4(v8);
  }

  else
  {
    v10 = self;
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C214F854(v9);

  sub_1C20DB8B8(0, &unk_1EDD4ADE8, 0x1E69C6DC0);
  sub_1C214FAC4();
  v11 = sub_1C2170C04();

  return v11;
}

- (BOOL)applyConfiguration:(id)a3 scope:(int64_t)a4 returningReasons:(id *)a5 error:(id *)a6
{
  v8 = a3;
  v9 = self;
  sub_1C2151008(v8, a4);

  return 1;
}

- (BOOL)removeDeclarationKey:(id)a3 scope:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  sub_1C2150430(v7, a4);

  return 1;
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = sub_1C21708F4();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:v5];

  return v7;
}

@end
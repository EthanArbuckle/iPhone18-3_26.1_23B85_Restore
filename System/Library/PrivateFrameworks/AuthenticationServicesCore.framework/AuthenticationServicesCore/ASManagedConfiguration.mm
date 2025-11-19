@interface ASManagedConfiguration
+ (id)loadFromDiskWithPlistURL:(id)a3 error:(id *)a4;
- (BOOL)isConfiguredForEnterpriseAttestationForRelyingParty:(id)a3;
- (_TtC26AuthenticationServicesCore22ASManagedConfiguration)init;
- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)a3;
@end

@implementation ASManagedConfiguration

+ (id)loadFromDiskWithPlistURL:(id)a3 error:(id *)a4
{
  v5 = sub_1C2170024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16[-v12];
  if (a3)
  {
    sub_1C216FFD4();
    (*(v6 + 32))(v13, v9, v5);
    (*(v6 + 56))(v13, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  swift_getObjCClassMetadata();
  v14 = static ASManagedConfiguration.loadFromDisk(plistURL:)(v13);
  sub_1C20EB498(v13, &qword_1EBF251D0, &qword_1C2176940);

  return v14;
}

- (BOOL)isConfiguredForEnterpriseAttestationForRelyingParty:(id)a3
{
  v4 = sub_1C2170914();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1C214A868(v4, v6);

  return v4 & 1;
}

- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)a3
{
  v4 = sub_1C2170914();
  v6 = v5;
  v7 = self;
  v8 = sub_1C214ABEC(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_1C2170154();
    sub_1C20B23C8(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (_TtC26AuthenticationServicesCore22ASManagedConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
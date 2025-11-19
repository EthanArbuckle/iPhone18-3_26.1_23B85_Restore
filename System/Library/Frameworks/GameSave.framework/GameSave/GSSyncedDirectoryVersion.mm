@interface GSSyncedDirectoryVersion
- (BOOL)isLocal;
- (GSSyncedDirectoryVersion)init;
- (GSSyncedDirectoryVersion)initWithVersion:(id)a3;
- (NSDate)modifiedDate;
- (NSString)description;
- (NSString)localizedNameOfSavingComputer;
- (NSURL)url;
@end

@implementation GSSyncedDirectoryVersion

- (BOOL)isLocal
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion);
  }

  else
  {
    return 1;
  }
}

- (NSString)localizedNameOfSavingComputer
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
    v5 = *v3;
    v4 = v3[1];
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = MEMORY[0x23EE6B6E0](v5, v4);

  return v6;
}

- (NSDate)modifiedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v12)
  {
    (*(v8 + 16))(v6, v12 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    Date.init()();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      outlined destroy of URL?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v13.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);

  return v13.super.isa;
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version))
  {
    v12 = self;
    GameSaveSyncedDirectory.Version.url.getter();

    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v14 = self;
    URL.init(fileURLWithPath:)();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      outlined destroy of URL?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  URL._bridgeToObjectiveC()(v13);
  v16 = v15;
  (*(v8 + 8))(v11, v7);

  return v16;
}

- (GSSyncedDirectoryVersion)initWithVersion:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return GSSyncedDirectoryVersion.init(version:)(v4);
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v2)
  {
    v3 = self;
    v2 = GameSaveSyncedDirectory.Version.description.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = MEMORY[0x23EE6B6E0](v2, v5);

  return v6;
}

- (GSSyncedDirectoryVersion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface GSSyncedDirectoryState
- (GSSyncedDirectoryState)init;
- (GSSyncedDirectoryState)initWithId:(id)a3 syncState:(int64_t)a4;
- (NSArray)conflictedVersions;
- (NSError)error;
- (NSURL)url;
- (id)internalValue;
@end

@implementation GSSyncedDirectoryState

- (id)internalValue
{
  outlined init with copy of Any?(self + OBJC_IVAR___GSSyncedDirectoryState_internalValue, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self;
  GSSyncedDirectoryState.url.getter(v6);

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (NSArray)conflictedVersions
{
  v2 = self;
  v3 = GSSyncedDirectoryState.conflictedVersions.getter();

  if (v3)
  {
    type metadata accessor for GSSyncedDirectoryVersion(v4);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (NSError)error
{
  v2 = self;
  v3 = GSSyncedDirectoryState.error.getter();

  if (v3)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GSSyncedDirectoryState)initWithId:(id)a3 syncState:(int64_t)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  *(self + OBJC_IVAR___GSSyncedDirectoryState_state) = a4;
  outlined init with copy of Any?(v9, self + OBJC_IVAR___GSSyncedDirectoryState_internalValue);
  v8.receiver = self;
  v8.super_class = GSSyncedDirectoryState;
  v6 = [(GSSyncedDirectoryState *)&v8 init];
  outlined destroy of URL?(v9, &_sypSgMd, &_sypSgMR);
  return v6;
}

- (GSSyncedDirectoryState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface BKObjectGraphHost
- (BKObjectGraphHost)init;
- (void)resolveAsyncDependenciesWithLibraryItemStateProvider:(id)a3 downloadProgressCenter:(id)a4 assetActionHandler:(id)a5 serviceCenter:(id)a6;
@end

@implementation BKObjectGraphHost

- (void)resolveAsyncDependenciesWithLibraryItemStateProvider:(id)a3 downloadProgressCenter:(id)a4 assetActionHandler:(id)a5 serviceCenter:(id)a6
{
  swift_unknownObjectRetain();
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a6;
  v13 = self;
  if (sub_1007A1F94())
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = v9;
    swift_unknownObjectRetain();
    v12 = v10;
    sub_1007A1FA4();

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
  }
}

- (BKObjectGraphHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
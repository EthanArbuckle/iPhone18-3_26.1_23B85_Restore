@interface BKObjectGraphHost
- (BKObjectGraphHost)init;
- (void)resolveAsyncDependenciesWithLibraryItemStateProvider:(id)provider downloadProgressCenter:(id)center assetActionHandler:(id)handler serviceCenter:(id)serviceCenter;
@end

@implementation BKObjectGraphHost

- (void)resolveAsyncDependenciesWithLibraryItemStateProvider:(id)provider downloadProgressCenter:(id)center assetActionHandler:(id)handler serviceCenter:(id)serviceCenter
{
  swift_unknownObjectRetain();
  centerCopy = center;
  swift_unknownObjectRetain();
  serviceCenterCopy = serviceCenter;
  selfCopy = self;
  if (sub_1007A1F94())
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = centerCopy;
    swift_unknownObjectRetain();
    v12 = serviceCenterCopy;
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
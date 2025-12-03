@interface CarPlayLibraryViewController.RecentlyAddedDataSource
- (_TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource)init;
- (void)contentManager:(id)manager didReceiveResponse:(id)response;
@end

@implementation CarPlayLibraryViewController.RecentlyAddedDataSource

- (void)contentManager:(id)manager didReceiveResponse:(id)response
{
  managerCopy = manager;
  responseCopy = response;
  selfCopy = self;
  sub_1003FC51C(managerCopy);
}

- (_TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface RemoteInstalledDepthAppsDataSource
- (void)dataSourceDidUpdate:(id)update;
- (void)dealloc;
- (void)updateInstalledDepthApps;
@end

@implementation RemoteInstalledDepthAppsDataSource

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for RemoteInstalledDepthAppsDataSource();
  [(RemoteInstalledDepthAppsDataSource *)&v4 dealloc];
}

- (void)updateInstalledDepthApps
{
  selfCopy = self;
  _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0();
}

- (void)dataSourceDidUpdate:(id)update
{
  selfCopy = self;
  _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0();
}

@end
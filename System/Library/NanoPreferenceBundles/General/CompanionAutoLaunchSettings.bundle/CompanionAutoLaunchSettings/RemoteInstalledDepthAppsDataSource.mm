@interface RemoteInstalledDepthAppsDataSource
- (void)dataSourceDidUpdate:(id)a3;
- (void)dealloc;
- (void)updateInstalledDepthApps;
@end

@implementation RemoteInstalledDepthAppsDataSource

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for RemoteInstalledDepthAppsDataSource();
  [(RemoteInstalledDepthAppsDataSource *)&v4 dealloc];
}

- (void)updateInstalledDepthApps
{
  v2 = self;
  _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0();
}

- (void)dataSourceDidUpdate:(id)a3
{
  v3 = self;
  _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0();
}

@end
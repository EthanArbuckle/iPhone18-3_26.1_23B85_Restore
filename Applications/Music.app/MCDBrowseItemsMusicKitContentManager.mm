@interface MCDBrowseItemsMusicKitContentManager
- (id)_modelRequest;
@end

@implementation MCDBrowseItemsMusicKitContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelStoreBrowseRoomRequest);
  dataSource = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    parentSection = [dataSource2 parentSection];
    [v3 configureWithParentSection:parentSection];
  }

  [v3 setClientIdentifier:MCDMusicCarPlayBundleIdentifier];
  [v3 setClientVersion:MCDMusicCarPlayVersion];
  [v3 setClientPlatformIdentifier:MCDMusicCarPlayPlatformIdentifier];
  [v3 setAuthenticationOptions:1];

  return v3;
}

@end
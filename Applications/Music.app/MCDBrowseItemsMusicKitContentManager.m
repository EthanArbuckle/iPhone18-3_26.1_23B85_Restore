@interface MCDBrowseItemsMusicKitContentManager
- (id)_modelRequest;
@end

@implementation MCDBrowseItemsMusicKitContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelStoreBrowseRoomRequest);
  v4 = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self dataSource];
    v7 = [v6 parentSection];
    [v3 configureWithParentSection:v7];
  }

  [v3 setClientIdentifier:MCDMusicCarPlayBundleIdentifier];
  [v3 setClientVersion:MCDMusicCarPlayVersion];
  [v3 setClientPlatformIdentifier:MCDMusicCarPlayPlatformIdentifier];
  [v3 setAuthenticationOptions:1];

  return v3;
}

@end
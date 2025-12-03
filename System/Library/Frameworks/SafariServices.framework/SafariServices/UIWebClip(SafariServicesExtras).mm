@interface UIWebClip(SafariServicesExtras)
+ (id)_sf_webClipWithUUID:()SafariServicesExtras;
- (id)_sf_applicationManifestPath;
- (id)_sf_stagedCookiesURL;
- (uint64_t)safari_isURLWithinNavigationScope:()SafariServicesExtras;
@end

@implementation UIWebClip(SafariServicesExtras)

- (id)_sf_applicationManifestPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = objc_opt_class();
  identifier = [self identifier];
  v5 = [v3 pathForWebClipStorageWithIdentifier:identifier];
  v6 = [v2 fileURLWithPath:v5 isDirectory:1];

  uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
  v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"ApplicationManifest" isDirectory:0];

  return v8;
}

- (id)_sf_stagedCookiesURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = objc_opt_class();
  identifier = [self identifier];
  v5 = [v3 pathForWebClipStorageWithIdentifier:identifier];
  v6 = [v2 fileURLWithPath:v5 isDirectory:1];

  uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
  v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"StagedCookies" isDirectory:1];

  return v8;
}

+ (id)_sf_webClipWithUUID:()SafariServicesExtras
{
  v3 = a3;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [MEMORY[0x1E69DD2B8] webClipWithUUID:v3];
    v5 = MEMORY[0x1E695DEF0];
    _sf_applicationManifestPath = [v4 _sf_applicationManifestPath];
    v7 = [v5 dataWithContentsOfURL:_sf_applicationManifestPath];

    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
    [v4 _sf_setApplicationManifest:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)safari_isURLWithinNavigationScope:()SafariServicesExtras
{
  v4 = a3;
  _sf_applicationManifest = [self _sf_applicationManifest];
  scope = [_sf_applicationManifest scope];
  v7 = scope;
  if (scope)
  {
    pageURL = scope;
  }

  else
  {
    pageURL = [self pageURL];
  }

  v9 = pageURL;

  v10 = [v4 safari_isWithinWebAppNavigationScope:v9 allowingQuirks:0];
  return v10;
}

@end
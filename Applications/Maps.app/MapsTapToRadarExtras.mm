@interface MapsTapToRadarExtras
+ (BOOL)shouldEnableTTRButton;
@end

@implementation MapsTapToRadarExtras

+ (BOOL)shouldEnableTTRButton
{
  v2 = +[UIApplication sharedApplication];
  isRunningTest = [v2 isRunningTest];

  if (isRunningTest)
  {
    return 0;
  }

  BOOL = GEOConfigGetBOOL();
  v6 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v6 isInternalInstall];
  v8 = BOOL ^ 1;
  v4 = (BOOL ^ 1) & isInternalInstall;
  if (v8 & 1) == 0 && (isInternalInstall)
  {
    if (+[MapsRadarDraft isTapToRadarKitSupported])
    {
      v4 = +[MapsRadarDraft isTapToRadarAuthorizedCached];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end
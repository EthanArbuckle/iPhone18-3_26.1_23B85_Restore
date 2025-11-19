@interface MapsTapToRadarExtras
+ (BOOL)shouldEnableTTRButton;
@end

@implementation MapsTapToRadarExtras

+ (BOOL)shouldEnableTTRButton
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    return 0;
  }

  BOOL = GEOConfigGetBOOL();
  v6 = +[GEOPlatform sharedPlatform];
  v7 = [v6 isInternalInstall];
  v8 = BOOL ^ 1;
  v4 = (BOOL ^ 1) & v7;
  if (v8 & 1) == 0 && (v7)
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
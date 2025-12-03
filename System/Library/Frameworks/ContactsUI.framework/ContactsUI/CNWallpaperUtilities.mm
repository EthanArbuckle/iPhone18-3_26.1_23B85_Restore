@interface CNWallpaperUtilities
+ (BOOL)supportsWatchImageDataRepairFor:(id)for;
- (_TtC10ContactsUI20CNWallpaperUtilities)init;
@end

@implementation CNWallpaperUtilities

+ (BOOL)supportsWatchImageDataRepairFor:(id)for
{
  v3 = sub_199DF9F8C();
  v5 = _s10ContactsUI20CNWallpaperUtilitiesC28supportsWatchImageDataRepair3forSbSS_tFZ_0(v3, v4);

  return v5 & 1;
}

- (_TtC10ContactsUI20CNWallpaperUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNWallpaperUtilities();
  return [(CNWallpaperUtilities *)&v3 init];
}

@end
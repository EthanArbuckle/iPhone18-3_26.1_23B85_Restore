@interface FPFavoriteFoldersQueryDescriptor
- (id)queryStringForMountPoint:(id)point;
@end

@implementation FPFavoriteFoldersQueryDescriptor

- (id)queryStringForMountPoint:(id)point
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  [settings excludedParentOIDs];

  v5 = MEMORY[0x1E696AEC0];
  v6 = FPIsTrashedQueryStringFragment(0);
  settings2 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs = [settings2 excludedParentOIDs];
  v9 = FPExcludedOIDParentsQueryStringFragment(excludedParentOIDs);
  v10 = [v5 stringWithFormat:@"(kMDItemFavoriteRank == \"*\" && kMDItemContentTypeTree == \"public.folder\"", v6, v9];

  return v10;
}

@end
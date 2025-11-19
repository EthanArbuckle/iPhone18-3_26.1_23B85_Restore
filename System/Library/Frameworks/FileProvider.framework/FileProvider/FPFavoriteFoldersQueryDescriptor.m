@interface FPFavoriteFoldersQueryDescriptor
- (id)queryStringForMountPoint:(id)a3;
@end

@implementation FPFavoriteFoldersQueryDescriptor

- (id)queryStringForMountPoint:(id)a3
{
  v4 = [(FPSpotlightQueryDescriptor *)self settings];
  [v4 excludedParentOIDs];

  v5 = MEMORY[0x1E696AEC0];
  v6 = FPIsTrashedQueryStringFragment(0);
  v7 = [(FPSpotlightQueryDescriptor *)self settings];
  v8 = [v7 excludedParentOIDs];
  v9 = FPExcludedOIDParentsQueryStringFragment(v8);
  v10 = [v5 stringWithFormat:@"(kMDItemFavoriteRank == \"*\" && kMDItemContentTypeTree == \"public.folder\"", v6, v9];

  return v10;
}

@end
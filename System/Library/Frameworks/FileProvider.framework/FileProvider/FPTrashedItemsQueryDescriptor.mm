@interface FPTrashedItemsQueryDescriptor
- (id)queryStringForMountPoint:(id)point;
@end

@implementation FPTrashedItemsQueryDescriptor

- (id)queryStringForMountPoint:(id)point
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  [settings excludedParentOIDs];

  v5 = MEMORY[0x1E696AEC0];
  v6 = FPIsTrashedQueryStringFragment(1);
  settings2 = [(FPSpotlightQueryDescriptor *)self settings];
  allowedProviders = [settings2 allowedProviders];
  v9 = FPFileProviderOriginatedItemsQueryStringFragment(allowedProviders);
  settings3 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs = [settings3 excludedParentOIDs];
  v12 = FPExcludedOIDParentsQueryStringFragment(excludedParentOIDs);
  v13 = [v5 stringWithFormat:@"%@ && %@ && (%@)", v6, v9, v12];

  return v13;
}

@end
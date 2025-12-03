@interface FPSharedDocumentsQueryDescriptor
- (id)queryStringForMountPoint:(id)point;
@end

@implementation FPSharedDocumentsQueryDescriptor

- (id)queryStringForMountPoint:(id)point
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  allowedFileTypes = [settings allowedFileTypes];
  v30 = allowedFileTypes;

  settings2 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedFileTypes = [settings2 excludedFileTypes];
  v8 = excludedFileTypes;
  v9 = MEMORY[0x1E695E0F0];
  if (excludedFileTypes)
  {
    v10 = excludedFileTypes;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;
  v29 = v11;

  settings3 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs = [settings3 excludedParentOIDs];
  v14 = excludedParentOIDs;
  if (excludedParentOIDs)
  {
    v15 = excludedParentOIDs;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;

  v17 = MEMORY[0x1E696AEC0];
  v18 = FPContentTypeQueryStringForFileTypes(allowedFileTypes, v11);

  v19 = FPIsTrashedQueryStringFragment(0);
  settings4 = [(FPSpotlightQueryDescriptor *)self settings];
  allowedProviders = [settings4 allowedProviders];
  v22 = FPFileProviderOriginatedItemsQueryStringFragment(allowedProviders);
  v23 = FPExcludedCollaborationInvitationsQueryStringFragment();
  settings5 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs2 = [settings5 excludedParentOIDs];
  v26 = FPExcludedOIDParentsQueryStringFragment(excludedParentOIDs2);
  v27 = [v17 stringWithFormat:@"(kMDItemIsShared = \"1\"", v18, v19, v22, v23, v26];

  return v27;
}

@end
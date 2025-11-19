@interface FPSharedDocumentsQueryDescriptor
- (id)queryStringForMountPoint:(id)a3;
@end

@implementation FPSharedDocumentsQueryDescriptor

- (id)queryStringForMountPoint:(id)a3
{
  v4 = [(FPSpotlightQueryDescriptor *)self settings];
  v5 = [v4 allowedFileTypes];
  v30 = v5;

  v6 = [(FPSpotlightQueryDescriptor *)self settings];
  v7 = [v6 excludedFileTypes];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;
  v29 = v11;

  v12 = [(FPSpotlightQueryDescriptor *)self settings];
  v13 = [v12 excludedParentOIDs];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;

  v17 = MEMORY[0x1E696AEC0];
  v18 = FPContentTypeQueryStringForFileTypes(v5, v11);

  v19 = FPIsTrashedQueryStringFragment(0);
  v20 = [(FPSpotlightQueryDescriptor *)self settings];
  v21 = [v20 allowedProviders];
  v22 = FPFileProviderOriginatedItemsQueryStringFragment(v21);
  v23 = FPExcludedCollaborationInvitationsQueryStringFragment();
  v24 = [(FPSpotlightQueryDescriptor *)self settings];
  v25 = [v24 excludedParentOIDs];
  v26 = FPExcludedOIDParentsQueryStringFragment(v25);
  v27 = [v17 stringWithFormat:@"(kMDItemIsShared = \"1\"", v18, v19, v22, v23, v26];

  return v27;
}

@end
@interface FPRecentDocumentsQueryDescriptor
- (id)queryStringForMountPoint:(id)a3;
- (unint64_t)desiredCount;
@end

@implementation FPRecentDocumentsQueryDescriptor

- (unint64_t)desiredCount
{
  v2 = [(FPSpotlightQueryDescriptor *)self settings];
  v3 = [v2 desiredNumberOfItems];
  v4 = v3;
  v5 = &unk_1F1FC9A70;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (id)queryStringForMountPoint:(id)a3
{
  v4 = [(FPSpotlightQueryDescriptor *)self settings];
  v5 = [v4 allowedFileTypes];

  v6 = [(FPSpotlightQueryDescriptor *)self settings];
  v7 = [v6 excludedFileTypes];

  v8 = [(FPSpotlightQueryDescriptor *)self settings];
  [v8 excludedParentOIDs];

  v9 = *MEMORY[0x1E6982DC8];
  v10 = [*MEMORY[0x1E6982DC8] identifier];
  v11 = [v7 containsObject:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [v9 identifier];
    v13 = [v7 arrayByAddingObject:v12];

    v7 = v13;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(FPSpotlightQueryDescriptor *)self settings];
  v16 = [v15 allowedProviders];
  v17 = FPRecentDocumentsQueryStringForTypes(v16, v5, v7);
  v18 = FPExcludedCollaborationInvitationsQueryStringFragment();
  v19 = [(FPSpotlightQueryDescriptor *)self settings];
  v20 = [v19 excludedParentOIDs];
  v21 = FPExcludedOIDParentsQueryStringFragment(v20);
  v22 = [v14 stringWithFormat:@"(%@) && (%@) && (%@)", v17, v18, v21];

  return v22;
}

@end
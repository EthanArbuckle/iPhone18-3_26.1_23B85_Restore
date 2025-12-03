@interface FPRecentDocumentsQueryDescriptor
- (id)queryStringForMountPoint:(id)point;
- (unint64_t)desiredCount;
@end

@implementation FPRecentDocumentsQueryDescriptor

- (unint64_t)desiredCount
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  desiredNumberOfItems = [settings desiredNumberOfItems];
  v4 = desiredNumberOfItems;
  v5 = &unk_1F1FC9A70;
  if (desiredNumberOfItems)
  {
    v5 = desiredNumberOfItems;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)queryStringForMountPoint:(id)point
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  allowedFileTypes = [settings allowedFileTypes];

  settings2 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedFileTypes = [settings2 excludedFileTypes];

  settings3 = [(FPSpotlightQueryDescriptor *)self settings];
  [settings3 excludedParentOIDs];

  v9 = *MEMORY[0x1E6982DC8];
  identifier = [*MEMORY[0x1E6982DC8] identifier];
  v11 = [excludedFileTypes containsObject:identifier];

  if ((v11 & 1) == 0)
  {
    identifier2 = [v9 identifier];
    v13 = [excludedFileTypes arrayByAddingObject:identifier2];

    excludedFileTypes = v13;
  }

  v14 = MEMORY[0x1E696AEC0];
  settings4 = [(FPSpotlightQueryDescriptor *)self settings];
  allowedProviders = [settings4 allowedProviders];
  v17 = FPRecentDocumentsQueryStringForTypes(allowedProviders, allowedFileTypes, excludedFileTypes);
  v18 = FPExcludedCollaborationInvitationsQueryStringFragment();
  settings5 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs = [settings5 excludedParentOIDs];
  v21 = FPExcludedOIDParentsQueryStringFragment(excludedParentOIDs);
  v22 = [v14 stringWithFormat:@"(%@) && (%@) && (%@)", v17, v18, v21];

  return v22;
}

@end
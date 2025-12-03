@interface FPTaggedItemsQueryDescriptor
- (id)queryStringForMountPoint:(id)point;
@end

@implementation FPTaggedItemsQueryDescriptor

- (id)queryStringForMountPoint:(id)point
{
  pointCopy = point;
  v5 = @"kMDItemUserTags";
  v44 = pointCopy;
  if (pointCopy && ![pointCopy isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"])
  {
    v5 = @"_kMDItemUserTags";
  }

  v6 = v5;
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  tagIdentifier = [settings tagIdentifier];

  v9 = MEMORY[0x1E696AEC0];
  v43 = v6;
  if (tagIdentifier)
  {
    settings2 = [(FPSpotlightQueryDescriptor *)self settings];
    tagIdentifier2 = [settings2 tagIdentifier];
    v42 = [v9 stringWithFormat:@"%@ == %@", v6, tagIdentifier2];
  }

  else
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == *", v6];
  }

  settings3 = [(FPSpotlightQueryDescriptor *)self settings];
  allowedFileTypes = [settings3 allowedFileTypes];

  settings4 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedFileTypes = [settings4 excludedFileTypes];
  v16 = excludedFileTypes;
  v17 = MEMORY[0x1E695E0F0];
  if (excludedFileTypes)
  {
    v18 = excludedFileTypes;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = v18;

  settings5 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs = [settings5 excludedParentOIDs];
  v22 = excludedParentOIDs;
  if (excludedParentOIDs)
  {
    v23 = excludedParentOIDs;
  }

  else
  {
    v23 = v17;
  }

  v41 = v23;

  v24 = *MEMORY[0x1E6982DC8];
  identifier = [*MEMORY[0x1E6982DC8] identifier];
  v26 = [allowedFileTypes containsObject:identifier];

  if ((v26 & 1) == 0)
  {
    identifier2 = [v24 identifier];
    v28 = [allowedFileTypes arrayByAddingObject:identifier2];

    allowedFileTypes = v28;
  }

  v38 = MEMORY[0x1E696AEC0];
  v40 = allowedFileTypes;
  v29 = FPContentTypeQueryStringForFileTypes(allowedFileTypes, v19);
  v30 = FPIsTrashedQueryStringFragment(0);
  settings6 = [(FPSpotlightQueryDescriptor *)self settings];
  allowedProviders = [settings6 allowedProviders];
  v33 = FPFileProviderOriginatedItemsQueryStringFragment(allowedProviders);
  settings7 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedParentOIDs2 = [settings7 excludedParentOIDs];
  v36 = FPExcludedOIDParentsQueryStringFragment(excludedParentOIDs2);
  v39 = [v38 stringWithFormat:@"(%@) && (%@) && (%@) && (%@) && (%@)", v29, v30, v33, v42, v36];

  return v39;
}

@end
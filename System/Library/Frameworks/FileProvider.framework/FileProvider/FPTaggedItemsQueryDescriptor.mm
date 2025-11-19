@interface FPTaggedItemsQueryDescriptor
- (id)queryStringForMountPoint:(id)a3;
@end

@implementation FPTaggedItemsQueryDescriptor

- (id)queryStringForMountPoint:(id)a3
{
  v4 = a3;
  v5 = @"kMDItemUserTags";
  v44 = v4;
  if (v4 && ![v4 isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"])
  {
    v5 = @"_kMDItemUserTags";
  }

  v6 = v5;
  v7 = [(FPSpotlightQueryDescriptor *)self settings];
  v8 = [v7 tagIdentifier];

  v9 = MEMORY[0x1E696AEC0];
  v43 = v6;
  if (v8)
  {
    v10 = [(FPSpotlightQueryDescriptor *)self settings];
    v11 = [v10 tagIdentifier];
    v42 = [v9 stringWithFormat:@"%@ == %@", v6, v11];
  }

  else
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == *", v6];
  }

  v12 = [(FPSpotlightQueryDescriptor *)self settings];
  v13 = [v12 allowedFileTypes];

  v14 = [(FPSpotlightQueryDescriptor *)self settings];
  v15 = [v14 excludedFileTypes];
  v16 = v15;
  v17 = MEMORY[0x1E695E0F0];
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = v18;

  v20 = [(FPSpotlightQueryDescriptor *)self settings];
  v21 = [v20 excludedParentOIDs];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v17;
  }

  v41 = v23;

  v24 = *MEMORY[0x1E6982DC8];
  v25 = [*MEMORY[0x1E6982DC8] identifier];
  v26 = [v13 containsObject:v25];

  if ((v26 & 1) == 0)
  {
    v27 = [v24 identifier];
    v28 = [v13 arrayByAddingObject:v27];

    v13 = v28;
  }

  v38 = MEMORY[0x1E696AEC0];
  v40 = v13;
  v29 = FPContentTypeQueryStringForFileTypes(v13, v19);
  v30 = FPIsTrashedQueryStringFragment(0);
  v31 = [(FPSpotlightQueryDescriptor *)self settings];
  v32 = [v31 allowedProviders];
  v33 = FPFileProviderOriginatedItemsQueryStringFragment(v32);
  v34 = [(FPSpotlightQueryDescriptor *)self settings];
  v35 = [v34 excludedParentOIDs];
  v36 = FPExcludedOIDParentsQueryStringFragment(v35);
  v39 = [v38 stringWithFormat:@"(%@) && (%@) && (%@) && (%@) && (%@)", v29, v30, v33, v42, v36];

  return v39;
}

@end
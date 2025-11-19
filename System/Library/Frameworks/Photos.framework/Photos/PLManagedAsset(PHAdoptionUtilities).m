@interface PLManagedAsset(PHAdoptionUtilities)
+ (id)pl_PHAssetsForManagedAssets:()PHAdoptionUtilities photoLibrary:;
- (id)pl_PHAssetFromPhotoLibrary:()PHAdoptionUtilities;
- (id)pl_PHAssetWithPropertySets:()PHAdoptionUtilities photoLibrary:;
@end

@implementation PLManagedAsset(PHAdoptionUtilities)

- (id)pl_PHAssetWithPropertySets:()PHAdoptionUtilities photoLibrary:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [PHAsset propertyFetchHintsForPropertySets:a3];
  v8 = [a1 objectID];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [v6 fetchPHObjectsForOIDs:v9 propertyHint:v7 includeTrash:1 overrideResultsWithClass:0];

  v11 = [v10 lastObject];

  return v11;
}

- (id)pl_PHAssetFromPhotoLibrary:()PHAdoptionUtilities
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PHAdoptionUtilities.m" lineNumber:617 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [v5 photoLibraryURL];
  v7 = [a1 photoLibrary];
  v8 = [v7 pathManager];
  v9 = [v8 libraryURL];
  v10 = [v6 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PHAdoptionUtilities.m" lineNumber:618 description:{@"Invalid parameter not satisfying: %@", @"[photoLibrary.photoLibraryURL isEqual:self.photoLibrary.pathManager.libraryURL]"}];
  }

  v11 = MEMORY[0x1E695DEC8];
  v12 = [a1 objectID];
  v13 = [v11 arrayWithObject:v12];
  v14 = [v5 fetchPHObjectsForOIDs:v13];

  v15 = [v14 lastObject];

  return v15;
}

+ (id)pl_PHAssetsForManagedAssets:()PHAdoptionUtilities photoLibrary:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PHAdoptionUtilities.m" lineNumber:634 description:@"This is only callable on the main thread"];
  }

  if ([v7 count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) objectID];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [v8 fetchPHObjectsForOIDs:v9];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

@end
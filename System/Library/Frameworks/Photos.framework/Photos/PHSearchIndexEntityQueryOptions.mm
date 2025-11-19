@interface PHSearchIndexEntityQueryOptions
- (PHPhotoLibrary)photoLibrary;
- (id)description;
- (id)psiDatabase;
@end

@implementation PHSearchIndexEntityQueryOptions

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  matchOptions = self->_matchOptions;
  if (matchOptions)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v5;
    if (matchOptions)
    {
      [v5 addObject:@"prefix"];
      if ((matchOptions & 2) == 0)
      {
LABEL_4:
        if ((matchOptions & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((matchOptions & 2) == 0)
    {
      goto LABEL_4;
    }

    [v6 addObject:@"substring"];
    if ((matchOptions & 4) == 0)
    {
LABEL_5:
      if ((matchOptions & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v6 addObject:@"exact"];
    if ((matchOptions & 8) == 0)
    {
LABEL_6:
      if ((matchOptions & 0x10) == 0)
      {
LABEL_8:
        v7 = [v6 componentsJoinedByString:@"|"];

        goto LABEL_10;
      }

LABEL_7:
      [v6 addObject:@"leading-anchored"];
      goto LABEL_8;
    }

LABEL_19:
    [v6 addObject:@"order-insensitive"];
    if ((matchOptions & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = @"none";
LABEL_10:
  v8 = self->_categories;
  if ([(NSIndexSet *)v8 count])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __PHSearchIndexEntityCategoriesDescription_block_invoke;
    v14[3] = &unk_1E75A9568;
    v15 = v9;
    v10 = v9;
    [(NSIndexSet *)v8 enumerateIndexesUsingBlock:v14];
    v11 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = @"none";
  }

  v12 = [v3 stringWithFormat:@"MatchOptions: %@, Categories: %@, Library: %@", v7, v11, self->_photoLibrary];

  return v12;
}

- (id)psiDatabase
{
  psiDatabaseForUnitTests = self->_psiDatabaseForUnitTests;
  if (psiDatabaseForUnitTests)
  {
    v3 = psiDatabaseForUnitTests;
  }

  else
  {
    v4 = [(PHSearchIndexEntityQueryOptions *)self photoLibrary];
    v5 = [v4 searchIndex];
    v3 = [v5 unverifiedPsiSearchIndex];
  }

  return v3;
}

- (PHPhotoLibrary)photoLibrary
{
  v3 = self->_photoLibrary;
  if (!self->_photoLibrary)
  {
    v4 = +[PHPhotoLibrary sharedPhotoLibrary];

    v3 = v4;
  }

  return v3;
}

@end
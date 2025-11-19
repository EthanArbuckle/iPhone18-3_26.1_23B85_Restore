@interface CNContactDiff
+ (id)diffContact:(id)a3 to:(id)a4 error:(id *)a5;
+ (id)diffContact:(id)a3 to:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)applyToABPerson:(void *)a3 isUnified:(BOOL)a4 logger:(id)a5 error:(id *)a6;
- (BOOL)containsUpdatesToKeyDescriptors:(id)a3;
- (CNContactDiff)initWithUpdates:(id)a3;
- (id)contactByApplyingUpdatesToContact:(id)a3;
- (id)description;
- (id)posterDataRequestsForContactWithIdentifier:(id)a3;
- (void)applyToMutableContact:(id)a3 withIdentifierMap:(id)a4;
- (void)applyToMutableContacts:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNContactDiff

- (BOOL)applyToABPerson:(void *)a3 isUnified:(BOOL)a4 logger:(id)a5 error:(id *)a6
{
  v7 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = objc_alloc_init(CNiOSABDependentPropertiesUpdateContext);
  [(CNiOSABDependentPropertiesUpdateContext *)v11 setIsUnifiedContact:v7];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(CNContactDiff *)self updates];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![*(*(&v19 + 1) + 8 * i) applyToABPerson:a3 withPropertiesContext:v11 logger:v10 error:a6])
        {

          v17 = 0;
          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = [(CNiOSABDependentPropertiesUpdateContext *)v11 flushPendingImageChangesToPerson:a3 logger:v10 error:a6];
LABEL_11:

  return v17;
}

- (id)posterDataRequestsForContactWithIdentifier:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__28;
  v27 = __Block_byref_object_dispose__28;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__28;
  v21 = __Block_byref_object_dispose__28;
  v22 = 0;
  v5 = [(CNContactDiff *)self updatesAsPosterDataUpdates];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CNContactDiff_PosterData__posterDataRequestsForContactWithIdentifier___block_invoke;
  v13[3] = &unk_1E7416BA8;
  v6 = v4;
  v14 = v6;
  v15 = &v23;
  v16 = &v17;
  v7 = [v5 _cn_flatMap:v13];

  v8 = [v24[5] watchWallpaperImages];
  v9 = [v8 firstObject];

  v10 = [v18[5] posters];
  v11 = [v10 firstObject];

  if (v9)
  {
    [v11 setWatchPosterImageData:v9];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

id __72__CNContactDiff_PosterData__posterDataRequestsForContactWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 posterDataChangeRequestsWithContactIdentifier:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__CNContactDiff_PosterData__posterDataRequestsForContactWithIdentifier___block_invoke_2;
  v6[3] = &unk_1E7416B80;
  v7 = *(a1 + 40);
  v4 = [v3 _cn_filter:v6];

  return v4;
}

BOOL __72__CNContactDiff_PosterData__posterDataRequestsForContactWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    objc_opt_class();
    v10 = v4;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
    }
  }

  return v6 == 0;
}

+ (id)diffContact:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CNContactDiffOptions);
  v11 = [a1 diffContact:v9 to:v8 options:v10 error:a5];

  return v11;
}

+ (id)diffContact:(id)a3 to:(id)a4 options:(id)a5 error:(id *)a6
{
  v14 = 0;
  v7 = [CNCalculatesContactDiff diffContact:a3 to:a4 options:a5 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v11 = [[CNContactDiff alloc] initWithUpdates:v7];
  }

  else if (a6)
  {
    v12 = v8;
    v11 = 0;
    *a6 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CNContactDiff)initWithUpdates:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNContactDiff;
  v5 = [(CNContactDiff *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    updates = v5->_updates;
    v5->_updates = v6;

    v8 = v5;
  }

  return v5;
}

- (id)contactByApplyingUpdatesToContact:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [MEMORY[0x1E6996778] multiDictionary];
  [(CNContactDiff *)self applyToMutableContact:v4 withIdentifierMap:v5];

  v6 = [v4 freeze];

  return v6;
}

- (void)applyToMutableContact:(id)a3 withIdentifierMap:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_updates;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) applyToMutableContact:v6 withIdentifierMap:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)applyToMutableContacts:(id)a3 withIdentifierMap:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(CNContactDiff *)self applyToMutableContact:*(*(&v12 + 1) + 8 * v11++) withIdentifierMap:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)containsUpdatesToKeyDescriptors:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_updates;
  v23 = [(NSArray *)v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v23)
  {
    v6 = *v32;
    v25 = v5;
    v26 = v4;
    v22 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v24 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = v4;
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              if ([v14 conformsToProtocol:&unk_1F0998880])
              {
                v15 = v14;
                v16 = [v15 _cn_requiredKeys];
                v17 = [v8 property];

                v18 = [v17 key];
                v19 = [v16 containsKey:v18];

                if (v19)
                {

                  v20 = 1;
                  v5 = v25;
                  v4 = v26;
                  goto LABEL_20;
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v24 + 1;
        v5 = v25;
        v4 = v26;
        v6 = v22;
      }

      while (v24 + 1 != v23);
      v20 = 0;
      v23 = [(NSArray *)v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v23);
  }

  else
  {
    v20 = 0;
  }

LABEL_20:

  return v20;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"contactUpdates" object:self->_updates];
  v5 = [v3 build];

  return v5;
}

@end
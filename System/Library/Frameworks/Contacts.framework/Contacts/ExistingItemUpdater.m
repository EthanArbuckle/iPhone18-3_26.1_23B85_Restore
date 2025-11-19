@interface ExistingItemUpdater
@end

@implementation ExistingItemUpdater

uint64_t __53___ExistingItemUpdater_existingPosterWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  if (v5 || *(a1 + 32))
  {
    v6 = [v3 identifier];
    v7 = [v6 UUIDString];
    v8 = [v7 isEqual:*(a1 + 32)];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __54___ExistingItemUpdater_updateExistingImagesWithImage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = [v5 source];
  v7 = [v6 integerValue];
  v8 = [*(a1 + 32) source];

  v9 = [v5 sourceIdentifier];
  if (!v9)
  {
    v2 = [*(a1 + 32) sourceIdentifier];
    if (!v2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v3 = [v5 sourceIdentifier];
  v10 = [*(a1 + 32) sourceIdentifier];
  v11 = [v3 isEqual:v10];

  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  v12 = [v5 variant];
  if (v12 || ([*(a1 + 32) variant], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = [v5 variant];
    v14 = [*(a1 + 32) variant];
    v15 = [v13 isEqual:v14];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_13:
  v16 = [v5 displayString];
  if (v16)
  {
    v17 = [v5 displayString];
    v18 = [*(a1 + 32) displayString];
    v19 = [v17 isEqualToString:v18];
  }

  else
  {
    v17 = [*(a1 + 32) displayString];
    v19 = v17 == 0;
  }

  return ((v7 == v8) & v11 & v15) & v19;
}

@end
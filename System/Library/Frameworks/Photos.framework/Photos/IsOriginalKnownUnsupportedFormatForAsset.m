@interface IsOriginalKnownUnsupportedFormatForAsset
@end

@implementation IsOriginalKnownUnsupportedFormatForAsset

void ___IsOriginalKnownUnsupportedFormatForAsset_block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 64) == 1)
  {
    [v2 originalVideoComplementUniformTypeIdentifier];
  }

  else
  {
    [v2 originalUniformTypeIdentifier];
  }
  v4 = ;
  if ([v3 isVideo])
  {
    v5 = 1;
    if (!v4)
    {
LABEL_9:
      if (v5)
      {
        if (*(a1 + 65))
        {
          v16 = 0;
          v8 = [v3 isPlayableVideo:&v16];
          v9 = v16;
        }

        else
        {
          v8 = [v3 isPlayableVideo:0];
          v9 = 0;
        }

        *(*(*(a1 + 48) + 8) + 24) = v8 ^ 1;
        if (*(a1 + 65) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1 && v9 != 0)
        {
          v17 = @"CodecName";
          v18 = v9;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
          v14 = *(*(a1 + 56) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v6 = MEMORY[0x1E69C0708];
  v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];
  LOBYTE(v6) = [v6 canGenerateImageDerivativesFromType:v7];

  if (v6)
  {
    goto LABEL_9;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(a1 + 65) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v19 = @"UTI";
    v20[0] = v4;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = *(*(a1 + 56) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
LABEL_22:
  }

LABEL_23:
}

@end
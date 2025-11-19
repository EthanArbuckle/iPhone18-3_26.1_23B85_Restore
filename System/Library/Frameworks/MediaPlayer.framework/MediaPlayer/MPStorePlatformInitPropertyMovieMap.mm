@interface MPStorePlatformInitPropertyMovieMap
@end

@implementation MPStorePlatformInitPropertyMovieMap

void ___MPStorePlatformInitPropertyMovieMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___MPStorePlatformInitPropertyMovieMap_block_invoke_2;
  v14[3] = &unk_1E767FAA0;
  v7 = v6;
  v15 = v7;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v14];
  v10 = [v9 personID];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___MPStorePlatformInitPropertyMovieMap_block_invoke_3;
  v12[3] = &unk_1E767FA78;
  v13 = v7;
  v11 = v7;
  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:v12];
}

void ___MPStorePlatformInitPropertyMovieMap_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"id"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v5 = [v4 longLongValue];
  }

  else
  {
    v5 = 0;
  }

  [v3 setAdamID:v5];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"libraryTrackId"];
  if (!_NSIsNSString())
  {
    if (!_NSIsNSNumber())
    {
      v15 = 0;
      goto LABEL_25;
    }

    v8 = v6;
    if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v9 = [v8 longLongValue];

      if (v9)
      {
        v10 = &v16 + 1;
        quot = v9;
        do
        {
          v12 = lldiv(quot, 10);
          quot = v12.quot;
          if (v12.rem >= 0)
          {
            LOBYTE(v13) = v12.rem;
          }

          else
          {
            v13 = -v12.rem;
          }

          *(v10 - 2) = v13 + 48;
          v14 = (v10 - 2);
          --v10;
        }

        while (v12.quot);
        if (v9 < 0)
        {
          *(v10 - 2) = 45;
          v14 = (v10 - 2);
        }

        v7 = CFStringCreateWithBytes(0, v14, &v16 - v14, 0x8000100u, 0);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v15 = @"0";
    goto LABEL_25;
  }

  v7 = v6;
LABEL_20:
  v15 = v7;
LABEL_25:

  [v3 setUniversalCloudLibraryID:v15];
}

void ___MPStorePlatformInitPropertyMovieMap_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 objectForKeyedSubscript:@"sagaId"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = [v5 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  [v3 setCloudID:v4];
}

@end
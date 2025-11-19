@interface MPStorePlatformInitPropertyAlbumMap
@end

@implementation MPStorePlatformInitPropertyAlbumMap

void ___MPStorePlatformInitPropertyAlbumMap_block_invoke_14(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"genreNames"];
  [v5 setObject:v7 forKeyedSubscript:@"genreNames"];

  v8 = [v6 objectForKeyedSubscript:@"genres"];

  [v5 setObject:v8 forKeyedSubscript:@"genres"];
}

void ___MPStorePlatformInitPropertyAlbumMap_block_invoke_13(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"artistId"];
  [v5 setObject:v7 forKeyedSubscript:@"id"];

  v8 = [v6 objectForKeyedSubscript:@"artistName"];

  [v5 setObject:v8 forKeyedSubscript:@"name"];
}

void *___MPStorePlatformInitPropertyAlbumMap_block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"classicalUrl"];
  if (v2)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = MEMORY[0x1E695E110];
  }

  v4 = v3;

  return v3;
}

id ___MPStorePlatformInitPropertyAlbumMap_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"releaseDate"];
  v3 = _MPStorePlatformDateFromString(v2);

  if (v3)
  {
    v4 = _MPStorePlatformCalendar();
    v5 = [v4 component:4 fromDate:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];

  return v6;
}

id ___MPStorePlatformInitPropertyAlbumMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"isAvailable"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 objectForKeyedSubscript:@"children.offers.type"];
    v7 = [v6 countForObject:@"subscription"] != 0;

    v5 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  }

  v8 = v5;

  return v8;
}

id ___MPStorePlatformInitPropertyAlbumMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"releaseDate"];
  v3 = _MPStorePlatformDateFromString(v2);

  if (v3)
  {
    v4 = _MPStorePlatformCalendar();
    v5 = [v4 components:1048606 fromDate:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id ___MPStorePlatformInitPropertyAlbumMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"children.contentRatingsBySystem.riaa.value"];
  v4 = [v2 objectForKeyedSubscript:@"contentRatingsBySystem.riaa.value"];

  if ([v3 count])
  {
    v5 = [v3 valueForKeyPath:@"@max.self"];
    v6 = [v5 integerValue];
  }

  else if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 > 499];

  return v7;
}

id ___MPStorePlatformInitPropertyAlbumMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"children.contentRatingsBySystem.riaa.value"];
  v4 = [v2 objectForKeyedSubscript:@"contentRatingsBySystem.riaa.value"];

  if ([v3 count])
  {
    v5 = [v3 valueForKeyPath:@"@min.self"];
    v6 = [v5 integerValue];
  }

  else if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 1000;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 < 500];

  return v7;
}

void ___MPStorePlatformInitPropertyAlbumMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___MPStorePlatformInitPropertyAlbumMap_block_invoke_2;
  v14[3] = &unk_1E767FAA0;
  v7 = v6;
  v15 = v7;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v14];
  v10 = [v9 personID];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___MPStorePlatformInitPropertyAlbumMap_block_invoke_3;
  v12[3] = &unk_1E767FA78;
  v13 = v7;
  v11 = v7;
  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:v12];
}

void ___MPStorePlatformInitPropertyAlbumMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 objectForKeyedSubscript:@"id"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = [v5 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  [v3 setAdamID:v4];
}

void ___MPStorePlatformInitPropertyAlbumMap_block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"libraryAlbumId"];
  if (!_NSIsNSString())
  {
    if (!_NSIsNSNumber())
    {
      v13 = 0;
      goto LABEL_20;
    }

    v6 = v4;
    if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v7 = [v6 longLongValue];

      if (v7)
      {
        v8 = &v14 + 1;
        quot = v7;
        do
        {
          v10 = lldiv(quot, 10);
          quot = v10.quot;
          if (v10.rem >= 0)
          {
            LOBYTE(v11) = v10.rem;
          }

          else
          {
            v11 = -v10.rem;
          }

          *(v8 - 2) = v11 + 48;
          v12 = (v8 - 2);
          --v8;
        }

        while (v10.quot);
        if (v7 < 0)
        {
          *(v8 - 2) = 45;
          v12 = (v8 - 2);
        }

        v5 = CFStringCreateWithBytes(0, v12, &v14 - v12, 0x8000100u, 0);
        goto LABEL_16;
      }
    }

    else
    {
    }

    v13 = @"0";
    goto LABEL_20;
  }

  v5 = v4;
LABEL_16:
  v13 = v5;
LABEL_20:

  [v3 setCloudAlbumID:v13];
}

@end
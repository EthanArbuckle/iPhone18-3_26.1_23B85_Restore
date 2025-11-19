@interface MPStorePlatformInitPropertySongMap
@end

@implementation MPStorePlatformInitPropertySongMap

void ___MPStorePlatformInitPropertySongMap_block_invoke_7_197(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"kind"];
  [v5 setObject:v7 forKeyedSubscript:@"kind"];

  v8 = [v6 objectForKeyedSubscript:@"shouldBookmarkPlayPosition"];

  [v5 setObject:v8 forKeyedSubscript:@"shouldBookmarkPlayPosition"];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_5_183(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"hasLyrics"];
  [v5 setObject:v7 forKeyedSubscript:@"hasLyrics"];

  v8 = [v6 objectForKeyedSubscript:@"hasTimeSyncedLyrics"];

  [v5 setObject:v8 forKeyedSubscript:@"hasTimeSyncedLyrics"];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_4_179(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"genreNames"];
  [v5 setObject:v7 forKeyedSubscript:@"genreNames"];

  v8 = [v6 objectForKeyedSubscript:@"genres"];

  [v5 setObject:v8 forKeyedSubscript:@"genres"];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_3_172(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 valueForKeyPath:@"composer.name"];
  [v5 setObject:v6 forKeyedSubscript:@"name"];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_2_162(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"artistId"];
  [v5 setObject:v7 forKeyedSubscript:@"id"];

  v8 = [v6 objectForKeyedSubscript:@"artistName"];

  [v5 setObject:v8 forKeyedSubscript:@"name"];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_136(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"collectionId"];
  [v5 setObject:v7 forKeyedSubscript:@"id"];

  v8 = [v6 objectForKeyedSubscript:@"collectionName"];
  [v5 setObject:v8 forKeyedSubscript:@"name"];

  v9 = [v6 objectForKeyedSubscript:@"releaseDate"];
  [v5 setObject:v9 forKeyedSubscript:@"releaseDate"];

  v10 = [v6 objectForKeyedSubscript:@"trackCount"];
  [v5 setObject:v10 forKeyedSubscript:@"trackCount"];

  v11 = [v6 objectForKeyedSubscript:@"discCount"];
  [v5 setObject:v11 forKeyedSubscript:@"discCount"];

  v12 = [v6 objectForKeyedSubscript:@"children"];
  [v5 setObject:v12 forKeyedSubscript:@"children"];

  v13 = [v6 objectForKeyedSubscript:@"copyright"];
  [v5 setObject:v13 forKeyedSubscript:@"copyright"];

  v14 = [v6 objectForKeyedSubscript:@"isPreorder"];
  [v5 setObject:v14 forKeyedSubscript:@"isPreorder"];

  v15 = [v6 objectForKeyedSubscript:@"genreNames"];
  [v5 setObject:v15 forKeyedSubscript:@"genreNames"];

  v16 = [v6 objectForKeyedSubscript:@"genres"];

  [v5 setObject:v16 forKeyedSubscript:@"genres"];
}

id ___MPStorePlatformInitPropertySongMap_block_invoke_9(uint64_t a1, void *a2)
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

id ___MPStorePlatformInitPropertySongMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"kind"];
  if ([v3 isEqual:@"uploadedAudio"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqual:@"uploadedVideo"] ^ 1;
  }

  v5 = [v2 objectForKeyedSubscript:@"offers.type"];
  v6 = [v5 countForObject:@"subscription"] != 0;

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 & v4];

  return v7;
}

id ___MPStorePlatformInitPropertySongMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"kind"];
  v3 = MEMORY[0x1E696AD98];
  if ([v2 isEqual:@"musicVideo"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isEqual:@"uploadedVideo"];
  }

  v5 = [v3 numberWithInt:v4];

  return v5;
}

id ___MPStorePlatformInitPropertySongMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"kind"];
  if ([v2 isEqual:@"uploadedAudio"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqual:@"uploadedVideo"];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  return v4;
}

id ___MPStorePlatformInitPropertySongMap_block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"durationInMillis"];
  if (_NSIsNSNumber())
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
    v6 = v5 / 1000.0;
    v7 = v4;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v2 objectForKeyedSubscript:{@"offers", 0}];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) valueForKeyPath:@"assets.@max.duration"];
          [v14 doubleValue];
          v16 = v15;

          if (v12 < v16)
          {
            v12 = v16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }

    v7 = MEMORY[0x1E696AD98];
    v6 = v12;
  }

  v17 = [v7 numberWithDouble:v6];

  return v17;
}

void ___MPStorePlatformInitPropertySongMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___MPStorePlatformInitPropertySongMap_block_invoke_2;
  v14[3] = &unk_1E767FAA0;
  v7 = v6;
  v15 = v7;
  v8 = a4;
  v9 = a3;
  [v8 setUniversalStoreIdentifiersWithBlock:v14];
  v10 = [v9 personID];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___MPStorePlatformInitPropertySongMap_block_invoke_3;
  v12[3] = &unk_1E767FA78;
  v13 = v7;
  v11 = v7;
  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:v12];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_2(uint64_t a1, void *a2)
{
  *&v49[104] = *MEMORY[0x1E69E9840];
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
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"formerIds"];
  if (_NSIsNSArray())
  {
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v44;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!_NSIsNSNumber())
        {
          v37 = a1;
          v38 = v3;

          v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v14 = v7;
          v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (!v15)
          {
            goto LABEL_30;
          }

          v16 = v15;
          v17 = *v40;
          while (1)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v39 + 1) + 8 * j);
              if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
              {
                v20 = [v19 longLongValue];

                if (!v20)
                {
                  continue;
                }

                v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v20];
                [v13 addObject:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (!v16)
            {
LABEL_30:

              a1 = v37;
              v3 = v38;
              goto LABEL_37;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v9)
      {
LABEL_14:

        v12 = v7;
LABEL_36:
        v13 = v12;
LABEL_37:

        goto LABEL_38;
      }
    }
  }

  if (_NSIsNSNumber())
  {
    v48[0] = v6;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  }

  else
  {
    v21 = v6;
    if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v22 = [v21 longLongValue];

      if (v22)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v22];
        v48[0] = v7;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
        goto LABEL_36;
      }
    }

    else
    {
    }

    v13 = MEMORY[0x1E695E0F0];
  }

LABEL_38:

  [v3 setFormerAdamIDs:v13];
  v23 = [*(a1 + 32) objectForKeyedSubscript:@"libraryTrackId"];
  if (!_NSIsNSString())
  {
    if (!_NSIsNSNumber())
    {
      v32 = 0;
      goto LABEL_60;
    }

    v25 = v23;
    if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v26 = [v25 longLongValue];

      if (v26)
      {
        v27 = &v49[1];
        quot = v26;
        do
        {
          v29 = lldiv(quot, 10);
          quot = v29.quot;
          if (v29.rem >= 0)
          {
            LOBYTE(v30) = v29.rem;
          }

          else
          {
            v30 = -v29.rem;
          }

          *(v27 - 2) = v30 + 48;
          v31 = v27 - 2;
          --v27;
        }

        while (v29.quot);
        if (v26 < 0)
        {
          *(v27 - 2) = 45;
          v31 = v27 - 2;
        }

        v24 = CFStringCreateWithBytes(0, v31, v49 - v31, 0x8000100u, 0);
        goto LABEL_53;
      }
    }

    else
    {
    }

    v32 = @"0";
    goto LABEL_60;
  }

  v24 = v23;
LABEL_53:
  v32 = v24;
LABEL_60:

  [v3 setUniversalCloudLibraryID:v32];
  v33 = [*(a1 + 32) objectForKeyedSubscript:@"purchasedAdamId"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v34 = [v33 longLongValue];
  }

  else
  {
    v34 = 0;
  }

  [v3 setPurchasedAdamID:v34];
  v35 = [*(a1 + 32) objectForKeyedSubscript:@"subscribedAdamID"];
  if (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v36 = [v35 longLongValue];
  }

  else
  {
    v36 = 0;
  }

  [v3 setSubscriptionAdamID:v36];
}

void ___MPStorePlatformInitPropertySongMap_block_invoke_3(uint64_t a1, void *a2)
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
@interface MPStoreItemMovieClip
- (MPStoreArtworkRequestToken)previewArtworkRequestToken;
- (MPStoreItemMovieClip)initWithLookupDictionary:(id)a3;
- (NSArray)assets;
- (NSString)title;
@end

@implementation MPStoreItemMovieClip

- (NSString)title
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"title"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MPStoreArtworkRequestToken)previewArtworkRequestToken
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"previewArtwork"];
  if (v2)
  {
    v3 = [MPStoreItemMetadata artworkRequestTokenForStorePlatformArtworkValue:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)assets
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"clipAssets"];
  if (_NSIsNSArray())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v10 = [MPStoreItemMovieClipAsset alloc];
            v11 = [(MPStoreItemMovieClipAsset *)v10 initWithLookupDictionary:v9, v13];
            if (v11)
            {
              if (!v6)
              {
                v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
              }

              [v6 addObject:v11];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPStoreItemMovieClip)initWithLookupDictionary:(id)a3
{
  v5 = a3;
  v6 = [(MPStoreItemMovieClip *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lookupDictionary, a3);
  }

  return v7;
}

@end
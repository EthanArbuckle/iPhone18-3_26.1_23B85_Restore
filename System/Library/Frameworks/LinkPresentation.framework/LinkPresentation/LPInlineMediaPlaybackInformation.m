@interface LPInlineMediaPlaybackInformation
+ (id)_inlineiTunesMediaPlaybackInformationWithType:(unint64_t)a3 storeIdentifier:(id)a4 storefrontIdentifier:(id)a5 offers:(id)a6 previewURL:(id)a7 lyricExcerpt:(id)a8 startTime:(double)a9;
+ (id)albumPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5;
+ (id)audioBookPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 previewURL:(id)a5 persistentIdentifier:(id)a6;
+ (id)audioFilePlaybackInformationWithAudio:(id)a3;
+ (id)playlistPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4;
+ (id)podcastEpisodePlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5 startTime:(double)a6;
+ (id)podcastPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5;
+ (id)radioPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4;
+ (id)songPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5 previewURL:(id)a6 lyricExcerpt:(id)a7;
- (BOOL)isAvailableForAnonymousDownload;
- (unint64_t)availability;
@end

@implementation LPInlineMediaPlaybackInformation

+ (id)_inlineiTunesMediaPlaybackInformationWithType:(unint64_t)a3 storeIdentifier:(id)a4 storefrontIdentifier:(id)a5 offers:(id)a6 previewURL:(id)a7 lyricExcerpt:(id)a8 startTime:(double)a9
{
  v16 = a4;
  v22 = a5;
  v21 = a6;
  v17 = a7;
  v18 = a8;
  if (v16 | v17)
  {
    v19 = objc_alloc_init(LPInlineMediaPlaybackInformation);
    v19->_type = a3;
    objc_storeStrong(&v19->_storeIdentifier, a4);
    objc_storeStrong(&v19->_storefrontIdentifier, a5);
    objc_storeStrong(&v19->_offers, a6);
    objc_storeStrong(&v19->_previewURL, a7);
    objc_storeStrong(&v19->_lyricExcerpt, a8);
    v19->_startTime = a9;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)songPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5 previewURL:(id)a6 lyricExcerpt:(id)a7
{
  v7 = [a1 _inlineiTunesMediaPlaybackInformationWithType:0 storeIdentifier:a3 storefrontIdentifier:a4 offers:a5 previewURL:a6 lyricExcerpt:a7 startTime:0.0];

  return v7;
}

+ (id)albumPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5
{
  v5 = [a1 _inlineiTunesMediaPlaybackInformationWithType:1 storeIdentifier:a3 storefrontIdentifier:a4 offers:a5 previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v5;
}

+ (id)radioPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4
{
  v4 = [a1 _inlineiTunesMediaPlaybackInformationWithType:2 storeIdentifier:a3 storefrontIdentifier:a4 offers:0 previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v4;
}

+ (id)podcastPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5
{
  v5 = [a1 _inlineiTunesMediaPlaybackInformationWithType:3 storeIdentifier:a3 storefrontIdentifier:a4 offers:a5 previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v5;
}

+ (id)podcastEpisodePlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 offers:(id)a5 startTime:(double)a6
{
  v6 = [a1 _inlineiTunesMediaPlaybackInformationWithType:4 storeIdentifier:a3 storefrontIdentifier:a4 offers:a5 previewURL:0 lyricExcerpt:0 startTime:a6];

  return v6;
}

+ (id)playlistPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4
{
  v4 = [a1 _inlineiTunesMediaPlaybackInformationWithType:5 storeIdentifier:a3 storefrontIdentifier:a4 offers:0 previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v4;
}

+ (id)audioBookPlaybackInformationWithStoreIdentifier:(id)a3 storefrontIdentifier:(id)a4 previewURL:(id)a5 persistentIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12 | v13)
  {
    v14 = objc_alloc_init(LPInlineMediaPlaybackInformation);
    v14->_type = 6;
    objc_storeStrong(&v14->_storeIdentifier, a3);
    objc_storeStrong(&v14->_storefrontIdentifier, a4);
    objc_storeStrong(&v14->_previewURL, a5);
    objc_storeStrong(&v14->_persistentIdentifier, a6);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)audioFilePlaybackInformationWithAudio:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LPInlineMediaPlaybackInformation);
  v4->_type = 7;
  audio = v4->_audio;
  v4->_audio = v3;

  return v4;
}

- (unint64_t)availability
{
  v18 = *MEMORY[0x1E69E9840];
  offers = self->_offers;
  if (!offers || ![(NSArray *)offers count])
  {
    return 3;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_offers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {

    return 3;
  }

  v6 = 0;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v13 + 1) + 8 * i);
      if ([v10 isEqualToString:{@"buy", v13}])
      {
        v6 = 1;
      }

      else
      {
        v7 |= [v10 isEqualToString:@"subscription"];
      }
    }

    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v5);

  v11 = 2;
  if ((v6 & 1) == 0)
  {
    v11 = 3;
  }

  if (v7)
  {
    v11 = 0;
  }

  if (v7 & v6)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

- (BOOL)isAvailableForAnonymousDownload
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_offers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isEqualToString:{@"anonymousDownload", v8}])
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

@end
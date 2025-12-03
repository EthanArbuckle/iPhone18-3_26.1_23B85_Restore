@interface LPInlineMediaPlaybackInformation
+ (id)_inlineiTunesMediaPlaybackInformationWithType:(unint64_t)type storeIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers previewURL:(id)l lyricExcerpt:(id)excerpt startTime:(double)time;
+ (id)albumPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers;
+ (id)audioBookPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier previewURL:(id)l persistentIdentifier:(id)persistentIdentifier;
+ (id)audioFilePlaybackInformationWithAudio:(id)audio;
+ (id)playlistPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier;
+ (id)podcastEpisodePlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers startTime:(double)time;
+ (id)podcastPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers;
+ (id)radioPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier;
+ (id)songPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers previewURL:(id)l lyricExcerpt:(id)excerpt;
- (BOOL)isAvailableForAnonymousDownload;
- (unint64_t)availability;
@end

@implementation LPInlineMediaPlaybackInformation

+ (id)_inlineiTunesMediaPlaybackInformationWithType:(unint64_t)type storeIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers previewURL:(id)l lyricExcerpt:(id)excerpt startTime:(double)time
{
  identifierCopy = identifier;
  storefrontIdentifierCopy = storefrontIdentifier;
  offersCopy = offers;
  lCopy = l;
  excerptCopy = excerpt;
  if (identifierCopy | lCopy)
  {
    v19 = objc_alloc_init(LPInlineMediaPlaybackInformation);
    v19->_type = type;
    objc_storeStrong(&v19->_storeIdentifier, identifier);
    objc_storeStrong(&v19->_storefrontIdentifier, storefrontIdentifier);
    objc_storeStrong(&v19->_offers, offers);
    objc_storeStrong(&v19->_previewURL, l);
    objc_storeStrong(&v19->_lyricExcerpt, excerpt);
    v19->_startTime = time;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)songPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers previewURL:(id)l lyricExcerpt:(id)excerpt
{
  v7 = [self _inlineiTunesMediaPlaybackInformationWithType:0 storeIdentifier:identifier storefrontIdentifier:storefrontIdentifier offers:offers previewURL:l lyricExcerpt:excerpt startTime:0.0];

  return v7;
}

+ (id)albumPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers
{
  v5 = [self _inlineiTunesMediaPlaybackInformationWithType:1 storeIdentifier:identifier storefrontIdentifier:storefrontIdentifier offers:offers previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v5;
}

+ (id)radioPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier
{
  v4 = [self _inlineiTunesMediaPlaybackInformationWithType:2 storeIdentifier:identifier storefrontIdentifier:storefrontIdentifier offers:0 previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v4;
}

+ (id)podcastPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers
{
  v5 = [self _inlineiTunesMediaPlaybackInformationWithType:3 storeIdentifier:identifier storefrontIdentifier:storefrontIdentifier offers:offers previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v5;
}

+ (id)podcastEpisodePlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier offers:(id)offers startTime:(double)time
{
  v6 = [self _inlineiTunesMediaPlaybackInformationWithType:4 storeIdentifier:identifier storefrontIdentifier:storefrontIdentifier offers:offers previewURL:0 lyricExcerpt:0 startTime:time];

  return v6;
}

+ (id)playlistPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier
{
  v4 = [self _inlineiTunesMediaPlaybackInformationWithType:5 storeIdentifier:identifier storefrontIdentifier:storefrontIdentifier offers:0 previewURL:0 lyricExcerpt:0 startTime:0.0];

  return v4;
}

+ (id)audioBookPlaybackInformationWithStoreIdentifier:(id)identifier storefrontIdentifier:(id)storefrontIdentifier previewURL:(id)l persistentIdentifier:(id)persistentIdentifier
{
  identifierCopy = identifier;
  storefrontIdentifierCopy = storefrontIdentifier;
  lCopy = l;
  persistentIdentifierCopy = persistentIdentifier;
  if (lCopy | persistentIdentifierCopy)
  {
    v14 = objc_alloc_init(LPInlineMediaPlaybackInformation);
    v14->_type = 6;
    objc_storeStrong(&v14->_storeIdentifier, identifier);
    objc_storeStrong(&v14->_storefrontIdentifier, storefrontIdentifier);
    objc_storeStrong(&v14->_previewURL, l);
    objc_storeStrong(&v14->_persistentIdentifier, persistentIdentifier);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)audioFilePlaybackInformationWithAudio:(id)audio
{
  audioCopy = audio;
  v4 = objc_alloc_init(LPInlineMediaPlaybackInformation);
  v4->_type = 7;
  audio = v4->_audio;
  v4->_audio = audioCopy;

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
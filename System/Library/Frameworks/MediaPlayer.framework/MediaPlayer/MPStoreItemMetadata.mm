@interface MPStoreItemMetadata
+ (id)artworkRequestTokenForStorePlatformArtworkValue:(id)value;
+ (id)storeServerCalendar;
- (BOOL)hasArtistBiography;
- (BOOL)hasCredits;
- (BOOL)hasLyrics;
- (BOOL)hasMetadataForRequestReason:(unint64_t)reason;
- (BOOL)hasSocialPosts;
- (BOOL)hasSubscriptionOffer;
- (BOOL)hasTimeSyncedLyrics;
- (BOOL)isBeats1;
- (BOOL)isChart;
- (BOOL)isCollaborative;
- (BOOL)isCompilation;
- (BOOL)isExpired;
- (BOOL)isExplicitContent;
- (BOOL)isLive;
- (BOOL)isMasteredForiTunes;
- (BOOL)isOnboardedPerson;
- (BOOL)isPreorder;
- (BOOL)isPrivatePerson;
- (BOOL)isStoreRedownloadable;
- (BOOL)isVerifiedPerson;
- (BOOL)radioStationIsSubscriptionOnly;
- (BOOL)shouldReportPlayEvents;
- (BOOL)showComposer;
- (BOOL)supportsSing;
- (BOOL)supportsVocalAttenuation;
- (MPStoreArtworkRequestToken)artworkRequestToken;
- (MPStoreArtworkRequestToken)latestAlbumArtworkRequestToken;
- (MPStoreArtworkRequestToken)staticTallEditorialArtworkRequestToken;
- (MPStoreArtworkRequestToken)superHeroTallEditorialArtworkRequestToken;
- (MPStoreItemMetadata)initWithCoder:(id)coder;
- (MPStoreItemMetadata)initWithDownloadAssetDictionary:(id)dictionary;
- (MPStoreItemMetadata)initWithStoreMusicAPIDictionary:(id)dictionary;
- (MPStoreItemMetadata)initWithStoreMusicAPIDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata;
- (MPStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date;
- (MPStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date;
- (MPStoreItemMetadata)metadataWithChildStorePlatformDictionaries:(id)dictionaries;
- (MPStoreItemMetadata)metadataWithParentMetadata:(id)metadata;
- (NSArray)artworkTrackIDs;
- (NSArray)audioTraits;
- (NSArray)childStoreItemMetadatas;
- (NSArray)childrenStoreIDs;
- (NSArray)formerStoreAdamIDs;
- (NSArray)genreNames;
- (NSArray)movieClips;
- (NSArray)offers;
- (NSArray)playlistIdentifiers;
- (NSArray)radioStationEvents;
- (NSDate)endingAirDate;
- (NSDate)expirationDate;
- (NSDate)lastModifiedDate;
- (NSDate)releaseDate;
- (NSDate)startingAirDate;
- (NSDictionary)effectiveStorePlatformDictionary;
- (NSDictionary)importableStorePlatformDictionary;
- (NSNumber)popularity;
- (NSNumber)shouldBookmarkPlayPosition;
- (NSString)artistName;
- (NSString)artistUploadedContentType;
- (NSString)cacheableItemIdentifier;
- (NSString)cloudAlbumID;
- (NSString)cloudUniversalLibraryID;
- (NSString)collectionName;
- (NSString)composerName;
- (NSString)copyrightText;
- (NSString)curatorHandle;
- (NSString)curatorName;
- (NSString)descriptionText;
- (NSString)editorNotes;
- (NSString)handle;
- (NSString)iTunesBrandType;
- (NSString)itemKind;
- (NSString)movementName;
- (NSString)name;
- (NSString)nameRaw;
- (NSString)personalMixSortKey;
- (NSString)playlistType;
- (NSString)radioStationProviderName;
- (NSString)radioStationSubtype;
- (NSString)recommendationID;
- (NSString)shortDescriptionText;
- (NSString)shortEditorNotes;
- (NSString)shortName;
- (NSString)versionHash;
- (NSString)videoSubtype;
- (NSString)workName;
- (NSURL)URL;
- (NSURL)classicalURL;
- (NSURL)shortURL;
- (double)duration;
- (id)_fetchValueFromStoreMusicAPIDictionary:(id)dictionary;
- (id)_musicAPIDateFormatter;
- (id)_storePlatformLastModifiedDateFormatter;
- (id)_storePlatformReleaseDateFormatter;
- (id)artistStoreID;
- (id)artworkRequestTokenForEditorialArtworkKind:(id)kind;
- (id)artworkRequestTokenForScreenshotArtwork;
- (id)artworkRequestTokenForStoreMusicAPIDictionary;
- (id)artworkRequestTokenForStorePlatformDictionary:(id)dictionary;
- (id)artworkRequestTokenForUberArtworkKind:(id)kind;
- (id)avatarArtworkRequestToken;
- (id)brickEditorialArtworkRequestToken;
- (id)childStorePlatformDictionaryForArtworkTrackID:(id)d;
- (id)childStorePlatformDictionaryForStoreID:(id)d;
- (id)collectionStoreID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionTextWithStyle:(id)style;
- (id)editorNotesWithStyle:(id)style;
- (id)flowcaseEditorialArtworkRequestToken;
- (id)metadataByAppendingMetadata:(id)metadata;
- (id)movieArtworkRequestToken;
- (id)staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary;
- (id)staticTallEditorialArtworkRequestTokenForStorePlatformDictionary:(id)dictionary;
- (id)stationGlyphRequestTokenForStoreMusicAPIDictionary;
- (id)stationGlyphRequestTokenForStorePlatformDictionary:(id)dictionary;
- (id)storeID;
- (id)superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary;
- (id)superHeroTallEditorialArtworkRequestTokenForStorePlatformDictionary:(id)dictionary;
- (id)tvEpisodeArtworkRequestToken;
- (id)tvShowArtworkRequestToken;
- (int64_t)discCount;
- (int64_t)discNumber;
- (int64_t)episodeCount;
- (int64_t)explicitRating;
- (int64_t)movementCount;
- (int64_t)movementNumber;
- (int64_t)movieClipsCount;
- (int64_t)purchasedAdamID;
- (int64_t)radioStationTypeID;
- (int64_t)seasonNumber;
- (int64_t)subscriptionAdamID;
- (int64_t)trackCount;
- (int64_t)trackNumber;
- (unint64_t)cloudID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPStoreItemMetadata

- (id)_fetchValueFromStoreMusicAPIDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(NSDictionary *)self->_storeMusicAPIDictionary valueForKeyPath:dictionaryCopy];
  if (!v5)
  {
    v6 = [(NSDictionary *)self->_storeMusicAPIDictionary objectForKey:@"attributes"];
    if (!_NSIsNSDictionary() || ([v6 valueForKeyPath:dictionaryCopy], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [(NSDictionary *)self->_storeMusicAPIDictionary objectForKey:@"relationships"];
      if (_NSIsNSDictionary())
      {
        v5 = [v7 valueForKeyPath:dictionaryCopy];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)_storePlatformLastModifiedDateFormatter
{
  if (_storePlatformLastModifiedDateFormatter_sOnceToken != -1)
  {
    dispatch_once(&_storePlatformLastModifiedDateFormatter_sOnceToken, &__block_literal_global_601);
  }

  v3 = _storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter;

  return v3;
}

void __62__MPStoreItemMetadata__storePlatformLastModifiedDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter;
  _storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter = v0;

  [_storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v2 = _storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = _storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  [_storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter setLenient:1];
  v6 = _storePlatformLastModifiedDateFormatter_sStorePlatformLastModifiedDateFormatter;
  v7 = +[MPStoreItemMetadata storeServerCalendar];
  [v6 setCalendar:v7];
}

- (id)_musicAPIDateFormatter
{
  if (_musicAPIDateFormatter_sOnceToken != -1)
  {
    dispatch_once(&_musicAPIDateFormatter_sOnceToken, &__block_literal_global_598);
  }

  v3 = _musicAPIDateFormatter_sMusicAPIDateFormatter;

  return v3;
}

void __45__MPStoreItemMetadata__musicAPIDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _musicAPIDateFormatter_sMusicAPIDateFormatter;
  _musicAPIDateFormatter_sMusicAPIDateFormatter = v0;
}

- (id)_storePlatformReleaseDateFormatter
{
  if (_storePlatformReleaseDateFormatter_sOnceToken != -1)
  {
    dispatch_once(&_storePlatformReleaseDateFormatter_sOnceToken, &__block_literal_global_588);
  }

  v3 = _storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter;

  return v3;
}

void __57__MPStoreItemMetadata__storePlatformReleaseDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter;
  _storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [_storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter setLocale:v2];
  [_storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter setDateFormat:@"YYYY-MM-dd"];
}

- (MPStoreItemMetadata)metadataWithParentMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [(MPStoreItemMetadata *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 72), metadata);
  }

  return v7;
}

- (MPStoreItemMetadata)metadataWithChildStorePlatformDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v6 = [(MPStoreItemMetadata *)self copy];
  v7 = v6;
  if (v6)
  {
    *(v6 + 40) = 1;
    objc_storeStrong((v6 + 56), dictionaries);
  }

  return v7;
}

- (id)metadataByAppendingMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  if (metadataCopy)
  {
    v6 = metadataCopy;
    v7 = v6;
    if (selfCopy->_downloadAssetDictionary && !v6->_downloadAssetDictionary)
    {

      v8 = selfCopy;
    }

    else
    {
      v8 = v6;
      v7 = selfCopy;
    }

    parentStoreItemMetadata = v8->_parentStoreItemMetadata;
    if (!parentStoreItemMetadata)
    {
      parentStoreItemMetadata = v7->_parentStoreItemMetadata;
    }

    v28 = parentStoreItemMetadata;
    v10 = v8;
    if (v8->_hasOverrideChildStorePlatformDictionaries || (v10 = v7, v7->_hasOverrideChildStorePlatformDictionaries))
    {
      v11 = v10->_overrideChildStorePlatformDictionaries;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = v7->_storePlatformDictionary;
    storePlatformDictionary = v8->_storePlatformDictionary;
    if (v13)
    {
      v15 = v13;
      if (storePlatformDictionary)
      {
        v16 = [(NSDictionary *)v13 mutableCopy];

        [(NSDictionary *)v16 addEntriesFromDictionary:v8->_storePlatformDictionary];
        v15 = v16;
      }
    }

    else
    {
      v15 = storePlatformDictionary;
    }

    v17 = v7->_downloadAssetDictionary;
    downloadAssetDictionary = v8->_downloadAssetDictionary;
    if (v17)
    {
      v19 = v17;
      if (downloadAssetDictionary)
      {
        v20 = [(NSDictionary *)v17 mutableCopy];

        [(NSDictionary *)v20 addEntriesFromDictionary:v8->_downloadAssetDictionary];
        v19 = v20;
      }
    }

    else
    {
      v19 = downloadAssetDictionary;
    }

    v21 = [objc_alloc(objc_opt_class()) initWithDownloadAssetDictionary:v19];
    selfCopy = v21;
    if (v21)
    {
      *(v21 + 40) = v12;
      objc_storeStrong((v21 + 56), v11);
      objc_storeStrong(&selfCopy->_parentStoreItemMetadata, parentStoreItemMetadata);
      objc_storeStrong(&selfCopy->_storePlatformDictionary, v15);
      v22 = v8->_expirationDate;
      v23 = v7->_expirationDate;
      v24 = v23;
      if (v22 && v23)
      {
        v25 = [(NSDate *)v22 earlierDate:v23];
      }

      else if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v23;
      }

      expirationDate = selfCopy->_expirationDate;
      selfCopy->_expirationDate = v25;
    }
  }

  return selfCopy;
}

- (id)brickEditorialArtworkRequestToken
{
  v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"subscriptionCover"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"subscriptionHero"];
  }

  [v3 setCropStyle:*MEMORY[0x1E69E4248]];

  return v3;
}

- (id)flowcaseEditorialArtworkRequestToken
{
  v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"subscriptionHero"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"subscriptionCover"];
    if (!v3)
    {
      v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForUberArtworkKind:@"masterArt"];
    }
  }

  v4 = v3;
  [v3 setCropStyle:*MEMORY[0x1E69E4250]];

  return v4;
}

- (id)movieArtworkRequestToken
{
  v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"subscriptionCover"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"fullscreenBackground"];
  }

  [v3 setCropStyle:*MEMORY[0x1E69E4250]];

  return v3;
}

- (id)tvShowArtworkRequestToken
{
  v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"browseCover"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self artworkRequestTokenForEditorialArtworkKind:@"subscriptionCover"];
  }

  [v3 setCropStyle:*MEMORY[0x1E69E4250]];

  return v3;
}

- (id)tvEpisodeArtworkRequestToken
{
  artworkRequestTokenForScreenshotArtwork = [(MPStoreItemMetadata *)self artworkRequestTokenForScreenshotArtwork];
  [artworkRequestTokenForScreenshotArtwork setCropStyle:*MEMORY[0x1E69E4250]];

  return artworkRequestTokenForScreenshotArtwork;
}

- (id)editorNotesWithStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    v9 = 0;
    goto LABEL_20;
  }

  storePlatformDictionary = self->_storePlatformDictionary;
  if (storePlatformDictionary)
  {
    v6 = [(NSDictionary *)storePlatformDictionary objectForKey:@"itunesNotes"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"editorialNotes"];
    }

    v10 = v8;

    if (_NSIsNSDictionary())
    {
      v9 = [v10 objectForKey:styleCopy];
      v11 = _NSIsNSString();

      if (v11)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      v10 = v9;
    }
  }

LABEL_13:
  v12 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"editorialNotes"];
  if (_NSIsNSDictionary())
  {
    v13 = [v12 objectForKey:styleCopy];
    if (_NSIsNSString())
    {
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v13 = v12;
  }

LABEL_20:

  return v9;
}

- (NSString)shortDescriptionText
{
  v2 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"shortDescription"];
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

- (id)descriptionTextWithStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    v8 = 0;
    goto LABEL_19;
  }

  storePlatformDictionary = self->_storePlatformDictionary;
  if (storePlatformDictionary)
  {
    v6 = [(NSDictionary *)storePlatformDictionary objectForKey:@"description"];
    if (_NSIsNSDictionary())
    {
      v7 = [v6 objectForKey:styleCopy];
      if (_NSIsNSString())
      {
        v8 = v7;

        if (v8)
        {
          goto LABEL_19;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v9 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"description"];
  if (_NSIsNSDictionary())
  {
    v10 = [v9 objectForKey:styleCopy];
    if (_NSIsNSString())
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else if (_NSIsNSString())
  {
    v10 = v9;
    v8 = v10;
  }

  else
  {
    v8 = 0;
    v10 = v9;
  }

LABEL_19:

  return v8;
}

- (id)childStorePlatformDictionaryForStoreID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    v12 = 0;
    goto LABEL_35;
  }

  if (!self->_hasOverrideChildStorePlatformDictionaries)
  {
    v5 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"children"];
    if (_NSIsNSDictionary())
    {
      v12 = [v5 objectForKey:dCopy];
      if (_NSIsNSDictionary())
      {
        goto LABEL_17;
      }
    }

    v12 = 0;
LABEL_17:
    if (!(v5 | v12))
    {
      v11 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"relationships.tracks.data"];
      if (_NSIsNSArray())
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = v11;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              v16 = [v15 objectForKeyedSubscript:{@"id", v18}];
              if ([v16 isEqual:dCopy] && _NSIsNSDictionary())
              {
                v12 = v15;

                goto LABEL_32;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_32:

        v5 = 0;
      }

      else
      {
        v5 = 0;
        v12 = 0;
      }

LABEL_33:
    }

    goto LABEL_34;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_overrideChildStorePlatformDictionaries;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (j = 0; j != v7; ++j)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * j);
        v11 = [v10 objectForKey:@"id"];
        if ([v11 isEqual:dCopy])
        {
          v12 = v10;
          goto LABEL_33;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_34:

LABEL_35:

  return v12;
}

- (id)childStorePlatformDictionaryForArtworkTrackID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"artworkTracks"];
    if (_NSIsNSDictionary())
    {
      v6 = [v5 objectForKey:dCopy];
      if (_NSIsNSDictionary())
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v6 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)stationGlyphRequestTokenForStorePlatformDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"stationGlyph"];
  if (v3)
  {
    v4 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stationGlyphRequestTokenForStoreMusicAPIDictionary
{
  v2 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"stationGlyph"];
  if (v2)
  {
    v3 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)superHeroTallEditorialArtworkRequestTokenForStorePlatformDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"editorialArtwork"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"superHeroTall"];
    v5 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)staticTallEditorialArtworkRequestTokenForStorePlatformDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"editorialArtwork"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"staticDetailTall"];
    v5 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkRequestTokenForStorePlatformDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"artwork"];
  if (v3)
  {
    v4 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary
{
  v2 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"editorialArtwork"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"superHeroTall"];
    v4 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary
{
  v2 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"editorialArtwork"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"staticDetailTall"];
    v4 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)artworkRequestTokenForStoreMusicAPIDictionary
{
  v2 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"artwork"];
  if (v2)
  {
    v3 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)avatarArtworkRequestToken
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"avatarArtwork"];
  if (v3 || ([(NSDictionary *)self->_storePlatformDictionary objectForKey:@"artwork"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkRequestTokenForUberArtworkKind:(id)kind
{
  kindCopy = kind;
  if (kindCopy)
  {
    v5 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"uber"];
    if (_NSIsNSDictionary())
    {
      v6 = [v5 objectForKey:kindCopy];
      if (_NSIsNSDictionary())
      {
        v7 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v6];
        if (v7)
        {
          v8 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v7];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)artworkRequestTokenForScreenshotArtwork
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"screenshots"];
  if (_NSIsNSDictionary())
  {
    v3 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v2];
    if (v3)
    {
      v4 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)artworkRequestTokenForEditorialArtworkKind:(id)kind
{
  kindCopy = kind;
  if (kindCopy)
  {
    v5 = [(NSDictionary *)self->_storeMusicAPIDictionary objectForKey:@"editorialArtwork"];
    if (_NSIsNSDictionary())
    {
      v6 = [v5 objectForKey:kindCopy];
      if (_NSIsNSDictionary())
      {
        v7 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v6];
        if (v7)
        {
          v8 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v7];
          [v8 setSourceEditorialArtworkKind:kindCopy];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)recommendationID
{
  v3 = [(NSDictionary *)self->_storeMusicAPIDictionary objectForKey:@"recommendationId"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"recommendationId"];
  }

  v6 = v5;

  if (_NSIsNSString())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsSing
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"supportsSing"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSURL)classicalURL
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"classicalUrl"];
  if (_NSIsNSString())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)radioStationEvents
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  _musicAPIDateFormatter = [(MPStoreItemMetadata *)self _musicAPIDateFormatter];
  v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"relationships"];
  if (_NSIsNSDictionary())
  {
    v5 = [v4 objectForKey:@"events"];
    if (_NSIsNSDictionary())
    {
      v6 = [v5 objectForKey:@"data"];
      if (_NSIsNSArray())
      {
        v17 = v4;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        obj = v6;
        v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              v11 = v3;
              if (*v23 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              v13 = [MPRadioStationEvent alloc];
              v20[0] = MEMORY[0x1E69E9820];
              v20[1] = 3221225472;
              v20[2] = __41__MPStoreItemMetadata_radioStationEvents__block_invoke;
              v20[3] = &unk_1E7678640;
              v20[4] = v12;
              v21 = _musicAPIDateFormatter;
              v14 = [(MPRadioStationEvent *)v13 initWithBlock:v20];
              v3 = v11;
              [v11 addObject:v14];
            }

            v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v8);
        }

        v15 = [v3 copy];
        v4 = v17;
      }

      else
      {
        v15 = v3;
      }
    }

    else
    {
      v15 = v3;
    }
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void __41__MPStoreItemMetadata_radioStationEvents__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) objectForKey:@"attributes"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"title"];
    [v13 setTitle:v4];

    v5 = *(a1 + 40);
    v6 = [v3 objectForKey:@"startTime"];
    v7 = [v5 dateFromString:v6];
    [v13 setStartTime:v7];

    v8 = *(a1 + 40);
    v9 = [v3 objectForKey:@"endTime"];
    v10 = [v8 dateFromString:v9];
    [v13 setEndTime:v10];

    v11 = [v3 objectForKey:@"description"];
    if (_NSIsNSDictionary())
    {
      v12 = [v11 objectForKey:@"standard"];
      [v13 setDescriptionText:v12];
    }
  }
}

- (NSDate)endingAirDate
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"airTime"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"end"];
    _storePlatformLastModifiedDateFormatter = [(MPStoreItemMetadata *)self _storePlatformLastModifiedDateFormatter];
    v6 = [_storePlatformLastModifiedDateFormatter dateFromString:v4];

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"airTime.end"];

  if (_NSIsNSString())
  {
    _musicAPIDateFormatter = [(MPStoreItemMetadata *)self _musicAPIDateFormatter];
    v6 = [_musicAPIDateFormatter dateFromString:v4];

    if (!v6)
    {
      _storePlatformReleaseDateFormatter = [(MPStoreItemMetadata *)self _storePlatformReleaseDateFormatter];
      v6 = [_storePlatformReleaseDateFormatter dateFromString:v4];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (NSDate)startingAirDate
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"airTime"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"start"];
    _storePlatformLastModifiedDateFormatter = [(MPStoreItemMetadata *)self _storePlatformLastModifiedDateFormatter];
    v6 = [_storePlatformLastModifiedDateFormatter dateFromString:v4];

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"airTime.start"];

  if (_NSIsNSString())
  {
    _musicAPIDateFormatter = [(MPStoreItemMetadata *)self _musicAPIDateFormatter];
    v6 = [_musicAPIDateFormatter dateFromString:v4];

    if (!v6)
    {
      _storePlatformReleaseDateFormatter = [(MPStoreItemMetadata *)self _storePlatformReleaseDateFormatter];
      v6 = [_storePlatformReleaseDateFormatter dateFromString:v4];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (BOOL)isLive
{
  v2 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"isLive"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)radioStationProviderName
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"stationProviderName"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (BOOL)isChart
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isChart"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)radioStationSubtype
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"streamingRadioSubType"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_storeMusicAPIDictionary objectForKey:@"streamingRadioSubType"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)radioStationIsSubscriptionOnly
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isForAppleMusicSubscribersOnly"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)radioStationTypeID
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"radioStationTypeId"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v2 = 0;
  }

  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isOnboardedPerson
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isOnboarded"];
  if (v2 && _NSIsNSNumber())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isVerifiedPerson
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isVerified"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPrivatePerson
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isPrivate"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)nameRaw
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"nameRaw"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)handle
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"handle"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)workName
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"workName"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"work"];
    if (!v3)
    {
      v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"workName"];
    }
  }

  v4 = v3;
  if ((_NSIsNSString() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (NSString)videoSubtype
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"videoSubType"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"videoSubType"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)versionHash
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"versionHash"];
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

- (NSURL)URL
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"url"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"url"];
  }

  if (_NSIsNSString() && [v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)shortURL
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"shortUrl"];
  if (_NSIsNSString() && [v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)seasonNumber
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"seasonNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"seasonNumber"];

    if (objc_opt_respondsToSelector())
    {
      v3 = v4;
    }

    else
    {

      v3 = 0;
    }
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)episodeCount
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"episodeCount"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"episodeCount"];

    if (objc_opt_respondsToSelector())
    {
      v3 = v4;
    }

    else
    {

      v3 = 0;
    }
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)trackNumber
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"trackNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"trackNumber"];

    v3 = v4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"trackNumber"];

    v3 = v5;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v3 = 0;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)trackCount
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"trackCount"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"trackCount"];

    if (objc_opt_respondsToSelector())
    {
      v3 = v4;
    }

    else
    {
      v5 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"children"];
      if (_NSIsNSDictionary())
      {
        v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"trackCount"];

    v3 = v6;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)subscriptionAdamID
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"subscribedAdamID"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v3 longLongValue];
  }

  else if ([(MPStoreItemMetadata *)self hasSubscriptionOffer])
  {
    storeID = [(MPStoreItemMetadata *)self storeID];
    longLongValue = MPStoreItemMetadataInt64NormalizeStoreIDValue(storeID);
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (int64_t)purchasedAdamID
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"purchasedAdamId"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (NSArray)formerStoreAdamIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"formerIds"];
  if (_NSIsNSArray())
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            if (_NSIsNSNumber())
            {
              v10 = v9;
            }

            else
            {
              v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
            }

            v11 = v10;
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v2 = v13;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)storeID
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"id"];
  if (v3 || ([(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"itemId"], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"id"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v6 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"playParams"];
    if (_NSIsNSDictionary())
    {
      v4 = [v6 objectForKey:@"id"];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)cloudUniversalLibraryID
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"libraryTrackId"];
  if (_NSIsNSString())
  {
    goto LABEL_5;
  }

  v4 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"libraryPlaylistId"];

  if (_NSIsNSString())
  {
    v3 = v4;
LABEL_5:
    v5 = v3;
    v3 = v5;
    goto LABEL_6;
  }

  v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"id"];

  if (_NSIsNSString())
  {
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (BOOL)showComposer
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"showComposer"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"showComposer"];
  }

  if ((_NSIsNSNumber() & 1) == 0)
  {

    v3 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldReportPlayEvents
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"shouldReportPlayEvents"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    itemKind = [(MPStoreItemMetadata *)self itemKind];
    if (MPStoreItemMetadataItemKindIsArtistUploadedContent(itemKind))
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = [(MPStoreItemMetadata *)self hasSubscriptionOffer];
    }
  }

  return bOOLValue;
}

- (NSNumber)shouldBookmarkPlayPosition
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"shouldBookmarkPlayPosition"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "BOOLValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)shortName
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"shortName"];
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

- (NSDate)lastModifiedDate
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"lastModifiedDate"];
  if (!_NSIsNSString() || (-[MPStoreItemMetadata _storePlatformLastModifiedDateFormatter](self, "_storePlatformLastModifiedDateFormatter"), v4 = objc_claimAutoreleasedReturnValue(), [v4 dateFromString:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"lastModifiedDate"];
    if (_NSIsNSString())
    {
      _musicAPIDateFormatter = [(MPStoreItemMetadata *)self _musicAPIDateFormatter];
      v5 = [_musicAPIDateFormatter dateFromString:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSDate)releaseDate
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"releaseDate"];
  if (!_NSIsNSString() || (-[MPStoreItemMetadata _storePlatformReleaseDateFormatter](self, "_storePlatformReleaseDateFormatter"), v4 = objc_claimAutoreleasedReturnValue(), [v4 dateFromString:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"releaseDate"];

    if (_NSIsNSString())
    {
      _musicAPIDateFormatter = [(MPStoreItemMetadata *)self _musicAPIDateFormatter];
      v5 = [_musicAPIDateFormatter dateFromString:v6];

      if (!v5)
      {
        _storePlatformReleaseDateFormatter = [(MPStoreItemMetadata *)self _storePlatformReleaseDateFormatter];
        v5 = [_storePlatformReleaseDateFormatter dateFromString:v6];
      }
    }

    else
    {
      v5 = 0;
    }

    v3 = v6;
  }

  return v5;
}

- (NSNumber)popularity
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"popularity"];
  if ((_NSIsNSNumber() & 1) != 0 || !v3 && ([(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"meta.popularity"], v3 = objc_claimAutoreleasedReturnValue(), _NSIsNSNumber()))
  {
    v4 = v3;
    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)playlistIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"playlistIds"];
  if (_NSIsNSArray())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = v2;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (_NSIsNSString())
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)offers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"offers"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"offers"];
  }

  if (_NSIsNSArray())
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v11 = [MPStoreItemOffer alloc];
            v12 = [(MPStoreItemOffer *)v11 initWithLookupDictionary:v10, v14];
            if (v12)
            {
              [v4 addObject:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)name
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"name"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"title"];
    if (!v3)
    {
      v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"itemName"];
      if (!v3)
      {
        v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"name"];
      }
    }
  }

  v4 = v3;
  if ((_NSIsNSString() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (NSArray)movieClips
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"movieClips"];
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
            v10 = [MPStoreItemMovieClip alloc];
            v11 = [(MPStoreItemMovieClip *)v10 initWithLookupDictionary:v9, v13];
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

- (int64_t)movieClipsCount
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"movieClips"];
  if (_NSIsNSArray())
  {
    v3 = [v2 count];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)movementNumber
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"movementNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"movementNumber"];

    v3 = v4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"movementNumber"];

    v3 = v5;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v3 = 0;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)movementName
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"movementName"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"movementName"];
    if (!v3)
    {
      v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"movementName"];
    }
  }

  v4 = v3;
  if ((_NSIsNSString() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (int64_t)movementCount
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"movementCount"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"movementCount"];

    v3 = v4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"movementCount"];

    v3 = v5;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v3 = 0;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (MPStoreArtworkRequestToken)latestAlbumArtworkRequestToken
{
  storePlatformDictionary = self->_storePlatformDictionary;
  if (storePlatformDictionary)
  {
    v3 = [(NSDictionary *)storePlatformDictionary objectForKey:@"latestAlbumArtwork"];
    if (v3)
    {
      v4 = [objc_opt_class() artworkRequestTokenForStorePlatformArtworkValue:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)iTunesBrandType
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"iTunesBrandType"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)personalMixSortKey
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"personalMixSortKey"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"personalMixSortKey"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)isCollaborative
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"hasCollaboration"];
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v2 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)playlistType
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"playlistType"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"playlistType"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)itemKind
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"kind"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"kind"];
    if ([v3 isEqualToString:@"music-video"])
    {
      v4 = @"musicVideo";
    }

    else
    {
      if (v3)
      {
        goto LABEL_11;
      }

      v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"playParams"];
      if (!_NSIsNSDictionary() || ([v3 objectForKey:@"kind"], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"kind"];
        if (!v5)
        {
          v5 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"type"];
        }
      }

      v4 = v5;
    }

    v3 = v4;
  }

LABEL_11:
  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsVocalAttenuation
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isVocalAttenuationAllowed"];
  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"isVocalAttenuationAllowed"];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      bOOLValue = 0;
      goto LABEL_7;
    }

    v3 = v4;
  }

  bOOLValue = [v3 BOOLValue];
LABEL_7:

  return bOOLValue;
}

- (NSArray)audioTraits
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"audioTraits"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"audioTraits"];
  }

  return v3;
}

- (BOOL)isStoreRedownloadable
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isAvailable"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    itemKind = [(MPStoreItemMetadata *)self itemKind];
    if (MPStoreItemMetadataItemKindIsArtistUploadedContent(itemKind))
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = [(MPStoreItemMetadata *)self hasSubscriptionOffer];
    }
  }

  return bOOLValue;
}

- (BOOL)isPreorder
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isPreorder"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"isPreorder"];
  }

  if ((_NSIsNSNumber() & 1) == 0)
  {

    v3 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isMasteredForiTunes
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isMasteredForItunes"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"isMasteredForItunes"];
    if (!v3)
    {
      v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"isMasteredForItunes"];
    }
  }

  v4 = v3;
  if ((_NSIsNSNumber() & 1) == 0)
  {

    v4 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCompilation
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isCompilation"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"isCompilation"];
  }

  if ((_NSIsNSNumber() & 1) == 0)
  {

    v3 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)explicitRating
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"contentRatingsBySystem"];
  if (_NSIsNSDictionary())
  {
    allValues = [v2 allValues];
    firstObject = [allValues firstObject];

    if (_NSIsNSDictionary())
    {
      v5 = [firstObject objectForKey:@"value"];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v5 integerValue];
      }

      else
      {
        integerValue = 100;
      }
    }

    else
    {
      integerValue = 100;
    }
  }

  else
  {
    integerValue = 100;
  }

  return integerValue;
}

- (BOOL)isExplicitContent
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"contentRatingsBySystem"];
  if (_NSIsNSDictionary())
  {
    allValues = [v3 allValues];
    firstObject = [allValues firstObject];

    if (_NSIsNSDictionary())
    {
      v6 = [firstObject objectForKey:@"value"];
      bOOLValue = (objc_opt_respondsToSelector() & 1) != 0 && [v6 integerValue] > 499;
LABEL_13:

      goto LABEL_14;
    }

    bOOLValue = 0;
  }

  else
  {
    firstObject = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"explicit"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [firstObject BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    if (self->_storeMusicAPIDictionary)
    {
      v6 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"contentRating"];
      if (_NSIsNSString())
      {
        bOOLValue |= [v6 isEqualToString:@"explicit"];
      }

      goto LABEL_13;
    }
  }

LABEL_14:

  return bOOLValue & 1;
}

- (NSArray)genreNames
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"genreNames"];
  if (_NSIsNSArray())
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (!_NSIsNSString())
          {

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  if (v3)
  {
    goto LABEL_53;
  }

LABEL_14:
  v9 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"genres"];
  if (_NSIsNSArray())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v3 = 0;
      v13 = *v31;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * j);
          if (_NSIsNSDictionary())
          {
            v16 = [v15 objectForKey:@"name"];
            if (_NSIsNSString())
            {
              if (!v3)
              {
                v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v3 addObject:v16];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v12);

      if (v3)
      {
        goto LABEL_53;
      }

      goto LABEL_32;
    }
  }

LABEL_32:
  v17 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"genre"];
  if (_NSIsNSString())
  {
    v39 = v17;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];

    if (v3)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v18 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"genreNames"];
  if (_NSIsNSArray())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v3 = 0;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * k);
          if (_NSIsNSString())
          {
            if (!v3)
            {
              v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v3 addObject:{v24, v26}];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_53:

  return v3;
}

- (BOOL)hasSubscriptionOffer
{
  hasSubscriptionOffer = self->_hasSubscriptionOffer;
  if (!hasSubscriptionOffer)
  {
    v4 = MEMORY[0x1E696AD98];
    offers = [(MPStoreItemMetadata *)self offers];
    v6 = MPStoreItemMetadataSubscriptionOfferInOffers(offers);
    v7 = [v4 numberWithInt:v6 != 0];
    v8 = self->_hasSubscriptionOffer;
    self->_hasSubscriptionOffer = v7;

    hasSubscriptionOffer = self->_hasSubscriptionOffer;
  }

  return [(NSNumber *)hasSubscriptionOffer BOOLValue];
}

- (BOOL)hasSocialPosts
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"hasSocialPosts"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)hasTimeSyncedLyrics
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"hasTimeSyncedLyrics"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)hasLyrics
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"hasLyrics"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)hasCredits
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"hasCredits"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)hasArtistBiography
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"hasArtistBio"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSDictionary)importableStorePlatformDictionary
{
  if (self->_storeMusicAPIDictionary)
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  else
  {
    effectiveStorePlatformDictionary = [(MPStoreItemMetadata *)self effectiveStorePlatformDictionary];
    v2 = effectiveStorePlatformDictionary;
    if (self->_parentStoreItemMetadata)
    {
      v6 = [effectiveStorePlatformDictionary objectForKeyedSubscript:@"artwork"];

      if (!v6)
      {
        effectiveStorePlatformDictionary2 = [(MPStoreItemMetadata *)self->_parentStoreItemMetadata effectiveStorePlatformDictionary];
        v8 = [effectiveStorePlatformDictionary2 objectForKeyedSubscript:@"artwork"];
        if (v8)
        {
          v9 = [v2 mutableCopy];
          [v9 setObject:v8 forKeyedSubscript:@"artwork"];
          v10 = [v9 copy];

          v2 = v10;
        }
      }
    }
  }

  return v2;
}

- (NSDictionary)effectiveStorePlatformDictionary
{
  v168[1] = *MEMORY[0x1E69E9840];
  storePlatformDictionary = self->_storePlatformDictionary;
  if (storePlatformDictionary)
  {
    v3 = storePlatformDictionary;
    goto LABEL_176;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  artworkRequestToken = [(MPStoreItemMetadata *)self artworkRequestToken];
  imageArtworkInfo = [artworkRequestToken imageArtworkInfo];
  responseDictionary = [imageArtworkInfo responseDictionary];

  if (_NSIsNSDictionary())
  {
    [v5 setObject:responseDictionary forKey:@"artwork"];
  }

  artistName = [(MPStoreItemMetadata *)self artistName];
  if (artistName)
  {
    [v5 setObject:artistName forKey:@"artistName"];
  }

  artistStoreID = [(MPStoreItemMetadata *)self artistStoreID];
  if (artistStoreID)
  {
    [v5 setObject:artistStoreID forKey:@"artistId"];
  }

  artistUploadedContentType = [(MPStoreItemMetadata *)self artistUploadedContentType];
  if (artistUploadedContentType)
  {
    [v5 setObject:artistUploadedContentType forKey:@"aucType"];
  }

  artworkTrackIDs = [(MPStoreItemMetadata *)self artworkTrackIDs];
  if (artworkTrackIDs)
  {
    [v5 setObject:artworkTrackIDs forKey:@"artworkTrackIds"];
  }

  audioTraits = [(MPStoreItemMetadata *)self audioTraits];
  if (audioTraits)
  {
    [v5 setObject:audioTraits forKey:@"audioTraits"];
  }

  childrenStoreIDs = [(MPStoreItemMetadata *)self childrenStoreIDs];
  if (childrenStoreIDs)
  {
    [v5 setObject:childrenStoreIDs forKey:@"childrenIds"];
  }

  v145 = v5;
  collectionName = [(MPStoreItemMetadata *)self collectionName];
  if (collectionName)
  {
    [v145 setObject:collectionName forKey:@"collectionName"];
  }

  v132 = childrenStoreIDs;
  v133 = audioTraits;
  v134 = artworkTrackIDs;
  collectionStoreID = [(MPStoreItemMetadata *)self collectionStoreID];
  if (collectionStoreID)
  {
    [v145 setObject:collectionStoreID forKey:@"collectionId"];
  }

  v130 = collectionStoreID;
  composerName = [(MPStoreItemMetadata *)self composerName];
  v129 = composerName;
  if (composerName)
  {
    v167 = @"name";
    v168[0] = composerName;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:&v167 count:1];
    [v145 setObject:v18 forKey:@"composer"];
  }

  copyrightText = [(MPStoreItemMetadata *)self copyrightText];
  if (copyrightText)
  {
    [v145 setObject:copyrightText forKey:@"copyright"];
  }

  curatorID = [(MPStoreItemMetadata *)self curatorID];
  if (curatorID)
  {
    [v145 setObject:curatorID forKey:@"curatorId"];
  }

  v127 = curatorID;
  curatorName = [(MPStoreItemMetadata *)self curatorName];
  if (curatorName)
  {
    [v145 setObject:curatorName forKey:@"curatorName"];
  }

  v126 = curatorName;
  [(MPStoreItemMetadata *)self curatorHandle];
  v22 = v138 = responseDictionary;
  if (v22)
  {
    [v145 setObject:v22 forKey:@"username"];
  }

  v23 = [(MPStoreItemMetadata *)self descriptionTextWithStyle:@"short"];
  v24 = [(MPStoreItemMetadata *)self descriptionTextWithStyle:@"standard"];
  v144 = v23;
  v25 = v23 | v24;
  v26 = v24;
  v128 = copyrightText;
  if (v25)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = v27;
    if (v144)
    {
      [v27 setObject:v144 forKey:@"short"];
    }

    if (v26)
    {
      [v28 setObject:v26 forKey:@"standard"];
    }

    [v145 setObject:v28 forKey:@"description"];
  }

  discCount = [(MPStoreItemMetadata *)self discCount];
  if (discCount)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:discCount];
    [v145 setObject:v30 forKey:@"discCount"];
  }

  discNumber = [(MPStoreItemMetadata *)self discNumber];
  if (discNumber)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:discNumber];
    [v145 setObject:v32 forKey:@"discNumber"];
  }

  v33 = [(MPStoreItemMetadata *)self editorNotesWithStyle:@"short"];
  v139 = [(MPStoreItemMetadata *)self editorNotesWithStyle:@"standard"];
  v143 = v33;
  if (v33 | v139)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v35 = v34;
    if (v143)
    {
      [v34 setObject:v143 forKey:@"short"];
    }

    if (v139)
    {
      [v35 setObject:v139 forKey:@"standard"];
    }

    [v145 setObject:v35 forKey:@"itunesNotes"];
  }

  if ([(MPStoreItemMetadata *)self hasArtistBiography])
  {
    [v145 setObject:MEMORY[0x1E695E118] forKey:@"hasArtistBio"];
  }

  if ([(MPStoreItemMetadata *)self hasLyrics])
  {
    [v145 setObject:MEMORY[0x1E695E118] forKey:@"hasLyrics"];
  }

  if ([(MPStoreItemMetadata *)self hasTimeSyncedLyrics])
  {
    [v145 setObject:MEMORY[0x1E695E118] forKey:@"hasTimeSyncedLyrics"];
  }

  v135 = artistUploadedContentType;
  v136 = artistStoreID;
  v137 = artistName;
  if ([(MPStoreItemMetadata *)self hasSocialPosts])
  {
    [v145 setObject:MEMORY[0x1E695E118] forKey:@"hasSocialPosts"];
  }

  genreNames = [(MPStoreItemMetadata *)self genreNames];
  v131 = collectionName;
  v36 = v145;
  v124 = v26;
  v125 = v22;
  if ([genreNames count])
  {
    [v145 setObject:genreNames forKey:@"genreNames"];
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v37 = genreNames;
    v38 = [v37 countByEnumeratingWithState:&v154 objects:v166 count:16];
    if (!v38)
    {
      v40 = v37;
      goto LABEL_68;
    }

    v39 = v38;
    v40 = 0;
    v41 = *v155;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v155 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v154 + 1) + 8 * i);
        v164 = @"name";
        v165 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
        if (!v40)
        {
          v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
        }

        [v40 addObject:v44];
      }

      v39 = [v37 countByEnumeratingWithState:&v154 objects:v166 count:16];
    }

    while (v39);

    v36 = v145;
    if (v40)
    {
      [v145 setObject:v40 forKey:@"genres"];
LABEL_68:
    }
  }

  if ([(MPStoreItemMetadata *)self isBeats1])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isBeats1"];
  }

  explicitRating = [(MPStoreItemMetadata *)self explicitRating];
  if (explicitRating)
  {
    goto LABEL_74;
  }

  if ([(MPStoreItemMetadata *)self isExplicitContent])
  {
    explicitRating = 500;
LABEL_74:
    v162 = @"riaa";
    v160 = @"value";
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:explicitRating];
    v161 = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
    v163 = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
    [v36 setObject:v48 forKey:@"contentRatingsBySystem"];
  }

  if ([(MPStoreItemMetadata *)self isCompilation])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isCompilation"];
  }

  if ([(MPStoreItemMetadata *)self isMasteredForiTunes])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isMasteredForItunes"];
  }

  if ([(MPStoreItemMetadata *)self isPreorder])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isPreorder"];
  }

  itemKind = [(MPStoreItemMetadata *)self itemKind];
  if (itemKind)
  {
    [v36 setObject:itemKind forKey:@"kind"];
  }

  playlistType = [(MPStoreItemMetadata *)self playlistType];
  if (playlistType)
  {
    [v36 setObject:playlistType forKey:@"playlistType"];
  }

  personalMixSortKey = [(MPStoreItemMetadata *)self personalMixSortKey];
  if (personalMixSortKey)
  {
    [v36 setObject:personalMixSortKey forKey:@"personalMixSortKey"];
  }

  movementName = [(MPStoreItemMetadata *)self movementName];
  if (movementName)
  {
    [v36 setObject:movementName forKey:@"movementName"];
  }

  movementCount = [(MPStoreItemMetadata *)self movementCount];
  if (movementCount)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:movementCount];
    [v36 setObject:v54 forKey:@"movementCount"];
  }

  movementNumber = [(MPStoreItemMetadata *)self movementNumber];
  if (movementNumber)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInteger:movementNumber];
    [v36 setObject:v56 forKey:@"movementNumber"];
  }

  movieClips = [(MPStoreItemMetadata *)self movieClips];
  v122 = playlistType;
  v123 = itemKind;
  v120 = movementName;
  v121 = personalMixSortKey;
  if ([movieClips count])
  {
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v58 = movieClips;
    v59 = [v58 countByEnumeratingWithState:&v150 objects:v159 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v151;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v151 != v61)
          {
            objc_enumerationMutation(v58);
          }

          lookupDictionary = [*(*(&v150 + 1) + 8 * j) lookupDictionary];
          [v57 addObject:lookupDictionary];
        }

        v60 = [v58 countByEnumeratingWithState:&v150 objects:v159 count:16];
      }

      while (v60);
    }

    [v36 setObject:v57 forKey:@"movieClips"];
  }

  name = [(MPStoreItemMetadata *)self name];
  if (name)
  {
    [v36 setObject:name forKey:@"name"];
  }

  offers = [(MPStoreItemMetadata *)self offers];
  v119 = name;
  if ([offers count])
  {
    v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v66 = offers;
    v67 = [v66 countByEnumeratingWithState:&v146 objects:v158 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v147;
      do
      {
        for (k = 0; k != v68; ++k)
        {
          if (*v147 != v69)
          {
            objc_enumerationMutation(v66);
          }

          lookupDictionary2 = [*(*(&v146 + 1) + 8 * k) lookupDictionary];
          if (lookupDictionary2)
          {
            [v65 addObject:lookupDictionary2];
          }
        }

        v68 = [v66 countByEnumeratingWithState:&v146 objects:v158 count:16];
      }

      while (v68);
    }

    [v36 setObject:v65 forKey:@"offers"];
  }

  playlistIdentifiers = [(MPStoreItemMetadata *)self playlistIdentifiers];
  if (playlistIdentifiers)
  {
    [v36 setObject:playlistIdentifiers forKey:@"playlistIds"];
  }

  popularity = [(MPStoreItemMetadata *)self popularity];
  if (popularity)
  {
    [v36 setObject:popularity forKey:@"popularity"];
  }

  releaseDate = [(MPStoreItemMetadata *)self releaseDate];
  if (releaseDate)
  {
    _storePlatformReleaseDateFormatter = [(MPStoreItemMetadata *)self _storePlatformReleaseDateFormatter];
    v76 = [_storePlatformReleaseDateFormatter stringFromDate:releaseDate];
    if (v76)
    {
      [v36 setObject:v76 forKey:@"releaseDate"];
    }
  }

  lastModifiedDate = [(MPStoreItemMetadata *)self lastModifiedDate];
  if (lastModifiedDate)
  {
    _storePlatformLastModifiedDateFormatter = [(MPStoreItemMetadata *)self _storePlatformLastModifiedDateFormatter];
    v79 = [_storePlatformLastModifiedDateFormatter stringFromDate:lastModifiedDate];
    if (v79)
    {
      [v36 setObject:v79 forKey:@"lastModifiedDate"];
    }
  }

  v112 = popularity;
  shortName = [(MPStoreItemMetadata *)self shortName];
  if (shortName)
  {
    [v36 setObject:shortName forKey:@"shortName"];
  }

  shouldBookmarkPlayPosition = [(MPStoreItemMetadata *)self shouldBookmarkPlayPosition];
  if (shouldBookmarkPlayPosition)
  {
    [v36 setObject:shouldBookmarkPlayPosition forKey:@"shouldBookmarkPlayPosition"];
  }

  if ([(MPStoreItemMetadata *)self showComposer])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v36 setObject:v82 forKey:@"showComposer"];
  }

  storeID = [(MPStoreItemMetadata *)self storeID];
  if (storeID)
  {
    [v36 setObject:storeID forKey:@"id"];
  }

  socialProfileID = [(MPStoreItemMetadata *)self socialProfileID];
  if (socialProfileID)
  {
    [v36 setObject:socialProfileID forKey:@"socialProfileId"];
  }

  v113 = socialProfileID;
  trackCount = [(MPStoreItemMetadata *)self trackCount];
  v114 = storeID;
  if (trackCount)
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInteger:trackCount];
    [v36 setObject:v86 forKey:@"trackCount"];
  }

  trackNumber = [(MPStoreItemMetadata *)self trackNumber];
  if (trackNumber)
  {
    v88 = [MEMORY[0x1E696AD98] numberWithInteger:trackNumber];
    [v36 setObject:v88 forKey:@"trackNumber"];
  }

  seasonNumber = [(MPStoreItemMetadata *)self seasonNumber];
  if (seasonNumber)
  {
    v90 = [MEMORY[0x1E696AD98] numberWithInteger:seasonNumber];
    [v36 setObject:v90 forKey:@"seasonNumber"];
  }

  episodeCount = [(MPStoreItemMetadata *)self episodeCount];
  if (episodeCount)
  {
    v92 = [MEMORY[0x1E696AD98] numberWithInteger:episodeCount];
    [v36 setObject:v92 forKey:@"episodeCount"];
  }

  versionHash = [(MPStoreItemMetadata *)self versionHash];
  if (versionHash)
  {
    [v36 setObject:versionHash forKey:@"versionHash"];
  }

  v117 = releaseDate;
  workName = [(MPStoreItemMetadata *)self workName];
  if (workName)
  {
    [v36 setObject:workName forKey:@"workName"];
  }

  v116 = lastModifiedDate;
  iTunesBrandType = [(MPStoreItemMetadata *)self iTunesBrandType];
  if (iTunesBrandType)
  {
    [v36 setObject:iTunesBrandType forKey:@"iTunesBrandType"];
  }

  handle = [(MPStoreItemMetadata *)self handle];
  if (handle)
  {
    [v36 setObject:handle forKey:@"handle"];
  }

  nameRaw = [(MPStoreItemMetadata *)self nameRaw];
  if (nameRaw)
  {
    [v36 setObject:nameRaw forKey:@"nameRaw"];
  }

  if ([(MPStoreItemMetadata *)self isPrivatePerson])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isPrivate"];
  }

  if ([(MPStoreItemMetadata *)self isVerifiedPerson])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isVerified"];
  }

  v111 = versionHash;
  if ([(MPStoreItemMetadata *)self isOnboardedPerson])
  {
    [v36 setObject:MEMORY[0x1E695E118] forKey:@"isOnboarded"];
  }

  v115 = shortName;
  shortURL = [(MPStoreItemMetadata *)self shortURL];
  absoluteString = [shortURL absoluteString];

  if (absoluteString)
  {
    [v145 setObject:absoluteString forKey:@"shortUrl"];
  }

  v100 = [(MPStoreItemMetadata *)self URL];
  absoluteString2 = [v100 absoluteString];

  if (absoluteString2)
  {
    [v145 setObject:absoluteString2 forKey:@"url"];
  }

  v118 = playlistIdentifiers;
  videoSubtype = [(MPStoreItemMetadata *)self videoSubtype];
  if (videoSubtype)
  {
    [v145 setObject:videoSubtype forKey:@"videoSubType"];
  }

  v110 = nameRaw;
  radioStationTypeID = [(MPStoreItemMetadata *)self radioStationTypeID];
  if (radioStationTypeID)
  {
    v104 = [MEMORY[0x1E696AD98] numberWithInteger:radioStationTypeID];
    [v145 setObject:v104 forKey:@"radioStationTypeId"];
  }

  v105 = handle;
  radioStationSubtype = [(MPStoreItemMetadata *)self radioStationSubtype];
  if (radioStationSubtype)
  {
    [v145 setObject:radioStationSubtype forKey:@"streamingRadioSubType"];
  }

  v107 = workName;
  if ([(MPStoreItemMetadata *)self isChart])
  {
    [v145 setObject:MEMORY[0x1E695E118] forKey:@"isChart"];
  }

  radioStationProviderName = [(MPStoreItemMetadata *)self radioStationProviderName];
  if (radioStationProviderName)
  {
    [v145 setObject:radioStationProviderName forKey:@"stationProviderName"];
  }

  v3 = v145;

LABEL_176:

  return v3;
}

- (NSString)shortEditorNotes
{
  v3 = [(MPStoreItemMetadata *)self editorNotesWithStyle:@"short"];
  if (![v3 length])
  {
    v4 = [(MPStoreItemMetadata *)self editorNotesWithStyle:@"standard"];

    v3 = v4;
  }

  return v3;
}

- (BOOL)isExpired
{
  expirationDate = [(MPStoreItemMetadata *)self expirationDate];
  if (expirationDate)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v4 = [expirationDate compare:v3] == -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)expirationDate
{
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    expirationDate = expirationDate;
  }

  else
  {
    expirationDate = [(MPStoreItemMetadata *)self->_parentStoreItemMetadata expirationDate];
  }

  return expirationDate;
}

- (NSString)editorNotes
{
  v3 = [(MPStoreItemMetadata *)self editorNotesWithStyle:@"standard"];
  if (![v3 length])
  {
    v4 = [(MPStoreItemMetadata *)self editorNotesWithStyle:@"short"];

    v3 = v4;
  }

  return v3;
}

- (double)duration
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  storePlatformDictionary = self->_storePlatformDictionary;
  if (storePlatformDictionary)
  {
    v4 = [(NSDictionary *)storePlatformDictionary objectForKey:@"durationInMillis"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      offers = [(MPStoreItemMetadata *)selfCopy offers];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = [offers countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v6)
      {
        goto LABEL_25;
      }

      v7 = v6;
      v23 = selfCopy;
      v24 = v4;
      v8 = 0;
      v9 = *v30;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(offers);
          }

          assets = [*(*(&v29 + 1) + 8 * i) assets];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [assets countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v26;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v26 != v15)
                {
                  objc_enumerationMutation(assets);
                }

                [*(*(&v25 + 1) + 8 * j) duration];
                if (v17 > 2.22044605e-16)
                {
                  ++v8;
                  v10 = v10 + v17;
                }
              }

              v14 = [assets countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v14);
          }
        }

        v7 = [offers countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
      selfCopy = v23;
      v4 = v24;
      if (v8)
      {
        v18 = v10 / v8;
      }

      else
      {
LABEL_25:
        v20 = [(NSDictionary *)selfCopy->_storePlatformDictionary objectForKey:@"duration"];
        v18 = 0.0;
        if (objc_opt_respondsToSelector())
        {
          [v20 doubleValue];
          v18 = v21;
        }
      }

      goto LABEL_29;
    }

LABEL_24:
    [v4 doubleValue];
    v18 = v19 / 1000.0;
    goto LABEL_29;
  }

  v4 = [(NSDictionary *)selfCopy->_downloadMetadataDictionary objectForKey:@"duration"];
  if (!v4)
  {
    v4 = [(MPStoreItemMetadata *)selfCopy _fetchValueFromStoreMusicAPIDictionary:@"durationInMillis"];
  }

  v18 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_24;
  }

LABEL_29:

  return v18;
}

- (int64_t)discNumber
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"discNumber"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"discNumber"];

    v3 = v4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"discNumber"];

    v3 = v5;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v3 = 0;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)discCount
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"discCount"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"discCount"];

    if (objc_opt_respondsToSelector())
    {
      v3 = v4;
    }

    else
    {

      v3 = 0;
    }
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)descriptionText
{
  v3 = [(MPStoreItemMetadata *)self descriptionTextWithStyle:@"standard"];
  if (![v3 length])
  {
    v4 = [(MPStoreItemMetadata *)self descriptionTextWithStyle:@"short"];

    v3 = v4;
  }

  return v3;
}

- (NSString)curatorHandle
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"username"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"curatorSocialHandle"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)curatorName
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"curatorName"];
  if (!v3)
  {
    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"curatorName"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)copyrightText
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"copyright"];
  if ((_NSIsNSString() & 1) == 0)
  {
    v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"copyright"];

    v3 = v4;
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)composerName
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"composer"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"name"];
    if (_NSIsNSString())
    {
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"composerName"];
LABEL_7:

  return v4;
}

- (id)collectionStoreID
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"collectionId"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"playlistId"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)collectionName
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"collectionName"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"playlistName"];
  }

  if ((_NSIsNSString() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (unint64_t)cloudID
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"sagaId"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (NSString)cloudAlbumID
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"libraryAlbumId"];
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

- (NSArray)childStoreItemMetadatas
{
  v21 = *MEMORY[0x1E69E9840];
  childrenStoreIDs = [(MPStoreItemMetadata *)self childrenStoreIDs];
  v4 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"relationships.tracks.data"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = childrenStoreIDs;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(MPStoreItemMetadata *)self childStorePlatformDictionaryForStoreID:*(*(&v16 + 1) + 8 * i), v16];
        if (v11)
        {
          v12 = [MPStoreItemMetadata alloc];
          if (v4)
          {
            v13 = [(MPStoreItemMetadata *)v12 initWithStoreMusicAPIDictionary:v11 parentStoreItemMetadata:self];
          }

          else
          {
            v13 = [(MPStoreItemMetadata *)v12 initWithStorePlatformDictionary:v11 parentStoreItemMetadata:self];
          }

          v14 = v13;
          if (v13)
          {
            if (!v8)
            {
              v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
            }

            [v8 addObject:v14];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)childrenStoreIDs
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_hasOverrideChildStorePlatformDictionaries)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = self->_overrideChildStorePlatformDictionaries;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v22 + 1) + 8 * i) objectForKey:@"id"];
          if (v9)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v6 addObject:v9];
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
    v6 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"childrenIds"];
    if (_NSIsNSArray())
    {
      if (v6)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"relationships.tracks.data"];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v3, "count")}];
    if (_NSIsNSArray())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v3;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v18 + 1) + 8 * j) objectForKeyedSubscript:{@"id", v18}];
            [v10 addObject:v16];
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v13);
      }
    }

    v6 = [v10 copy];
  }

LABEL_30:

  return v6;
}

- (BOOL)isBeats1
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"isBeats1"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSArray)artworkTrackIDs
{
  v2 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"artworkTrackIds"];
  if ((_NSIsNSArray() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (MPStoreArtworkRequestToken)superHeroTallEditorialArtworkRequestToken
{
  if (!self->_storePlatformDictionary || ([(MPStoreItemMetadata *)self superHeroTallEditorialArtworkRequestTokenForStorePlatformDictionary:?], (superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary = objc_claimAutoreleasedReturnValue()) == 0))
  {
    superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary];
    if (!superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary)
    {
      superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self->_parentStoreItemMetadata superHeroTallEditorialArtworkRequestToken];
    }
  }

  return superHeroTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary;
}

- (MPStoreArtworkRequestToken)staticTallEditorialArtworkRequestToken
{
  if (!self->_storePlatformDictionary || ([(MPStoreItemMetadata *)self staticTallEditorialArtworkRequestTokenForStorePlatformDictionary:?], (staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary = objc_claimAutoreleasedReturnValue()) == 0))
  {
    staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary];
    if (!staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary)
    {
      staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self->_parentStoreItemMetadata staticTallEditorialArtworkRequestToken];
    }
  }

  return staticTallEditorialArtworkRequestTokenForStoreMusicAPIDictionary;
}

- (MPStoreArtworkRequestToken)artworkRequestToken
{
  if (!self->_storePlatformDictionary || ([(MPStoreItemMetadata *)self artworkRequestTokenForStorePlatformDictionary:?], (artworkRequestTokenForStoreMusicAPIDictionary = objc_claimAutoreleasedReturnValue()) == 0))
  {
    artworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self artworkRequestTokenForStorePlatformDictionary:self->_downloadAssetDictionary];
    if (!artworkRequestTokenForStoreMusicAPIDictionary)
    {
      v4 = [(NSDictionary *)self->_downloadAssetDictionary objectForKey:@"artworkURL"];
      if (_NSIsNSString() && ([MEMORY[0x1E695DFF8] URLWithString:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = v5;
        v7 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkURL:v5];
        v8 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v7];

        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      artworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self artworkRequestTokenForStoreMusicAPIDictionary];
      if (!artworkRequestTokenForStoreMusicAPIDictionary)
      {
        artworkRequestTokenForStoreMusicAPIDictionary = [(MPStoreItemMetadata *)self->_parentStoreItemMetadata artworkRequestToken];
      }
    }
  }

  v8 = artworkRequestTokenForStoreMusicAPIDictionary;
LABEL_12:

  return v8;
}

- (NSString)artistUploadedContentType
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"aucType"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"aucType"];
  }

  return v3;
}

- (id)artistStoreID
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"artistId"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"artistId"];
  }

  return v3;
}

- (NSString)artistName
{
  v3 = [(NSDictionary *)self->_storePlatformDictionary objectForKey:@"artistName"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_downloadMetadataDictionary objectForKey:@"artistName"];
    if (!v3)
    {
      v3 = [(MPStoreItemMetadata *)self _fetchValueFromStoreMusicAPIDictionary:@"artistName"];
    }
  }

  v4 = v3;
  if ((_NSIsNSString() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_downloadAssetDictionary);
    objc_storeStrong((v5 + 16), self->_downloadMetadataDictionary);
    objc_storeStrong((v5 + 24), self->_storeMusicAPIDictionary);
    objc_storeStrong((v5 + 32), self->_expirationDate);
    *(v5 + 40) = self->_hasOverrideChildStorePlatformDictionaries;
    objc_storeStrong((v5 + 56), self->_overrideChildStorePlatformDictionaries);
    objc_storeStrong((v5 + 72), self->_parentStoreItemMetadata);
    objc_storeStrong((v5 + 64), self->_storePlatformDictionary);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  downloadAssetDictionary = self->_downloadAssetDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:downloadAssetDictionary forKey:@"MPStoreItemMetadataDownloadAssetDictionary"];
  [coderCopy encodeObject:self->_storeMusicAPIDictionary forKey:@"MPStoreItemMetadataMusicAPIDictionary"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"MPStoreItemMetadataExpirationDate"];
  [coderCopy encodeBool:self->_hasOverrideChildStorePlatformDictionaries forKey:@"MPStoreItemMetadataHasOverrideChildStorePlatformDictionaries"];
  [coderCopy encodeObject:self->_overrideChildStorePlatformDictionaries forKey:@"MPStoreItemMetadataOverrideChildStorePlatformDictionaries"];
  [coderCopy encodeObject:self->_parentStoreItemMetadata forKey:@"MPStoreItemMetadataParentStoreItemMetadata"];
  [coderCopy encodeObject:self->_storePlatformDictionary forKey:@"MPStoreItemMetadataStorePlatformDictionary"];
}

- (MPStoreItemMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = MPStoreItemMetadata;
  v5 = [(MPStoreItemMetadata *)&v31 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"MPStoreItemMetadataDownloadAssetDictionary"];
    downloadAssetDictionary = v5->_downloadAssetDictionary;
    v5->_downloadAssetDictionary = v14;

    if ((_NSIsNSDictionary() & 1) == 0)
    {
      v16 = v5->_downloadAssetDictionary;
      v5->_downloadAssetDictionary = 0;
    }

    v17 = [(NSDictionary *)v5->_downloadAssetDictionary objectForKey:@"metadata"];
    if (_NSIsNSDictionary())
    {
      objc_storeStrong(&v5->_downloadMetadataDictionary, v17);
    }

    v18 = [coderCopy decodeObjectOfClasses:v13 forKey:@"MPStoreItemMetadataMusicAPIDictionary"];
    storeMusicAPIDictionary = v5->_storeMusicAPIDictionary;
    v5->_storeMusicAPIDictionary = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreItemMetadataExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v20;

    v5->_hasOverrideChildStorePlatformDictionaries = [coderCopy decodeBoolForKey:@"MPStoreItemMetadataHasOverrideChildStorePlatformDictionaries"];
    v22 = [coderCopy decodeObjectOfClasses:v13 forKey:@"MPStoreItemMetadataOverrideChildStorePlatformDictionaries"];
    overrideChildStorePlatformDictionaries = v5->_overrideChildStorePlatformDictionaries;
    v5->_overrideChildStorePlatformDictionaries = v22;

    if ((_NSIsNSArray() & 1) == 0)
    {
      v24 = v5->_overrideChildStorePlatformDictionaries;
      v5->_overrideChildStorePlatformDictionaries = 0;
    }

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreItemMetadataParentStoreItemMetadata"];
    parentStoreItemMetadata = v5->_parentStoreItemMetadata;
    v5->_parentStoreItemMetadata = v25;

    v27 = [coderCopy decodeObjectOfClasses:v13 forKey:@"MPStoreItemMetadataStorePlatformDictionary"];
    storePlatformDictionary = v5->_storePlatformDictionary;
    v5->_storePlatformDictionary = v27;

    if ((_NSIsNSDictionary() & 1) == 0)
    {
      v29 = v5->_storePlatformDictionary;
      v5->_storePlatformDictionary = 0;
    }
  }

  return v5;
}

- (id)description
{
  offers = [(MPStoreItemMetadata *)self offers];
  v4 = MPStoreItemMetadataSubscriptionOfferInOffers(offers);

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  storeID = [(MPStoreItemMetadata *)self storeID];
  name = [(MPStoreItemMetadata *)self name];
  v10 = [v5 stringWithFormat:@"<%@:%p storeID=%@ name=%@ subscriptionOffer=%@>", v7, self, storeID, name, v4];

  return v10;
}

- (MPStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date
{
  metadataCopy = metadata;
  v10 = [(MPStoreItemMetadata *)self initWithStorePlatformDictionary:dictionary expirationDate:date];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parentStoreItemMetadata, metadata);
  }

  return v11;
}

- (MPStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = MPStoreItemMetadata;
  v8 = [(MPStoreItemMetadata *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v9;

    v11 = [dictionaryCopy copy];
    storePlatformDictionary = v8->_storePlatformDictionary;
    v8->_storePlatformDictionary = v11;
  }

  return v8;
}

- (MPStoreItemMetadata)initWithStoreMusicAPIDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = [(MPStoreItemMetadata *)self initWithStoreMusicAPIDictionary:dictionary];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentStoreItemMetadata, metadata);
  }

  return v9;
}

- (MPStoreItemMetadata)initWithStoreMusicAPIDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MPStoreItemMetadata;
  v5 = [(MPStoreItemMetadata *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    storeMusicAPIDictionary = v5->_storeMusicAPIDictionary;
    v5->_storeMusicAPIDictionary = v6;
  }

  return v5;
}

- (MPStoreItemMetadata)initWithDownloadAssetDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MPStoreItemMetadata;
  v5 = [(MPStoreItemMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    downloadAssetDictionary = v5->_downloadAssetDictionary;
    v5->_downloadAssetDictionary = v6;

    v8 = [dictionaryCopy objectForKey:@"metadata"];
    if (_NSIsNSDictionary())
    {
      objc_storeStrong(&v5->_downloadMetadataDictionary, v8);
    }
  }

  return v5;
}

+ (id)storeServerCalendar
{
  if (storeServerCalendar_sOnceToken != -1)
  {
    dispatch_once(&storeServerCalendar_sOnceToken, &__block_literal_global_16070);
  }

  v3 = storeServerCalendar_sGMTCalendar;

  return v3;
}

void __42__MPStoreItemMetadata_storeServerCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [v0 copy];
  v2 = storeServerCalendar_sGMTCalendar;
  storeServerCalendar_sGMTCalendar = v1;

  v3 = storeServerCalendar_sGMTCalendar;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

+ (id)artworkRequestTokenForStorePlatformArtworkValue:(id)value
{
  valueCopy = value;
  if (_NSIsNSArray())
  {
    v4 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseArray:valueCopy];
  }

  else
  {
    if (!_NSIsNSDictionary())
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:valueCopy];
  }

  v5 = v4;
  if (v4)
  {
    v6 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v4];
    goto LABEL_9;
  }

LABEL_8:
  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)hasMetadataForRequestReason:(unint64_t)reason
{
  v25 = *MEMORY[0x1E69E9840];
  if (reason != 3)
  {
    if (reason != 2)
    {
      if (reason == 1)
      {
        artworkRequestToken = [(MPStoreItemMetadata *)self artworkRequestToken];
        if (artworkRequestToken)
        {
          name = [(MPStoreItemMetadata *)self name];
          if (name)
          {
            offers = [(MPStoreItemMetadata *)self offers];
            if (offers)
            {
              v7 = [(MPStoreItemMetadata *)self URL];
              v8 = v7 != 0;
            }

            else
            {
              v8 = 0;
            }

            goto LABEL_29;
          }

          goto LABEL_26;
        }

LABEL_24:
        v8 = 0;
LABEL_30:

        return v8;
      }

      return 1;
    }

    artworkRequestToken = [(MPStoreItemMetadata *)self childrenStoreIDs];
    if (!artworkRequestToken)
    {
      goto LABEL_24;
    }

    name = [(MPStoreItemMetadata *)self childrenStoreIDs];
    v8 = [name count] != 0;
LABEL_29:

    goto LABEL_30;
  }

  artworkRequestToken2 = [(MPStoreItemMetadata *)self artworkRequestToken];
  if (!artworkRequestToken2)
  {
    return 0;
  }

  v10 = artworkRequestToken2;
  name2 = [(MPStoreItemMetadata *)self name];

  if (!name2)
  {
    return 0;
  }

  itemKind = [(MPStoreItemMetadata *)self itemKind];
  IsContainerKind = MPStoreItemMetadataItemKindIsContainerKind(itemKind);

  if (IsContainerKind)
  {
    artworkRequestToken = [(MPStoreItemMetadata *)self childrenStoreIDs];
    if (![artworkRequestToken count])
    {
      goto LABEL_24;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    name = artworkRequestToken;
    v14 = [name countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
LABEL_16:
      v17 = 0;
      while (1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(name);
        }

        v18 = [(MPStoreItemMetadata *)self childStorePlatformDictionaryForStoreID:*(*(&v20 + 1) + 8 * v17), v20];

        if (!v18)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [name countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

LABEL_26:
      v8 = 0;
      goto LABEL_29;
    }

LABEL_22:
    v8 = 1;
    goto LABEL_29;
  }

  return 1;
}

- (NSString)cacheableItemIdentifier
{
  cloudUniversalLibraryID = [(MPStoreItemMetadata *)self cloudUniversalLibraryID];
  v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(cloudUniversalLibraryID);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    storeID = [(MPStoreItemMetadata *)self storeID];
    v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(storeID);

    if (v7)
    {
      v5 = v7;
    }

    else
    {
      socialProfileID = [(MPStoreItemMetadata *)self socialProfileID];
      v5 = MPStoreItemMetadataStringNormalizeStoreIDValue(socialProfileID);

      if (v5)
      {
        v9 = v5;
      }
    }
  }

  return v5;
}

@end
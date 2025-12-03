@interface MTStorePlatformUtil
+ (BOOL)isAValue:(id)value;
+ (BOOL)isExplicitForStorePlatformDictionary:(id)dictionary;
+ (id)_genreNameForStoreItemDictionary:(id)dictionary;
+ (id)_offerNameForOfferFlavor:(id)flavor;
+ (id)_storeDownloadArtworkArrayForStoreItemDictionary:(id)dictionary;
+ (id)_storeDownloadOffersForStoreItemDictionary:(id)dictionary;
+ (id)_storeOfferDownloadDictionaryForStoreOfferItemDictionary:(id)dictionary;
+ (id)_unmodifiedTitleForStoreItemDictionary:(id)dictionary;
+ (id)artworkDictionary:(id)dictionary closestToSize:(double)size;
+ (id)dateFromFormattedString:(id)string;
+ (id)encodedQueryStringFromDictionary:(id)dictionary;
+ (id)formatDate:(id)date;
+ (id)latestEpisodeDictionaryFromPodcastDictionary:(id)dictionary;
+ (id)pubDateFromStoreMediaDictionary:(id)dictionary;
+ (id)storeDownloadDictionaryFromStorePlatformDictionary:(id)dictionary;
+ (id)storeMediaDictionaryFromStorePlatformDictionary:(id)dictionary artworkSize:(double)size restricted:(BOOL *)restricted isNotSubscribeable:(BOOL)subscribeable;
+ (id)stringFromDictionary:(id)dictionary forKey:(id)key;
@end

@implementation MTStorePlatformUtil

+ (id)storeMediaDictionaryFromStorePlatformDictionary:(id)dictionary artworkSize:(double)size restricted:(BOOL *)restricted isNotSubscribeable:(BOOL)subscribeable
{
  subscribeableCopy = subscribeable;
  dictionaryCopy = dictionary;
  v11 = [self isExplicitForStorePlatformDictionary:dictionaryCopy];
  if (!v11 || (+[PFRestrictionsController isExplicitContentAllowed]& 1) != 0)
  {
    v60 = subscribeableCopy;
    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = [dictionaryCopy objectForKeyedSubscript:@"offers"];
    firstObject = [v13 firstObject];
    v15 = [firstObject objectForKeyedSubscript:@"download"];

    v16 = [v15 objectForKeyedSubscript:@"url"];
    if (![v16 length])
    {
      v42 = 0;
LABEL_71:

      goto LABEL_72;
    }

    [v12 setObject:v16 forKeyedSubscript:@"assetURL"];
    v17 = [self stringFromDictionary:dictionaryCopy forKey:@"feedUrl"];
    if (v17)
    {
      [v12 setObject:v17 forKeyedSubscript:kPodcastFeedUrl];
    }

    v69 = v17;
    v18 = [self stringFromDictionary:dictionaryCopy forKey:@"collectionName"];
    if (v18)
    {
      [v12 setObject:v18 forKeyedSubscript:@"podcastTitle"];
    }

    v71 = v15;
    v74 = v18;
    v19 = [self stringFromDictionary:dictionaryCopy forKey:@"name"];
    if (v19)
    {
      [v12 setObject:v19 forKeyedSubscript:@"episodeTitle"];
    }

    v73 = v19;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    v21 = [self stringFromDictionary:v20 forKey:@"standard"];
    if (![v21 length])
    {
      v22 = [self stringFromDictionary:v20 forKey:@"short"];

      v21 = v22;
    }

    if ([v21 length])
    {
      [v12 setObject:v21 forKeyedSubscript:@"episodeDescription"];
    }

    v23 = [self stringFromDictionary:dictionaryCopy forKey:@"url"];
    if (v23)
    {
      v24 = [NSURL URLWithString:v23];
      [v12 setObject:v24 forKeyedSubscript:@"episodeShareUrl"];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    stringValue = [v25 stringValue];
    if (v25)
    {
      [v12 setObject:v25 forKeyedSubscript:@"episodeId"];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"podcastEpisodeGuid"];
    if (v26)
    {
      [v12 setObject:v26 forKeyedSubscript:@"episodeGuid"];
    }

    v64 = v26;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"collectionId"];
    stringValue2 = [v27 stringValue];
    if (v27)
    {
      [v12 setObject:v27 forKeyedSubscript:@"podcastId"];
    }

    v65 = v25;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"artistName"];
    if (v28)
    {
      [v12 setObject:v28 forKeyedSubscript:@"artistName"];
    }

    v62 = v28;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"releaseDate"];
    objc_opt_class();
    v72 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [self formatDate:v29];
      if (v30)
      {
        [v12 setObject:v30 forKeyedSubscript:kEpisodePubDate];
      }
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"artwork"];
    v66 = v23;
    v61 = v31;
    if (v31)
    {
      v32 = v31;
      if ([v31 count])
      {
        v33 = [self artworkDictionary:v32 closestToSize:size];
        v34 = v33;
        if (v33)
        {
          v77 = v33;
          [NSArray arrayWithObjects:&v77 count:1];
          v35 = v21;
          v37 = v36 = v20;
          [v12 setObject:v37 forKeyedSubscript:@"artworkURL"];

          v20 = v36;
          v21 = v35;
        }
      }
    }

    v68 = v20;
    v38 = [NSNumber numberWithBool:v11];
    [v12 setObject:v38 forKeyedSubscript:@"explicit"];

    v39 = [dictionaryCopy objectForKeyedSubscript:@"isNotSubscribeable"];
    v40 = v39;
    v67 = v21;
    if (v39)
    {
      bOOLValue = [v39 BOOLValue];
    }

    else
    {
      bOOLValue = v60;
    }

    v43 = [NSNumber numberWithBool:bOOLValue];
    [v12 setObject:v43 forKeyedSubscript:@"isNotSubscribeable"];

    v44 = [dictionaryCopy objectForKeyedSubscript:@"offers"];
    firstObject2 = [v44 firstObject];

    v70 = v16;
    v63 = v27;
    if (!firstObject2)
    {
      v52 = 0;
      identifier = &stru_1004F3018;
      v54 = v74;
LABEL_56:
      [v12 setObject:identifier forKeyedSubscript:kEpisodeUti];
      v56 = [self stringFromDictionary:dictionaryCopy forKey:@"artistId"];
      v57 = objc_alloc_init(NSMutableDictionary);
      if ([self isAValue:v56])
      {
        [v57 setObject:v56 forKeyedSubscript:@"artistId"];
      }

      if ([self isAValue:stringValue2])
      {
        [v57 setObject:stringValue2 forKeyedSubscript:@"podcastId"];
      }

      if ([self isAValue:v54])
      {
        [v57 setObject:v54 forKeyedSubscript:@"podcastName"];
      }

      if ([self isAValue:@"1"])
      {
        [v57 setObject:@"1" forKeyedSubscript:@"podcastType"];
      }

      if ([self isAValue:v73])
      {
        [v57 setObject:v73 forKeyedSubscript:@"episodeName"];
      }

      if ([self isAValue:stringValue])
      {
        [v57 setObject:stringValue forKeyedSubscript:@"episodeId"];
      }

      if ([self isAValue:v52])
      {
        [v57 setObject:v52 forKeyedSubscript:@"episodeKind"];
      }

      [v57 setObject:@"3" forKeyedSubscript:@"v"];
      [v57 setObject:@"ntc" forKeyedSubscript:@"pageLocation"];
      v58 = [self encodedQueryStringFromDictionary:v57];
      [v12 setObject:v58 forKeyedSubscript:@"reportParams"];

      v42 = v12;
      v16 = v70;
      v15 = v71;
      goto LABEL_71;
    }

    v46 = [firstObject2 objectForKeyedSubscript:@"assets"];
    firstObject3 = [v46 firstObject];

    if (!firstObject3)
    {
      v52 = 0;
      identifier = &stru_1004F3018;
LABEL_55:
      v54 = v74;

      goto LABEL_56;
    }

    v48 = [firstObject3 objectForKeyedSubscript:@"duration"];
    if (v48)
    {
      [v12 setObject:v48 forKeyedSubscript:@"duration"];
    }

    v49 = [firstObject3 objectForKeyedSubscript:@"flavor"];
    v50 = +[NSNull null];

    if (v49 == v50)
    {
      v52 = 0;
      identifier = &stru_1004F3018;
LABEL_54:

      goto LABEL_55;
    }

    v51 = [firstObject3 objectForKeyedSubscript:@"flavor"];
    if ([v51 rangeOfString:@"Video"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v51 rangeOfString:@"Audio"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v52 = 0;
        identifier = &stru_1004F3018;
LABEL_53:

        goto LABEL_54;
      }

      v52 = @"episode";
      v55 = &UTTypeAudio;
    }

    else
    {
      v52 = @"movie";
      v55 = &UTTypeVideo;
    }

    identifier = [*v55 identifier];
    goto LABEL_53;
  }

  v42 = 0;
  if (restricted)
  {
    *restricted = 1;
  }

LABEL_72:

  return v42;
}

+ (BOOL)isExplicitForStorePlatformDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"contentRating"];
  if (!v4)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"contentRatingsBySystem"];
    v4 = [v5 objectForKeyedSubscript:@"riaa"];
  }

  v6 = [v4 objectForKeyedSubscript:@"rank"];
  v7 = [v6 integerValue] > 1;

  return v7;
}

+ (id)latestEpisodeDictionaryFromPodcastDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [dictionaryCopy objectForKeyedSubscript:{@"childrenIds", 0}];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      stringValue = [*(*(&v13 + 1) + 8 * v8) stringValue];
      v10 = [dictionaryCopy objectForKeyedSubscript:@"children"];
      v11 = [v10 objectForKeyedSubscript:stringValue];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

+ (id)artworkDictionary:(id)dictionary closestToSize:(double)size
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    v10 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKey:{@"height", v20}];
        [v13 floatValue];
        v15 = v14;
        if (v15 == size)
        {
          v18 = v12;

          goto LABEL_15;
        }

        v16 = vabdd_f64(v15, size);
        if (v16 < v10)
        {
          v17 = v12;

          v10 = v16;
          v8 = v17;
        }
      }

      v7 = [dictionaryCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v8 = v8;
  v18 = v8;
LABEL_15:

  return v18;
}

+ (BOOL)isAValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = isKindOfClass ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (id)stringFromDictionary:(id)dictionary forKey:(id)key
{
  v5 = [dictionary objectForKeyedSubscript:key];
  if ([self isAValue:v5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = v5;
LABEL_6:
      v7 = stringValue;
      goto LABEL_8;
    }

    if (objc_opt_respondsToSelector())
    {
      stringValue = [v5 stringValue];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)encodedQueryStringFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(NSMutableString);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = @"%@=%@";
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = [v12 stringByAddingPercentEscapesUsingEncoding:1];
        [v4 appendFormat:v9, v11, v13, v15];

        v9 = @"&%@=%@";
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = @"&%@=%@";
    }

    while (v7);
  }

  return v4;
}

+ (id)formatDate:(id)date
{
  dateCopy = date;
  v4 = qword_100583D00;
  if (!qword_100583D00)
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = qword_100583D00;
    qword_100583D00 = v5;

    [qword_100583D00 setDateFormat:@"yyyy-MM-dd"];
    v7 = objc_alloc_init(NSDateFormatter);
    v8 = qword_100583D08;
    qword_100583D08 = v7;

    [qword_100583D08 setDateStyle:2];
    v4 = qword_100583D00;
  }

  v9 = [v4 dateFromString:dateCopy];
  v10 = [qword_100583D08 stringFromDate:v9];

  return v10;
}

+ (id)dateFromFormattedString:(id)string
{
  stringCopy = string;
  v4 = qword_100583D10;
  if (!qword_100583D10)
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = qword_100583D10;
    qword_100583D10 = v5;

    [qword_100583D10 setDateStyle:2];
    v4 = qword_100583D10;
  }

  v7 = [v4 dateFromString:stringCopy];

  return v7;
}

+ (id)pubDateFromStoreMediaDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:kEpisodePubDate];
  v5 = [self dateFromFormattedString:v4];

  return v5;
}

+ (id)storeDownloadDictionaryFromStorePlatformDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:@"episode" forKeyedSubscript:@"episode-kind"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"collectionId"];
  [v5 setObject:v6 forKeyedSubscript:@"collection-id"];

  [v5 setObject:@"podcast-episode" forKeyedSubscript:@"type"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"artistName"];
  [v5 setObject:v7 forKeyedSubscript:@"artist-name"];

  v8 = [self _genreNameForStoreItemDictionary:dictionaryCopy];
  [v5 setObject:v8 forKeyedSubscript:@"genre-name"];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"collectionName"];
  [v5 setObject:v9 forKeyedSubscript:@"collection-name"];

  v10 = [self _unmodifiedTitleForStoreItemDictionary:dictionaryCopy];
  [v5 setObject:v10 forKeyedSubscript:@"unmodified-title"];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"id"];
  [v5 setObject:v11 forKeyedSubscript:@"item-id"];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"id"];
  [v5 setObject:v12 forKeyedSubscript:@"itemId"];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"url"];
  [v5 setObject:v13 forKeyedSubscript:@"url"];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"releaseDate"];
  [v5 setObject:v14 forKeyedSubscript:@"release-date"];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"podcastEpisodeGuid"];
  [v5 setObject:v15 forKeyedSubscript:@"episode-guid"];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"description"];
  v17 = [v16 objectForKeyedSubscript:@"standard"];
  [v5 setObject:v17 forKeyedSubscript:@"longDescription"];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"feedUrl"];
  [v5 setObject:v18 forKeyedSubscript:@"podcast-feed-url"];

  [v5 setObject:@"1" forKeyedSubscript:@"podcast-type-dzc"];
  v19 = [self _storeDownloadOffersForStoreItemDictionary:dictionaryCopy];
  [v5 setObject:v19 forKeyedSubscript:@"store-offers"];

  v20 = [self _storeDownloadArtworkArrayForStoreItemDictionary:dictionaryCopy];

  [v5 setObject:v20 forKeyedSubscript:@"artwork-urls"];
  v21 = [v5 copy];

  return v21;
}

+ (id)_storeDownloadArtworkArrayForStoreItemDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"artwork"];
  v4 = [v3 mt_compactMap:&stru_1004DCD30];

  return v4;
}

+ (id)_genreNameForStoreItemDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"genres"];
  firstObject = [v3 firstObject];
  v5 = [firstObject objectForKeyedSubscript:@"name"];

  return v5;
}

+ (id)_unmodifiedTitleForStoreItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"rawName"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"name"];

  if ([v4 length])
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

+ (id)_storeDownloadOffersForStoreItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"offers"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _storeOfferDownloadDictionaryForStoreOfferItemDictionary:*(*(&v14 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addEntriesFromDictionary:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)_storeOfferDownloadDictionaryForStoreOfferItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if ([v5 isEqualToString:@"anonymousDownload"])
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"download"];
    v7 = [v6 objectForKeyedSubscript:@"url"];

    if (v7)
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"assets"];
      firstObject = [v16 firstObject];
      v9 = [firstObject objectForKeyedSubscript:@"duration"];
      v10 = +[NSMutableDictionary dictionary];
      [v10 setObject:v7 forKeyedSubscript:@"asset-url"];
      if (v9)
      {
        [v10 setObject:v9 forKeyedSubscript:@"duration"];
      }

      v11 = [v10 copy];
      v12 = [firstObject objectForKeyedSubscript:@"flavor"];
      v13 = [self _offerNameForOfferFlavor:v12];
      v17 = v13;
      v18 = v11;
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_offerNameForOfferFlavor:(id)flavor
{
  flavorCopy = flavor;
  if ([flavorCopy localizedCaseInsensitiveContainsString:@"video"])
  {
    v4 = @"standard-video";
  }

  else
  {
    v4 = @"standard-audio";
    if (([flavorCopy localizedCaseInsensitiveContainsString:@"audio"] & 1) == 0)
    {
      v4 = @"document";
      if (([flavorCopy localizedCaseInsensitiveContainsString:@"booklet"] & 1) == 0 && !objc_msgSend(flavorCopy, "localizedCaseInsensitiveContainsString:", @"document"))
      {
        v4 = @"standard-audio";
      }
    }
  }

  return v4;
}

@end
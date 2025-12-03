@interface MTShareUtilDataSource
- (MTShareUtilDataSource)initWithPlayerItem:(id)item selectedReferenceTime:(double)time selectedPlayerTime:(double)playerTime currentPlayerTime:(double)currentPlayerTime;
- (MTShareUtilDataSource)initWithPodcast:(id)podcast;
- (MTShareUtilDataSource)initWithPodcastDetails:(id)details;
- (double)currentPlayerTime;
- (double)selectedPlayerTime;
- (double)selectedReferenceTime;
- (id)pubDate;
- (id)shareDescription;
- (id)shareEpisodeTitle;
- (id)shareImage;
- (id)shareImageProvider;
- (id)sharePodcastTitle;
- (id)shareProvider;
- (id)shareURL;
- (id)shortURL;
- (id)storeIdentifier;
- (id)valueForKey:(id)key shareMode:(int64_t)mode;
- (void)_setImageIgnoringSmallerSize:(id)size forKey:(id)key shareMode:(int64_t)mode;
- (void)fetchImageWithTemplateURL:(id)l completionHandler:(id)handler;
- (void)setValue:(id)value forKey:(id)key shareModes:(int64_t)modes;
@end

@implementation MTShareUtilDataSource

- (MTShareUtilDataSource)initWithPlayerItem:(id)item selectedReferenceTime:(double)time selectedPlayerTime:(double)playerTime currentPlayerTime:(double)currentPlayerTime
{
  itemCopy = item;
  v79.receiver = self;
  v79.super_class = MTShareUtilDataSource;
  v11 = [(MTShareUtilDataSource *)&v79 init];
  if (!v11)
  {
    goto LABEL_39;
  }

  v12 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v13 = *(v11 + 3);
  *(v11 + 3) = v12;

  *(v11 + 8) = vdupq_n_s64(1uLL);
  episode = [itemCopy episode];
  podcast = [episode podcast];
  if (episode)
  {
    storeTrackId = [episode storeTrackId];
  }

  else
  {
    storeTrackId = [itemCopy episodeStoreId];
  }

  v17 = storeTrackId;
  episodeShareUrl = [itemCopy episodeShareUrl];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100087F78;
  v77[3] = &unk_1004D9D90;
  v18 = v11;
  v78 = v18;
  [itemCopy retrieveArtwork:v77 withSize:{kMTSharingArtworkSize, kMTSharingArtworkSize}];
  v19 = [NSNumber numberWithLongLong:v17];
  stringValue = [v19 stringValue];
  [v18 setValue:stringValue forKey:@"kMTStoreId" shareModes:6];

  pubDate = [itemCopy pubDate];
  [v18 setValue:pubDate forKey:@"kMTPubDate" shareModes:6];

  bestTitle = [episode bestTitle];
  if ([bestTitle length])
  {
    [episode bestTitle];
  }

  else
  {
    [itemCopy title];
  }
  v23 = ;

  title = [podcast title];
  v75 = itemCopy;
  if ([title length])
  {
    [podcast title];
  }

  else
  {
    [itemCopy author];
  }
  v25 = ;

  v74 = v23;
  [v18 setValue:v23 forKey:@"kMTEpisodeTitle" shareModes:6];
  v73 = v25;
  [v18 setValue:v25 forKey:@"kMTPodcastTitle" shareModes:6];
  v26 = [NSNumber numberWithDouble:time];
  stringValue2 = [v26 stringValue];
  [v18 setValue:stringValue2 forKey:@"kMTSelectedReferenceTime" shareModes:4];

  v28 = [NSNumber numberWithDouble:playerTime];
  stringValue3 = [v28 stringValue];
  [v18 setValue:stringValue3 forKey:@"kMTSelectedPlayerTime" shareModes:4];

  v30 = [NSNumber numberWithDouble:currentPlayerTime];
  stringValue4 = [v30 stringValue];
  [v18 setValue:stringValue4 forKey:@"kMTCurrentPlayerTime" shareModes:4];

  bestAvailableStoreCleanURL = [podcast bestAvailableStoreCleanURL];

  absoluteString = [episodeShareUrl absoluteString];
  v34 = [absoluteString length];

  if (([MTStoreIdentifier isNotEmpty:v17]& 1) != 0)
  {
    v35 = episode;
    v36 = 0;
    if (v34)
    {
LABEL_13:
      v37 = episodeShareUrl;
      v38 = 0;
      v39 = v35;
      goto LABEL_14;
    }
  }

  else
  {
    v35 = episode;
    guid = [episode guid];
    v36 = [guid length] == 0;

    if (v34)
    {
      goto LABEL_13;
    }
  }

  v45 = bestAvailableStoreCleanURL == 0 || v36;
  v39 = v35;
  if (!v45)
  {
    if ([MTStoreIdentifier isNotEmpty:v17])
    {
      bestAvailableStoreCleanURL2 = [podcast bestAvailableStoreCleanURL];
      v90 = @"i";
      v47 = [NSString stringWithFormat:@"%lld", v17];
      v91 = v47;
      v48 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v37 = [bestAvailableStoreCleanURL2 pf_URLByAppendingQueryString:v48];

      twitterShareURL = [podcast twitterShareURL];
      v88 = @"i";
      v50 = [NSString stringWithFormat:@"%lld", v17];
      v89 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v38 = [twitterShareURL pf_URLByAppendingQueryString:v51];
    }

    else
    {
      guid2 = [v35 guid];
      v60 = [guid2 length];

      if (!v60)
      {
        v37 = 0;
        v38 = 0;
LABEL_33:

        goto LABEL_34;
      }

      bestAvailableStoreCleanURL3 = [podcast bestAvailableStoreCleanURL];
      v86 = @"episodeGuid";
      guid3 = [v35 guid];
      v87 = guid3;
      v63 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v37 = [bestAvailableStoreCleanURL3 pf_URLByAppendingHashString:v63];

      v38 = 0;
    }

LABEL_14:
    if (v37)
    {
      *(v11 + 2) |= 2uLL;
      [v18 setValue:v37 forKey:@"MTShareURL" shareModes:2];
      if (time > 0.0 || playerTime > 0.0)
      {
        if (time > 0.0)
        {
          v84 = @"r";
          v52 = [NSString stringWithFormat:@"%.0lf", *&time];
          v85 = v52;
          v53 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v54 = [v37 pf_URLByAppendingQueryString:v53];

          v37 = v54;
        }

        if (playerTime > 0.0)
        {
          v82 = @"t";
          v55 = [NSString stringWithFormat:@"%.0lf", *&playerTime];
          v83 = v55;
          v56 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v57 = [v37 pf_URLByAppendingQueryString:v56];

          v37 = v57;
        }

        [v18 setValue:v37 forKey:@"MTShareURL" shareModes:4];
        v38 = 0;
        v58 = *(v11 + 2) | 4;
        *(v11 + 1) = 4;
        *(v11 + 2) = v58;
      }

      else if (currentPlayerTime <= 0.0)
      {
        *(v11 + 1) = 2;
        if (v38)
        {
          [v18 setValue:v38 forKey:@"MTShortURL" shareModes:2];
        }
      }

      else
      {
        v80 = @"t";
        v40 = [NSString stringWithFormat:@"%.0lf", *&currentPlayerTime];
        v81 = v40;
        v41 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v42 = [v37 pf_URLByAppendingQueryString:v41];

        [v18 setValue:v42 forKey:@"MTShareURL" shareModes:4];
        v43 = *(v11 + 2) | 4;
        *(v11 + 1) = 2;
        *(v11 + 2) = v43;

        v38 = 0;
        v37 = v42;
      }
    }

    goto LABEL_33;
  }

LABEL_34:
  shareURL = [podcast shareURL];
  itemCopy = v75;
  if (!shareURL)
  {
    v65 = +[IMLogger sharedLogger];
    [v65 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Sharing/MTShareUtilDataSource.m" lineNumber:180 format:{@"Attempting to share a podcast without a share URL even though we have adamIDs, falling back to feedURL"}];

    podcastFeedUrl = [v75 podcastFeedUrl];
    shareURL = [NSURL URLWithString:podcastFeedUrl];
  }

  [v18 setValue:v73 forKey:@"kMTPodcastTitle" shareModes:1];
  author = [podcast author];
  [v18 setValue:author forKey:@"kMTProvider" shareModes:1];

  [v18 setValue:shareURL forKey:@"MTShareURL" shareModes:1];
  twitterShareURL2 = [podcast twitterShareURL];

  if (twitterShareURL2)
  {
    twitterShareURL3 = [podcast twitterShareURL];
    [v18 setValue:twitterShareURL3 forKey:@"MTShortURL" shareModes:1];
  }

  itunesSubtitle = [v39 itunesSubtitle];
  [v18 setValue:itunesSubtitle forKey:@"kMTShareDescription" shareModes:6];

  itemDescription = [podcast itemDescription];
  [v18 setValue:itemDescription forKey:@"kMTShareDescription" shareModes:1];

LABEL_39:
  return v11;
}

- (MTShareUtilDataSource)initWithPodcast:(id)podcast
{
  podcastCopy = podcast;
  v26.receiver = self;
  v26.super_class = MTShareUtilDataSource;
  v5 = [(MTShareUtilDataSource *)&v26 init];
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 8) = vdupq_n_s64(1uLL);
    shareURL = [podcastCopy shareURL];
    [v5 setValue:shareURL forKey:@"MTShareURL" shareModes:1];
    twitterShareURL = [podcastCopy twitterShareURL];

    if (twitterShareURL)
    {
      twitterShareURL2 = [podcastCopy twitterShareURL];
      [v5 setValue:twitterShareURL2 forKey:@"MTShortURL" shareModes:1];
    }

    v11 = +[PUIObjCArtworkProvider shared];
    v12 = kMTSharingArtworkSize;
    v13 = [v11 cachedArtworkForMTPodcast:podcastCopy withSize:{kMTSharingArtworkSize, kMTSharingArtworkSize}];
    if (v13)
    {
      [v5 setValue:v13 forKey:@"MTShareImage" shareModes:1];
    }

    else
    {
      objc_initWeak(&location, v5);
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100088284;
      v23 = &unk_1004D9DE0;
      objc_copyWeak(&v24, &location);
      [v11 artworkForMTPodcast:podcastCopy withSize:&v20 completionHandler:{v12, v12}];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    title = [podcastCopy title];
    [v5 setValue:title forKey:@"kMTPodcastTitle" shareModes:1];

    author = [podcastCopy author];
    [v5 setValue:author forKey:@"kMTProvider" shareModes:1];

    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [podcastCopy storeCollectionId]);
    stringValue = [v16 stringValue];
    [v5 setValue:stringValue forKey:@"kMTStoreId" shareModes:1];

    itemDescription = [podcastCopy itemDescription];
    [v5 setValue:itemDescription forKey:@"kMTShareDescription" shareModes:1];
  }

  return v5;
}

- (MTShareUtilDataSource)initWithPodcastDetails:(id)details
{
  detailsCopy = details;
  v26.receiver = self;
  v26.super_class = MTShareUtilDataSource;
  v5 = [(MTShareUtilDataSource *)&v26 init];
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 8) = vdupq_n_s64(1uLL);
    v8 = [detailsCopy objectForKeyedSubscript:@"url"];
    if (v8)
    {
      v9 = [detailsCopy objectForKeyedSubscript:@"url"];
      v10 = [NSURL URLWithString:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [detailsCopy objectForKeyedSubscript:@"shortUrl"];
    if (v11)
    {
      v12 = [detailsCopy objectForKeyedSubscript:@"shortUrl"];
      v13 = [NSURL URLWithString:v12];
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      [v5 setValue:v10 forKey:@"MTShareURL" shareModes:1];
      if (v13)
      {
        [v5 setValue:v13 forKey:@"MTShortURL" shareModes:1];
      }
    }

    v14 = [detailsCopy objectForKeyedSubscript:@"id"];
    [v5 setValue:v14 forKey:@"kMTStoreId" shareModes:1];
    v15 = [detailsCopy objectForKeyedSubscript:@"image"];
    v16 = [detailsCopy objectForKeyedSubscript:@"artwork"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 _setImageIgnoringSmallerSize:v15 forKey:@"MTShareImage" shareMode:1];
LABEL_22:
        v21 = [detailsCopy objectForKeyedSubscript:@"name"];
        v22 = [detailsCopy objectForKeyedSubscript:@"artistName"];
        [v5 setValue:v21 forKey:@"kMTPodcastTitle" shareModes:1];
        [v5 setValue:v22 forKey:@"kMTProvider" shareModes:1];

        goto LABEL_23;
      }
    }

    if (!v16)
    {
      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v17 = [v16 objectForKeyedSubscript:@"productLockupArtworkURL"];
    v18 = [v16 objectForKeyedSubscript:@"url"];
    v19 = v18;
    if (v18 && [v18 length])
    {
      v20 = v19;
    }

    else
    {
      v20 = v17;
      if (!v20)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000887C4;
    v24[3] = &unk_1004D9D90;
    v25 = v5;
    [v25 fetchImageWithTemplateURL:v20 completionHandler:v24];

    goto LABEL_21;
  }

LABEL_23:

  return v5;
}

- (void)fetchImageWithTemplateURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = +[PUIObjCArtworkProvider shared];
  v8 = kMTSharingArtworkSize;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000888C4;
  v10[3] = &unk_1004D9180;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v7 artworkForURL:lCopy withSize:v10 completionHandler:{v8, v8}];
}

- (id)shortURL
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShortURL" shareMode:currentShareMode];
}

- (id)shareURL
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShareURL" shareMode:currentShareMode];
}

- (id)shareImage
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShareImage" shareMode:currentShareMode];
}

- (id)shareEpisodeTitle
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTEpisodeTitle" shareMode:currentShareMode];
}

- (id)shareImageProvider
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShareImageProvider" shareMode:currentShareMode];
}

- (id)sharePodcastTitle
{
  v2 = [(MTShareUtilDataSource *)self valueForKey:@"kMTPodcastTitle" shareMode:[(MTShareUtilDataSource *)self currentShareMode]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1004F3018;
  }

  v5 = v4;

  return v4;
}

- (id)shareProvider
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTProvider" shareMode:currentShareMode];
}

- (id)shareDescription
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTShareDescription" shareMode:currentShareMode];
}

- (id)storeIdentifier
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTStoreId" shareMode:currentShareMode];
}

- (id)pubDate
{
  currentShareMode = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTPubDate" shareMode:currentShareMode];
}

- (double)selectedReferenceTime
{
  v2 = [(MTShareUtilDataSource *)self valueForKey:@"kMTSelectedReferenceTime" shareMode:4];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)selectedPlayerTime
{
  v2 = [(MTShareUtilDataSource *)self valueForKey:@"kMTSelectedPlayerTime" shareMode:4];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)currentPlayerTime
{
  v2 = [(MTShareUtilDataSource *)self valueForKey:@"kMTCurrentPlayerTime" shareMode:4];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setValue:(id)value forKey:(id)key shareModes:(int64_t)modes
{
  valueCopy = value;
  keyCopy = key;
  v9 = qword_100583B18;
  if (!qword_100583B18)
  {
    qword_100583B18 = &off_1005023C8;

    v9 = &off_1005023C8;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 intValue] & modes;
        if (v16 == [v15 intValue])
        {
          shareData = [(MTShareUtilDataSource *)self shareData];
          v18 = [shareData objectForKeyedSubscript:v15];

          if (!v18)
          {
            v19 = objc_alloc_init(NSMutableDictionary);
            shareData2 = [(MTShareUtilDataSource *)self shareData];
            [shareData2 setObject:v19 forKeyedSubscript:v15];
          }

          shareData3 = [(MTShareUtilDataSource *)self shareData];
          v22 = [shareData3 objectForKeyedSubscript:v15];
          v23 = v22;
          if (valueCopy)
          {
            [v22 setObject:valueCopy forKeyedSubscript:keyCopy];
          }

          else
          {
            [v22 removeObjectForKey:keyCopy];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

- (id)valueForKey:(id)key shareMode:(int64_t)mode
{
  keyCopy = key;
  shareData = [(MTShareUtilDataSource *)self shareData];
  v8 = [NSNumber numberWithInteger:mode];
  v9 = [shareData objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:keyCopy];

  return v10;
}

- (void)_setImageIgnoringSmallerSize:(id)size forKey:(id)key shareMode:(int64_t)mode
{
  sizeCopy = size;
  keyCopy = key;
  v9 = [(MTShareUtilDataSource *)self valueForKey:keyCopy shareMode:mode];
  [sizeCopy size];
  v10 = kMTSharingArtworkSize;
  if (v11 > kMTSharingArtworkSize)
  {
    v12 = [sizeCopy imageWithSize:{kMTSharingArtworkSize, kMTSharingArtworkSize}];
  }

  [v9 size];
  v14 = v13;
  [sizeCopy size];
  if (v9)
  {
    v16 = v15;
    [v9 size];
    v18 = v17;
    [sizeCopy size];
    if (v16 != v10 && v18 >= v19 || v14 == v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v14 != v10)
  {
LABEL_11:
    [(MTShareUtilDataSource *)self setValue:sizeCopy forKey:keyCopy shareModes:mode];
  }

LABEL_12:
}

@end
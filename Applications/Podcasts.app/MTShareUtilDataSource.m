@interface MTShareUtilDataSource
- (MTShareUtilDataSource)initWithPlayerItem:(id)a3 selectedReferenceTime:(double)a4 selectedPlayerTime:(double)a5 currentPlayerTime:(double)a6;
- (MTShareUtilDataSource)initWithPodcast:(id)a3;
- (MTShareUtilDataSource)initWithPodcastDetails:(id)a3;
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
- (id)valueForKey:(id)a3 shareMode:(int64_t)a4;
- (void)_setImageIgnoringSmallerSize:(id)a3 forKey:(id)a4 shareMode:(int64_t)a5;
- (void)fetchImageWithTemplateURL:(id)a3 completionHandler:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4 shareModes:(int64_t)a5;
@end

@implementation MTShareUtilDataSource

- (MTShareUtilDataSource)initWithPlayerItem:(id)a3 selectedReferenceTime:(double)a4 selectedPlayerTime:(double)a5 currentPlayerTime:(double)a6
{
  v10 = a3;
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
  v14 = [v10 episode];
  v15 = [v14 podcast];
  if (v14)
  {
    v16 = [v14 storeTrackId];
  }

  else
  {
    v16 = [v10 episodeStoreId];
  }

  v17 = v16;
  v76 = [v10 episodeShareUrl];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100087F78;
  v77[3] = &unk_1004D9D90;
  v18 = v11;
  v78 = v18;
  [v10 retrieveArtwork:v77 withSize:{kMTSharingArtworkSize, kMTSharingArtworkSize}];
  v19 = [NSNumber numberWithLongLong:v17];
  v20 = [v19 stringValue];
  [v18 setValue:v20 forKey:@"kMTStoreId" shareModes:6];

  v21 = [v10 pubDate];
  [v18 setValue:v21 forKey:@"kMTPubDate" shareModes:6];

  v22 = [v14 bestTitle];
  if ([v22 length])
  {
    [v14 bestTitle];
  }

  else
  {
    [v10 title];
  }
  v23 = ;

  v24 = [v15 title];
  v75 = v10;
  if ([v24 length])
  {
    [v15 title];
  }

  else
  {
    [v10 author];
  }
  v25 = ;

  v74 = v23;
  [v18 setValue:v23 forKey:@"kMTEpisodeTitle" shareModes:6];
  v73 = v25;
  [v18 setValue:v25 forKey:@"kMTPodcastTitle" shareModes:6];
  v26 = [NSNumber numberWithDouble:a4];
  v27 = [v26 stringValue];
  [v18 setValue:v27 forKey:@"kMTSelectedReferenceTime" shareModes:4];

  v28 = [NSNumber numberWithDouble:a5];
  v29 = [v28 stringValue];
  [v18 setValue:v29 forKey:@"kMTSelectedPlayerTime" shareModes:4];

  v30 = [NSNumber numberWithDouble:a6];
  v31 = [v30 stringValue];
  [v18 setValue:v31 forKey:@"kMTCurrentPlayerTime" shareModes:4];

  v32 = [v15 bestAvailableStoreCleanURL];

  v33 = [v76 absoluteString];
  v34 = [v33 length];

  if (([MTStoreIdentifier isNotEmpty:v17]& 1) != 0)
  {
    v35 = v14;
    v36 = 0;
    if (v34)
    {
LABEL_13:
      v37 = v76;
      v38 = 0;
      v39 = v35;
      goto LABEL_14;
    }
  }

  else
  {
    v35 = v14;
    v44 = [v14 guid];
    v36 = [v44 length] == 0;

    if (v34)
    {
      goto LABEL_13;
    }
  }

  v45 = v32 == 0 || v36;
  v39 = v35;
  if (!v45)
  {
    if ([MTStoreIdentifier isNotEmpty:v17])
    {
      v46 = [v15 bestAvailableStoreCleanURL];
      v90 = @"i";
      v47 = [NSString stringWithFormat:@"%lld", v17];
      v91 = v47;
      v48 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v37 = [v46 pf_URLByAppendingQueryString:v48];

      v49 = [v15 twitterShareURL];
      v88 = @"i";
      v50 = [NSString stringWithFormat:@"%lld", v17];
      v89 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v38 = [v49 pf_URLByAppendingQueryString:v51];
    }

    else
    {
      v59 = [v35 guid];
      v60 = [v59 length];

      if (!v60)
      {
        v37 = 0;
        v38 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v61 = [v15 bestAvailableStoreCleanURL];
      v86 = @"episodeGuid";
      v62 = [v35 guid];
      v87 = v62;
      v63 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v37 = [v61 pf_URLByAppendingHashString:v63];

      v38 = 0;
    }

LABEL_14:
    if (v37)
    {
      *(v11 + 2) |= 2uLL;
      [v18 setValue:v37 forKey:@"MTShareURL" shareModes:2];
      if (a4 > 0.0 || a5 > 0.0)
      {
        if (a4 > 0.0)
        {
          v84 = @"r";
          v52 = [NSString stringWithFormat:@"%.0lf", *&a4];
          v85 = v52;
          v53 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v54 = [v37 pf_URLByAppendingQueryString:v53];

          v37 = v54;
        }

        if (a5 > 0.0)
        {
          v82 = @"t";
          v55 = [NSString stringWithFormat:@"%.0lf", *&a5];
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

      else if (a6 <= 0.0)
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
        v40 = [NSString stringWithFormat:@"%.0lf", *&a6];
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
  v64 = [v15 shareURL];
  v10 = v75;
  if (!v64)
  {
    v65 = +[IMLogger sharedLogger];
    [v65 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Sharing/MTShareUtilDataSource.m" lineNumber:180 format:{@"Attempting to share a podcast without a share URL even though we have adamIDs, falling back to feedURL"}];

    v66 = [v75 podcastFeedUrl];
    v64 = [NSURL URLWithString:v66];
  }

  [v18 setValue:v73 forKey:@"kMTPodcastTitle" shareModes:1];
  v67 = [v15 author];
  [v18 setValue:v67 forKey:@"kMTProvider" shareModes:1];

  [v18 setValue:v64 forKey:@"MTShareURL" shareModes:1];
  v68 = [v15 twitterShareURL];

  if (v68)
  {
    v69 = [v15 twitterShareURL];
    [v18 setValue:v69 forKey:@"MTShortURL" shareModes:1];
  }

  v70 = [v39 itunesSubtitle];
  [v18 setValue:v70 forKey:@"kMTShareDescription" shareModes:6];

  v71 = [v15 itemDescription];
  [v18 setValue:v71 forKey:@"kMTShareDescription" shareModes:1];

LABEL_39:
  return v11;
}

- (MTShareUtilDataSource)initWithPodcast:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MTShareUtilDataSource;
  v5 = [(MTShareUtilDataSource *)&v26 init];
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 8) = vdupq_n_s64(1uLL);
    v8 = [v4 shareURL];
    [v5 setValue:v8 forKey:@"MTShareURL" shareModes:1];
    v9 = [v4 twitterShareURL];

    if (v9)
    {
      v10 = [v4 twitterShareURL];
      [v5 setValue:v10 forKey:@"MTShortURL" shareModes:1];
    }

    v11 = +[PUIObjCArtworkProvider shared];
    v12 = kMTSharingArtworkSize;
    v13 = [v11 cachedArtworkForMTPodcast:v4 withSize:{kMTSharingArtworkSize, kMTSharingArtworkSize}];
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
      [v11 artworkForMTPodcast:v4 withSize:&v20 completionHandler:{v12, v12}];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    v14 = [v4 title];
    [v5 setValue:v14 forKey:@"kMTPodcastTitle" shareModes:1];

    v15 = [v4 author];
    [v5 setValue:v15 forKey:@"kMTProvider" shareModes:1];

    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 storeCollectionId]);
    v17 = [v16 stringValue];
    [v5 setValue:v17 forKey:@"kMTStoreId" shareModes:1];

    v18 = [v4 itemDescription];
    [v5 setValue:v18 forKey:@"kMTShareDescription" shareModes:1];
  }

  return v5;
}

- (MTShareUtilDataSource)initWithPodcastDetails:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MTShareUtilDataSource;
  v5 = [(MTShareUtilDataSource *)&v26 init];
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 8) = vdupq_n_s64(1uLL);
    v8 = [v4 objectForKeyedSubscript:@"url"];
    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"url"];
      v10 = [NSURL URLWithString:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 objectForKeyedSubscript:@"shortUrl"];
    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"shortUrl"];
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

    v14 = [v4 objectForKeyedSubscript:@"id"];
    [v5 setValue:v14 forKey:@"kMTStoreId" shareModes:1];
    v15 = [v4 objectForKeyedSubscript:@"image"];
    v16 = [v4 objectForKeyedSubscript:@"artwork"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 _setImageIgnoringSmallerSize:v15 forKey:@"MTShareImage" shareMode:1];
LABEL_22:
        v21 = [v4 objectForKeyedSubscript:@"name"];
        v22 = [v4 objectForKeyedSubscript:@"artistName"];
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

- (void)fetchImageWithTemplateURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PUIObjCArtworkProvider shared];
  v8 = kMTSharingArtworkSize;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000888C4;
  v10[3] = &unk_1004D9180;
  v11 = v5;
  v9 = v5;
  [v7 artworkForURL:v6 withSize:v10 completionHandler:{v8, v8}];
}

- (id)shortURL
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShortURL" shareMode:v3];
}

- (id)shareURL
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShareURL" shareMode:v3];
}

- (id)shareImage
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShareImage" shareMode:v3];
}

- (id)shareEpisodeTitle
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTEpisodeTitle" shareMode:v3];
}

- (id)shareImageProvider
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"MTShareImageProvider" shareMode:v3];
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
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTProvider" shareMode:v3];
}

- (id)shareDescription
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTShareDescription" shareMode:v3];
}

- (id)storeIdentifier
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTStoreId" shareMode:v3];
}

- (id)pubDate
{
  v3 = [(MTShareUtilDataSource *)self currentShareMode];

  return [(MTShareUtilDataSource *)self valueForKey:@"kMTPubDate" shareMode:v3];
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

- (void)setValue:(id)a3 forKey:(id)a4 shareModes:(int64_t)a5
{
  v8 = a3;
  v24 = a4;
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
        v16 = [v15 intValue] & a5;
        if (v16 == [v15 intValue])
        {
          v17 = [(MTShareUtilDataSource *)self shareData];
          v18 = [v17 objectForKeyedSubscript:v15];

          if (!v18)
          {
            v19 = objc_alloc_init(NSMutableDictionary);
            v20 = [(MTShareUtilDataSource *)self shareData];
            [v20 setObject:v19 forKeyedSubscript:v15];
          }

          v21 = [(MTShareUtilDataSource *)self shareData];
          v22 = [v21 objectForKeyedSubscript:v15];
          v23 = v22;
          if (v8)
          {
            [v22 setObject:v8 forKeyedSubscript:v24];
          }

          else
          {
            [v22 removeObjectForKey:v24];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

- (id)valueForKey:(id)a3 shareMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(MTShareUtilDataSource *)self shareData];
  v8 = [NSNumber numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v6];

  return v10;
}

- (void)_setImageIgnoringSmallerSize:(id)a3 forKey:(id)a4 shareMode:(int64_t)a5
{
  v22 = a3;
  v8 = a4;
  v9 = [(MTShareUtilDataSource *)self valueForKey:v8 shareMode:a5];
  [v22 size];
  v10 = kMTSharingArtworkSize;
  if (v11 > kMTSharingArtworkSize)
  {
    v12 = [v22 imageWithSize:{kMTSharingArtworkSize, kMTSharingArtworkSize}];
  }

  [v9 size];
  v14 = v13;
  [v22 size];
  if (v9)
  {
    v16 = v15;
    [v9 size];
    v18 = v17;
    [v22 size];
    if (v16 != v10 && v18 >= v19 || v14 == v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v14 != v10)
  {
LABEL_11:
    [(MTShareUtilDataSource *)self setValue:v22 forKey:v8 shareModes:a5];
  }

LABEL_12:
}

@end
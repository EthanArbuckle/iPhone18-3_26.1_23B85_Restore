@interface MTNotificationEpisode
+ (unint64_t)versionOfDictionaryRepresentation:(id)a3;
- (MTNotificationEpisode)initWithDictionaryRepresentation:(id)a3;
- (MTNotificationEpisode)initWithUuid:(id)a3 storeTrackId:(int64_t)a4 bestTitle:(id)a5 bestSummary:(id)a6 pubDate:(id)a7 duration:(double)a8 byteSize:(int64_t)a9 isVideo:(BOOL)a10 sortPropertyValues:(id)a11 podcastUuid:(id)a12 podcastTitle:(id)a13 podcastStoreCollectionId:(int64_t)a14;
- (id)_representationByMigratingLegacyKeysInRepresentation:(id)a3;
- (id)dictionaryRepresentation;
- (void)_upgradeRepresentationFrom0To1:(id)a3;
@end

@implementation MTNotificationEpisode

+ (unint64_t)versionOfDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"_version"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"_version"];
    v4 = [v5 unsignedIntegerValue];
  }

  return v4;
}

- (MTNotificationEpisode)initWithUuid:(id)a3 storeTrackId:(int64_t)a4 bestTitle:(id)a5 bestSummary:(id)a6 pubDate:(id)a7 duration:(double)a8 byteSize:(int64_t)a9 isVideo:(BOOL)a10 sortPropertyValues:(id)a11 podcastUuid:(id)a12 podcastTitle:(id)a13 podcastStoreCollectionId:(int64_t)a14
{
  v20 = a3;
  v21 = a5;
  obj = a6;
  v22 = a6;
  v31 = a7;
  v33 = a7;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v34.receiver = self;
  v34.super_class = MTNotificationEpisode;
  v26 = [(MTNotificationEpisode *)&v34 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_uuid, a3);
    v27->_storeTrackId = a4;
    objc_storeStrong(&v27->_bestTitle, a5);
    objc_storeStrong(&v27->_bestSummary, obj);
    objc_storeStrong(&v27->_pubDate, v31);
    v27->_duration = a8;
    v27->_byteSize = a9;
    v27->_isVideo = a10;
    objc_storeStrong(&v27->_sortPropertyValues, a11);
    objc_storeStrong(&v27->_podcastUuid, a12);
    objc_storeStrong(&v27->_podcastTitle, a13);
    v27->_podcastStoreCollectionId = a14;
  }

  return v27;
}

- (MTNotificationEpisode)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MTNotificationEpisode;
  v5 = [(MTNotificationEpisode *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(MTNotificationEpisode *)v5 _representationByMigratingLegacyKeysInRepresentation:v4];

    v8 = [v7 objectForKeyedSubscript:@"episodeUuid"];
    uuid = v6->_uuid;
    v6->_uuid = v8;

    v10 = [v7 objectForKeyedSubscript:@"episodeStoreTrackId"];
    v6->_storeTrackId = [v10 longLongValue];

    v11 = [v7 objectForKeyedSubscript:@"bestTitle"];
    bestTitle = v6->_bestTitle;
    v6->_bestTitle = v11;

    v13 = [v7 objectForKeyedSubscript:@"bestSummary"];
    bestSummary = v6->_bestSummary;
    v6->_bestSummary = v13;

    v15 = [v7 objectForKeyedSubscript:@"pubDate"];
    pubDate = v6->_pubDate;
    v6->_pubDate = v15;

    v17 = [v7 objectForKeyedSubscript:@"durationNumber"];
    [v17 doubleValue];
    v6->_duration = v18;

    v19 = [v7 objectForKeyedSubscript:@"byteSizeNumber"];
    v6->_byteSize = [v19 longLongValue];

    v20 = [v7 objectForKeyedSubscript:@"isVideoNumber"];
    v6->_isVideo = [v20 BOOLValue];

    v21 = [v7 objectForKeyedSubscript:@"sortPropertyValues"];
    sortPropertyValues = v6->_sortPropertyValues;
    v6->_sortPropertyValues = v21;

    v23 = [v7 objectForKeyedSubscript:@"podcastUuid"];
    podcastUuid = v6->_podcastUuid;
    v6->_podcastUuid = v23;

    v25 = [v7 objectForKeyedSubscript:@"podcastTitle"];
    podcastTitle = v6->_podcastTitle;
    v6->_podcastTitle = v25;

    v27 = [v7 objectForKeyedSubscript:@"podcastStoreCollectionId"];
    v6->_podcastStoreCollectionId = [v27 longLongValue];

    v4 = v7;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MTNotificationEpisode *)self uuid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_10002D1C8;
  }

  [v3 setObject:v6 forKeyedSubscript:@"episodeUuid"];

  v7 = [NSNumber numberWithLongLong:[(MTNotificationEpisode *)self storeTrackId]];
  [v3 setObject:v7 forKeyedSubscript:@"episodeStoreTrackId"];

  v8 = [(MTNotificationEpisode *)self bestTitle];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10002D1C8;
  }

  [v3 setObject:v10 forKeyedSubscript:@"bestTitle"];

  v11 = [(MTNotificationEpisode *)self bestSummary];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_10002D1C8;
  }

  [v3 setObject:v13 forKeyedSubscript:@"bestSummary"];

  pubDate = self->_pubDate;
  if (pubDate)
  {
    [v3 setObject:pubDate forKeyedSubscript:@"pubDate"];
  }

  [(MTNotificationEpisode *)self duration];
  v15 = [NSNumber numberWithDouble:?];
  [v3 setObject:v15 forKeyedSubscript:@"durationNumber"];

  v16 = [NSNumber numberWithLongLong:[(MTNotificationEpisode *)self byteSize]];
  [v3 setObject:v16 forKeyedSubscript:@"byteSizeNumber"];

  v17 = [NSNumber numberWithBool:[(MTNotificationEpisode *)self isVideo]];
  [v3 setObject:v17 forKeyedSubscript:@"isVideoNumber"];

  v18 = [(MTNotificationEpisode *)self sortPropertyValues];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &__NSDictionary0__struct;
  }

  [v3 setObject:v20 forKeyedSubscript:@"sortPropertyValues"];

  v21 = [(MTNotificationEpisode *)self podcastUuid];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_10002D1C8;
  }

  [v3 setObject:v23 forKeyedSubscript:@"podcastUuid"];

  v24 = [(MTNotificationEpisode *)self podcastTitle];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_10002D1C8;
  }

  [v3 setObject:v26 forKeyedSubscript:@"podcastTitle"];

  v27 = [NSNumber numberWithLongLong:[(MTNotificationEpisode *)self podcastStoreCollectionId]];
  [v3 setObject:v27 forKeyedSubscript:@"podcastStoreCollectionId"];

  [v3 setObject:&off_10002DF20 forKeyedSubscript:@"_version"];

  return v3;
}

- (id)_representationByMigratingLegacyKeysInRepresentation:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() versionOfDictionaryRepresentation:v4];
  if (v5 == 1)
  {
    v6 = v4;
  }

  else
  {
    v8 = v5;
    v6 = [v4 mutableCopy];
    if (!v8)
    {
      [(MTNotificationEpisode *)self _upgradeRepresentationFrom0To1:v6];
      v8 = 1;
      goto LABEL_10;
    }

    while (v8 != 1)
    {
LABEL_10:
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      [v6 setObject:v9 forKeyedSubscript:@"_version"];
    }
  }

  return v6;
}

- (void)_upgradeRepresentationFrom0To1:(id)a3
{
  v8 = a3;
  v3 = [v8 objectForKeyedSubscript:@"bestTitle"];

  if (!v3)
  {
    v4 = [v8 objectForKeyedSubscript:@"episodeTitle"];
    [v8 setObject:v4 forKeyedSubscript:@"bestTitle"];
  }

  v5 = [v8 objectForKeyedSubscript:@"bestSummary"];

  if (!v5)
  {
    v6 = [v8 objectForKeyedSubscript:@"itemDescription"];
    v7 = [v6 stringBySmartlyStrippingHTML];
    [v8 setObject:v7 forKeyedSubscript:@"bestSummary"];
  }
}

@end
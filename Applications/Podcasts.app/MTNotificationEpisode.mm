@interface MTNotificationEpisode
+ (unint64_t)versionOfDictionaryRepresentation:(id)representation;
- (MTNotificationEpisode)initWithDictionaryRepresentation:(id)representation;
- (MTNotificationEpisode)initWithUuid:(id)uuid storeTrackId:(int64_t)id bestTitle:(id)title bestSummary:(id)summary pubDate:(id)date duration:(double)duration byteSize:(int64_t)size isVideo:(BOOL)self0 sortPropertyValues:(id)self1 podcastUuid:(id)self2 podcastTitle:(id)self3 podcastStoreCollectionId:(int64_t)self4;
- (id)_representationByMigratingLegacyKeysInRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (void)_upgradeRepresentationFrom0To1:(id)to1;
@end

@implementation MTNotificationEpisode

+ (unint64_t)versionOfDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  unsignedIntegerValue = [representationCopy objectForKeyedSubscript:@"_version"];

  if (unsignedIntegerValue)
  {
    v5 = [representationCopy objectForKeyedSubscript:@"_version"];
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (MTNotificationEpisode)initWithUuid:(id)uuid storeTrackId:(int64_t)id bestTitle:(id)title bestSummary:(id)summary pubDate:(id)date duration:(double)duration byteSize:(int64_t)size isVideo:(BOOL)self0 sortPropertyValues:(id)self1 podcastUuid:(id)self2 podcastTitle:(id)self3 podcastStoreCollectionId:(int64_t)self4
{
  uuidCopy = uuid;
  titleCopy = title;
  obj = summary;
  summaryCopy = summary;
  dateCopy = date;
  dateCopy2 = date;
  valuesCopy = values;
  podcastUuidCopy = podcastUuid;
  podcastTitleCopy = podcastTitle;
  v34.receiver = self;
  v34.super_class = MTNotificationEpisode;
  v26 = [(MTNotificationEpisode *)&v34 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_uuid, uuid);
    v27->_storeTrackId = id;
    objc_storeStrong(&v27->_bestTitle, title);
    objc_storeStrong(&v27->_bestSummary, obj);
    objc_storeStrong(&v27->_pubDate, dateCopy);
    v27->_duration = duration;
    v27->_byteSize = size;
    v27->_isVideo = video;
    objc_storeStrong(&v27->_sortPropertyValues, values);
    objc_storeStrong(&v27->_podcastUuid, podcastUuid);
    objc_storeStrong(&v27->_podcastTitle, podcastTitle);
    v27->_podcastStoreCollectionId = collectionId;
  }

  return v27;
}

- (MTNotificationEpisode)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v29.receiver = self;
  v29.super_class = MTNotificationEpisode;
  v5 = [(MTNotificationEpisode *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(MTNotificationEpisode *)v5 _representationByMigratingLegacyKeysInRepresentation:representationCopy];

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

    representationCopy = v7;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  uuid = [(MTNotificationEpisode *)self uuid];
  v5 = uuid;
  if (uuid)
  {
    v6 = uuid;
  }

  else
  {
    v6 = &stru_1004F3018;
  }

  [v3 setObject:v6 forKeyedSubscript:@"episodeUuid"];

  v7 = [NSNumber numberWithLongLong:[(MTNotificationEpisode *)self storeTrackId]];
  [v3 setObject:v7 forKeyedSubscript:@"episodeStoreTrackId"];

  bestTitle = [(MTNotificationEpisode *)self bestTitle];
  v9 = bestTitle;
  if (bestTitle)
  {
    v10 = bestTitle;
  }

  else
  {
    v10 = &stru_1004F3018;
  }

  [v3 setObject:v10 forKeyedSubscript:@"bestTitle"];

  bestSummary = [(MTNotificationEpisode *)self bestSummary];
  v12 = bestSummary;
  if (bestSummary)
  {
    v13 = bestSummary;
  }

  else
  {
    v13 = &stru_1004F3018;
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

  sortPropertyValues = [(MTNotificationEpisode *)self sortPropertyValues];
  v19 = sortPropertyValues;
  if (sortPropertyValues)
  {
    v20 = sortPropertyValues;
  }

  else
  {
    v20 = &__NSDictionary0__struct;
  }

  [v3 setObject:v20 forKeyedSubscript:@"sortPropertyValues"];

  podcastUuid = [(MTNotificationEpisode *)self podcastUuid];
  v22 = podcastUuid;
  if (podcastUuid)
  {
    v23 = podcastUuid;
  }

  else
  {
    v23 = &stru_1004F3018;
  }

  [v3 setObject:v23 forKeyedSubscript:@"podcastUuid"];

  podcastTitle = [(MTNotificationEpisode *)self podcastTitle];
  v25 = podcastTitle;
  if (podcastTitle)
  {
    v26 = podcastTitle;
  }

  else
  {
    v26 = &stru_1004F3018;
  }

  [v3 setObject:v26 forKeyedSubscript:@"podcastTitle"];

  v27 = [NSNumber numberWithLongLong:[(MTNotificationEpisode *)self podcastStoreCollectionId]];
  [v3 setObject:v27 forKeyedSubscript:@"podcastStoreCollectionId"];

  [v3 setObject:&off_100500AC0 forKeyedSubscript:@"_version"];

  return v3;
}

- (id)_representationByMigratingLegacyKeysInRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [objc_opt_class() versionOfDictionaryRepresentation:representationCopy];
  if (v5 == 1)
  {
    v6 = representationCopy;
  }

  else
  {
    v8 = v5;
    v6 = [representationCopy mutableCopy];
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

- (void)_upgradeRepresentationFrom0To1:(id)to1
{
  to1Copy = to1;
  v3 = [to1Copy objectForKeyedSubscript:@"bestTitle"];

  if (!v3)
  {
    v4 = [to1Copy objectForKeyedSubscript:@"episodeTitle"];
    [to1Copy setObject:v4 forKeyedSubscript:@"bestTitle"];
  }

  v5 = [to1Copy objectForKeyedSubscript:@"bestSummary"];

  if (!v5)
  {
    v6 = [to1Copy objectForKeyedSubscript:@"itemDescription"];
    stringBySmartlyStrippingHTML = [v6 stringBySmartlyStrippingHTML];
    [to1Copy setObject:stringBySmartlyStrippingHTML forKeyedSubscript:@"bestSummary"];
  }
}

@end
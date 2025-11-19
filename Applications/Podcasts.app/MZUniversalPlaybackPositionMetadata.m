@interface MZUniversalPlaybackPositionMetadata
+ (id)keyValueStoreItemIdentifierForItem:(id)a3;
+ (id)metadataWithValuesFromDataSourceItem:(id)a3;
+ (id)metadataWithValuesItemIdentifier:(id)a3 keyValueStorePayload:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MZUniversalPlaybackPositionMetadata)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyValueStorePayload;
- (unint64_t)hash;
@end

@implementation MZUniversalPlaybackPositionMetadata

- (MZUniversalPlaybackPositionMetadata)init
{
  v3.receiver = self;
  v3.super_class = MZUniversalPlaybackPositionMetadata;
  return [(MZUniversalPlaybackPositionMetadata *)&v3 init];
}

- (id)description
{
  v18.receiver = self;
  v18.super_class = MZUniversalPlaybackPositionMetadata;
  v3 = [(MZUniversalPlaybackPositionMetadata *)&v18 description];
  v4 = [(MZUniversalPlaybackPositionMetadata *)self itemIdentifier];
  [(MZUniversalPlaybackPositionMetadata *)self bookmarkTime];
  v6 = [NSString stringWithFormat:@"%02lu:%02lu:%.2f", (v5 / 3600.0), ((v5 - (3600 * (v5 / 3600.0))) / 60.0), v5 - (3600 * (v5 / 3600.0)) - (60 * ((v5 - (3600 * (v5 / 3600.0))) / 60.0))];
  v7 = [(MZUniversalPlaybackPositionMetadata *)self hasBeenPlayed];
  v8 = [(MZUniversalPlaybackPositionMetadata *)self playCount];
  [(MZUniversalPlaybackPositionMetadata *)self timestamp];
  v10 = sub_10008FF7C(v9);
  v11 = [(MZUniversalPlaybackPositionMetadata *)self isNew];
  [(MZUniversalPlaybackPositionMetadata *)self lastUserMarkedAsPlayedDate];
  v13 = sub_10008FF7C(v12);
  [(MZUniversalPlaybackPositionMetadata *)self lastDatePlayed];
  v15 = sub_10008FF7C(v14);
  v16 = [NSString stringWithFormat:@"%@: id=%@, bktm=%@, hbpl=%d, plct=%lu, timestamp=%@, isNew=%d, lastUserMarkedAsPlayedDate=%@, lastDatePlayed=%@, playStateManuallySet=%d", v3, v4, v6, v7, v8, v10, v11, v13, v15, [(MZUniversalPlaybackPositionMetadata *)self playStateManuallySet]];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MZUniversalPlaybackPositionMetadata);
  v5 = [(MZUniversalPlaybackPositionMetadata *)self itemIdentifier];
  [(MZUniversalPlaybackPositionMetadata *)v4 setItemIdentifier:v5];

  [(MZUniversalPlaybackPositionMetadata *)self timestamp];
  [(MZUniversalPlaybackPositionMetadata *)v4 setTimestamp:?];
  [(MZUniversalPlaybackPositionMetadata *)self bookmarkTime];
  [(MZUniversalPlaybackPositionMetadata *)v4 setBookmarkTime:?];
  [(MZUniversalPlaybackPositionMetadata *)v4 setHasBeenPlayed:[(MZUniversalPlaybackPositionMetadata *)self hasBeenPlayed]];
  [(MZUniversalPlaybackPositionMetadata *)v4 setPlayCount:[(MZUniversalPlaybackPositionMetadata *)self playCount]];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_itemIdentifier hash]^ self->_hasBeenPlayed ^ self->_playCount;
  v4 = [NSNumber numberWithDouble:self->_bookmarkTime];
  v5 = v3 ^ [v4 hash];
  v6 = [NSNumber numberWithDouble:self->_timestamp];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSString *)self->_itemIdentifier isEqual:*(v5 + 2)]&& self->_timestamp == v5[3] && self->_bookmarkTime == v5[4] && self->_hasBeenPlayed == *(v5 + 8) && self->_playCount == *(v5 + 5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)keyValueStoreItemIdentifierForItem:(id)a3
{
  v3 = a3;
  v4 = [NSArray arrayWithObjects:@"storeItemAdamID", @"mediaEntityType", 0];
  v5 = sub_100090524(v3, v4);
  v6 = [v5 objectForKey:@"mediaEntityType"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKey:@"storeItemAdamID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = [v5 objectForKey:@"storeItemAdamID"];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 longLongValue];
  }

  else
  {
    v12 = [v10 unsignedLongLongValue];
  }

  v13 = v12;

  if (v13)
  {
    v14 = (v7 - 3) >= 2;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v18 = [NSString stringWithFormat:@"%llu", v13];
    goto LABEL_14;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100090628;
  v22[3] = &unk_1004D9F68;
  v23 = v3;
  v15 = objc_retainBlock(v22);
  v16 = [NSArray arrayWithObjects:@"podcastURL", @"podcastGUID", 0];

  v17 = (v15[2])(v15, v16);
  if (v17)
  {
    goto LABEL_9;
  }

  v19 = [NSArray arrayWithObjects:@"artist", @"albumTitle", 0];

  v20 = (v15[2])(v15, v19);
  if (v20)
  {
LABEL_12:
    v18 = v20;
    v16 = v19;
    goto LABEL_13;
  }

  v16 = [NSArray arrayWithObjects:@"title", @"albumTitle", 0];

  v17 = (v15[2])(v15, v16);
  if (!v17)
  {
    v19 = [NSArray arrayWithObjects:@"title", @"artist", 0];

    v20 = (v15[2])(v15, v19);
    if (v20)
    {
      goto LABEL_12;
    }

    v16 = [NSArray arrayWithObjects:@"title", 0];

    v17 = (v15[2])(v15, v16);
  }

LABEL_9:
  v18 = v17;
LABEL_13:

  v4 = v16;
LABEL_14:

  return v18;
}

+ (id)metadataWithValuesFromDataSourceItem:(id)a3
{
  v30 = a3;
  v28 = [NSMutableDictionary alloc];
  v27 = [NSNumber numberWithDouble:0.0];
  v29 = +[NSDate distantPast];
  [v29 timeIntervalSinceReferenceDate];
  v26 = [NSNumber numberWithDouble:?];
  v25 = [NSNumber numberWithBool:0];
  v23 = [NSNumber numberWithInteger:0];
  v3 = [NSNumber numberWithBool:0];
  v24 = +[NSDate distantPast];
  [v24 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  v5 = +[NSDate distantPast];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [NSNumber numberWithDouble:?];
  v7 = [NSNumber numberWithBool:0];
  v8 = [v28 initWithObjectsAndKeys:{v27, @"bookmarkTime", v26, @"bookmarkMetadataTimestamp", v25, @"hasBeenPalyed", v23, @"playCount", v3, @"isNew", v4, @"lastUserMarkedAsPlayedDate", v6, @"lastDatePlayed", v7, @"playStateManuallySet", 0}];

  v9 = [v8 allKeys];
  v10 = [NSSet setWithArray:v9];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100090CCC;
  v31[3] = &unk_1004D9F90;
  v32 = v8;
  v11 = v8;
  [v30 enumerateValuesForProperties:v10 usingBlock:v31];

  v12 = objc_alloc_init(MZUniversalPlaybackPositionMetadata);
  v13 = [MZUniversalPlaybackPositionMetadata keyValueStoreItemIdentifierForItem:v30];

  [(MZUniversalPlaybackPositionMetadata *)v12 setItemIdentifier:v13];
  v14 = [v11 valueForKey:@"bookmarkMetadataTimestamp"];
  [v14 doubleValue];
  [(MZUniversalPlaybackPositionMetadata *)v12 setTimestamp:?];

  v15 = [v11 valueForKey:@"bookmarkTime"];
  [v15 doubleValue];
  [(MZUniversalPlaybackPositionMetadata *)v12 setBookmarkTime:?];

  v16 = [v11 valueForKey:@"hasBeenPalyed"];
  -[MZUniversalPlaybackPositionMetadata setHasBeenPlayed:](v12, "setHasBeenPlayed:", [v16 BOOLValue]);

  v17 = [v11 valueForKey:@"playCount"];
  -[MZUniversalPlaybackPositionMetadata setPlayCount:](v12, "setPlayCount:", [v17 integerValue]);

  v18 = [v11 valueForKey:@"isNew"];
  -[MZUniversalPlaybackPositionMetadata setIsNew:](v12, "setIsNew:", [v18 BOOLValue]);

  v19 = [v11 valueForKey:@"lastUserMarkedAsPlayedDate"];
  [v19 doubleValue];
  [(MZUniversalPlaybackPositionMetadata *)v12 setLastUserMarkedAsPlayedDate:?];

  v20 = [v11 valueForKey:@"lastDatePlayed"];
  [v20 doubleValue];
  [(MZUniversalPlaybackPositionMetadata *)v12 setLastDatePlayed:?];

  v21 = [v11 valueForKey:@"playStateManuallySet"];
  -[MZUniversalPlaybackPositionMetadata setPlayStateManuallySet:](v12, "setPlayStateManuallySet:", [v21 BOOLValue]);

  return v12;
}

+ (id)metadataWithValuesItemIdentifier:(id)a3 keyValueStorePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
  if (!v8)
  {
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v32[4] = objc_opt_class();
    v32[5] = objc_opt_class();
    v32[6] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v32 count:7];
    v9 = [NSSet setWithArray:v4];

    v31 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v7 error:&v31];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = [v8 objectForKey:@"pver"];
  if (!v10 || ([v8 objectForKey:@"pver"], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v8 objectForKey:@"pver"];
    v12 = [v13 integerValue];

    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [v8 objectForKey:@"pver"];
    v12 = [v11 integerValue];
  }

LABEL_9:
  if (v12)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = objc_alloc_init(MZUniversalPlaybackPositionMetadata);
  [(MZUniversalPlaybackPositionMetadata *)v14 setItemIdentifier:v6];
  v16 = [v8 objectForKey:@"bktm"];
  if (!v16 || ([v8 objectForKey:@"bktm"], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v8 objectForKey:@"bktm"];
    [v18 doubleValue];
    [(MZUniversalPlaybackPositionMetadata *)v14 setBookmarkTime:?];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = [v8 objectForKey:@"bktm"];
    [v17 doubleValue];
    [(MZUniversalPlaybackPositionMetadata *)v14 setBookmarkTime:?];
  }

LABEL_19:
  v19 = [v8 objectForKey:@"hbpl"];

  v20 = v19 == 0;
  v21 = [v8 objectForKey:@"hbpl"];
  v22 = v21;
  if ((v20 & 1) == 0)
  {
    if (!v21)
    {
      goto LABEL_27;
    }

    v20 = [v8 objectForKey:@"hbpl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v22)
  {
    v22 = [v8 objectForKey:@"hbpl"];
    if (!v22 || ([v8 objectForKey:@"hbpl"], v20 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
LABEL_27:
      v24 = [v8 objectForKey:@"hbpl"];
      -[MZUniversalPlaybackPositionMetadata setHasBeenPlayed:](v14, "setHasBeenPlayed:", [v24 BOOLValue]);

      if (!v22)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

LABEL_26:
    v23 = [v8 objectForKey:@"hbpl"];
    -[MZUniversalPlaybackPositionMetadata setHasBeenPlayed:](v14, "setHasBeenPlayed:", [v23 BOOLValue]);

    goto LABEL_28;
  }

LABEL_30:
  v25 = [v8 objectForKey:@"plct"];
  if (v25)
  {
    v20 = [v8 objectForKey:@"plct"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [v8 objectForKey:@"plct"];
      -[MZUniversalPlaybackPositionMetadata setPlayCount:](v14, "setPlayCount:", [v26 integerValue]);

LABEL_34:
      goto LABEL_35;
    }
  }

  v27 = [v8 objectForKey:@"plct"];
  -[MZUniversalPlaybackPositionMetadata setPlayCount:](v14, "setPlayCount:", [v27 integerValue]);

  if (v25)
  {
    goto LABEL_34;
  }

LABEL_35:

  v28 = [v8 objectForKey:@"tstm"];
  if (v28)
  {
    v20 = [v8 objectForKey:@"tstm"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [v8 objectForKey:@"tstm"];
      [v29 doubleValue];
      [(MZUniversalPlaybackPositionMetadata *)v14 setTimestamp:?];

LABEL_39:
      goto LABEL_40;
    }
  }

  v30 = [v8 objectForKey:@"tstm"];
  [v30 doubleValue];
  [(MZUniversalPlaybackPositionMetadata *)v14 setTimestamp:?];

  if (v28)
  {
    goto LABEL_39;
  }

LABEL_40:

LABEL_11:

  return v14;
}

- (id)keyValueStorePayload
{
  [(MZUniversalPlaybackPositionMetadata *)self bookmarkTime];
  v3 = [NSNumber numberWithDouble:?];
  v4 = [NSNumber numberWithBool:[(MZUniversalPlaybackPositionMetadata *)self hasBeenPlayed]];
  v5 = [NSNumber numberWithInteger:[(MZUniversalPlaybackPositionMetadata *)self playCount]];
  [(MZUniversalPlaybackPositionMetadata *)self timestamp];
  v6 = [NSNumber numberWithDouble:?];
  v7 = [NSArray arrayWithObjects:v3, v4, v5, v6, 0];
  v8 = [NSArray arrayWithObjects:@"bktm", @"hbpl", @"plct", @"tstm", 0];
  v9 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8];

  Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);

  return Data;
}

@end
@interface CLSFavorite
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSFavorite)initWithCKRecord:(id)a3;
- (CLSFavorite)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSFavorite

- (CLSFavorite)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSFavorite *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"contextIdentifierPath");
    if (v7)
    {
      v8 = [CLSUtil pathFromData:v7];
      [v6 setContextIdentifierPath:v8];
    }

    v9 = sub_10016D778(v4, @"contextSummary");
    [v6 setContextSummary:v9];

    v10 = sub_10016D778(v4, @"contextCustomTypeName");
    [v6 setContextCustomTypeName:v10];

    v11 = sub_10016D778(v4, @"URL");
    v12 = [NSURL URLWithString:v11];
    [v6 setURL:v12];

    v13 = sub_10016D778(v4, @"title");
    [v6 setTitle:v13];

    v14 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v14, "integerValue")}];

    v15 = sub_10016D778(v4, @"contextType");
    [v6 setContextType:{objc_msgSend(v15, "integerValue")}];

    v16 = sub_10016D778(v4, @"bundleIdentifier");
    [v6 setBundleIdentifier:v16];

    v17 = sub_10016D778(v4, @"storeIdentifier");
    [v6 setStoreIdentifier:v17];

    v18 = sub_10016D778(v4, @"contentStoreIdentifier");
    [v6 setContentStoreIdentifier:v18];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v19.receiver = self;
  v19.super_class = CLSFavorite;
  v4 = a3;
  [(CLSFavorite *)&v19 bindTo:v4];
  v5 = [(CLSFavorite *)self contextIdentifierPath:v19.receiver];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CLSFavorite *)self contextIdentifierPath];
    v8 = [CLSUtil dataFromPath:v7 makeBackwardCompatible:1 error:0];
  }

  else
  {
    v8 = 0;
  }

  sub_1000982FC(v4, v8, @"contextIdentifierPath");
  v9 = [(CLSFavorite *)self contextSummary];
  sub_1000982FC(v4, v9, @"contextSummary");

  v10 = [(CLSFavorite *)self contextCustomTypeName];
  sub_1000982FC(v4, v10, @"contextCustomTypeName");

  v11 = [(CLSFavorite *)self URL];
  v12 = [v11 absoluteString];
  sub_1000982FC(v4, v12, @"URL");

  v13 = [(CLSFavorite *)self title];
  sub_1000982FC(v4, v13, @"title");

  v14 = [NSNumber numberWithInt:[(CLSFavorite *)self type]];
  sub_1000982FC(v4, v14, @"type");

  v15 = [NSNumber numberWithInteger:[(CLSFavorite *)self contextType]];
  sub_1000982FC(v4, v15, @"contextType");

  v16 = [(CLSFavorite *)self bundleIdentifier];
  sub_1000982FC(v4, v16, @"bundleIdentifier");

  v17 = [(CLSFavorite *)self storeIdentifier];
  sub_1000982FC(v4, v17, @"storeIdentifier");

  v18 = [(CLSFavorite *)self contentStoreIdentifier];
  sub_1000982FC(v4, v18, @"contentStoreIdentifier");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSFavorite(   objectID               text not null,    contextIdentifierPath  blob,    appIdentifier          text not null,    dateCreated            real not null,    URL                    text,    title                  text not null,    type                   integer,    contextType            integer,    bundleIdentifier       text not null,    storeIdentifier        text not null,    contentStoreIdentifier text,    dateLastModified       real not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSFavorite_objectID on CLSFavorite (objectID)", 0, 0, 0))
    {
      goto LABEL_12;
    }

LABEL_5:
    if (sub_1000B9298(v8, @"alter table CLSFavorite add column contextSummary text", 0, 0, 0))
    {
      if (sub_1000B9298(v8, @"alter table CLSFavorite add column contextCustomTypeName text", 0, 0, 0))
      {
        a3 = 2;
        goto LABEL_8;
      }

      CLSInitLog();
      v10 = CLSLogDatabase;
      if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        v9 = 0;
        goto LABEL_13;
      }

      v14 = 0;
      v11 = "Failed to migrate CLSFavorite(1): Could not add column customTypeName";
      v12 = &v14;
    }

    else
    {
      CLSInitLog();
      v10 = CLSLogDatabase;
      if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v15 = 0;
      v11 = "Failed to migrate CLSFavorite(1): Could not add column summary";
      v12 = &v15;
    }

    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_12;
  }

LABEL_8:
  *a4 = a3;
  v9 = 1;
LABEL_13:

  return v9;
}

- (CLSFavorite)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CLSFavorite *)self _init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  [v5 _initCommonPropsWithRecord:v4];
  v7 = [v4 objectForKeyedSubscript:@"contextIdentifierPath"];
  [v6 setContextIdentifierPath:v7];

  v8 = [v4 objectForKeyedSubscript:@"contextSummary"];
  [v6 setContextSummary:v8];

  v9 = [v4 objectForKeyedSubscript:@"contextCustomTypeName"];
  [v6 setContextCustomTypeName:v9];

  v10 = [v4 objectForKeyedSubscript:@"URL"];
  v11 = [NSURL URLWithString:v10];
  [v6 setURL:v11];

  v12 = [v4 objectForKeyedSubscript:@"title"];
  [v6 setTitle:v12];

  v13 = [v4 objectForKeyedSubscript:@"type"];
  if (v13)
  {
    [v6 setType:CLSFavoriteTypeFromString()];
    v14 = [v4 objectForKeyedSubscript:@"contextType"];
    [v6 setContextType:{objc_msgSend(v14, "integerValue")}];

    v15 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    [v6 setBundleIdentifier:v15];

    v16 = [v4 objectForKeyedSubscript:@"storeIdentifier"];
    [v6 setStoreIdentifier:v16];

    v17 = [v4 objectForKeyedSubscript:@"contentStoreIdentifier"];
    [v6 setContentStoreIdentifier:v17];

LABEL_4:
    v13 = v6;
  }

  return v13;
}

- (void)populate:(id)a3
{
  v20.receiver = self;
  v20.super_class = CLSFavorite;
  v4 = a3;
  [(CLSFavorite *)&v20 populate:v4];
  v5 = [(CLSFavorite *)self contextIdentifierPath:v20.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"contextIdentifierPath"];
  v6 = [(CLSFavorite *)self contextSummary];
  [v4 setObject:v6 forKeyedSubscript:@"contextSummary"];

  v7 = [(CLSFavorite *)self contextCustomTypeName];
  [v4 setObject:v7 forKeyedSubscript:@"contextCustomTypeName"];

  v8 = [CLSContext objectIDPathFromIdentifierPath:v5];
  v9 = [v8 componentsJoinedByString:@"/"];
  [v4 setObject:v9 forKeyedSubscript:@"objectIDPath"];

  v10 = [CLSContext stableObjectIDPathFromIdentifierPath:v5];
  v11 = [v10 componentsJoinedByString:@"/"];
  [v4 setObject:v11 forKeyedSubscript:@"stableObjectIDPath"];

  v12 = [(CLSFavorite *)self URL];
  v13 = [v12 absoluteString];
  [v4 setObject:v13 forKeyedSubscript:@"URL"];

  v14 = [(CLSFavorite *)self title];
  [v4 setObject:v14 forKeyedSubscript:@"title"];

  [(CLSFavorite *)self type];
  v15 = NSStringFromFavoriteType();
  [v4 setObject:v15 forKeyedSubscript:@"type"];

  v16 = [NSNumber numberWithInteger:[(CLSFavorite *)self contextType]];
  [v4 setObject:v16 forKeyedSubscript:@"contextType"];

  v17 = [(CLSFavorite *)self bundleIdentifier];
  [v4 setObject:v17 forKeyedSubscript:@"bundleIdentifier"];

  v18 = [(CLSFavorite *)self storeIdentifier];
  [v4 setObject:v18 forKeyedSubscript:@"storeIdentifier"];

  v19 = [(CLSFavorite *)self contentStoreIdentifier];
  [v4 setObject:v19 forKeyedSubscript:@"contentStoreIdentifier"];
}

@end
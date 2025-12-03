@interface CLSFavorite
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSFavorite)initWithCKRecord:(id)record;
- (CLSFavorite)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSFavorite

- (CLSFavorite)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSFavorite *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"contextIdentifierPath");
    if (v7)
    {
      v8 = [CLSUtil pathFromData:v7];
      [v6 setContextIdentifierPath:v8];
    }

    v9 = sub_10016D778(rowCopy, @"contextSummary");
    [v6 setContextSummary:v9];

    v10 = sub_10016D778(rowCopy, @"contextCustomTypeName");
    [v6 setContextCustomTypeName:v10];

    v11 = sub_10016D778(rowCopy, @"URL");
    v12 = [NSURL URLWithString:v11];
    [v6 setURL:v12];

    v13 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v13];

    v14 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v14, "integerValue")}];

    v15 = sub_10016D778(rowCopy, @"contextType");
    [v6 setContextType:{objc_msgSend(v15, "integerValue")}];

    v16 = sub_10016D778(rowCopy, @"bundleIdentifier");
    [v6 setBundleIdentifier:v16];

    v17 = sub_10016D778(rowCopy, @"storeIdentifier");
    [v6 setStoreIdentifier:v17];

    v18 = sub_10016D778(rowCopy, @"contentStoreIdentifier");
    [v6 setContentStoreIdentifier:v18];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v19.receiver = self;
  v19.super_class = CLSFavorite;
  toCopy = to;
  [(CLSFavorite *)&v19 bindTo:toCopy];
  v5 = [(CLSFavorite *)self contextIdentifierPath:v19.receiver];
  v6 = [v5 count];

  if (v6)
  {
    contextIdentifierPath = [(CLSFavorite *)self contextIdentifierPath];
    v8 = [CLSUtil dataFromPath:contextIdentifierPath makeBackwardCompatible:1 error:0];
  }

  else
  {
    v8 = 0;
  }

  sub_1000982FC(toCopy, v8, @"contextIdentifierPath");
  contextSummary = [(CLSFavorite *)self contextSummary];
  sub_1000982FC(toCopy, contextSummary, @"contextSummary");

  contextCustomTypeName = [(CLSFavorite *)self contextCustomTypeName];
  sub_1000982FC(toCopy, contextCustomTypeName, @"contextCustomTypeName");

  v11 = [(CLSFavorite *)self URL];
  absoluteString = [v11 absoluteString];
  sub_1000982FC(toCopy, absoluteString, @"URL");

  title = [(CLSFavorite *)self title];
  sub_1000982FC(toCopy, title, @"title");

  v14 = [NSNumber numberWithInt:[(CLSFavorite *)self type]];
  sub_1000982FC(toCopy, v14, @"type");

  v15 = [NSNumber numberWithInteger:[(CLSFavorite *)self contextType]];
  sub_1000982FC(toCopy, v15, @"contextType");

  bundleIdentifier = [(CLSFavorite *)self bundleIdentifier];
  sub_1000982FC(toCopy, bundleIdentifier, @"bundleIdentifier");

  storeIdentifier = [(CLSFavorite *)self storeIdentifier];
  sub_1000982FC(toCopy, storeIdentifier, @"storeIdentifier");

  contentStoreIdentifier = [(CLSFavorite *)self contentStoreIdentifier];
  sub_1000982FC(toCopy, contentStoreIdentifier, @"contentStoreIdentifier");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
    goto LABEL_5;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSFavorite(   objectID               text not null,    contextIdentifierPath  blob,    appIdentifier          text not null,    dateCreated            real not null,    URL                    text,    title                  text not null,    type                   integer,    contextType            integer,    bundleIdentifier       text not null,    storeIdentifier        text not null,    contentStoreIdentifier text,    dateLastModified       real not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSFavorite_objectID on CLSFavorite (objectID)", 0, 0, 0))
    {
      goto LABEL_12;
    }

LABEL_5:
    if (sub_1000B9298(v8, @"alter table CLSFavorite add column contextSummary text", 0, 0, 0))
    {
      if (sub_1000B9298(v8, @"alter table CLSFavorite add column contextCustomTypeName text", 0, 0, 0))
      {
        version = 2;
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
  *finalVersion = version;
  v9 = 1;
LABEL_13:

  return v9;
}

- (CLSFavorite)initWithCKRecord:(id)record
{
  recordCopy = record;
  _init = [(CLSFavorite *)self _init];
  v6 = _init;
  if (!_init)
  {
    goto LABEL_4;
  }

  [_init _initCommonPropsWithRecord:recordCopy];
  v7 = [recordCopy objectForKeyedSubscript:@"contextIdentifierPath"];
  [v6 setContextIdentifierPath:v7];

  v8 = [recordCopy objectForKeyedSubscript:@"contextSummary"];
  [v6 setContextSummary:v8];

  v9 = [recordCopy objectForKeyedSubscript:@"contextCustomTypeName"];
  [v6 setContextCustomTypeName:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"URL"];
  v11 = [NSURL URLWithString:v10];
  [v6 setURL:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"title"];
  [v6 setTitle:v12];

  v13 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v13)
  {
    [v6 setType:CLSFavoriteTypeFromString()];
    v14 = [recordCopy objectForKeyedSubscript:@"contextType"];
    [v6 setContextType:{objc_msgSend(v14, "integerValue")}];

    v15 = [recordCopy objectForKeyedSubscript:@"bundleIdentifier"];
    [v6 setBundleIdentifier:v15];

    v16 = [recordCopy objectForKeyedSubscript:@"storeIdentifier"];
    [v6 setStoreIdentifier:v16];

    v17 = [recordCopy objectForKeyedSubscript:@"contentStoreIdentifier"];
    [v6 setContentStoreIdentifier:v17];

LABEL_4:
    v13 = v6;
  }

  return v13;
}

- (void)populate:(id)populate
{
  v20.receiver = self;
  v20.super_class = CLSFavorite;
  populateCopy = populate;
  [(CLSFavorite *)&v20 populate:populateCopy];
  v5 = [(CLSFavorite *)self contextIdentifierPath:v20.receiver];
  [populateCopy setObject:v5 forKeyedSubscript:@"contextIdentifierPath"];
  contextSummary = [(CLSFavorite *)self contextSummary];
  [populateCopy setObject:contextSummary forKeyedSubscript:@"contextSummary"];

  contextCustomTypeName = [(CLSFavorite *)self contextCustomTypeName];
  [populateCopy setObject:contextCustomTypeName forKeyedSubscript:@"contextCustomTypeName"];

  v8 = [CLSContext objectIDPathFromIdentifierPath:v5];
  v9 = [v8 componentsJoinedByString:@"/"];
  [populateCopy setObject:v9 forKeyedSubscript:@"objectIDPath"];

  v10 = [CLSContext stableObjectIDPathFromIdentifierPath:v5];
  v11 = [v10 componentsJoinedByString:@"/"];
  [populateCopy setObject:v11 forKeyedSubscript:@"stableObjectIDPath"];

  v12 = [(CLSFavorite *)self URL];
  absoluteString = [v12 absoluteString];
  [populateCopy setObject:absoluteString forKeyedSubscript:@"URL"];

  title = [(CLSFavorite *)self title];
  [populateCopy setObject:title forKeyedSubscript:@"title"];

  [(CLSFavorite *)self type];
  v15 = NSStringFromFavoriteType();
  [populateCopy setObject:v15 forKeyedSubscript:@"type"];

  v16 = [NSNumber numberWithInteger:[(CLSFavorite *)self contextType]];
  [populateCopy setObject:v16 forKeyedSubscript:@"contextType"];

  bundleIdentifier = [(CLSFavorite *)self bundleIdentifier];
  [populateCopy setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  storeIdentifier = [(CLSFavorite *)self storeIdentifier];
  [populateCopy setObject:storeIdentifier forKeyedSubscript:@"storeIdentifier"];

  contentStoreIdentifier = [(CLSFavorite *)self contentStoreIdentifier];
  [populateCopy setObject:contentStoreIdentifier forKeyedSubscript:@"contentStoreIdentifier"];
}

@end
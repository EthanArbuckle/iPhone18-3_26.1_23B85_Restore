@interface PDConfig
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDConfig)initWithDatabaseRow:(id)row;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)to;
@end

@implementation PDConfig

- (PDConfig)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v13.receiver = self;
  v13.super_class = PDConfig;
  v5 = [(PDConfig *)&v13 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"mayRecordUserActivity");
    v5->_mayRecordUserActivity = [v6 BOOLValue];

    v7 = sub_10016D778(rowCopy, @"maySyncWithCloudKit");
    v5->_maySyncWithCloudKit = [v7 BOOLValue];

    v8 = sub_10016D778(rowCopy, @"maySendToIngest");
    v5->_maySendToIngest = [v8 BOOLValue];

    v9 = sub_10016D778(rowCopy, @"isContextTrackingAllowed");
    v5->_contextTrackingAllowed = [v9 BOOLValue];

    v10 = sub_10016D778(rowCopy, @"cloudKitSyncFetchGracePeriod");
    [v10 doubleValue];
    v5->_cloudKitSyncFetchGracePeriod = v11;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  identityValue = [(PDConfig *)self identityValue];
  sub_1000982FC(toCopy, identityValue, @"identity");

  v6 = [NSNumber numberWithBool:self->_mayRecordUserActivity];
  sub_1000982FC(toCopy, v6, @"mayRecordUserActivity");

  v7 = [NSNumber numberWithBool:self->_maySyncWithCloudKit];
  sub_1000982FC(toCopy, v7, @"maySyncWithCloudKit");

  v8 = [NSNumber numberWithBool:self->_maySendToIngest];
  sub_1000982FC(toCopy, v8, @"maySendToIngest");

  v9 = [NSNumber numberWithBool:self->_contextTrackingAllowed];
  sub_1000982FC(toCopy, v9, @"isContextTrackingAllowed");

  v10 = [NSNumber numberWithDouble:self->_cloudKitSyncFetchGracePeriod];
  sub_1000982FC(toCopy, v10, @"cloudKitSyncFetchGracePeriod");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDConfig(   identity text not null,    mayRecordUserActivity integer not null,    isContextTrackingAllowed integer not null,    maySyncWithCloudKit integer not null,    maySendToIngest integer not null,    cloudKitSyncFetchGracePeriod real not null)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDConfig_identity on PDConfig (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"insert into PDConfig (identity, mayRecordUserActivity, isContextTrackingAllowed, maySyncWithCloudKit, maySendToIngest, cloudKitSyncFetchGracePeriod) values (?,?,?,?,?,?)", 0, &off_10021B958, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_8:

  return v9;
}

- (id)dictionaryRepresentation
{
  v10[0] = @"mayRecordUserActivity";
  v3 = [NSNumber numberWithBool:self->_mayRecordUserActivity];
  v11[0] = v3;
  v10[1] = @"maySyncWithCloudKit";
  v4 = [NSNumber numberWithBool:self->_maySyncWithCloudKit];
  v11[1] = v4;
  v10[2] = @"maySendToIngest";
  v5 = [NSNumber numberWithBool:self->_maySendToIngest];
  v11[2] = v5;
  v10[3] = @"isContextTrackingAllowed";
  v6 = [NSNumber numberWithBool:self->_contextTrackingAllowed];
  v11[3] = v6;
  v10[4] = @"cloudKitSyncFetchGracePeriod";
  v7 = [NSNumber numberWithDouble:self->_cloudKitSyncFetchGracePeriod];
  v11[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end
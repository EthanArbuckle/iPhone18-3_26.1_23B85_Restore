@interface PDCKRecordZone
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDCKRecordZone)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDCKRecordZone

- (PDCKRecordZone)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = PDCKRecordZone;
  v5 = [(PDCKRecordZone *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"zoneName");
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = sub_10016D778(rowCopy, @"clientChangeTokenData");
    clientChangeTokenData = v5->_clientChangeTokenData;
    v5->_clientChangeTokenData = v8;

    v10 = sub_10016D778(rowCopy, @"serverChangeToken");
    if (v10)
    {
      v11 = [[CKServerChangeToken alloc] initWithData:v10];
      serverChangeToken = v5->_serverChangeToken;
      v5->_serverChangeToken = v11;
    }
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  sub_1000982FC(toCopy, self->_zoneName, @"zoneName");
  sub_1000982FC(toCopy, self->_clientChangeTokenData, @"clientChangeTokenData");
  serverChangeToken = self->_serverChangeToken;
  if (serverChangeToken)
  {
    data = [(CKServerChangeToken *)serverChangeToken data];
  }

  else
  {
    data = 0;
  }

  sub_1000982FC(toCopy, data, @"serverChangeToken");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table PDCKRecordZone(   zoneName text not null,    serverChangeToken blob,    clientChangeTokenData blob)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDCKRecordZone_zoneName on PDCKRecordZone (zoneName)", 0, 0, 0))
  {
    v9 = 1;
    *finalVersion = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
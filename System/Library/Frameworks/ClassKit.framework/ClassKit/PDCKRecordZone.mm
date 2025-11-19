@interface PDCKRecordZone
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDCKRecordZone)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDCKRecordZone

- (PDCKRecordZone)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PDCKRecordZone;
  v5 = [(PDCKRecordZone *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"zoneName");
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = sub_10016D778(v4, @"clientChangeTokenData");
    clientChangeTokenData = v5->_clientChangeTokenData;
    v5->_clientChangeTokenData = v8;

    v10 = sub_10016D778(v4, @"serverChangeToken");
    if (v10)
    {
      v11 = [[CKServerChangeToken alloc] initWithData:v10];
      serverChangeToken = v5->_serverChangeToken;
      v5->_serverChangeToken = v11;
    }
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v6 = a3;
  sub_1000982FC(v6, self->_zoneName, @"zoneName");
  sub_1000982FC(v6, self->_clientChangeTokenData, @"clientChangeTokenData");
  serverChangeToken = self->_serverChangeToken;
  if (serverChangeToken)
  {
    v5 = [(CKServerChangeToken *)serverChangeToken data];
  }

  else
  {
    v5 = 0;
  }

  sub_1000982FC(v6, v5, @"serverChangeToken");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table PDCKRecordZone(   zoneName text not null,    serverChangeToken blob,    clientChangeTokenData blob)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDCKRecordZone_zoneName on PDCKRecordZone (zoneName)", 0, 0, 0))
  {
    v9 = 1;
    *a4 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
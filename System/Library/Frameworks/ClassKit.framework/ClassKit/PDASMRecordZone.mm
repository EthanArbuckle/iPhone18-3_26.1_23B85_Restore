@interface PDASMRecordZone
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDASMRecordZone)initWithDatabaseRow:(id)row;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)to;
@end

@implementation PDASMRecordZone

- (PDASMRecordZone)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"zoneName");
  v6 = sub_1000A6678(self, v5);

  if (v6)
  {
    v7 = sub_10016D778(rowCopy, @"serverChangeToken");
    serverChangeToken = v6->_serverChangeToken;
    v6->_serverChangeToken = v7;

    v9 = sub_10016D778(rowCopy, @"status");
    v6->_status = [v9 integerValue];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  zoneName = self->_zoneName;
  toCopy = to;
  sub_1000982FC(toCopy, zoneName, @"zoneName");
  sub_1000982FC(toCopy, self->_serverChangeToken, @"serverChangeToken");
  v6 = [NSNumber numberWithInteger:self->_status];
  sub_1000982FC(toCopy, v6, @"status");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table PDASMRecordZone(   zoneName text not null,    serverChangeToken blob,    status integer default 0)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDASMRecordZone_zoneName on PDASMRecordZone (zoneName)", 0, 0, 0))
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

- (id)dictionaryRepresentation
{
  v3 = [NSNumber numberWithLong:self->_status];
  zoneName = &stru_100206880;
  serverChangeToken = self->_serverChangeToken;
  if (self->_zoneName)
  {
    zoneName = self->_zoneName;
  }

  v10[0] = zoneName;
  v9[0] = @"zoneName";
  v9[1] = @"serverChangeToken";
  v6 = serverChangeToken;
  if (!serverChangeToken)
  {
    v6 = objc_opt_new();
  }

  v9[2] = @"status";
  v10[1] = v6;
  v10[2] = v3;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  if (!serverChangeToken)
  {
  }

  return v7;
}

@end
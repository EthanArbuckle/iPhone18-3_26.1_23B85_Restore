@interface PDASMSearchRecordZone
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
+ (id)hashForQuery:(id)query withSearchText:(id)text;
- (NSArray)immutableColumnNames;
- (PDASMSearchRecordZone)initWithDatabaseRow:(id)row;
- (PDASMSearchRecordZone)initWithZoneName:(id)name andQueryHash:(id)hash;
- (PDDatabaseValue)identityValue;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)to;
- (void)setExpiration:(double)expiration;
@end

@implementation PDASMSearchRecordZone

+ (id)hashForQuery:(id)query withSearchText:(id)text
{
  textCopy = text;
  if (query)
  {
    v6 = [query hash];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSString stringWithFormat:@"%@::%lu", textCopy, v6];

  return v7;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (PDASMSearchRecordZone)initWithZoneName:(id)name andQueryHash:(id)hash
{
  nameCopy = name;
  hashCopy = hash;
  v12.receiver = self;
  v12.super_class = PDASMSearchRecordZone;
  v9 = [(PDASMSearchRecordZone *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneName, name);
    objc_storeStrong(&v10->_queryHash, hash);
    v10->_status = 0;
  }

  return v10;
}

- (PDASMSearchRecordZone)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"zoneName");
  v6 = sub_10016D778(rowCopy, @"queryHash");
  v7 = [(PDASMSearchRecordZone *)self initWithZoneName:v5 andQueryHash:v6];

  if (v7)
  {
    v8 = sub_10016D778(rowCopy, @"cursor");
    cursor = v7->_cursor;
    v7->_cursor = v8;

    v10 = sub_10016D778(rowCopy, @"status");
    v7->_status = [v10 integerValue];

    v11 = sub_10016D6F0(rowCopy, @"dateExpires");
    dateExpires = v7->_dateExpires;
    v7->_dateExpires = v11;
  }

  return v7;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  identityValue = [(PDASMSearchRecordZone *)self identityValue];
  sub_1000982FC(toCopy, identityValue, @"identity");

  sub_1000982FC(toCopy, self->_zoneName, @"zoneName");
  sub_1000982FC(toCopy, self->_queryHash, @"queryHash");
  sub_1000982FC(toCopy, self->_cursor, @"cursor");
  v6 = [NSNumber numberWithInteger:self->_status];
  sub_1000982FC(toCopy, v6, @"status");

  dateExpires = [(PDASMSearchRecordZone *)self dateExpires];
  sub_1000982FC(toCopy, dateExpires, @"dateExpires");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDASMSearchRecordZone(   identity text not null,    zoneName text not null,    queryHash text,    cursor blob,    status integer default 0)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDASMSearchRecordZone_identity on PDASMSearchRecordZone (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table PDASMSearchRecordZone add column dateExpires real", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists PDASMSearchRecordZone_dateExpires on PDASMSearchRecordZone (dateExpires)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_9;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_9:

  return v9;
}

- (PDDatabaseValue)identityValue
{
  zoneName = [(PDASMSearchRecordZone *)self zoneName];
  queryHash = [(PDASMSearchRecordZone *)self queryHash];
  v5 = [NSString stringWithFormat:@"%@/%@", zoneName, queryHash];
  sha224 = [v5 sha224];

  return sha224;
}

- (id)dictionaryRepresentation
{
  v3 = [NSNumber numberWithLong:self->_status];
  v4 = v3;
  queryHash = self->_queryHash;
  zoneName = self->_zoneName;
  if (!zoneName)
  {
    zoneName = &stru_100206880;
  }

  v11[0] = @"zoneName";
  v11[1] = @"queryHash";
  if (queryHash)
  {
    v7 = queryHash;
  }

  else
  {
    v7 = &stru_100206880;
  }

  v12[0] = zoneName;
  v12[1] = v7;
  cursor = self->_cursor;
  if (!cursor)
  {
    cursor = &stru_100206880;
  }

  v11[2] = @"cursor";
  v11[3] = @"status";
  v12[2] = cursor;
  v12[3] = v3;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (void)setExpiration:(double)expiration
{
  if (expiration == 0.0)
  {

    [(PDASMSearchRecordZone *)self setDateExpires:0];
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(PDASMSearchRecordZone *)self setDateExpires:v4];
  }
}

@end
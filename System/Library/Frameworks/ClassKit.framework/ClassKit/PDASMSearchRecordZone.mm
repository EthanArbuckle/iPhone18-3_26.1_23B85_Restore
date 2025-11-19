@interface PDASMSearchRecordZone
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
+ (id)hashForQuery:(id)a3 withSearchText:(id)a4;
- (NSArray)immutableColumnNames;
- (PDASMSearchRecordZone)initWithDatabaseRow:(id)a3;
- (PDASMSearchRecordZone)initWithZoneName:(id)a3 andQueryHash:(id)a4;
- (PDDatabaseValue)identityValue;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)a3;
- (void)setExpiration:(double)a3;
@end

@implementation PDASMSearchRecordZone

+ (id)hashForQuery:(id)a3 withSearchText:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 hash];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSString stringWithFormat:@"%@::%lu", v5, v6];

  return v7;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (PDASMSearchRecordZone)initWithZoneName:(id)a3 andQueryHash:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PDASMSearchRecordZone;
  v9 = [(PDASMSearchRecordZone *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneName, a3);
    objc_storeStrong(&v10->_queryHash, a4);
    v10->_status = 0;
  }

  return v10;
}

- (PDASMSearchRecordZone)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"zoneName");
  v6 = sub_10016D778(v4, @"queryHash");
  v7 = [(PDASMSearchRecordZone *)self initWithZoneName:v5 andQueryHash:v6];

  if (v7)
  {
    v8 = sub_10016D778(v4, @"cursor");
    cursor = v7->_cursor;
    v7->_cursor = v8;

    v10 = sub_10016D778(v4, @"status");
    v7->_status = [v10 integerValue];

    v11 = sub_10016D6F0(v4, @"dateExpires");
    dateExpires = v7->_dateExpires;
    v7->_dateExpires = v11;
  }

  return v7;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v5 = [(PDASMSearchRecordZone *)self identityValue];
  sub_1000982FC(v4, v5, @"identity");

  sub_1000982FC(v4, self->_zoneName, @"zoneName");
  sub_1000982FC(v4, self->_queryHash, @"queryHash");
  sub_1000982FC(v4, self->_cursor, @"cursor");
  v6 = [NSNumber numberWithInteger:self->_status];
  sub_1000982FC(v4, v6, @"status");

  v7 = [(PDASMSearchRecordZone *)self dateExpires];
  sub_1000982FC(v4, v7, @"dateExpires");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDASMSearchRecordZone(   identity text not null,    zoneName text not null,    queryHash text,    cursor blob,    status integer default 0)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDASMSearchRecordZone_identity on PDASMSearchRecordZone (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table PDASMSearchRecordZone add column dateExpires real", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists PDASMSearchRecordZone_dateExpires on PDASMSearchRecordZone (dateExpires)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_9;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_9:

  return v9;
}

- (PDDatabaseValue)identityValue
{
  v3 = [(PDASMSearchRecordZone *)self zoneName];
  v4 = [(PDASMSearchRecordZone *)self queryHash];
  v5 = [NSString stringWithFormat:@"%@/%@", v3, v4];
  v6 = [v5 sha224];

  return v6;
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

- (void)setExpiration:(double)a3
{
  if (a3 == 0.0)
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
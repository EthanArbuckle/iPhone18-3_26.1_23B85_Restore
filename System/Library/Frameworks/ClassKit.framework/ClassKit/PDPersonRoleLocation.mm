@interface PDPersonRoleLocation
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDatabaseValue)identityValue;
- (PDPersonRoleLocation)initWithDatabaseRow:(id)row;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)to;
@end

@implementation PDPersonRoleLocation

- (PDPersonRoleLocation)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"personID");
  v6 = sub_10016D778(rowCopy, @"roleID");
  v7 = sub_10016D778(rowCopy, @"locationID");
  v8 = sub_10016D778(rowCopy, @"roleType");

  v9 = sub_1000C8F24(self, v5, v6, v7, [v8 integerValue]);
  return v9;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  identityValue = [(PDPersonRoleLocation *)self identityValue];
  sub_1000982FC(toCopy, identityValue, @"identity");

  if (self)
  {
    sub_1000982FC(toCopy, self->_personID, @"personID");
    sub_1000982FC(toCopy, self->_roleID, @"roleID");
    locationID = self->_locationID;
  }

  else
  {
    sub_1000982FC(toCopy, 0, @"personID");
    sub_1000982FC(toCopy, 0, @"roleID");
    locationID = 0;
  }

  sub_1000982FC(toCopy, locationID, @"locationID");
  if (self)
  {
    roleType = self->_roleType;
  }

  else
  {
    roleType = 0;
  }

  v7 = [NSNumber numberWithInteger:roleType];
  sub_1000982FC(toCopy, v7, @"roleType");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDPersonRoleLocation(   identity text not null,    personID text not null,    roleID text not null,    locationID text not null,    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade,    foreign key (roleID) references CLSRole(objectID) on delete cascade on update cascade,    foreign key (locationID) references CLSLocation(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDPersonRoleLocation_identity on PDPersonRoleLocation (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_personID on PDPersonRoleLocation (personID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_roleID on PDPersonRoleLocation (roleID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_locationID on PDPersonRoleLocation (locationID)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table PDPersonRoleLocation add column roleType integer", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_roleType on PDPersonRoleLocation (roleType)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_12;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_12:

  return v9;
}

- (PDDatabaseValue)identityValue
{
  if (self)
  {
    v3 = self->_personID;
    v4 = self->_roleID;
    locationID = self->_locationID;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    locationID = 0;
  }

  locationID = [NSString stringWithFormat:@"%@/%@/%@", v3, v4, locationID];
  sha224 = [locationID sha224];

  return sha224;
}

- (id)dictionaryRepresentation
{
  v6 = @"personID";
  v7 = @"roleID";
  locationID = &stru_100206880;
  v8 = vbslq_s8(vceqzq_s64(*&self->_personID), vdupq_n_s64(&stru_100206880), *&self->_personID);
  if (self->_locationID)
  {
    locationID = self->_locationID;
  }

  locationID = [CLSRole stringForRoleType:self->_roleType, v6, v7, @"locationID", @"roleType", *&v8, locationID];
  v9 = locationID;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v6 count:4];

  return v4;
}

@end
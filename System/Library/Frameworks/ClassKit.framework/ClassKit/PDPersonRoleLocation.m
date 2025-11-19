@interface PDPersonRoleLocation
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDatabaseValue)identityValue;
- (PDPersonRoleLocation)initWithDatabaseRow:(id)a3;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)a3;
@end

@implementation PDPersonRoleLocation

- (PDPersonRoleLocation)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"personID");
  v6 = sub_10016D778(v4, @"roleID");
  v7 = sub_10016D778(v4, @"locationID");
  v8 = sub_10016D778(v4, @"roleType");

  v9 = sub_1000C8F24(self, v5, v6, v7, [v8 integerValue]);
  return v9;
}

- (void)bindTo:(id)a3
{
  v8 = a3;
  v4 = [(PDPersonRoleLocation *)self identityValue];
  sub_1000982FC(v8, v4, @"identity");

  if (self)
  {
    sub_1000982FC(v8, self->_personID, @"personID");
    sub_1000982FC(v8, self->_roleID, @"roleID");
    locationID = self->_locationID;
  }

  else
  {
    sub_1000982FC(v8, 0, @"personID");
    sub_1000982FC(v8, 0, @"roleID");
    locationID = 0;
  }

  sub_1000982FC(v8, locationID, @"locationID");
  if (self)
  {
    roleType = self->_roleType;
  }

  else
  {
    roleType = 0;
  }

  v7 = [NSNumber numberWithInteger:roleType];
  sub_1000982FC(v8, v7, @"roleType");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDPersonRoleLocation(   identity text not null,    personID text not null,    roleID text not null,    locationID text not null,    foreign key (personID) references CLSPerson(objectID) on delete cascade on update cascade,    foreign key (roleID) references CLSRole(objectID) on delete cascade on update cascade,    foreign key (locationID) references CLSLocation(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDPersonRoleLocation_identity on PDPersonRoleLocation (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_personID on PDPersonRoleLocation (personID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_roleID on PDPersonRoleLocation (roleID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_locationID on PDPersonRoleLocation (locationID)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table PDPersonRoleLocation add column roleType integer", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDPersonRoleLocation_roleType on PDPersonRoleLocation (roleType)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_12;
    }

    a3 = 1;
  }

  *a4 = a3;
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

  v6 = [NSString stringWithFormat:@"%@/%@/%@", v3, v4, locationID];
  v7 = [v6 sha224];

  return v7;
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

  v3 = [CLSRole stringForRoleType:self->_roleType, v6, v7, @"locationID", @"roleType", *&v8, locationID];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v6 count:4];

  return v4;
}

@end
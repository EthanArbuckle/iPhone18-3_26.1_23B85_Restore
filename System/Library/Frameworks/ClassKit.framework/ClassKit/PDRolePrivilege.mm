@interface PDRolePrivilege
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDatabaseValue)identityValue;
- (PDRolePrivilege)initWithDatabaseRow:(id)row;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)to;
@end

@implementation PDRolePrivilege

- (PDRolePrivilege)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = sub_10016D778(rowCopy, @"roleID");
  v6 = sub_10016D778(rowCopy, @"privilegeName");

  v7 = sub_10016FBE8(self, v5, v6);
  return v7;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  identityValue = [(PDRolePrivilege *)self identityValue];
  sub_1000982FC(toCopy, identityValue, @"identity");

  if (self)
  {
    sub_1000982FC(toCopy, self->_roleID, @"roleID");
    privilegeName = self->_privilegeName;
  }

  else
  {
    sub_1000982FC(toCopy, 0, @"roleID");
    privilegeName = 0;
  }

  sub_1000982FC(toCopy, privilegeName, @"privilegeName");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDRolePrivilege(   identity text not null,    roleID text not null,    privilegeName text not null,    foreign key (roleID) references CLSRole(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDRolePrivilege_identity on PDRolePrivilege (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDRolePrivilege_roleID on PDRolePrivilege (roleID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDRolePrivilege_privilegeName on PDRolePrivilege (privilegeName)", 0, 0, 0))
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
  if (self)
  {
    v3 = self->_roleID;
    privilegeName = self->_privilegeName;
  }

  else
  {
    v3 = 0;
    privilegeName = 0;
  }

  privilegeName = [NSString stringWithFormat:@"%@/%@", v3, privilegeName];
  sha224 = [privilegeName sha224];

  return sha224;
}

- (id)dictionaryRepresentation
{
  v4[0] = @"roleID";
  v4[1] = @"privilegeName";
  v5 = vbslq_s8(vceqzq_s64(*&self->_roleID), vdupq_n_s64(&stru_100206880), *&self->_roleID);
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:v4 count:2];

  return v2;
}

@end
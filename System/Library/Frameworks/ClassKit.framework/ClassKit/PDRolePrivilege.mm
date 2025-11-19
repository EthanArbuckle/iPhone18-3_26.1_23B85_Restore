@interface PDRolePrivilege
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDatabaseValue)identityValue;
- (PDRolePrivilege)initWithDatabaseRow:(id)a3;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)a3;
@end

@implementation PDRolePrivilege

- (PDRolePrivilege)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"roleID");
  v6 = sub_10016D778(v4, @"privilegeName");

  v7 = sub_10016FBE8(self, v5, v6);
  return v7;
}

- (void)bindTo:(id)a3
{
  v6 = a3;
  v4 = [(PDRolePrivilege *)self identityValue];
  sub_1000982FC(v6, v4, @"identity");

  if (self)
  {
    sub_1000982FC(v6, self->_roleID, @"roleID");
    privilegeName = self->_privilegeName;
  }

  else
  {
    sub_1000982FC(v6, 0, @"roleID");
    privilegeName = 0;
  }

  sub_1000982FC(v6, privilegeName, @"privilegeName");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDRolePrivilege(   identity text not null,    roleID text not null,    privilegeName text not null,    foreign key (roleID) references CLSRole(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDRolePrivilege_identity on PDRolePrivilege (identity)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDRolePrivilege_roleID on PDRolePrivilege (roleID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index PDRolePrivilege_privilegeName on PDRolePrivilege (privilegeName)", 0, 0, 0))
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

  v5 = [NSString stringWithFormat:@"%@/%@", v3, privilegeName];
  v6 = [v5 sha224];

  return v6;
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
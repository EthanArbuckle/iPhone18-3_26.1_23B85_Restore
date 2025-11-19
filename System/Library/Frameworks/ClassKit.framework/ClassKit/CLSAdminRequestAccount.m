@interface CLSAdminRequestAccount
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation CLSAdminRequestAccount

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSAdminRequestAccount *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"personID");
    [v6 setPersonID:v7];

    [v6 setAccountPersonInfo:0];
    v8 = sub_10016D778(v4, @"requestedRoleID");
    [v6 setRequestedRoleID:v8];

    v9 = sub_10016D778(v4, @"requestedRoleType");
    [v6 setRequestedRoleType:{objc_msgSend(v9, "intValue")}];

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = sub_10016D778(v4, @"requestedLocationIDs");
    if (v12)
    {
      v13 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v12];
      [v6 setRequestedLocationIDs:v13];
    }

    v14 = sub_10016D778(v4, CLSPredicateKeyPathParentObjectID);
    [v6 setParentObjectID:v14];

    v15 = sub_10016D778(v4, @"temporaryPassword");
    [v6 setTemporaryPassword:v15];

    v16 = sub_10016D778(v4, @"verificationCode");
    [v6 setVerificationCode:v16];

    v17 = sub_10016D778(v4, @"conflictingPersonIDs");

    if (v17)
    {
      v18 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v17];
      [v6 setConflictingPersonIDs:v18];
    }

    v19 = sub_10016D778(v4, @"status");
    [v6 setStatus:{objc_msgSend(v19, "intValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CLSAdminRequestAccount;
  [(CLSAdminRequestAccount *)&v22 bindTo:v4];
  v5 = [(CLSAdminRequestAccount *)self personID];
  sub_1000982FC(v4, v5, @"personID");

  v6 = [(CLSAdminRequestAccount *)self parentObjectID];
  sub_1000982FC(v4, v6, CLSPredicateKeyPathParentObjectID);

  v7 = [(CLSAdminRequestAccount *)self requestedRoleID];
  sub_1000982FC(v4, v7, @"requestedRoleID");

  v8 = [NSNumber numberWithInteger:[(CLSAdminRequestAccount *)self requestedRoleType]];
  sub_1000982FC(v4, v8, @"requestedRoleType");

  v9 = [(CLSAdminRequestAccount *)self requestedLocationIDs];
  if (v9)
  {
    v21 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v21];
    v11 = v21;
    v12 = v11;
    if (v11)
    {
      [v11 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v10, @"requestedLocationIDs");
  }

  v13 = [(CLSAdminRequestAccount *)self temporaryPassword];
  sub_1000982FC(v4, v13, @"temporaryPassword");

  v14 = [(CLSAdminRequestAccount *)self verificationCode];
  sub_1000982FC(v4, v14, @"verificationCode");

  v15 = [(CLSAdminRequestAccount *)self conflictingPersonIDs];
  if (v15)
  {
    v20 = 0;
    v16 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v20];
    v17 = v20;
    v18 = v17;
    if (v17)
    {
      [v17 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(v4, v16, @"conflictingPersonIDs");
  }

  v19 = [NSNumber numberWithInteger:[(CLSAdminRequestAccount *)self status]];
  sub_1000982FC(v4, v19, @"status");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSAdminRequestAccount (\n    objectID               text not null,\n    parentObjectID         text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    personID               text not null,\n    requestedRoleType      integer,\n    requestedRoleID        text,\n    requestedLocationIDs   blob,\n    temporaryPassword      text,\n    verificationCode       text,\n    conflictingPersonIDs   blob,\n    status                 integer,\n    foreign key (parentObjectID) references CLSAdminRequest(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSAdminRequestAccount_objectID on CLSAdminRequestAccount (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSAdminRequestAccount_parentObjectID on CLSAdminRequestAccount (parentObjectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_8:

  return v9;
}

@end
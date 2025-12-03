@interface CLSAdminRequestAccount
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSAdminRequestAccount

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSAdminRequestAccount *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"personID");
    [v6 setPersonID:v7];

    [v6 setAccountPersonInfo:0];
    v8 = sub_10016D778(rowCopy, @"requestedRoleID");
    [v6 setRequestedRoleID:v8];

    v9 = sub_10016D778(rowCopy, @"requestedRoleType");
    [v6 setRequestedRoleType:{objc_msgSend(v9, "intValue")}];

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = sub_10016D778(rowCopy, @"requestedLocationIDs");
    if (v12)
    {
      v13 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v12];
      [v6 setRequestedLocationIDs:v13];
    }

    v14 = sub_10016D778(rowCopy, CLSPredicateKeyPathParentObjectID);
    [v6 setParentObjectID:v14];

    v15 = sub_10016D778(rowCopy, @"temporaryPassword");
    [v6 setTemporaryPassword:v15];

    v16 = sub_10016D778(rowCopy, @"verificationCode");
    [v6 setVerificationCode:v16];

    v17 = sub_10016D778(rowCopy, @"conflictingPersonIDs");

    if (v17)
    {
      v18 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v11 withData:v17];
      [v6 setConflictingPersonIDs:v18];
    }

    v19 = sub_10016D778(rowCopy, @"status");
    [v6 setStatus:{objc_msgSend(v19, "intValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v22.receiver = self;
  v22.super_class = CLSAdminRequestAccount;
  [(CLSAdminRequestAccount *)&v22 bindTo:toCopy];
  personID = [(CLSAdminRequestAccount *)self personID];
  sub_1000982FC(toCopy, personID, @"personID");

  parentObjectID = [(CLSAdminRequestAccount *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, CLSPredicateKeyPathParentObjectID);

  requestedRoleID = [(CLSAdminRequestAccount *)self requestedRoleID];
  sub_1000982FC(toCopy, requestedRoleID, @"requestedRoleID");

  v8 = [NSNumber numberWithInteger:[(CLSAdminRequestAccount *)self requestedRoleType]];
  sub_1000982FC(toCopy, v8, @"requestedRoleType");

  requestedLocationIDs = [(CLSAdminRequestAccount *)self requestedLocationIDs];
  if (requestedLocationIDs)
  {
    v21 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:requestedLocationIDs requiringSecureCoding:1 error:&v21];
    v11 = v21;
    v12 = v11;
    if (v11)
    {
      [v11 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(toCopy, v10, @"requestedLocationIDs");
  }

  temporaryPassword = [(CLSAdminRequestAccount *)self temporaryPassword];
  sub_1000982FC(toCopy, temporaryPassword, @"temporaryPassword");

  verificationCode = [(CLSAdminRequestAccount *)self verificationCode];
  sub_1000982FC(toCopy, verificationCode, @"verificationCode");

  conflictingPersonIDs = [(CLSAdminRequestAccount *)self conflictingPersonIDs];
  if (conflictingPersonIDs)
  {
    v20 = 0;
    v16 = [NSKeyedArchiver archivedDataWithRootObject:conflictingPersonIDs requiringSecureCoding:1 error:&v20];
    v17 = v20;
    v18 = v17;
    if (v17)
    {
      [v17 cls_debug:CLSLogDatabase];
    }

    sub_1000982FC(toCopy, v16, @"conflictingPersonIDs");
  }

  v19 = [NSNumber numberWithInteger:[(CLSAdminRequestAccount *)self status]];
  sub_1000982FC(toCopy, v19, @"status");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSAdminRequestAccount (\n    objectID               text not null,\n    parentObjectID         text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    personID               text not null,\n    requestedRoleType      integer,\n    requestedRoleID        text,\n    requestedLocationIDs   blob,\n    temporaryPassword      text,\n    verificationCode       text,\n    conflictingPersonIDs   blob,\n    status                 integer,\n    foreign key (parentObjectID) references CLSAdminRequest(objectID) on delete cascade on update cascade\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSAdminRequestAccount_objectID on CLSAdminRequestAccount (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSAdminRequestAccount_parentObjectID on CLSAdminRequestAccount (parentObjectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_8:

  return v9;
}

@end
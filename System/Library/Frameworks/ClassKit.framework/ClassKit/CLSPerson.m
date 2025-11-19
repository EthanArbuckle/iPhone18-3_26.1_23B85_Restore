@interface CLSPerson
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSPerson)initWithDatabaseRow:(id)a3;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (NSArray)tokenizableColumnNames;
- (unint64_t)changeHash;
- (void)bindTo:(id)a3;
- (void)setExpiration:(double)a3;
@end

@implementation CLSPerson

- (NSArray)searchableColumnNames
{
  v4[0] = @"givenName";
  v4[1] = @"middleName";
  v4[2] = @"familyName";
  v4[3] = @"appleID";
  v4[4] = @"emailAddress";
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (NSArray)tokenizableColumnNames
{
  v4[0] = @"givenName";
  v4[1] = @"middleName";
  v4[2] = @"familyName";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (NSArray)immutableColumnNames
{
  v4 = @"dateExpires";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (unint64_t)changeHash
{
  v23.receiver = self;
  v23.super_class = CLSPerson;
  v3 = [(CLSPerson *)&v23 changeHash];
  v4 = [(CLSPerson *)self appleID];
  v5 = [v4 _cls_stableHash];

  v6 = [(CLSPerson *)self orgID];
  if (v6)
  {
    v7 = [(CLSPerson *)self orgID];
    v8 = [v7 _cls_stableHash];
  }

  else
  {
    v8 = 11;
  }

  v9 = [(CLSPerson *)self givenName];
  if (v9)
  {
    v10 = [(CLSPerson *)self givenName];
    v11 = [v10 _cls_stableHash];
  }

  else
  {
    v11 = 13;
  }

  v12 = [(CLSPerson *)self middleName];
  if (v12)
  {
    v13 = [(CLSPerson *)self middleName];
    v14 = [v13 _cls_stableHash];
  }

  else
  {
    v14 = 17;
  }

  v15 = [(CLSPerson *)self familyName];
  if (v15)
  {
    v16 = [(CLSPerson *)self familyName];
    v17 = [v16 _cls_stableHash];
  }

  else
  {
    v17 = 19;
  }

  v18 = v5 ^ v3 ^ v8 ^ v11 ^ v14 ^ v17 ^ (2 * [(CLSPerson *)self passcodeType]);
  if ([(CLSPerson *)self isProgressTrackingAllowed])
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CLSPerson *)self isFederatedAccount];
  v21 = 8;
  if (!v20)
  {
    v21 = 0;
  }

  return v18 ^ v19 ^ v21 ^ (16 * [(CLSPerson *)self axmAccountStatus]);
}

- (CLSPerson)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSPerson *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"appleID");
    [v6 setAppleID:v7];

    v8 = sub_10016D778(v4, @"iCloudUserID");
    [v6 setICloudUserID:v8];

    v9 = sub_10016D778(v4, @"orgID");
    [v6 setOrgID:v9];

    v10 = sub_10016D778(v4, @"givenName");
    [v6 setGivenName:v10];

    v11 = sub_10016D778(v4, @"middleName");
    [v6 setMiddleName:v11];

    v12 = sub_10016D778(v4, @"familyName");
    [v6 setFamilyName:v12];

    v13 = sub_10016D778(v4, @"phoneticGivenName");
    [v6 setPhoneticGivenName:v13];

    v14 = sub_10016D778(v4, @"phoneticMiddleName");
    [v6 setPhoneticMiddleName:v14];

    v15 = sub_10016D778(v4, @"phoneticFamilyName");
    [v6 setPhoneticFamilyName:v15];

    v16 = sub_10016D778(v4, @"passcodeType");
    [v6 setPasscodeType:{objc_msgSend(v16, "intValue")}];

    v17 = sub_10016D778(v4, @"progressTrackingAllowed");
    [v6 setProgressTrackingAllowed:{objc_msgSend(v17, "intValue") != 0}];

    v18 = sub_10016D778(v4, @"federatedAccount");
    [v6 setFederatedAccount:{objc_msgSend(v18, "intValue") != 0}];

    v19 = sub_10016D778(v4, @"accountStatus");
    [v6 setAxmAccountStatus:{objc_msgSend(v19, "intValue")}];

    v20 = sub_10016D778(v4, @"emailAddress");
    [v6 setEmailAddress:v20];

    v21 = sub_10016D778(v4, @"searchText");
    [v6 setSearchText:v21];

    v22 = sub_10016D778(v4, @"grade");
    [v6 setGrade:v22];

    v23 = sub_10016D778(v4, @"isSearchable");
    [v6 setIsSearchable:{objc_msgSend(v23, "BOOLValue")}];

    v24 = sub_10016D778(v4, @"source");
    [v6 setSourceType:{objc_msgSend(v24, "intValue")}];

    v25 = sub_10016D778(v4, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v25, "BOOLValue")}];

    v26 = sub_10016D778(v4, @"personNumber");
    [v6 setPersonNumber:v26];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v25.receiver = self;
  v25.super_class = CLSPerson;
  v4 = a3;
  [(CLSPerson *)&v25 bindTo:v4];
  v5 = [(CLSPerson *)self appleID:v25.receiver];
  sub_1000982FC(v4, v5, @"appleID");

  v6 = [(CLSPerson *)self iCloudUserID];
  sub_1000982FC(v4, v6, @"iCloudUserID");

  v7 = [(CLSPerson *)self orgID];
  sub_1000982FC(v4, v7, @"orgID");

  v8 = [(CLSPerson *)self givenName];
  sub_1000982FC(v4, v8, @"givenName");

  v9 = [(CLSPerson *)self middleName];
  sub_1000982FC(v4, v9, @"middleName");

  v10 = [(CLSPerson *)self familyName];
  sub_1000982FC(v4, v10, @"familyName");

  v11 = [(CLSPerson *)self phoneticGivenName];
  sub_1000982FC(v4, v11, @"phoneticGivenName");

  v12 = [(CLSPerson *)self phoneticMiddleName];
  sub_1000982FC(v4, v12, @"phoneticMiddleName");

  v13 = [(CLSPerson *)self phoneticFamilyName];
  sub_1000982FC(v4, v13, @"phoneticFamilyName");

  v14 = [NSNumber numberWithInteger:[(CLSPerson *)self passcodeType]];
  sub_1000982FC(v4, v14, @"passcodeType");

  v15 = [NSNumber numberWithBool:[(CLSPerson *)self isProgressTrackingAllowed]];
  sub_1000982FC(v4, v15, @"progressTrackingAllowed");

  v16 = [NSNumber numberWithBool:[(CLSPerson *)self isFederatedAccount]];
  sub_1000982FC(v4, v16, @"federatedAccount");

  v17 = [NSNumber numberWithInteger:[(CLSPerson *)self axmAccountStatus]];
  sub_1000982FC(v4, v17, @"accountStatus");

  v18 = [(CLSPerson *)self emailAddress];
  sub_1000982FC(v4, v18, @"emailAddress");

  v19 = [(CLSPerson *)self searchText];
  sub_1000982FC(v4, v19, @"searchText");

  v20 = [(CLSPerson *)self grade];
  sub_1000982FC(v4, v20, @"grade");

  v21 = [NSNumber numberWithBool:[(CLSPerson *)self isSearchable]];
  sub_1000982FC(v4, v21, @"isSearchable");

  v22 = [NSNumber numberWithInteger:[(CLSPerson *)self sourceType]];
  sub_1000982FC(v4, v22, @"source");

  v23 = [NSNumber numberWithBool:[(CLSPerson *)self isEditable]];
  sub_1000982FC(v4, v23, @"isEditable");

  v24 = [(CLSPerson *)self personNumber];
  sub_1000982FC(v4, v24, @"personNumber");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_21;
        }

LABEL_20:
        a3 = 5;
        v12 = sub_100084798(5);
        v17 = v12;
        v13 = [NSArray arrayWithObjects:&v17 count:1];
        v14 = sub_1000A6A38(v8, v13);

        if (v14)
        {
          goto LABEL_21;
        }

LABEL_24:
        v15 = 0;
        goto LABEL_25;
      }

LABEL_18:
      if (!sub_1000B9298(v8, @"alter table CLSPerson add column personNumber text", 0, 0, 0))
      {
        goto LABEL_24;
      }

      v9 = sub_100084798(5);
      v18 = v9;
      v10 = [NSArray arrayWithObjects:&v18 count:1];
      v11 = sub_1000A6A38(v8, v10);

      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_17:
    if (!sub_1000B9298(v8, @"alter table CLSPerson add column accountStatus integer default 0", 0, 0, 0))
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSPerson(   objectID            text not null,    dateCreated         real not null,    dateLastModified    real not null,    appleID             text not null,    iCloudUserID        text,    orgID               text,    givenName           text,    middleName          text,    familyName          text,    phoneticGivenName   text,    phoneticMiddleName  text,    phoneticFamilyName  text,    passcodeType        integer default -1,    progressTrackingAllowed integer default 0,    federatedAccount    integer default 0)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSPerson_objectID on CLSPerson (objectID)", 0, 0, 0))
    {
      goto LABEL_24;
    }

LABEL_8:
    if (!sub_1000B9298(v8, @"alter table CLSPerson add column grade text", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSPerson add column isSearchable integer", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSPerson add column source integer", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSPerson add column isEditable integer", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSPerson add column emailAddress text", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSPerson add column searchText text", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSPerson_searchText on CLSPerson (searchText)", 0, 0, 0) || !sub_1000B9298(v8, @"alter table CLSPerson add column dateExpires real", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSPerson_dateExpires on CLSPerson (dateExpires)", 0, 0, 0))
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }

LABEL_21:
  *a4 = a3;
  v15 = 1;
LABEL_25:

  return v15;
}

- (void)setExpiration:(double)a3
{
  v3.receiver = self;
  v3.super_class = CLSPerson;
  [(CLSPerson *)&v3 setExpiration:a3];
}

@end
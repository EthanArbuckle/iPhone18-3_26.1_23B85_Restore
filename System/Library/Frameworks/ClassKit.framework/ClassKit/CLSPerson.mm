@interface CLSPerson
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSPerson)initWithDatabaseRow:(id)row;
- (NSArray)immutableColumnNames;
- (NSArray)searchableColumnNames;
- (NSArray)tokenizableColumnNames;
- (unint64_t)changeHash;
- (void)bindTo:(id)to;
- (void)setExpiration:(double)expiration;
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
  changeHash = [(CLSPerson *)&v23 changeHash];
  appleID = [(CLSPerson *)self appleID];
  _cls_stableHash = [appleID _cls_stableHash];

  orgID = [(CLSPerson *)self orgID];
  if (orgID)
  {
    orgID2 = [(CLSPerson *)self orgID];
    _cls_stableHash2 = [orgID2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash2 = 11;
  }

  givenName = [(CLSPerson *)self givenName];
  if (givenName)
  {
    givenName2 = [(CLSPerson *)self givenName];
    _cls_stableHash3 = [givenName2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash3 = 13;
  }

  middleName = [(CLSPerson *)self middleName];
  if (middleName)
  {
    middleName2 = [(CLSPerson *)self middleName];
    _cls_stableHash4 = [middleName2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash4 = 17;
  }

  familyName = [(CLSPerson *)self familyName];
  if (familyName)
  {
    familyName2 = [(CLSPerson *)self familyName];
    _cls_stableHash5 = [familyName2 _cls_stableHash];
  }

  else
  {
    _cls_stableHash5 = 19;
  }

  v18 = _cls_stableHash ^ changeHash ^ _cls_stableHash2 ^ _cls_stableHash3 ^ _cls_stableHash4 ^ _cls_stableHash5 ^ (2 * [(CLSPerson *)self passcodeType]);
  if ([(CLSPerson *)self isProgressTrackingAllowed])
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  isFederatedAccount = [(CLSPerson *)self isFederatedAccount];
  v21 = 8;
  if (!isFederatedAccount)
  {
    v21 = 0;
  }

  return v18 ^ v19 ^ v21 ^ (16 * [(CLSPerson *)self axmAccountStatus]);
}

- (CLSPerson)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSPerson *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"appleID");
    [v6 setAppleID:v7];

    v8 = sub_10016D778(rowCopy, @"iCloudUserID");
    [v6 setICloudUserID:v8];

    v9 = sub_10016D778(rowCopy, @"orgID");
    [v6 setOrgID:v9];

    v10 = sub_10016D778(rowCopy, @"givenName");
    [v6 setGivenName:v10];

    v11 = sub_10016D778(rowCopy, @"middleName");
    [v6 setMiddleName:v11];

    v12 = sub_10016D778(rowCopy, @"familyName");
    [v6 setFamilyName:v12];

    v13 = sub_10016D778(rowCopy, @"phoneticGivenName");
    [v6 setPhoneticGivenName:v13];

    v14 = sub_10016D778(rowCopy, @"phoneticMiddleName");
    [v6 setPhoneticMiddleName:v14];

    v15 = sub_10016D778(rowCopy, @"phoneticFamilyName");
    [v6 setPhoneticFamilyName:v15];

    v16 = sub_10016D778(rowCopy, @"passcodeType");
    [v6 setPasscodeType:{objc_msgSend(v16, "intValue")}];

    v17 = sub_10016D778(rowCopy, @"progressTrackingAllowed");
    [v6 setProgressTrackingAllowed:{objc_msgSend(v17, "intValue") != 0}];

    v18 = sub_10016D778(rowCopy, @"federatedAccount");
    [v6 setFederatedAccount:{objc_msgSend(v18, "intValue") != 0}];

    v19 = sub_10016D778(rowCopy, @"accountStatus");
    [v6 setAxmAccountStatus:{objc_msgSend(v19, "intValue")}];

    v20 = sub_10016D778(rowCopy, @"emailAddress");
    [v6 setEmailAddress:v20];

    v21 = sub_10016D778(rowCopy, @"searchText");
    [v6 setSearchText:v21];

    v22 = sub_10016D778(rowCopy, @"grade");
    [v6 setGrade:v22];

    v23 = sub_10016D778(rowCopy, @"isSearchable");
    [v6 setIsSearchable:{objc_msgSend(v23, "BOOLValue")}];

    v24 = sub_10016D778(rowCopy, @"source");
    [v6 setSourceType:{objc_msgSend(v24, "intValue")}];

    v25 = sub_10016D778(rowCopy, @"isEditable");
    [v6 setIsEditable:{objc_msgSend(v25, "BOOLValue")}];

    v26 = sub_10016D778(rowCopy, @"personNumber");
    [v6 setPersonNumber:v26];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v25.receiver = self;
  v25.super_class = CLSPerson;
  toCopy = to;
  [(CLSPerson *)&v25 bindTo:toCopy];
  v5 = [(CLSPerson *)self appleID:v25.receiver];
  sub_1000982FC(toCopy, v5, @"appleID");

  iCloudUserID = [(CLSPerson *)self iCloudUserID];
  sub_1000982FC(toCopy, iCloudUserID, @"iCloudUserID");

  orgID = [(CLSPerson *)self orgID];
  sub_1000982FC(toCopy, orgID, @"orgID");

  givenName = [(CLSPerson *)self givenName];
  sub_1000982FC(toCopy, givenName, @"givenName");

  middleName = [(CLSPerson *)self middleName];
  sub_1000982FC(toCopy, middleName, @"middleName");

  familyName = [(CLSPerson *)self familyName];
  sub_1000982FC(toCopy, familyName, @"familyName");

  phoneticGivenName = [(CLSPerson *)self phoneticGivenName];
  sub_1000982FC(toCopy, phoneticGivenName, @"phoneticGivenName");

  phoneticMiddleName = [(CLSPerson *)self phoneticMiddleName];
  sub_1000982FC(toCopy, phoneticMiddleName, @"phoneticMiddleName");

  phoneticFamilyName = [(CLSPerson *)self phoneticFamilyName];
  sub_1000982FC(toCopy, phoneticFamilyName, @"phoneticFamilyName");

  v14 = [NSNumber numberWithInteger:[(CLSPerson *)self passcodeType]];
  sub_1000982FC(toCopy, v14, @"passcodeType");

  v15 = [NSNumber numberWithBool:[(CLSPerson *)self isProgressTrackingAllowed]];
  sub_1000982FC(toCopy, v15, @"progressTrackingAllowed");

  v16 = [NSNumber numberWithBool:[(CLSPerson *)self isFederatedAccount]];
  sub_1000982FC(toCopy, v16, @"federatedAccount");

  v17 = [NSNumber numberWithInteger:[(CLSPerson *)self axmAccountStatus]];
  sub_1000982FC(toCopy, v17, @"accountStatus");

  emailAddress = [(CLSPerson *)self emailAddress];
  sub_1000982FC(toCopy, emailAddress, @"emailAddress");

  searchText = [(CLSPerson *)self searchText];
  sub_1000982FC(toCopy, searchText, @"searchText");

  grade = [(CLSPerson *)self grade];
  sub_1000982FC(toCopy, grade, @"grade");

  v21 = [NSNumber numberWithBool:[(CLSPerson *)self isSearchable]];
  sub_1000982FC(toCopy, v21, @"isSearchable");

  v22 = [NSNumber numberWithInteger:[(CLSPerson *)self sourceType]];
  sub_1000982FC(toCopy, v22, @"source");

  v23 = [NSNumber numberWithBool:[(CLSPerson *)self isEditable]];
  sub_1000982FC(toCopy, v23, @"isEditable");

  personNumber = [(CLSPerson *)self personNumber];
  sub_1000982FC(toCopy, personNumber, @"personNumber");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version > 1)
  {
    if (version != 2)
    {
      if (version != 3)
      {
        if (version != 4)
        {
          goto LABEL_21;
        }

LABEL_20:
        version = 5;
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

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSPerson(   objectID            text not null,    dateCreated         real not null,    dateLastModified    real not null,    appleID             text not null,    iCloudUserID        text,    orgID               text,    givenName           text,    middleName          text,    familyName          text,    phoneticGivenName   text,    phoneticMiddleName  text,    phoneticFamilyName  text,    passcodeType        integer default -1,    progressTrackingAllowed integer default 0,    federatedAccount    integer default 0)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSPerson_objectID on CLSPerson (objectID)", 0, 0, 0))
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

  if (version == 1)
  {
    goto LABEL_8;
  }

LABEL_21:
  *finalVersion = version;
  v15 = 1;
LABEL_25:

  return v15;
}

- (void)setExpiration:(double)expiration
{
  v3.receiver = self;
  v3.super_class = CLSPerson;
  [(CLSPerson *)&v3 setExpiration:expiration];
}

@end
@interface AALoginResponseAppleAccountInfo
- (AALoginResponseAppleAccountInfo)initWithDictionary:(id)a3;
@end

@implementation AALoginResponseAppleAccountInfo

- (AALoginResponseAppleAccountInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = AALoginResponseAppleAccountInfo;
  v5 = [(AALoginResponseAppleAccountInfo *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"dsid"];
    personID = v5->_personID;
    v5->_personID = v6;

    if (!v5->_personID)
    {
      v8 = [v4 objectForKey:@"dsPrsID"];
      v9 = v5->_personID;
      v5->_personID = v8;
    }

    v10 = [v4 objectForKey:@"aDsID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [v4 objectForKey:@"appleId"];
    appleID = v5->_appleID;
    v5->_appleID = v12;

    v14 = [v4 objectForKey:@"appleIdAliases"];
    appleIDAliases = v5->_appleIDAliases;
    v5->_appleIDAliases = v14;

    v16 = [v4 objectForKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v16;

    v18 = [v4 objectForKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v20 = [v4 objectForKey:@"primaryEmail"];
    primaryEmail = v5->_primaryEmail;
    v5->_primaryEmail = v20;

    v22 = [v4 objectForKey:@"primaryEmailVerified"];
    primaryEmailVerified = v5->_primaryEmailVerified;
    v5->_primaryEmailVerified = v22;

    v24 = [v4 objectForKey:@"brMigrated"];
    cloudDocsMigrated = v5->_cloudDocsMigrated;
    v5->_cloudDocsMigrated = v24;

    v26 = [v4 objectForKey:@"notesMigrated"];
    notesMigrated = v5->_notesMigrated;
    v5->_notesMigrated = v26;

    v28 = [v4 objectForKey:@"tantorMigrated"];
    remindersMigrated = v5->_remindersMigrated;
    v5->_remindersMigrated = v28;

    v30 = [v4 objectForKey:@"autoMigrateToTantor"];
    remindersAutoMigratableToCK = v5->_remindersAutoMigratableToCK;
    v5->_remindersAutoMigratableToCK = v30;

    v32 = [v4 objectForKey:@"isManagedAppleID"];
    v5->_managedAppleID = [v32 BOOLValue];

    v33 = [v4 objectForKey:@"isSandboxAcct"];
    v5->_sandboxAccount = [v33 BOOLValue];

    v34 = [v4 objectForKey:@"hasOptionalTerms"];
    v5->_optionalTerms = [v34 BOOLValue];

    v35 = [v4 objectForKey:@"familyEligible"];
    v5->_familyEligible = [v35 BOOLValue];
  }

  return v5;
}

@end
@interface PDASMConfig
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDASMConfig)initWithDatabaseRow:(id)row;
- (id)dictionaryRepresentation;
- (void)bindTo:(id)to;
@end

@implementation PDASMConfig

- (PDASMConfig)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v32.receiver = self;
  v32.super_class = PDASMConfig;
  v5 = [(PDASMConfig *)&v32 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"serviceID");
    serviceID = v5->_serviceID;
    v5->_serviceID = v6;

    v8 = sub_10016D778(rowCopy, @"personLinkContext");
    personLinkContext = v5->_personLinkContext;
    v5->_personLinkContext = v8;

    v10 = sub_10016D778(rowCopy, @"zoneSubscriptions");
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
      v13 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v12 withData:v10];
      zoneSubscriptions = v5->_zoneSubscriptions;
      v5->_zoneSubscriptions = v13;
    }

    v15 = sub_10016D778(rowCopy, @"defaultSyncZoneNames");

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
      v18 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v17 withData:v15];
      defaultSyncZoneNames = v5->_defaultSyncZoneNames;
      v5->_defaultSyncZoneNames = v18;
    }

    v20 = sub_10016D778(rowCopy, @"rosterSearchAllowed");
    v5->_rosterSearchAllowed = [v20 BOOLValue];

    v21 = sub_10016D778(rowCopy, @"useServerForRosterSearch");
    v5->_useServerForRosterSearch = [v21 BOOLValue];

    v22 = sub_10016D778(rowCopy, @"eduMAID");
    v5->_eduMAID = [v22 BOOLValue];

    v23 = sub_10016D778(rowCopy, @"asmAnalyticsEnabled");
    v5->_asmAnalyticsEnabled = [v23 BOOLValue];

    v24 = sub_10016D778(rowCopy, @"minimumSearchKeyLength");
    v5->_minimumSearchKeyLength = [v24 intValue];

    v25 = sub_10016D778(rowCopy, @"syncFetchInterval");
    v5->_syncFetchInterval = [v25 intValue];

    v26 = sub_10016D778(rowCopy, @"searchCacheTTL");
    v5->_searchCacheTTL = [v26 intValue];

    v27 = sub_10016D778(rowCopy, @"allowSharingOutsideOrg");
    v5->_allowSharingOutsideOrg = [v27 BOOLValue];

    v28 = sub_10016D778(rowCopy, @"classroomClassicAdHocModeEnabled");
    v5->_classroomClassicAdHocModeEnabled = [v28 BOOLValue];

    v29 = sub_10016D778(rowCopy, @"searchLimitForGroupMemberSearch");
    v5->_searchLimitForGroupMemberSearch = [v29 intValue];

    v30 = sub_10016D778(rowCopy, @"asmSyncDisabled");
    v5->_asmSyncDisabled = [v30 BOOLValue];
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  identityValue = [(PDASMConfig *)self identityValue];
  sub_1000982FC(toCopy, identityValue, @"identity");

  if (self)
  {
    sub_1000982FC(toCopy, self->_serviceID, @"serviceID");
    personLinkContext = self->_personLinkContext;
  }

  else
  {
    sub_1000982FC(toCopy, 0, @"serviceID");
    personLinkContext = 0;
  }

  sub_1000982FC(toCopy, personLinkContext, @"personLinkContext");
  zoneSubscriptions = self->_zoneSubscriptions;
  if (zoneSubscriptions)
  {
    v27 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:zoneSubscriptions requiringSecureCoding:1 error:&v27];
    v9 = v27;
    v10 = v9;
    if (v9)
    {
      [v9 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1000982FC(toCopy, v8, @"zoneSubscriptions");

  defaultSyncZoneNames = self->_defaultSyncZoneNames;
  if (defaultSyncZoneNames)
  {
    v26 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:defaultSyncZoneNames requiringSecureCoding:1 error:&v26];
    v13 = v26;
    v14 = v13;
    if (v13)
    {
      [v13 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v12 = 0;
  }

  sub_1000982FC(toCopy, v12, @"defaultSyncZoneNames");
  v15 = [NSNumber numberWithBool:self->_rosterSearchAllowed];
  sub_1000982FC(toCopy, v15, @"rosterSearchAllowed");

  v16 = [NSNumber numberWithBool:self->_useServerForRosterSearch];
  sub_1000982FC(toCopy, v16, @"useServerForRosterSearch");

  v17 = [NSNumber numberWithBool:self->_eduMAID];
  sub_1000982FC(toCopy, v17, @"eduMAID");

  v18 = [NSNumber numberWithBool:self->_asmAnalyticsEnabled];
  sub_1000982FC(toCopy, v18, @"asmAnalyticsEnabled");

  v19 = [NSNumber numberWithInteger:self->_minimumSearchKeyLength];
  sub_1000982FC(toCopy, v19, @"minimumSearchKeyLength");

  v20 = [NSNumber numberWithInteger:self->_syncFetchInterval];
  sub_1000982FC(toCopy, v20, @"syncFetchInterval");

  v21 = [NSNumber numberWithInteger:self->_searchCacheTTL];
  sub_1000982FC(toCopy, v21, @"searchCacheTTL");

  v22 = [NSNumber numberWithBool:self->_allowSharingOutsideOrg];
  sub_1000982FC(toCopy, v22, @"allowSharingOutsideOrg");

  v23 = [NSNumber numberWithBool:self->_classroomClassicAdHocModeEnabled];
  sub_1000982FC(toCopy, v23, @"classroomClassicAdHocModeEnabled");

  v24 = [NSNumber numberWithInteger:self->_searchLimitForGroupMemberSearch];
  sub_1000982FC(toCopy, v24, @"searchLimitForGroupMemberSearch");

  v25 = [NSNumber numberWithBool:self->_asmSyncDisabled];
  sub_1000982FC(toCopy, v25, @"asmSyncDisabled");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version <= 2)
  {
    if (version)
    {
      if (version != 1)
      {
        if (version != 2)
        {
          goto LABEL_22;
        }

LABEL_17:
        if (!sub_1000B9298(v8, @"alter table PDASMConfig add column allowSharingOutsideOrg integer default 0", 0, 0, 0))
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

LABEL_16:
      if (!sub_1000B9298(v8, @"alter table PDASMConfig add column asmAnalyticsEnabled integer default 0", 0, 0, 0))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (!sub_1000B9298(databaseCopy, @"create table PDASMConfig(   identity text not null,    serviceID text,    personLinkContext text,    zoneSubscriptions blob not null,    defaultSyncZoneNames blob,    rosterSearchAllowed integer default 1,    useServerForRosterSearch integer default 0,    minimumSearchKeyLength integer default 2)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDASMConfig_identity on PDASMConfig (identity)", 0, 0, 0))
    {
      goto LABEL_25;
    }

    v18[0] = @"1️⃣⚡️⚡️⚡️";
    v18[1] = @"apple_school_manager";
    v18[2] = &stru_100206880;
    v9 = +[NSData data];
    v18[3] = v9;
    v10 = +[NSData data];
    v18[4] = v10;
    v18[5] = &__kCFBooleanTrue;
    v18[6] = &__kCFBooleanFalse;
    v11 = [NSNumber numberWithInt:2];
    v18[7] = v11;
    v12 = [NSArray arrayWithObjects:v18 count:8];

    28800 = @"insert into PDASMConfig (identity, serviceID, personLinkContext, zoneSubscriptions, defaultSyncZoneNames, rosterSearchAllowed, useServerForRosterSearch, minimumSearchKeyLength) values (?,?,?,?,?,?,?,?)";
    if (sub_1000B9298(v8, @"insert into PDASMConfig (identity, serviceID, personLinkContext, zoneSubscriptions, defaultSyncZoneNames, rosterSearchAllowed, useServerForRosterSearch, minimumSearchKeyLength) values (?,?,?,?,?,?,?,?)", 0, v12, 0))
    {
      28800 = [NSString stringWithFormat:@"alter table PDASMConfig add column syncFetchInterval integer default %ld", 28800];
      if (sub_1000B9298(v8, 28800, 0, 0, 0))
      {
        3600 = [NSString stringWithFormat:@"alter table PDASMConfig add column searchCacheTTL integer default %ld", 3600];

        if (sub_1000B9298(v8, 3600, 0, 0, 0))
        {

          v15 = sub_1000B9298(v8, @"alter table PDASMConfig add column eduMAID integer default 1", 0, 0, 0);
          if (!v15)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }

        28800 = 3600;
      }
    }

    goto LABEL_25;
  }

  if (version == 3)
  {
LABEL_18:
    if (!sub_1000B9298(v8, @"alter table PDASMConfig add column classroomClassicAdHocModeEnabled integer default 0", 0, 0, 0))
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (version == 4)
  {
LABEL_19:
    if (sub_1000B9298(v8, @"alter table PDASMConfig add column searchLimitForGroupMemberSearch integer default 50", 0, 0, 0))
    {
      goto LABEL_20;
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  if (version != 5)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!sub_1000B9298(v8, @"alter table PDASMConfig add column asmSyncDisabled integer default 0", 0, 0, 0))
  {
    goto LABEL_25;
  }

  version = 6;
LABEL_22:
  *finalVersion = version;
  v16 = 1;
LABEL_26:

  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = vdupq_n_s64(&stru_100206880);
  v4 = vbslq_s8(vceqzq_s64(*&self->_serviceID), v3, *&self->_serviceID);
  v5 = vbslq_s8(vceqzq_s64(*&self->_zoneSubscriptions), v3, *&self->_zoneSubscriptions);
  v19[0] = @"serviceID";
  v19[1] = @"personLinkContext";
  v19[2] = @"zoneSubscriptions";
  v19[3] = @"defaultSyncZoneNames";
  v20[0] = v4;
  v20[1] = v5;
  v19[4] = @"rosterSearchAllowed";
  v18 = [NSNumber numberWithBool:self->_rosterSearchAllowed];
  v21 = v18;
  v19[5] = @"useServerForRosterSearch";
  v17 = [NSNumber numberWithBool:self->_useServerForRosterSearch];
  v22 = v17;
  v19[6] = @"eduMAID";
  v6 = [NSNumber numberWithBool:self->_eduMAID];
  v23 = v6;
  v19[7] = @"asmAnalyticsEnabled";
  v7 = [NSNumber numberWithBool:self->_asmAnalyticsEnabled];
  v24 = v7;
  v19[8] = @"minimumSearchKeyLength";
  v8 = [NSNumber numberWithInteger:self->_minimumSearchKeyLength];
  v25 = v8;
  v19[9] = @"syncFetchInterval";
  v9 = [NSNumber numberWithInteger:self->_syncFetchInterval];
  v26 = v9;
  v19[10] = @"searchCacheTTL";
  v10 = [NSNumber numberWithInteger:self->_searchCacheTTL];
  v27 = v10;
  v19[11] = @"allowSharingOutsideOrg";
  v11 = [NSNumber numberWithBool:self->_allowSharingOutsideOrg];
  v28 = v11;
  v19[12] = @"classroomClassicAdHocModeEnabled";
  v12 = [NSNumber numberWithBool:self->_classroomClassicAdHocModeEnabled];
  v29 = v12;
  v19[13] = @"searchLimitForGroupMemberSearch";
  v13 = [NSNumber numberWithInteger:self->_searchLimitForGroupMemberSearch];
  v30 = v13;
  v19[14] = @"asmSyncDisabled";
  v14 = [NSNumber numberWithBool:self->_asmSyncDisabled];
  v31 = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:15];

  return v15;
}

@end
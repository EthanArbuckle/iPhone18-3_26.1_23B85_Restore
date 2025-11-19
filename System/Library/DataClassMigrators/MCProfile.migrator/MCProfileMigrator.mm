@interface MCProfileMigrator
- (BOOL)_removeFileIfExistsWithFM:(id)a3 path:(id)a4 outError:(id *)a5;
- (BOOL)performMigration;
- (id)_placeholderCloudConfig;
- (void)_allowGrandfatheredRestrictionsIfNeeded;
- (void)_applyHeuristicsToGrandfatheredRestrictionsIfNeeded;
- (void)_createSystemMetadataFileIfNeeded;
- (void)_handleUnsupervisedGrandfatheredRestrictions;
- (void)_recomputeProfileRestrictions;
- (void)_stopAllowingGrandfatheredRestrictions;
- (void)_storeAllowedGrandfatheredRestrictionsIfNeeded;
@end

@implementation MCProfileMigrator

- (BOOL)performMigration
{
  _DMLogFunc();
  v3 = MCSystemProfileStorageDirectory();
  sub_FC4(v3);

  v4 = MCSystemPublicInfoDirectory();
  sub_FC4(v4);

  if ([(MCProfileMigrator *)self didRestoreFromBackup])
  {
    v5 = [(MCProfileMigrator *)self didMigrateBackupFromDifferentDevice];
    v6 = MCSystemMetadataFilePath();
    v7 = [NSMutableDictionary dictionaryWithContentsOfFile:v6];

    if (v7)
    {
      [v7 removeObjectForKey:kMCMetaLastMigratedBuildKey];
      v8 = MCSystemMetadataFilePath();
      [v7 MCWriteToBinaryFile:v8];
    }

    v9 = MCUserMetadataFilePath();
    v10 = [NSMutableDictionary dictionaryWithContentsOfFile:v9];

    if (v10)
    {
      [v10 removeObjectForKey:kMCMetaLastMigratedBuildKey];
      v11 = MCUserMetadataFilePath();
      [v10 writeToFile:v11 atomically:1];
    }

    v12 = v5 == 0;
    if (v5)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = @"Restore from the same device";
    v15 = @"Restore from a different device";
  }

  else
  {
    v13 = [(MCProfileMigrator *)self didUpgrade];
    v14 = @"Device erasure";
    v15 = @"Software update";
    v12 = v13 == 0;
  }

  if (v12)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  _DMLogFunc();
  v17 = MCCloudConfigurationDetailsFilePath();
  v18 = [NSDictionary dictionaryWithContentsOfFile:v17, v16];

  if (v18)
  {
    v19 = [v18 objectForKeyedSubscript:kCCIsSupervisedKey];
    v20 = [v19 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = +[NSFileManager defaultManager];
  if (v13 == 3)
  {
    _DMLogFunc();
    v24 = MCCloudConfigurationDetailsFilePath();
    v47 = 0;
    v25 = [(MCProfileMigrator *)self _removeFileIfExistsWithFM:v21 path:v24 outError:&v47];
    v26 = v47;

    if ((v25 & 1) == 0)
    {
      v39 = v26;
      _DMLogFunc();

      v26 = 0;
    }

    v27 = MCLegacyCloudConfigurationDetailsFilePath();
    v46 = v26;
    v28 = [(MCProfileMigrator *)self _removeFileIfExistsWithFM:v21 path:v27 outError:&v46];
    v29 = v46;

    if ((v28 & 1) == 0)
    {
      v39 = v29;
      _DMLogFunc();

      v29 = 0;
    }

    MCSendCloudConfigurationDetailsChangedNotification();
    v30 = MCPostSetupAutoInstallProfilePathNF();
    v45 = v29;
    v31 = [(MCProfileMigrator *)self _removeFileIfExistsWithFM:v21 path:v30 outError:&v45];
    v32 = v45;

    if ((v31 & 1) == 0)
    {
      v39 = v32;
      _DMLogFunc();

      v32 = 0;
    }

    v33 = MCLegacyPostSetupAutoInstallProfilePath();
    v44 = v32;
    v34 = [(MCProfileMigrator *)self _removeFileIfExistsWithFM:v21 path:v33 outError:&v44];
    v35 = v44;

    if ((v34 & 1) == 0)
    {
      v39 = v35;
      _DMLogFunc();

      v35 = 0;
    }
  }

  else
  {
    if (v13 != 2 || (MCCloudConfigurationDetailsFilePath(), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 fileExistsAtPath:v22 isDirectory:0], v22, (v23 & 1) != 0))
    {
      if (v20)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    _DMLogFunc();
    v35 = [(MCProfileMigrator *)self _placeholderCloudConfig];
    v36 = MCCloudConfigurationDetailsFilePath();
    [v35 MCWriteToBinaryFile:v36];

    MCSendCloudConfigurationDetailsChangedNotification();
  }

LABEL_32:
  [(MCProfileMigrator *)self _handleUnsupervisedGrandfatheredRestrictions];
LABEL_33:
  _DMLogFunc();
  v37 = +[MCProfileConnection sharedConnection];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1288;
  v40[3] = &unk_41B8;
  v43 = v13;
  v41 = v16;
  v42 = self;
  [v37 shutDownWithCompletion:v40];

  return 1;
}

- (id)_placeholderCloudConfig
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCIsSupervisedKey];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCAllowPairingKey];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCIsMandatoryKey];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCCloudConfigurationUICompleteKey];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCPostSetupProfileWasInstalledKey];

  return v2;
}

- (void)_handleUnsupervisedGrandfatheredRestrictions
{
  _DMLogFunc();
  if ([(MCProfileMigrator *)self didUpgrade])
  {
    [(MCProfileMigrator *)self _allowGrandfatheredRestrictionsIfNeeded];
  }

  else if ([(MCProfileMigrator *)self didRestoreFromBackup])
  {
    [(MCProfileMigrator *)self _stopAllowingGrandfatheredRestrictions];
  }

  [(MCProfileMigrator *)self _applyHeuristicsToGrandfatheredRestrictionsIfNeeded];
}

- (void)_applyHeuristicsToGrandfatheredRestrictionsIfNeeded
{
  _DMLogFunc();
  v2 = MCSystemMetadataFilePath();
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v15 = v5;

  v6 = kMCMetaAllowedGrandfatheredRestrictions;
  v7 = [v15 objectForKeyedSubscript:kMCMetaAllowedGrandfatheredRestrictions];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = +[MCHacks sharedHacks];
  [v12 _applyHeuristicsToGranfatheredRestrictionPayloadKeys:v11];

  if ([v11 count])
  {
    _DMLogFunc();
    v13 = [v11 copy];
    [v15 setObject:v13 forKeyedSubscript:v6];

    v14 = MCSystemMetadataFilePath();
    [v15 MCWriteToBinaryFile:v14];
  }
}

- (void)_createSystemMetadataFileIfNeeded
{
  v2 = +[NSFileManager defaultManager];
  v3 = MCSystemMetadataFilePath();
  v4 = [v2 fileExistsAtPath:v3];

  if ((v4 & 1) == 0)
  {
    _DMLogFunc();
    v6 = objc_opt_new();
    v5 = MCSystemMetadataFilePath();
    [v6 MCWriteToBinaryFile:v5];
  }
}

- (void)_storeAllowedGrandfatheredRestrictionsIfNeeded
{
  [(MCProfileMigrator *)self _setStopFilteringGrandfatheredRestrictionsState:1];
  [(MCProfileMigrator *)self _recomputeProfileRestrictions];
  v3 = +[MCRestrictionManager effectiveGrandfatheredRestrictionPayloadKeysDictionary];
  v4 = [v3 count];

  if (v4)
  {
    [(MCProfileMigrator *)self _createSystemMetadataFileIfNeeded];
    v5 = MCSystemMetadataFilePath();
    v6 = [NSMutableDictionary dictionaryWithContentsOfFile:v5];

    _DMLogFunc();
    if (v6)
    {
      v7 = kMCMetaAllowedGrandfatheredRestrictions;
      v8 = [v6 objectForKeyedSubscript:kMCMetaAllowedGrandfatheredRestrictions];
      v9 = +[MCRestrictionManager effectiveGrandfatheredRestrictionPayloadKeysDictionary];
      v10 = [MCRestrictionManager addRestrictionPayloadKeysDictionary:v9 toRestrictionPayloadKeysDictionary:v8];

      [v6 setObject:v10 forKeyedSubscript:v7];
      v11 = MCSystemMetadataFilePath();
      [v6 MCWriteToBinaryFile:v11];
    }
  }

  else
  {
    _DMLogFunc();
  }

  [(MCProfileMigrator *)self _setStopFilteringGrandfatheredRestrictionsState:0];
}

- (void)_allowGrandfatheredRestrictionsIfNeeded
{
  _DMLogFunc();

  [(MCProfileMigrator *)self _storeAllowedGrandfatheredRestrictionsIfNeeded];
}

- (void)_stopAllowingGrandfatheredRestrictions
{
  _DMLogFunc();
  v3 = MCSystemMetadataFilePath();
  v5 = [NSMutableDictionary dictionaryWithContentsOfFile:v3];

  if (v5)
  {
    [v5 setObject:0 forKeyedSubscript:kMCMetaStopFilteringGrandfatheredRestrictions];
    [v5 setObject:0 forKeyedSubscript:kMCMetaAllowedGrandfatheredRestrictions];
    v4 = MCSystemMetadataFilePath();
    [v5 MCWriteToBinaryFile:v4];
  }

  [(MCProfileMigrator *)self _recomputeProfileRestrictions];
}

- (void)_recomputeProfileRestrictions
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 recomputeProfileRestrictionsWithCompletionBlock:&stru_41F8];
}

- (BOOL)_removeFileIfExistsWithFM:(id)a3 path:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 fileExistsAtPath:v8])
  {
    v9 = [v7 removeItemAtPath:v8 error:a5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end
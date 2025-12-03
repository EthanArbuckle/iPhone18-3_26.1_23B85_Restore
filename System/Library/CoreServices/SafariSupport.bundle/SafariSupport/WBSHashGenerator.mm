@interface WBSHashGenerator
- (BOOL)verifyIdentityHashInBookmarkRecord:(id)record configuration:(id)configuration;
- (WBSHashGenerator)initWithEncryptionInfoRecord:(id)record;
- (id)encryptionInfoRecordWithZone:(id)zone;
@end

@implementation WBSHashGenerator

- (WBSHashGenerator)initWithEncryptionInfoRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy safari_isEncryptionInfoRecord])
  {
    safari_encryptedValues = [recordCopy safari_encryptedValues];
    v6 = [safari_encryptedValues objectForKeyedSubscript:@"Key"];

    v7 = [recordCopy objectForKeyedSubscript:@"KeyID"];
    self = [(WBSHashGenerator *)self initWithKey:v6 keyID:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)verifyIdentityHashInBookmarkRecord:(id)record configuration:(id)configuration
{
  recordCopy = record;
  configurationCopy = configuration;
  safari_minimumAPIVersion = [recordCopy safari_minimumAPIVersion];
  if (safari_minimumAPIVersion <= 4)
  {
    safari_recordName = [recordCopy safari_recordName];
    if ([safari_recordName isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
    {
      LOBYTE(v11) = 1;
LABEL_13:

      goto LABEL_14;
    }

    v15 = [configurationCopy identityHashComponentsForRecord:recordCopy];
    v16 = [(WBSHashGenerator *)self generateHashWithComponents:v15];
    v17 = [recordCopy objectForKeyedSubscript:@"IdentityHash"];
    v11 = [v16 isEqualToData:v17];
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v19 = v18;
    if (v11)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
LABEL_12:

        goto LABEL_13;
      }

      log = v19;
      v43 = [(WBSHashGenerator *)self key];
      safari_descriptionWithoutSpaces = [v43 safari_descriptionWithoutSpaces];
      keyID = [(WBSHashGenerator *)self keyID];
      safari_descriptionWithoutSpaces2 = [keyID safari_descriptionWithoutSpaces];
      safari_descriptionWithoutSpaces3 = [v17 safari_descriptionWithoutSpaces];
      [v15 componentsJoinedByString:{@", "}];
      *buf = 138544387;
      v47 = safari_recordName;
      v48 = 2114;
      v49 = safari_descriptionWithoutSpaces;
      v50 = 2114;
      v51 = safari_descriptionWithoutSpaces2;
      v52 = 2114;
      v53 = safari_descriptionWithoutSpaces3;
      v55 = v54 = 2113;
      v21 = v55;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Valid identity hash for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identityHash: %{public}@, components: %{private}@", buf, 0x34u);

      v22 = safari_descriptionWithoutSpaces;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v38 = v19;
        loga = [(WBSHashGenerator *)self key];
        safari_descriptionWithoutSpaces4 = [loga safari_descriptionWithoutSpaces];
        keyID2 = [(WBSHashGenerator *)self keyID];
        safari_descriptionWithoutSpaces5 = [keyID2 safari_descriptionWithoutSpaces];
        safari_descriptionWithoutSpaces6 = [v17 safari_descriptionWithoutSpaces];
        [v16 safari_descriptionWithoutSpaces];
        *buf = 138544386;
        v47 = safari_recordName;
        v48 = 2114;
        v49 = safari_descriptionWithoutSpaces4;
        v50 = 2114;
        v51 = safari_descriptionWithoutSpaces5;
        v52 = 2114;
        v53 = safari_descriptionWithoutSpaces6;
        v55 = v54 = 2114;
        v25 = v55;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Identity hash is invalid for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identity hash actual: %{public}@, expected: %{public}@", buf, 0x34u);
      }

      v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      v39 = v23;
      logb = [(WBSHashGenerator *)self key];
      safari_descriptionWithoutSpaces7 = [logb safari_descriptionWithoutSpaces];
      keyID3 = [(WBSHashGenerator *)self keyID];
      safari_descriptionWithoutSpaces8 = [keyID3 safari_descriptionWithoutSpaces];
      safari_descriptionWithoutSpaces9 = [v17 safari_descriptionWithoutSpaces];
      safari_descriptionWithoutSpaces10 = [v16 safari_descriptionWithoutSpaces];
      v27 = [v15 componentsJoinedByString:{@", "}];
      *buf = 138544643;
      v47 = safari_recordName;
      v48 = 2114;
      v49 = safari_descriptionWithoutSpaces7;
      v50 = 2114;
      v51 = safari_descriptionWithoutSpaces8;
      v52 = 2114;
      v53 = safari_descriptionWithoutSpaces9;
      v54 = 2114;
      v55 = safari_descriptionWithoutSpaces10;
      v56 = 2113;
      v57 = v27;
      v28 = v27;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Identity hash is invalid for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identity hash actual: %{public}@, expected: %{public}@, components: %{private}@", buf, 0x3Eu);

      v22 = safari_descriptionWithoutSpaces7;
    }

    goto LABEL_12;
  }

  v9 = safari_minimumAPIVersion;
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  LOBYTE(v11) = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
    safari_recordName2 = [recordCopy safari_recordName];
    *buf = 138543874;
    v47 = safari_recordName2;
    v48 = 2048;
    v49 = v9;
    v50 = 2048;
    v51 = 4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Cannot verify identity hash of CKRecord with name %{public}@ because its minimumAPIVersion %zd is more recent than the version %zd of the client.", buf, 0x20u);
  }

LABEL_14:

  return v11;
}

- (id)encryptionInfoRecordWithZone:(id)zone
{
  zoneCopy = zone;
  v5 = [[CKRecordID alloc] initWithRecordName:@"EncryptionInfo" zoneID:zoneCopy];

  v6 = [[CKRecord alloc] initWithRecordType:@"EncryptionInfo" recordID:v5];
  v7 = [(WBSHashGenerator *)self key];
  safari_encryptedValues = [v6 safari_encryptedValues];
  [safari_encryptedValues setObject:v7 forKeyedSubscript:@"Key"];

  keyID = [(WBSHashGenerator *)self keyID];
  [v6 setObject:keyID forKeyedSubscript:@"KeyID"];

  return v6;
}

@end
@interface WBSHashGenerator
- (BOOL)verifyIdentityHashInBookmarkRecord:(id)a3 configuration:(id)a4;
- (WBSHashGenerator)initWithEncryptionInfoRecord:(id)a3;
- (id)encryptionInfoRecordWithZone:(id)a3;
@end

@implementation WBSHashGenerator

- (WBSHashGenerator)initWithEncryptionInfoRecord:(id)a3
{
  v4 = a3;
  if ([v4 safari_isEncryptionInfoRecord])
  {
    v5 = [v4 safari_encryptedValues];
    v6 = [v5 objectForKeyedSubscript:@"Key"];

    v7 = [v4 objectForKeyedSubscript:@"KeyID"];
    self = [(WBSHashGenerator *)self initWithKey:v6 keyID:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)verifyIdentityHashInBookmarkRecord:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 safari_minimumAPIVersion];
  if (v8 <= 4)
  {
    v14 = [v6 safari_recordName];
    if ([v14 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
    {
      LOBYTE(v11) = 1;
LABEL_13:

      goto LABEL_14;
    }

    v15 = [v7 identityHashComponentsForRecord:v6];
    v16 = [(WBSHashGenerator *)self generateHashWithComponents:v15];
    v17 = [v6 objectForKeyedSubscript:@"IdentityHash"];
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
      v34 = [v43 safari_descriptionWithoutSpaces];
      v37 = [(WBSHashGenerator *)self keyID];
      v31 = [v37 safari_descriptionWithoutSpaces];
      v20 = [v17 safari_descriptionWithoutSpaces];
      [v15 componentsJoinedByString:{@", "}];
      *buf = 138544387;
      v47 = v14;
      v48 = 2114;
      v49 = v34;
      v50 = 2114;
      v51 = v31;
      v52 = 2114;
      v53 = v20;
      v55 = v54 = 2113;
      v21 = v55;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Valid identity hash for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identityHash: %{public}@, components: %{private}@", buf, 0x34u);

      v22 = v34;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v38 = v19;
        loga = [(WBSHashGenerator *)self key];
        v44 = [loga safari_descriptionWithoutSpaces];
        v35 = [(WBSHashGenerator *)self keyID];
        v32 = [v35 safari_descriptionWithoutSpaces];
        v29 = [v17 safari_descriptionWithoutSpaces];
        [v16 safari_descriptionWithoutSpaces];
        *buf = 138544386;
        v47 = v14;
        v48 = 2114;
        v49 = v44;
        v50 = 2114;
        v51 = v32;
        v52 = 2114;
        v53 = v29;
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
      v45 = [logb safari_descriptionWithoutSpaces];
      v36 = [(WBSHashGenerator *)self keyID];
      v33 = [v36 safari_descriptionWithoutSpaces];
      v30 = [v17 safari_descriptionWithoutSpaces];
      v26 = [v16 safari_descriptionWithoutSpaces];
      v27 = [v15 componentsJoinedByString:{@", "}];
      *buf = 138544643;
      v47 = v14;
      v48 = 2114;
      v49 = v45;
      v50 = 2114;
      v51 = v33;
      v52 = 2114;
      v53 = v30;
      v54 = 2114;
      v55 = v26;
      v56 = 2113;
      v57 = v27;
      v28 = v27;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Identity hash is invalid for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identity hash actual: %{public}@, expected: %{public}@, components: %{private}@", buf, 0x3Eu);

      v22 = v45;
    }

    goto LABEL_12;
  }

  v9 = v8;
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  LOBYTE(v11) = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
    v13 = [v6 safari_recordName];
    *buf = 138543874;
    v47 = v13;
    v48 = 2048;
    v49 = v9;
    v50 = 2048;
    v51 = 4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Cannot verify identity hash of CKRecord with name %{public}@ because its minimumAPIVersion %zd is more recent than the version %zd of the client.", buf, 0x20u);
  }

LABEL_14:

  return v11;
}

- (id)encryptionInfoRecordWithZone:(id)a3
{
  v4 = a3;
  v5 = [[CKRecordID alloc] initWithRecordName:@"EncryptionInfo" zoneID:v4];

  v6 = [[CKRecord alloc] initWithRecordType:@"EncryptionInfo" recordID:v5];
  v7 = [(WBSHashGenerator *)self key];
  v8 = [v6 safari_encryptedValues];
  [v8 setObject:v7 forKeyedSubscript:@"Key"];

  v9 = [(WBSHashGenerator *)self keyID];
  [v6 setObject:v9 forKeyedSubscript:@"KeyID"];

  return v6;
}

@end
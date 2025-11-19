@interface WOWorkoutEntity
+ (BOOL)_shouldInsertOrReplaceLocal:(id)a3 withRemote:(id)a4;
+ (BOOL)bind:(id)a3 provenance:(int64_t)a4 syncIdentity:(int64_t)a5 toBinder:(HDSQLiteStatementBinder *)a6;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (BOOL)isPropertyFatal:(id)a3 version:(int64_t)a4;
+ (Class)classForPersistenceType:(unint64_t)a3;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (double)_cleanupTombstoneExpirationIntervalForPersistenceType:(unint64_t)a3;
+ (id)_lookup:(id)a3 ofType:(unint64_t)a4 profile:(id)a5 transaction:(id)a6;
+ (id)_nonRaceConfigPredicate:(Class)a3;
+ (id)allProperties;
+ (id)databaseTable;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)persistenceFromRow:(HDSQLiteRow *)a3 type:(unint64_t)a4 profile:(id)a5 transaction:(id)a6;
+ (id)protoPersistenceFromRow:(HDSQLiteRow *)a3 type:(unint64_t)a4 profile:(id)a5 transaction:(id)a6;
+ (id)tableName;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (unint64_t)persistenceType;
+ (void)_cleanupDeletedObjectsWithProfile:(id)a3 type:(unint64_t)a4;
+ (void)preparePersistenceForDelete:(id)a3;
@end

@implementation WOWorkoutEntity

+ (id)allProperties
{
  v17 = a1;
  v16[1] = a2;
  v13 = 0;
  v2 = [NSMutableArray arrayWithObjects:@"uuid", @"serialization_version", @"serialized", @"sync_provenance", @"object_state", @"object_modification_date", @"sync_identity", @"proto", 0];
  v14 = v16;
  v16[0] = v2;
  v5 = v2;
  v6 = [v17 integerProperties];
  [(NSMutableArray *)v5 addObjectsFromArray:?];

  v7 = v16[0];
  v8 = [v17 stringProperties];
  [v7 addObjectsFromArray:?];

  v9 = v16[0];
  v10 = [v17 dateProperties];
  [v9 addObjectsFromArray:?];

  v11 = v16[0];
  v12 = [v17 dataProperties];
  [v11 addObjectsFromArray:?];

  v15 = v16[0];
  objc_storeStrong(v14, v13);
  v3 = v15;

  return v3;
}

+ (BOOL)isPropertyFatal:(id)a3 version:(int64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

+ (BOOL)bind:(id)a3 provenance:(int64_t)a4 syncIdentity:(int64_t)a5 toBinder:(HDSQLiteStatementBinder *)a6
{
  v66 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v64 = a4;
  v63 = a5;
  v62 = a6;
  v48 = [location[0] uuid];
  HDSQLiteBindUUIDToProperty();

  [location[0] version];
  HDSQLiteBindInt64ToProperty();
  v49 = [location[0] persistedData];
  HDSQLiteBindDataToProperty();

  HDSQLiteBindInt64ToProperty();
  [location[0] objectState];
  HDSQLiteBindInt64ToProperty();
  v50 = [location[0] objectModificationDate];
  HDSQLiteBindDateToProperty();

  HDSQLiteBindInt64ToProperty();
  v51 = [location[0] persistedProtoData];
  HDSQLiteBindDataToProperty();

  memset(__b, 0, sizeof(__b));
  obj = [v66 integerProperties];
  v53 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
  if (v53)
  {
    v42 = *__b[2];
    v43 = 0;
    v44 = v53;
    while (1)
    {
      v41 = v43;
      if (*__b[2] != v42)
      {
        objc_enumerationMutation(obj);
      }

      v61 = *(__b[1] + 8 * v43);
      v39 = [location[0] keyedNumbers];
      v40 = [v39 objectForKeyedSubscript:v61];

      if (v40)
      {
        v38 = [location[0] keyedNumbers];
        v37 = [v38 objectForKeyedSubscript:v61];
        HDSQLiteBindNumberToProperty();
      }

      else
      {
        HDSQLiteBindNullToProperty();
      }

      ++v43;
      if (v41 + 1 >= v44)
      {
        v43 = 0;
        v44 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
        if (!v44)
        {
          break;
        }
      }
    }
  }

  memset(v58, 0, sizeof(v58));
  v35 = [v66 stringProperties];
  v36 = [v35 countByEnumeratingWithState:v58 objects:v69 count:16];
  if (v36)
  {
    v32 = *v58[2];
    v33 = 0;
    v34 = v36;
    while (1)
    {
      v31 = v33;
      if (*v58[2] != v32)
      {
        objc_enumerationMutation(v35);
      }

      v59 = *(v58[1] + 8 * v33);
      v29 = [location[0] keyedStrings];
      v30 = [v29 objectForKeyedSubscript:v59];

      if (v30)
      {
        v28 = [location[0] keyedStrings];
        v27 = [v28 objectForKeyedSubscript:v59];
        HDSQLiteBindStringToProperty();
      }

      else
      {
        HDSQLiteBindNullToProperty();
      }

      ++v33;
      if (v31 + 1 >= v34)
      {
        v33 = 0;
        v34 = [v35 countByEnumeratingWithState:v58 objects:v69 count:16];
        if (!v34)
        {
          break;
        }
      }
    }
  }

  memset(v56, 0, sizeof(v56));
  v25 = [v66 dateProperties];
  v26 = [v25 countByEnumeratingWithState:v56 objects:v68 count:16];
  if (v26)
  {
    v22 = *v56[2];
    v23 = 0;
    v24 = v26;
    while (1)
    {
      v21 = v23;
      if (*v56[2] != v22)
      {
        objc_enumerationMutation(v25);
      }

      v57 = *(v56[1] + 8 * v23);
      v19 = [location[0] keyedDates];
      v20 = [v19 objectForKeyedSubscript:v57];

      if (v20)
      {
        v18 = [location[0] keyedDates];
        v17 = [v18 objectForKeyedSubscript:v57];
        HDSQLiteBindDateToProperty();
      }

      else
      {
        HDSQLiteBindNullToProperty();
      }

      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [v25 countByEnumeratingWithState:v56 objects:v68 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  memset(v54, 0, sizeof(v54));
  v15 = [v66 dataProperties];
  v16 = [v15 countByEnumeratingWithState:v54 objects:v67 count:16];
  if (v16)
  {
    v12 = *v54[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*v54[2] != v12)
      {
        objc_enumerationMutation(v15);
      }

      v55 = *(v54[1] + 8 * v13);
      v9 = [location[0] keyedDatas];
      v10 = [v9 objectForKeyedSubscript:v55];

      if (v10)
      {
        v8 = [location[0] keyedDatas];
        v7 = [v8 objectForKeyedSubscript:v55];
        HDSQLiteBindDataToProperty();
      }

      else
      {
        HDSQLiteBindNullToProperty();
      }

      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [v15 countByEnumeratingWithState:v54 objects:v67 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  return 1;
}

+ (id)protoPersistenceFromRow:(HDSQLiteRow *)a3 type:(unint64_t)a4 profile:(id)a5 transaction:(id)a6
{
  v105 = a1;
  v104 = a2;
  v103 = a3;
  v102 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v100 = 0;
  objc_storeStrong(&v100, a6);
  v99 = HDSQLiteColumnWithNameAsInteger();
  v98 = HDSQLiteColumnWithNameAsUUID();
  if (v98)
  {
    v93 = HDSQLiteColumnWithNameAsData();
    if (!v93)
    {
      _HKInitializeLogging();
      v92 = HKLogWorkouts;
      v91 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v53 = v92;
        v54 = v91;
        __os_log_helper_16_0_0(v90);
        _os_log_error_impl(&dword_0, v53, v54, "Unable to deserialize - missing persisted data", v90, 2u);
      }

      objc_storeStrong(&v92, 0);
      v106 = 0;
      v94 = 1;
      goto LABEL_75;
    }

    v89 = HDSQLiteColumnWithNameAsData();
    v88 = HDSQLiteColumnWithNameAsInteger();
    v87 = HDSQLiteColumnWithNameAsDate();
    if (!v87)
    {
      v87 = +[WOPersistence zeroObjectModificationDate];
    }

    v86 = HDSQLiteColumnWithNameAsInteger();
    v85 = 0;
    v52 = [location syncIdentityManager];
    v83 = v85;
    v51 = [v52 identityForEntityID:v86 transaction:v100 error:&v83];
    objc_storeStrong(&v85, v83);
    v84 = v51;

    if (!v84)
    {
      _HKInitializeLogging();
      v82 = HKLogDatabase;
      v81 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_1_8_66(v114, v85);
        _os_log_fault_impl(&dword_0, v82, v81, "Unable to fetch sync identity for WOWorkoutEntity  %{public}@", v114, 0xCu);
      }

      objc_storeStrong(&v82, 0);
      v106 = 0;
      v94 = 1;
      goto LABEL_74;
    }

    v80 = objc_alloc_init(WOHealthBridgeProtoPersistence);
    [v80 setVersion:v99];
    [v80 setType:v102];
    v37 = [v98 hk_dataForUUIDBytes];
    [v80 setUuid:?];

    [v80 setPersistedData:v93];
    [v80 setPersistedProtoData:v89];
    [v80 setObjectState:v88];
    [v87 timeIntervalSinceReferenceDate];
    [v80 setObjectModificationTimeSinceReferenceDate:?];
    v41 = [v84 identity];
    v40 = [v41 hardwareIdentifier];
    v39 = [v40 hk_dataForUUIDBytes];
    v38 = [v80 syncIdentity];
    [v38 setHardwareIdentifier:v39];

    v45 = [v84 identity];
    v44 = [v45 databaseIdentifier];
    v43 = [v44 hk_dataForUUIDBytes];
    v42 = [v80 syncIdentity];
    [v42 setDatabaseIdentifier:v43];

    v48 = [v84 identity];
    v47 = [v48 instanceDiscriminator];
    v46 = [v80 syncIdentity];
    [v46 setInstanceDiscriminator:v47];

    memset(__b, 0, sizeof(__b));
    v49 = [v105 integerProperties];
    v50 = [v49 countByEnumeratingWithState:__b objects:v113 count:16];
    if (v50)
    {
      v34 = *__b[2];
      v35 = 0;
      v36 = v50;
      while (1)
      {
        v33 = v35;
        if (*__b[2] != v34)
        {
          objc_enumerationMutation(v49);
        }

        v79 = *(__b[1] + 8 * v35);
        HDSQLiteColumnWithNameAsDouble();
        v77 = v6;
        v76 = objc_alloc_init(WOHealthBridgeKeyedNumber);
        [v76 setKey:v79];
        [v76 setNumber:v77];
        [v80 addKeyedNumbers:v76];
        objc_storeStrong(&v76, 0);
        ++v35;
        if (v33 + 1 >= v36)
        {
          v35 = 0;
          v36 = [v49 countByEnumeratingWithState:__b objects:v113 count:16];
          if (!v36)
          {
            break;
          }
        }
      }
    }

    memset(v74, 0, sizeof(v74));
    v31 = [v105 stringProperties];
    v32 = [v31 countByEnumeratingWithState:v74 objects:v112 count:16];
    if (v32)
    {
      v28 = *v74[2];
      v29 = 0;
      v30 = v32;
      while (1)
      {
        v27 = v29;
        if (*v74[2] != v28)
        {
          objc_enumerationMutation(v31);
        }

        v75 = *(v74[1] + 8 * v29);
        v73 = HDSQLiteColumnWithNameAsString();
        if (v73)
        {
          v70 = objc_alloc_init(WOHealthBridgeKeyedString);
          [v70 setKey:v75];
          [v70 setString:v73];
          [v80 addKeyedStrings:v70];
          objc_storeStrong(&v70, 0);
        }

        else if ([v105 isPropertyFatal:v75 version:v99])
        {
          _HKInitializeLogging();
          v72 = HKLogWorkouts;
          v71 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v25 = v72;
            v26 = v71;
            __os_log_helper_16_2_1_8_66(v111, v75);
            _os_log_error_impl(&dword_0, v25, v26, "Missing required property %{public}@", v111, 0xCu);
          }

          objc_storeStrong(&v72, 0);
          v106 = 0;
          v94 = 1;
          goto LABEL_33;
        }

        v94 = 0;
LABEL_33:
        objc_storeStrong(&v73, 0);
        if (v94)
        {
          goto LABEL_37;
        }

        ++v29;
        if (v27 + 1 >= v30)
        {
          v29 = 0;
          v30 = [v31 countByEnumeratingWithState:v74 objects:v112 count:16];
          if (!v30)
          {
            break;
          }
        }
      }
    }

    v94 = 0;
LABEL_37:

    if (!v94)
    {
      memset(v68, 0, sizeof(v68));
      v23 = [v105 dateProperties];
      v24 = [v23 countByEnumeratingWithState:v68 objects:v110 count:16];
      if (v24)
      {
        v20 = *v68[2];
        v21 = 0;
        v22 = v24;
        while (1)
        {
          v19 = v21;
          if (*v68[2] != v20)
          {
            objc_enumerationMutation(v23);
          }

          v69 = *(v68[1] + 8 * v21);
          v67 = HDSQLiteColumnWithNameAsDate();
          if (v67)
          {
            v64 = objc_alloc_init(WOHealthBridgeKeyedDate);
            [v64 setKey:v69];
            [v67 timeIntervalSinceReferenceDate];
            [v64 setTimeSinceReferenceDate:?];
            [v80 addKeyedDates:v64];
            objc_storeStrong(&v64, 0);
          }

          else if ([v105 isPropertyFatal:v69 version:v99])
          {
            _HKInitializeLogging();
            v66 = HKLogWorkouts;
            v65 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v17 = v66;
              v18 = v65;
              __os_log_helper_16_2_1_8_66(v109, v69);
              _os_log_error_impl(&dword_0, v17, v18, "Missing required property %{public}@", v109, 0xCu);
            }

            objc_storeStrong(&v66, 0);
            v106 = 0;
            v94 = 1;
            goto LABEL_50;
          }

          v94 = 0;
LABEL_50:
          objc_storeStrong(&v67, 0);
          if (v94)
          {
            goto LABEL_54;
          }

          ++v21;
          if (v19 + 1 >= v22)
          {
            v21 = 0;
            v22 = [v23 countByEnumeratingWithState:v68 objects:v110 count:16];
            if (!v22)
            {
              break;
            }
          }
        }
      }

      v94 = 0;
LABEL_54:

      if (!v94)
      {
        memset(v62, 0, sizeof(v62));
        v15 = [v105 dataProperties];
        v16 = [v15 countByEnumeratingWithState:v62 objects:v108 count:16];
        if (v16)
        {
          v12 = *v62[2];
          v13 = 0;
          v14 = v16;
          while (1)
          {
            v11 = v13;
            if (*v62[2] != v12)
            {
              objc_enumerationMutation(v15);
            }

            v63 = *(v62[1] + 8 * v13);
            v61 = HDSQLiteColumnWithNameAsData();
            if (v61)
            {
              v58 = objc_alloc_init(WOHealthBridgeKeyedData);
              [v58 setKey:v63];
              [v58 setOurData:v61];
              [v80 addKeyedDatas:v58];
              objc_storeStrong(&v58, 0);
            }

            else if ([v105 isPropertyFatal:v63 version:v99])
            {
              _HKInitializeLogging();
              v60 = HKLogWorkouts;
              v59 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v9 = v60;
                v10 = v59;
                __os_log_helper_16_2_1_8_66(v107, v63);
                _os_log_error_impl(&dword_0, v9, v10, "Missing required property %{public}@", v107, 0xCu);
              }

              objc_storeStrong(&v60, 0);
              v106 = 0;
              v94 = 1;
              goto LABEL_67;
            }

            v94 = 0;
LABEL_67:
            objc_storeStrong(&v61, 0);
            if (v94)
            {
              goto LABEL_71;
            }

            ++v13;
            if (v11 + 1 >= v14)
            {
              v13 = 0;
              v14 = [v15 countByEnumeratingWithState:v62 objects:v108 count:16];
              if (!v14)
              {
                break;
              }
            }
          }
        }

        v94 = 0;
LABEL_71:

        if (!v94)
        {
          v106 = v80;
          v94 = 1;
        }
      }
    }

    objc_storeStrong(&v80, 0);
LABEL_74:
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v89, 0);
LABEL_75:
    objc_storeStrong(&v93, 0);
    goto LABEL_76;
  }

  _HKInitializeLogging();
  oslog = HKLogWorkouts;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v56 = type;
    __os_log_helper_16_0_0(v95);
    _os_log_error_impl(&dword_0, log, v56, "Unable to deserialize - missing UUID", v95, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v106 = 0;
  v94 = 1;
LABEL_76:
  objc_storeStrong(&v98, 0);
  objc_storeStrong(&v100, 0);
  objc_storeStrong(&location, 0);
  v7 = v106;

  return v7;
}

+ (id)persistenceFromRow:(HDSQLiteRow *)a3 type:(unint64_t)a4 profile:(id)a5 transaction:(id)a6
{
  v99 = a1;
  v98 = a2;
  v97 = a3;
  v96 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v94 = 0;
  objc_storeStrong(&v94, a6);
  v93 = HDSQLiteColumnWithNameAsInteger();
  v92 = HDSQLiteColumnWithNameAsUUID();
  if (v92)
  {
    v87 = HDSQLiteColumnWithNameAsData();
    if (!v87)
    {
      _HKInitializeLogging();
      v86 = HKLogWorkouts;
      v85 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v45 = v86;
        v46 = v85;
        __os_log_helper_16_0_0(v84);
        _os_log_error_impl(&dword_0, v45, v46, "Unable to deserialize - missing persisted data", v84, 2u);
      }

      objc_storeStrong(&v86, 0);
      v100 = 0;
      v88 = 1;
      goto LABEL_89;
    }

    v83 = HDSQLiteColumnWithNameAsData();
    v82 = HDSQLiteColumnWithNameAsInteger();
    v81 = HDSQLiteColumnWithNameAsDate();
    if (!v81)
    {
      v81 = +[WOPersistence zeroObjectModificationDate];
    }

    v80 = HDSQLiteColumnWithNameAsInteger();
    v79 = 0;
    v44 = [location syncIdentityManager];
    v77 = v79;
    v43 = [v44 identityForEntityID:v80 transaction:v94 error:&v77];
    objc_storeStrong(&v79, v77);
    v78 = v43;

    if (!v78)
    {
      _HKInitializeLogging();
      v76 = HKLogDatabase;
      v75 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_1_8_66(v109, v79);
        _os_log_fault_impl(&dword_0, v76, v75, "Unable to fetch sync identity for WOWorkoutEntity  %{public}@", v109, 0xCu);
      }

      objc_storeStrong(&v76, 0);
      v100 = 0;
      v88 = 1;
      goto LABEL_88;
    }

    v34 = [WOSyncIdentity alloc];
    v40 = [v78 identity];
    v39 = [v40 hardwareIdentifier];
    v38 = [v78 identity];
    v37 = [v38 databaseIdentifier];
    v36 = [v78 identity];
    v35 = [v36 instanceDiscriminator];
    v74 = [v34 initWithHardwareIdentifier:v39 databaseIdentifier:v37 instanceDiscriminator:?];

    v73 = [[WOPersistence alloc] initWithVersion:v93 type:v96 uuid:v92 persistedData:v87 persistedProtoData:v83 objectState:v82 objectModificationDate:v81 syncIdentity:v74];
    v72 = +[NSMutableDictionary dictionary];
    memset(__b, 0, sizeof(__b));
    v41 = [v99 integerProperties];
    v42 = [v41 countByEnumeratingWithState:__b objects:v108 count:16];
    if (v42)
    {
      v31 = *__b[2];
      v32 = 0;
      v33 = v42;
      while (1)
      {
        v30 = v32;
        if (*__b[2] != v31)
        {
          objc_enumerationMutation(v41);
        }

        v71 = *(__b[1] + 8 * v32);
        v69 = HDSQLiteColumnWithNameAsNumber();
        if (v69)
        {
          [v72 setObject:v69 forKeyedSubscript:v71];
        }

        else if ([v99 isPropertyFatal:v71 version:v93])
        {
          _HKInitializeLogging();
          v68 = HKLogWorkouts;
          v67 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v29 = v68;
            __os_log_helper_16_2_1_8_66(v107, v71);
            _os_log_error_impl(&dword_0, v29, v67, "Missing required property %{public}@", v107, 0xCu);
          }

          objc_storeStrong(&v68, 0);
          v100 = 0;
          v88 = 1;
          goto LABEL_27;
        }

        v88 = 0;
LABEL_27:
        objc_storeStrong(&v69, 0);
        if (v88)
        {
          goto LABEL_31;
        }

        ++v32;
        if (v30 + 1 >= v33)
        {
          v32 = 0;
          v33 = [v41 countByEnumeratingWithState:__b objects:v108 count:16];
          if (!v33)
          {
            break;
          }
        }
      }
    }

    v88 = 0;
LABEL_31:

    if (!v88)
    {
      [v73 setKeyedNumbers:v72];
      v66 = +[NSMutableDictionary dictionary];
      memset(v64, 0, sizeof(v64));
      v27 = [v99 stringProperties];
      v28 = [v27 countByEnumeratingWithState:v64 objects:v106 count:16];
      if (v28)
      {
        v24 = *v64[2];
        v25 = 0;
        v26 = v28;
        while (1)
        {
          v23 = v25;
          if (*v64[2] != v24)
          {
            objc_enumerationMutation(v27);
          }

          v65 = *(v64[1] + 8 * v25);
          v63 = HDSQLiteColumnWithNameAsString();
          if (v63)
          {
            [v66 setObject:v63 forKeyedSubscript:v65];
          }

          else if ([v99 isPropertyFatal:v65 version:v93])
          {
            _HKInitializeLogging();
            v62 = HKLogWorkouts;
            v61 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v22 = v62;
              __os_log_helper_16_2_1_8_66(v105, v65);
              _os_log_error_impl(&dword_0, v22, v61, "Missing required property %{public}@", v105, 0xCu);
            }

            objc_storeStrong(&v62, 0);
            v100 = 0;
            v88 = 1;
            goto LABEL_44;
          }

          v88 = 0;
LABEL_44:
          objc_storeStrong(&v63, 0);
          if (v88)
          {
            goto LABEL_48;
          }

          ++v25;
          if (v23 + 1 >= v26)
          {
            v25 = 0;
            v26 = [v27 countByEnumeratingWithState:v64 objects:v106 count:16];
            if (!v26)
            {
              break;
            }
          }
        }
      }

      v88 = 0;
LABEL_48:

      if (!v88)
      {
        [v73 setKeyedStrings:v66];
        v60 = +[NSMutableDictionary dictionary];
        memset(v58, 0, sizeof(v58));
        v20 = [v99 dateProperties];
        v21 = [v20 countByEnumeratingWithState:v58 objects:v104 count:16];
        if (v21)
        {
          v17 = *v58[2];
          v18 = 0;
          v19 = v21;
          while (1)
          {
            v16 = v18;
            if (*v58[2] != v17)
            {
              objc_enumerationMutation(v20);
            }

            v59 = *(v58[1] + 8 * v18);
            v57 = HDSQLiteColumnWithNameAsDate();
            if (v57)
            {
              [v60 setObject:v57 forKeyedSubscript:v59];
            }

            else if ([v99 isPropertyFatal:v59 version:v93])
            {
              _HKInitializeLogging();
              oslog = HKLogWorkouts;
              v55 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                v15 = oslog;
                __os_log_helper_16_2_1_8_66(v103, v59);
                _os_log_error_impl(&dword_0, v15, v55, "Missing required property %{public}@", v103, 0xCu);
              }

              objc_storeStrong(&oslog, 0);
              v100 = 0;
              v88 = 1;
              goto LABEL_61;
            }

            v88 = 0;
LABEL_61:
            objc_storeStrong(&v57, 0);
            if (v88)
            {
              goto LABEL_65;
            }

            ++v18;
            if (v16 + 1 >= v19)
            {
              v18 = 0;
              v19 = [v20 countByEnumeratingWithState:v58 objects:v104 count:16];
              if (!v19)
              {
                break;
              }
            }
          }
        }

        v88 = 0;
LABEL_65:

        if (!v88)
        {
          [v73 setKeyedDates:v60];
          v54 = +[NSMutableDictionary dictionary];
          memset(v52, 0, sizeof(v52));
          v13 = [v99 dataProperties];
          v14 = [v13 countByEnumeratingWithState:v52 objects:v102 count:16];
          if (v14)
          {
            v10 = *v52[2];
            v11 = 0;
            v12 = v14;
            while (1)
            {
              v9 = v11;
              if (*v52[2] != v10)
              {
                objc_enumerationMutation(v13);
              }

              v53 = *(v52[1] + 8 * v11);
              v51 = HDSQLiteColumnWithNameAsData();
              if (v51)
              {
                [v54 setObject:v51 forKeyedSubscript:v53];
              }

              else if ([v99 isPropertyFatal:v53 version:v93])
              {
                _HKInitializeLogging();
                v50 = HKLogWorkouts;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v8 = v50;
                  __os_log_helper_16_2_1_8_66(v101, v53);
                  _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Missing required property %{public}@", v101, 0xCu);
                }

                objc_storeStrong(&v50, 0);
                v100 = 0;
                v88 = 1;
                goto LABEL_78;
              }

              v88 = 0;
LABEL_78:
              objc_storeStrong(&v51, 0);
              if (v88)
              {
                goto LABEL_82;
              }

              ++v11;
              if (v9 + 1 >= v12)
              {
                v11 = 0;
                v12 = [v13 countByEnumeratingWithState:v52 objects:v102 count:16];
                if (!v12)
                {
                  break;
                }
              }
            }
          }

          v88 = 0;
LABEL_82:

          if (!v88)
          {
            [v73 setKeyedDatas:v54];
            v100 = v73;
            v88 = 1;
          }

          objc_storeStrong(&v54, 0);
        }

        objc_storeStrong(&v60, 0);
      }

      objc_storeStrong(&v66, 0);
    }

    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v74, 0);
LABEL_88:
    objc_storeStrong(&v78, 0);
    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v81, 0);
    objc_storeStrong(&v83, 0);
LABEL_89:
    objc_storeStrong(&v87, 0);
    goto LABEL_90;
  }

  _HKInitializeLogging();
  v91 = HKLogWorkouts;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
  {
    log = v91;
    v48 = type;
    __os_log_helper_16_0_0(v89);
    _os_log_error_impl(&dword_0, log, v48, "Unable to deserialize - missing UUID", v89, 2u);
  }

  objc_storeStrong(&v91, 0);
  v100 = 0;
  v88 = 1;
LABEL_90:
  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&location, 0);
  v6 = v100;

  return v6;
}

+ (id)tableName
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();

  return &stru_212C0;
}

+ (unint64_t)persistenceType
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (Class)classForPersistenceType:(unint64_t)a3
{
  if (a3 == 2 || a3 == 3 || a3 == 4)
  {
    v4 = objc_opt_class();
  }

  return v4;
}

+ (void)preparePersistenceForDelete:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

+ (double)_cleanupTombstoneExpirationIntervalForPersistenceType:(unint64_t)a3
{
  if (a3 - 2 <= 2)
  {
    return 31557600.0;
  }

  return v4;
}

+ (id)databaseTable
{
  v3 = [a1 tableName];
  v4 = [NSString stringWithFormat:@"%@_%@", @"WorkoutHealthPlugin", v3];

  return v4;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if ([a1 isEqual:objc_opt_class()])
  {
    v9 = 2;
  }

  else if ([v11 isEqual:objc_opt_class()])
  {
    v9 = 3;
  }

  else if ([v11 isEqual:objc_opt_class()])
  {
    v9 = 4;
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWorkouts;
    v7 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      log = v8;
      type = v7;
      v2 = objc_opt_class();
      v6 = v2;
      __os_log_helper_16_2_1_8_66(v12, v6);
      _os_log_error_impl(&dword_0, log, type, "[WOSync] Unknown entity class %{public}@", v12, 0xCu);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  return [HDSyncEntityIdentifier identifierWithSchema:@"WorkoutHealthPlugin" entity:v9];
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v27 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = a6;
  v16 = v27;
  v14 = v25;
  v15 = location[0];
  v17 = [v24 database];
  v18 = [v16 nextSyncAnchorWithStartAnchor:v14 predicate:0 session:v15 healthDatabase:? error:?];

  v22 = v18;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
  {
    v21 = HKLogWorkouts;
    v20 = 2;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      log = v21;
      type = v20;
      v6 = objc_opt_class();
      v19 = v6;
      __os_log_helper_16_2_2_8_66_8_2(v28, v19, v22);
      _os_log_debug_impl(&dword_0, log, type, "[WOSync] %{public}@ returning next sync anchor: %{public}lld", v28, 0x16u);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
  }

  v8 = v22;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v8;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v92 = a4;
  v91 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v89 = 0;
  objc_storeStrong(&v89, a5);
  v88 = 0;
  objc_storeStrong(&v88, a6);
  v87 = a7;
  if ([location[0] count])
  {
    _HKInitializeLogging();
    v82 = HKLogWorkouts;
    v81 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v80 = v39;
      __os_log_helper_16_2_2_8_66_8_2(v100, v80, [location[0] count]);
      _os_log_impl(&dword_0, v82, v81, "[WOSync] %{public}@ received %{public}lu sync objects.", v100, 0x16u);
      objc_storeStrong(&v80, 0);
    }

    objc_storeStrong(&v82, 0);
    v38 = [NSMutableArray alloc];
    v79 = [v38 initWithCapacity:{objc_msgSend(location[0], "count")}];
    memset(__b, 0, sizeof(__b));
    v36 = location[0];
    v37 = [v36 countByEnumeratingWithState:__b objects:v99 count:16];
    if (v37)
    {
      v33 = *__b[2];
      v34 = 0;
      v35 = v37;
      while (1)
      {
        v32 = v34;
        if (*__b[2] != v33)
        {
          objc_enumerationMutation(v36);
        }

        v78 = *(__b[1] + 8 * v34);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v79 addObject:v78];
        }

        else
        {
          _HKInitializeLogging();
          v76 = HKLogWorkouts;
          v75 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v76;
            v30 = v75;
            v31 = objc_opt_class();
            v27 = v31;
            v74 = v27;
            v28 = objc_opt_class();
            v73 = v28;
            __os_log_helper_16_2_2_8_66_8_66(v98, v27, v73);
            _os_log_impl(&dword_0, v29, v30, "[WOSync] %{public}@ received non-WOPersistence codable %{public}@", v98, 0x16u);
            objc_storeStrong(&v73, 0);
            objc_storeStrong(&v74, 0);
          }

          objc_storeStrong(&v76, 0);
        }

        ++v34;
        if (v32 + 1 >= v35)
        {
          v34 = 0;
          v35 = [v36 countByEnumeratingWithState:__b objects:v99 count:16];
          if (!v35)
          {
            break;
          }
        }
      }
    }

    if ([v79 count])
    {
      _HKInitializeLogging();
      v69 = HKLogWorkouts;
      v68 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v67 = v23;
        __os_log_helper_16_2_2_8_66_8_2(v96, v67, [v79 count]);
        _os_log_impl(&dword_0, v69, v68, "[WOSync] %{public}@ decoded %{public}lu entities from sync.", v96, 0x16u);
        objc_storeStrong(&v67, 0);
      }

      objc_storeStrong(&v69, 0);
      v62 = 0;
      v63 = &v62;
      v64 = 0x20000000;
      v65 = 32;
      v66 = 0;
      v61 = +[NSMutableSet set];
      v22 = v91;
      v19 = [v88 database];
      v20 = v87;
      v51 = _NSConcreteStackBlock;
      v52 = -1073741824;
      v53 = 0;
      v54 = __70__WOWorkoutEntity_receiveSyncObjects_version_syncStore_profile_error___block_invoke;
      v55 = &unk_206A0;
      v56 = v79;
      v57 = v88;
      v59[2] = v91;
      v58 = v89;
      v59[1] = &v62;
      v59[0] = v61;
      v21 = [v22 performWriteTransactionWithHealthDatabase:v19 error:v20 block:&v51];

      v60 = v21;
      [v91 _cleanupDeletedObjectsWithProfile:v88 type:2];
      [v91 _cleanupDeletedObjectsWithProfile:v88 type:3];
      if (v63[3] > 0)
      {
        _HKInitializeLogging();
        v50 = HKLogWorkouts;
        v49 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v50;
          v17 = v49;
          v18 = objc_opt_class();
          v48 = v18;
          __os_log_helper_16_2_3_8_66_8_0_8_66(v95, v48, v63[3], v61);
          _os_log_impl(&dword_0, v16, v17, "[WOSync] %{public}@ syncedEntitesChangeCount: %ld, posting sync notifications: %{public}@", v95, 0x20u);
          objc_storeStrong(&v48, 0);
        }

        objc_storeStrong(&v50, 0);
        memset(v46, 0, sizeof(v46));
        v14 = v61;
        v15 = [v14 countByEnumeratingWithState:v46 objects:v94 count:16];
        if (v15)
        {
          v11 = *v46[2];
          v12 = 0;
          v13 = v15;
          while (1)
          {
            v10 = v12;
            if (*v46[2] != v11)
            {
              objc_enumerationMutation(v14);
            }

            v47 = *(v46[1] + 8 * v12);
            v9 = v47;
            v7 = v47;
            notify_post([v9 cStringUsingEncoding:4]);
            ++v12;
            if (v10 + 1 >= v13)
            {
              v12 = 0;
              v13 = [v14 countByEnumeratingWithState:v46 objects:v94 count:16];
              if (!v13)
              {
                break;
              }
            }
          }
        }
      }

      v93 = (v60 & 1) == 0;
      v83 = 1;
      objc_storeStrong(v59, 0);
      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v57, 0);
      objc_storeStrong(&v56, 0);
      objc_storeStrong(&v61, 0);
      _Block_object_dispose(&v62, 8);
    }

    else
    {
      _HKInitializeLogging();
      v72 = HKLogWorkouts;
      v71 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v72;
        v25 = v71;
        v26 = objc_opt_class();
        v70 = v26;
        __os_log_helper_16_2_1_8_66(v97, v70);
        _os_log_impl(&dword_0, v24, v25, "[WOSync] %{public}@ received zero decodable entities from sync, nothing to do.", v97, 0xCu);
        objc_storeStrong(&v70, 0);
      }

      objc_storeStrong(&v72, 0);
      v93 = 0;
      v83 = 1;
    }

    objc_storeStrong(&v79, 0);
  }

  else
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v41 = type;
      v42 = objc_opt_class();
      v84 = v42;
      __os_log_helper_16_2_1_8_66(v101, v84);
      _os_log_impl(&dword_0, log, v41, "[WOSync] %{public}@ received zero sync objects, nothing to do.", v101, 0xCu);
      objc_storeStrong(&v84, 0);
    }

    objc_storeStrong(&oslog, 0);
    v93 = 0;
    v83 = 1;
  }

  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(location, 0);
  return v93;
}

uint64_t __70__WOWorkoutEntity_receiveSyncObjects_version_syncStore_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v73 = a3;
  v72 = a1;
  v71 = 1;
  memset(__b, 0, sizeof(__b));
  obj = *(a1 + 32);
  v44 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
  if (v44)
  {
    v38 = *__b[2];
    v39 = 0;
    v40 = v44;
    while (1)
    {
      v37 = v39;
      if (*__b[2] != v38)
      {
        objc_enumerationMutation(obj);
      }

      v70 = *(__b[1] + 8 * v39);
      v36 = [v70 uuid];
      v3 = [v70 type];
      v68 = [WOWorkoutEntity _lookup:v36 ofType:v3 profile:*(a1 + 40) transaction:location[0]];

      if (!v68 || (v67 = [WOWorkoutEntity _shouldInsertOrReplaceLocal:v68 withRemote:v70], (v67 & 1) != 0))
      {
        v34 = [*(a1 + 40) syncIdentityManager];
        v65 = [v34 legacySyncIdentity];

        v35 = [v68 syncIdentity];
        if (!v35)
        {
          goto LABEL_21;
        }

        v25 = [HDSyncIdentity alloc];
        v31 = [v68 syncIdentity];
        v30 = [v31 hardwareIdentifier];
        v29 = [v68 syncIdentity];
        v28 = [v29 databaseIdentifier];
        v27 = [v68 syncIdentity];
        v26 = [v27 instanceDiscriminator];
        v64 = [v25 initWithHardwareIdentifier:v30 databaseIdentifier:v28 instanceDiscriminator:?];

        v63 = 0;
        v33 = [*(a1 + 40) syncIdentityManager];
        v62 = v63;
        v32 = [v33 concreteIdentityForIdentity:v64 shouldCreate:1 transaction:location[0] error:&v62];
        objc_storeStrong(&v63, v62);
        v4 = v65;
        v65 = v32;

        if (v65)
        {
          v66 = 0;
        }

        else
        {
          _HKInitializeLogging();
          oslog = HKLogDatabase;
          type = OS_LOG_TYPE_FAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
          {
            log = oslog;
            v24 = type;
            __os_log_helper_16_2_1_8_66(v82, v63);
            _os_log_fault_impl(&dword_0, log, v24, "ConcreteSyncIdentity from received codable is nil %{public}@", v82, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v78 = v73;
          v77 = 0;
          objc_storeStrong(&v77, v63);
          if (v77)
          {
            if (v78)
            {
              v22 = v77;
              v5 = v77;
              *v78 = v22;
            }

            else
            {
              _HKLogDroppedError();
            }

            v79 = 0;
            v76 = 1;
          }

          else
          {
            v79 = 1;
            v76 = 1;
          }

          objc_storeStrong(&v77, 0);
          v75 = 0;
          v66 = 1;
        }

        objc_storeStrong(&v63, 0);
        objc_storeStrong(&v64, 0);
        if (!v66)
        {
LABEL_21:
          v19 = *(a1 + 72);
          v21 = [location[0] unprotectedDatabase];
          v20 = [*(a1 + 72) allProperties];
          v18 = v73;
          v51 = _NSConcreteStackBlock;
          v52 = -1073741824;
          v53 = 0;
          v54 = __70__WOWorkoutEntity_receiveSyncObjects_version_syncStore_profile_error___block_invoke_344;
          v55 = &unk_20678;
          v58[1] = *(a1 + 72);
          v56 = v70;
          v57 = *(a1 + 48);
          v58[0] = v65;
          v59 = [v19 insertOrReplaceEntity:1 database:v21 properties:v20 error:v18 bindingHandler:&v51];

          if (v59)
          {
            ++*(*(*(a1 + 64) + 8) + 24);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = *(a1 + 56);
              [objc_opt_class() persistenceType];
              v13 = NSNotificationNameForSyncedPersistenceType();
              [v12 addObject:?];
            }

            else
            {
              _HKInitializeLogging();
              v47 = HKLogWorkouts;
              v46 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v10 = v47;
                v11 = v46;
                v8 = objc_opt_class();
                v45 = v8;
                __os_log_helper_16_2_1_8_66(v80, v45);
                _os_log_error_impl(&dword_0, v10, v11, "[WOSync] Unexpected entity class: %{public}@", v80, 0xCu);
                objc_storeStrong(&v45, 0);
              }

              objc_storeStrong(&v47, 0);
            }
          }

          else
          {
            _HKInitializeLogging();
            v50 = HKLogWorkouts;
            v49 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v15 = v50;
              v16 = v49;
              v6 = *(a1 + 72);
              v7 = objc_opt_class();
              v14 = v7;
              v48 = v14;
              v17 = [v70 uuid];
              __os_log_helper_16_2_3_8_66_8_64_8_64(v81, v14, v17, *v73);
              _os_log_error_impl(&dword_0, v15, v16, "[WOSync] %{public}@ unable to store entity of uuid %@, error: %@", v81, 0x20u);

              objc_storeStrong(&v48, 0);
            }

            objc_storeStrong(&v50, 0);
            v71 = 0;
          }

          objc_storeStrong(&v59, 0);
          objc_storeStrong(v58, 0);
          objc_storeStrong(&v57, 0);
          objc_storeStrong(&v56, 0);
          v66 = 0;
        }

        objc_storeStrong(&v65, 0);
      }

      else
      {
        v66 = 3;
      }

      objc_storeStrong(&v68, 0);
      if (v66)
      {
        if (v66 != 3)
        {
          break;
        }
      }

      ++v39;
      if (v37 + 1 >= v40)
      {
        v39 = 0;
        v40 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
        if (!v40)
        {
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
LABEL_36:
    v66 = 0;
  }

  if (!v66)
  {
    v75 = v71 & 1;
    v66 = 1;
  }

  objc_storeStrong(location, 0);
  return v75 & 1;
}

void __70__WOWorkoutEntity_receiveSyncObjects_version_syncStore_profile_error___block_invoke_344(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) syncProvenance];
  v6 = [*(a1 + 48) entity];
  [v5 bind:v3 provenance:v4 syncIdentity:objc_msgSend(v6 toBinder:{"persistentID"), a2}];
}

+ (BOOL)_shouldInsertOrReplaceLocal:(id)a3 withRemote:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v20 = [location[0] uuid];
  v19 = [v27 uuid];
  v21 = [v20 isEqual:?];

  if (v21)
  {
    v16 = [location[0] objectModificationDate];
    v15 = [v27 objectModificationDate];
    v17 = [v16 compare:?];

    v25 = v17;
    if (v17 == -1)
    {
      v29 = 1;
      v26 = 1;
    }

    else if (v25 == &dword_0 + 1)
    {
      v13 = [v27 objectModificationDate];
      [v13 timeIntervalSinceReferenceDate];
      v14 = v4;

      v29 = v14 == 0.0;
      v26 = 1;
    }

    else if (v25)
    {
      _HKInitializeLogging();
      v24 = HKLogWorkouts;
      v23 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        log = v24;
        type = v23;
        v5 = objc_opt_class();
        v7 = v5;
        v22 = v7;
        v12 = [location[0] uuid];
        v11 = [location[0] objectModificationDate];
        v10 = [v27 objectModificationDate];
        __os_log_helper_16_2_4_8_66_8_64_8_64_8_64(v30, v7, v12, v11, v10);
        _os_log_error_impl(&dword_0, log, type, "[WOSync] %{public}@ (%@) objectModificationDate comparison failed (local: %@, remote: %@), keep local object", v30, 0x2Au);

        objc_storeStrong(&v22, 0);
      }

      objc_storeStrong(&v24, 0);
      v29 = 0;
      v26 = 1;
    }

    else
    {
      v29 = 1;
      v26 = 1;
    }
  }

  else
  {
    v29 = 1;
    v26 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  return v29;
}

+ (id)_lookup:(id)a3 ofType:(unint64_t)a4 profile:(id)a5 transaction:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = a4;
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v39 = [WOWorkoutEntity classForPersistenceType:v42];
  v32 = 0;
  v33 = &v32;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v31 = 0;
  v15 = [(objc_class *)v39 propertyForUUID];
  v30 = [HDSQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToValue:" equalToValue:?];

  v14 = v39;
  v12 = [(objc_class *)v39 allProperties];
  v13 = v30;
  v11 = [v41 database];
  v29 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = __54__WOWorkoutEntity__lookup_ofType_profile_transaction___block_invoke;
  v26 = &unk_206C8;
  v28[2] = v39;
  v28[3] = v42;
  v27 = v41;
  v28[0] = v40;
  v28[1] = &v32;
  [(objc_class *)v14 enumerateProperties:v12 withPredicate:v13 healthDatabase:v11 error:&v29 enumerationHandler:&v22];
  objc_storeStrong(&v31, v29);

  if (v31)
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v9 = type;
      v10 = objc_opt_class();
      v19 = v10;
      __os_log_helper_16_2_3_8_66_8_64_8_64(v44, v19, location[0], v31);
      _os_log_error_impl(&dword_0, log, v9, "[WOSync] %{public}@ unable to lookup local entity of uuid %@, error: %@", v44, 0x20u);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  v7 = v33[5];
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  _Block_object_dispose(&v32, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);

  return v7;
}

uint64_t __54__WOWorkoutEntity__lookup_ofType_profile_transaction___block_invoke(uint64_t a1, void *a2, id obj, void *a4, void *a5)
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  obja[3] = a4;
  obja[2] = a5;
  obja[1] = a1;
  obja[0] = [*(a1 + 56) persistenceFromRow:a4 type:*(a1 + 64) profile:*(a1 + 32) transaction:*(a1 + 40)];
  if (obja[0])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obja[0]);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(obja, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

+ (void)_cleanupDeletedObjectsWithProfile:(id)a3 type:(unint64_t)a4
{
  v51 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = a4;
  v48 = [WOWorkoutEntity classForPersistenceType:a4];
  v19 = [(objc_class *)v48 propertyForObjectState];
  v47 = [HDSQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToValue:" equalToValue:?];

  +[NSDate timeIntervalSinceReferenceDate];
  v20 = v4;
  [v51 _cleanupTombstoneExpirationIntervalForPersistenceType:a4];
  v46 = v20 - v5;
  v22 = [(objc_class *)v48 propertyForObjectModificationDate];
  v21 = [NSNumber numberWithDouble:v46];
  v45 = [HDSQLiteComparisonPredicate predicateWithProperty:v22 lessThanValue:?];

  v44 = [HDSQLitePredicate compoundPredicateWithPredicate:v45 otherPredicate:v47];
  v43 = 0;
  v23 = v51;
  v24 = [location[0] database];
  v41 = v43;
  v34 = _NSConcreteStackBlock;
  v35 = -1073741824;
  v36 = 0;
  v37 = __58__WOWorkoutEntity__cleanupDeletedObjectsWithProfile_type___block_invoke;
  v38 = &unk_206F0;
  v40[1] = v51;
  v39 = v44;
  v40[0] = location[0];
  v25 = [v23 performWriteTransactionWithHealthDatabase:v24 error:&v41 block:&v34];
  objc_storeStrong(&v43, v41);

  v42 = v25;
  if (v43)
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v16 = type;
      v6 = objc_opt_class();
      v14 = v6;
      v31 = v14;
      v17 = NSStringForWOPersistenceType();
      v30 = v17;
      __os_log_helper_16_2_4_8_66_8_66_8_0_8_64(v53, v14, v30, *&v46, v43);
      _os_log_error_impl(&dword_0, log, v16, "[WOSync] %{public}@ unable to cleanup deleted '%{public}@' objects (tombstones) older than %.2f secs, error: %@", v53, 0x2Au);

      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  _HKInitializeLogging();
  v29 = HKLogWorkouts;
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v29;
    v12 = v28;
    v7 = objc_opt_class();
    v10 = v7;
    v27 = v10;
    v13 = NSStringForWOPersistenceType();
    v8 = v13;
    v26 = v8;
    if (v42)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    __os_log_helper_16_2_4_8_66_8_66_8_0_8_64(v52, v10, v8, *&v46, v9);
    _os_log_impl(&dword_0, v11, v12, "[WOSync] %{public}@ cleanup deleted '%{public}@' objects (tombstones) older than %.2f secs, success: %@", v52, 0x2Au);

    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(v40, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

uint64_t __58__WOWorkoutEntity__cleanupDeletedObjectsWithProfile_type___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) database];
  v7 = [v5 deleteEntitiesWithPredicate:v4 healthDatabase:? error:?];

  objc_storeStrong(location, 0);
  return v7;
}

+ (id)_nonRaceConfigPredicate:(Class)a3
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  if ([a1 isEqual:objc_opt_class()])
  {
    v5 = [(objc_class *)v7 propertyForConfigurationType];
    v6 = [HDSQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:notEqualToValue:" notEqualToValue:?];

    v10 = v6;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v10 = 0;
  }

  v3 = v10;

  return v3;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  v49 = a4;
  v48 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a5);
  v45 = 0;
  objc_storeStrong(&v45, a6);
  v44 = a7;
  v43 = +[NSMutableSet set];
  v38 = 0;
  v39 = &v38;
  v40 = 0x20000000;
  v41 = 32;
  v42 = -1;
  v37 = [location[0] maxEncodedBytesPerCodableChangeForSyncEntityClass:v48] / 3;
  v33[0] = 0;
  v33[1] = v33;
  v34 = 0x20000000;
  v35 = 32;
  v36 = 0;
  v15 = v48;
  v12 = [v46 database];
  v13 = v44;
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = __94__WOWorkoutEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v26 = &unk_20740;
  v29[3] = v48;
  v27 = location[0];
  v30 = v49;
  v29[1] = &v38;
  v28 = v46;
  v29[0] = v43;
  v29[2] = v33;
  v31 = v37;
  v14 = [v15 performReadTransactionWithHealthDatabase:v12 error:v13 block:&v22];

  v32 = v14;
  if (v14)
  {
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v19 = v11;
      __os_log_helper_16_2_2_8_66_8_2(v51, v19, [v43 count]);
      _os_log_impl(&dword_0, oslog, type, "[WOSync] %{public}@ sync generated %{public}lu objects for sync", v51, 0x16u);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&oslog, 0);
    v10 = v45;
    v9 = [v43 allObjects];
    v7 = v39[3];
    v50 = [v10 sendCodableChange:? resultAnchor:? sequence:? done:? error:?] & 1;
  }

  else
  {
    v50 = 0;
  }

  objc_storeStrong(v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v38, 8);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  return v50 & 1;
}

uint64_t __94__WOWorkoutEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[5] = a3;
  v17[4] = a1;
  v8 = *(a1 + 72);
  v11 = [v8 allProperties];
  v10 = [*(a1 + 72) _nonRaceConfigPredicate:*(a1 + 72)];
  v7 = *(a1 + 32);
  v6 = *(*(a1 + 56) + 8);
  v9 = [*(a1 + 40) database];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __94__WOWorkoutEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v13[3] = &unk_20718;
  v17[2] = *(a1 + 72);
  v14 = *(a1 + 40);
  v15 = location[0];
  v16 = *(a1 + 48);
  v17[1] = *(a1 + 64);
  v17[3] = *(a1 + 96);
  v17[0] = *(a1 + 32);
  v12 = [v8 enumerateEntitiesForSyncWithProperties:v11 predicate:v10 session:v7 syncAnchorRange:*(a1 + 80) limit:*(a1 + 88) lastSyncAnchor:0 healthDatabase:v6 + 24 error:v9 block:{a3, v13}];
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);

  objc_storeStrong(location, 0);
  return v12;
}

uint64_t __94__WOWorkoutEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v31 = 0;
  objc_storeStrong(&v31, a3);
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26[2] = a8;
  v26[1] = a1;
  v26[0] = [*(a1 + 72) persistenceFromRow:a4 type:objc_msgSend(*(a1 + 72) profile:"persistenceType") transaction:{*(a1 + 32), *(a1 + 40)}];
  if (v26[0])
  {
    [*(a1 + 48) addObject:v26[0]];
    *(*(*(a1 + 64) + 8) + 24) += [v26[0] encodedByteCount];
    if (*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 80))
    {
      _HKInitializeLogging();
      oslog = HKLogWorkouts;
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_5_8_66_8_2_8_64_8_2_8_2(v35, *(a1 + 72), [*(a1 + 48) count], *(a1 + 56), *(*(*(a1 + 64) + 8) + 24), *(a1 + 80));
        _os_log_impl(&dword_0, oslog, type, "[WOSync] %{public}@ limit syncing to %{public}lu objects for session (%@). accumulatedBytes=%{public}lu, maxBytes=%{public}lu", v35, 0x34u);
      }

      objc_storeStrong(&oslog, 0);
      *v27 = 1;
    }

    v33 = 1;
    v23 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v22 = HKLogWorkouts;
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v11 = v22;
      v12 = v21;
      v8 = *(a1 + 72);
      v9 = objc_opt_class();
      v20 = v9;
      __os_log_helper_16_2_1_8_66(v34, v20);
      _os_log_error_impl(&dword_0, v11, v12, "[WOSync] %{public}@ error creating WOPersistence from row", v34, 0xCu);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
    v33 = 0;
    v23 = 1;
  }

  objc_storeStrong(v26, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  return v33 & 1;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [WOPersistence alloc];
  v5 = [v3 initWithData:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

@end
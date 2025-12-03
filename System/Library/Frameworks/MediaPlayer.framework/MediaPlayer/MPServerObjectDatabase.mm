@interface MPServerObjectDatabase
+ (MPServerObjectDatabase)sharedServerObjectDatabase;
+ (void)_clearOldDatabasePaths;
+ (void)setXPCHostApplicationIdentifier:(id)identifier;
- (BOOL)_createDatabaseSchema;
- (BOOL)importAssetsFromRequest:(id)request error:(id *)error;
- (id)_assetsMatchingIdentifierSet:(id)set query:(id)query;
- (id)_hlsAssetMatchingIdentifierSet:(id)set query:(id)query;
- (id)_initWithDatabaseCreationBlock:(id)block;
- (id)_modelObjectMatchingIdentifierSet:(id)set propertySet:(id)propertySet options:(unint64_t)options error:(id *)error;
- (id)_relatedIdentifierSetsForParentIdentifierSet:(id)set parentVersionHash:(id)hash childKey:(id)key;
- (id)assetsMatchingIdentifierSet:(id)set;
- (id)assetsWithMiniSINFsMatchingIdentifierSet:(id)set;
- (id)hlsAssetMatchingIdentifierSet:(id)set;
- (id)importObjectsFromRequest:(id)request options:(unint64_t)options error:(id *)error;
- (id)modelObjectForResult:(id)result inContext:(id)context error:(id *)error;
- (id)modelObjectMatchingIdentifierSet:(id)set propertySet:(id)propertySet;
- (id)modelObjectMatchingIdentifierSet:(id)set propertySet:(id)propertySet error:(id *)error;
- (id)objectBuildingContextForResults:(id)results propertySet:(id)set;
- (id)payloadDataForIdentifierSet:(id)set outError:(id *)error;
- (id)payloadForRelatedEntityWithIdentifierSet:(id)set;
- (id)relatedIdentifierSetsForParentIdentifierSet:(id)set childKey:(id)key;
- (id)relatedIdentifierSetsForParentIdentifierSet:(id)set parentVersionHash:(id)hash childKey:(id)key;
- (id)updateTokensForResults:(id *)results;
- (uint64_t)_payloadData:(uint64_t)data forIdentifierSet:(void *)set options:(void *)options outError:(void *)error;
- (uint64_t)updateTokensForResults:(uint64_t)results;
- (void)dealloc;
- (void)enumerateAssetsMissingSINFsForHashedPersonID:(id)d usingBlock:(id)block;
- (void)enumerateRelatedTokensForResult:(id)result childKey:(id)key block:(id)block;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)updateIdentifiersForResults:(id)results options:(unint64_t)options;
- (void)updateIdentifiersForResults:(void *)result options:(void *)options;
- (void)updateIdentifiersForResults:options:;
- (void)updateTokensForResults:;
- (void)updateTokensForResults:(id)results;
- (void)updateTokensForResults:(uint64_t)results;
- (void)updateTokensForResults:(void *)results;
@end

@implementation MPServerObjectDatabase

+ (MPServerObjectDatabase)sharedServerObjectDatabase
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MPServerObjectDatabase_sharedServerObjectDatabase__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MPServerObjectDatabase sharedServerObjectDatabase]::onceToken != -1)
  {
    dispatch_once(&+[MPServerObjectDatabase sharedServerObjectDatabase]::onceToken, block);
  }

  v2 = +[MPServerObjectDatabase sharedServerObjectDatabase]::__sharedServerObjectDatabase;

  return v2;
}

void __52__MPServerObjectDatabase_sharedServerObjectDatabase__block_invoke(uint64_t a1)
{
  if ([objc_opt_class() prefersInMemoryDatabase])
  {
    v2 = &__block_literal_global_35598;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__MPServerObjectDatabase_sharedServerObjectDatabase__block_invoke_3;
    aBlock[3] = &__block_descriptor_40_e21___MSVSQLDatabase_8__0l;
    aBlock[4] = *(a1 + 32);
    v2 = _Block_copy(aBlock);
  }

  v3 = [[MPServerObjectDatabase alloc] _initWithDatabaseCreationBlock:v2];
  v4 = +[MPServerObjectDatabase sharedServerObjectDatabase]::__sharedServerObjectDatabase;
  +[MPServerObjectDatabase sharedServerObjectDatabase]::__sharedServerObjectDatabase = v3;
}

id __52__MPServerObjectDatabase_sharedServerObjectDatabase__block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLsForDirectory:14 inDomains:1];
  v4 = [v3 lastObject];

  if (_XPCHostApplicationIdentifier)
  {
    v5 = _XPCHostApplicationIdentifier;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v6 bundleIdentifier];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaPlayer/ServerObjectDatabases/%@-ServerObjectDatabase.sqlpkg", v5];
  v8 = [v4 URLByAppendingPathComponent:v7 isDirectory:1];

  [v2 removeItemAtURL:v8 error:0];
  [*(a1 + 32) _clearOldDatabasePaths];
  v9 = [v8 path];
  [v2 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];

  v10 = [v8 URLByAppendingPathComponent:@"Database" isDirectory:0];
  v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 path];
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "SOD: databasePath: %{public}@", buf, 0xCu);
  }

  v19 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69B1490]) initWithURL:v10 error:&v19];
  v14 = v19;
  v15 = v14;
  if (!v13 || v14)
  {
    v16 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = [v10 path];
      *buf = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_FAULT, "SOD: Unable to create server objects database at path=%{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  return v13;
}

+ (void)_clearOldDatabasePaths
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [defaultManager URLsForDirectory:13 inDomains:1];
  lastObject = [v2 lastObject];

  v4 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [v4 stringWithFormat:@"com.apple.MediaPlayer/ServerObjectDatabases/%@-ServerObjectDatabase.sqlpkg", bundleIdentifier];
  v8 = [lastObject URLByAppendingPathComponent:v7 isDirectory:1];

  [defaultManager removeItemAtURL:v8 error:0];
  v9 = [defaultManager URLsForDirectory:9 inDomains:1];
  lastObject2 = [v9 lastObject];

  v11 = [lastObject2 URLByAppendingPathComponent:@"ServerObjectDatabase.sqlpkg" isDirectory:1];

  [defaultManager removeItemAtURL:v11 error:0];
  uRLByDeletingPathExtension = [v11 URLByDeletingPathExtension];

  [defaultManager removeItemAtURL:uRLByDeletingPathExtension error:0];
  if (_XPCHostApplicationIdentifier)
  {
    v13 = [defaultManager URLsForDirectory:14 inDomains:1];
    lastObject3 = [v13 lastObject];

    v15 = MEMORY[0x1E696AEC0];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v18 = [v15 stringWithFormat:@"com.apple.MediaPlayer/ServerObjectDatabases/%@-ServerObjectDatabase.sqlpkg", bundleIdentifier2];
    v19 = [lastObject3 URLByAppendingPathComponent:v18 isDirectory:1];

    [defaultManager removeItemAtURL:v19 error:0];
  }

  else
  {
    v19 = uRLByDeletingPathExtension;
  }
}

- (BOOL)_createDatabaseSchema
{
  v20 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v17 = 0;
  v3 = [(MSVSQLDatabase *)database transactionWithName:@"schema" error:&v17];
  v4 = v17;
  if (!v4)
  {
    v16 = 0;
    [v3 executeStatementString:@"CREATE TABLE IF NOT EXISTS objects (identifier TEXT NOT NULL error:{person_id TEXT NOT NULL, source INTEGER NOT NULL DEFAULT 0, expiration_date INTEGER NOT NULL DEFAULT 0, type TEXT NOT NULL, payload TEXT, identifier_set TEXT NOT NULL, explicit INTEGER NOT NULL DEFAULT 0, PRIMARY KEY (identifier, person_id))", &v16}];
    v5 = v16;
    if (v5)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "[SOD] _createDatabaseSchema | failed to create objects table [] error=%{public}@", buf, 0xCu);
      }

      commit = 0;
      goto LABEL_18;
    }

    v15 = 0;
    [v3 executeStatementString:@"CREATE TABLE IF NOT EXISTS assets (identifier TEXT NOT NULL error:{hashed_person_id TEXT NOT NULL, flavor TEXT NOT NULL, url TEXT NOT NULL, url_expiration_date INTEGER NOT NULL DEFAULT 0, mini_sinf BLOB, sinfs BLOB, PRIMARY KEY (identifier, hashed_person_id, flavor))", &v15}];
    v7 = v15;
    v14 = 0;
    [v3 executeStatementString:@"CREATE TABLE IF NOT EXISTS hls_assets (identifier TEXT NOT NULL error:{hashed_person_id TEXT NOT NULL, url_expiration_date INTEGER NOT NULL DEFAULT 0, playlist_url TEXT NOT NULL, key_certificate_url TEXT, key_server_url TEXT, key_server_adam_id INTEGER NOT NULL DEFAULT 0, key_server_protocol_type TEXT NOT NULL, is_itunes_store_stream INTEGER NOT NULL, PRIMARY KEY (identifier, hashed_person_id))", &v14}];
    v8 = v14;
    if (v8)
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v8;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[SOD] _createDatabaseSchema | failed to create hls assets table [] error=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = 0;
      [v3 executeStatementString:@"CREATE TABLE IF NOT EXISTS object_relationships (parent_identifier TEXT NOT NULL error:{child_identifier TEXT NOT_NULL, person_id TEXT NOT NULL, suborder INTEGER NOT NULL DEFAULT 0, child_key TEXT NOT NULL, parent_version_hash TEXT, PRIMARY KEY (parent_identifier, person_id, suborder, child_key))", &v13}];
      v10 = v13;
      if (!v10)
      {
        commit = [v3 commit];
        v9 = 0;
        goto LABEL_17;
      }

      v9 = v10;
      v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v9;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "[SOD] _createDatabaseSchema | failed to create object relationships table [] error=%{public}@", buf, 0xCu);
      }
    }

    commit = 0;
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[SOD] _createDatabaseSchema | failed to create transaction [] error=%{public}@", buf, 0xCu);
  }

  commit = 0;
LABEL_19:

  return commit;
}

- (id)modelObjectForResult:(id)result inContext:(id)context error:(id *)error
{
  v105[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  contextCopy = context;
  v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = resultCopy;
    *&buf[12] = 2048;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | begin [] result=%@ context=%p", buf, 0x16u);
  }

  v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v12 = os_signpost_id_generate(v11);

  v13 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "modelObject", &unk_1A2797D62, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MPServerObjectDatabase_modelObjectForResult_inContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v12;
  v16 = _Block_copy(aBlock);
  v17 = [resultCopy tokenForDatabase:self];
  v19 = v18;
  v20 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413570;
    *&buf[4] = resultCopy;
    *&buf[12] = 2048;
    *&buf[14] = contextCopy;
    *&buf[22] = 2048;
    v103 = v17;
    LOWORD(v104) = 1024;
    *(&v104 + 2) = v19;
    HIWORD(v104) = 1024;
    LODWORD(v105[0]) = HIBYTE(v19);
    WORD2(v105[0]) = 1024;
    *(v105 + 6) = BYTE6(v19);
    _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | inspect [token] result=%@ context=%p token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .options={%d}, .occurrenceCount=%d } }", buf, 0x32u);
  }

  if (v17)
  {
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v103 = __Block_byref_object_copy__34964;
    v104 = __Block_byref_object_dispose__34965;
    v105[0] = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MPServerObjectDatabase_modelObjectForResult_inContext_error___block_invoke_213;
    block[3] = &unk_1E767C338;
    block[8] = v17;
    block[9] = v19;
    block[4] = self;
    block[5] = &v83;
    block[6] = buf;
    block[7] = v12;
    block[10] = a2;
    dispatch_sync(accessQueue, block);
    if (!_NSIsNSDictionary() || ![*(*&buf[8] + 40) count])
    {
      v33 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *v92 = 138412546;
        v93 = resultCopy;
        v94 = 2048;
        v95 = contextCopy;
        _os_log_impl(&dword_1A238D000, v33, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | skipping [no payload] result=%@ context=%p", v92, 0x16u);
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPObjectDatabaseError" code:2 debugDescription:{@"Missing payload for rowid: %lld", v17}];
        *error = v34 = 0;
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_78;
    }

    v22 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    v23 = v22;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v92 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v12, "modelObject:build", &unk_1A2797D62, v92, 2u);
    }

    inputIdentifiers = [resultCopy inputIdentifiers];
    personalizedStore = [inputIdentifiers personalizedStore];
    personID = [personalizedStore personID];

    if (contextCopy)
    {
      v26 = contextCopy[5];
    }

    else
    {
      v26 = 0;
    }

    v80 = v26;
    v27 = v84[3];
    if (v27 == 1)
    {
      v77 = [MPServerObjectDatabaseMediaKitImportRequest _entityTypeForObject:*(*&buf[8] + 40)];
      genericObjectRelationshipKey = [v77 genericObjectRelationshipKey];
      relationships = [v80 relationships];
      v39 = [relationships objectForKeyedSubscript:genericObjectRelationshipKey];
      v40 = v39 == 0;

      if (v40)
      {
        if (error)
        {
          v58 = MEMORY[0x1E696ABC0];
          v100[0] = @"MissingPropertySetMappingEntityType";
          serverEntityType = [v77 serverEntityType];
          v60 = serverEntityType;
          v61 = @"<null>";
          if (serverEntityType)
          {
            v62 = serverEntityType;
          }

          else
          {
            v62 = @"<null>";
          }

          v100[1] = @"MissingPropertySetMappingRelationshipKey";
          v101[0] = v62;
          if (genericObjectRelationshipKey)
          {
            v61 = genericObjectRelationshipKey;
          }

          v101[1] = v61;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:2];
          *error = [v58 msv_errorWithDomain:@"MPObjectDatabaseError" code:1 userInfo:v63 debugDescription:@"Matching object is not supported"];
        }

        v64 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v76 = v64;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          *v92 = 138413058;
          v93 = resultCopy;
          v94 = 2048;
          v95 = contextCopy;
          v96 = 2112;
          v97 = v77;
          v98 = 2112;
          v99 = genericObjectRelationshipKey;
          _os_log_impl(&dword_1A238D000, v64, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | skipping [unsupported type] result=%@ context=%p entityType=%@ key=%@", v92, 0x2Au);
        }

        v46 = 0;
      }

      else
      {
        v76 = objc_alloc_init(MPMediaKitEntityTranslatorContext);
        [(MPMediaKitEntityTranslatorContext *)v76 setPersonID:personID];
        [(MPMediaKitEntityTranslatorContext *)v76 setRelationshipPayloadProvider:self];
        v75 = [(MPBaseEntityTranslator *)MPMediaKitEntityTranslator translatorForMPModelClass:objc_opt_class()];
        v90 = genericObjectRelationshipKey;
        relationships2 = [v80 relationships];
        v42 = [relationships2 objectForKeyedSubscript:genericObjectRelationshipKey];
        v91 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v44 = [MPPropertySet propertySetWithRelationships:v43];

        v45 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *v92 = 138413058;
          v93 = resultCopy;
          v94 = 2048;
          v95 = contextCopy;
          v96 = 2112;
          v97 = v77;
          v98 = 2112;
          v99 = genericObjectRelationshipKey;
          _os_log_impl(&dword_1A238D000, v45, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | building [mediakit] result=%@ context=%p entityType=%@ key=%@", v92, 0x2Au);
        }

        v46 = [v75 objectForPropertySet:v44 payload:*(*&buf[8] + 40) context:v76];
        identifiers = [v46 identifiers];
        [(_MPServerObjectDatabaseProgressiveContext *)contextCopy _createdObjectForIdentifiers:identifiers];
      }
    }

    else
    {
      if (v27 != 2)
      {
        v48 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = v84[3];
          *v92 = 138412802;
          v93 = resultCopy;
          v94 = 2048;
          v95 = contextCopy;
          v96 = 1024;
          LODWORD(v97) = v49;
          _os_log_impl(&dword_1A238D000, v48, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | skipping [unknown source] result=%@ context=%p source=%d", v92, 0x1Cu);
        }

        v50 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v46 = v50;
        if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v50))
        {
          *v92 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v46, OS_SIGNPOST_INTERVAL_END, v12, "modelObject:build", "unknown source", v92, 2u);
        }

        goto LABEL_76;
      }

      v77 = [MPServerObjectDatabaseStorePlatformImportRequest _entityTypeForObject:*(*&buf[8] + 40)];
      genericObjectRelationshipKey = [v77 genericObjectRelationshipKey];
      relationships3 = [v80 relationships];
      v29 = [relationships3 objectForKeyedSubscript:genericObjectRelationshipKey];
      v30 = v29 == 0;

      if (v30)
      {
        if (error)
        {
          v51 = MEMORY[0x1E696ABC0];
          v88[0] = @"MissingPropertySetMappingEntityType";
          serverEntityType2 = [v77 serverEntityType];
          v53 = serverEntityType2;
          v54 = @"<null>";
          if (serverEntityType2)
          {
            v55 = serverEntityType2;
          }

          else
          {
            v55 = @"<null>";
          }

          v88[1] = @"MissingPropertySetMappingRelationshipKey";
          v89[0] = v55;
          if (genericObjectRelationshipKey)
          {
            v54 = genericObjectRelationshipKey;
          }

          v89[1] = v54;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
          *error = [v51 msv_errorWithDomain:@"MPObjectDatabaseError" code:1 userInfo:v56 debugDescription:@"Matching object is not supported"];
        }

        v57 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *v92 = 138413058;
          v93 = resultCopy;
          v94 = 2048;
          v95 = contextCopy;
          v96 = 2112;
          v97 = v77;
          v98 = 2112;
          v99 = genericObjectRelationshipKey;
          _os_log_impl(&dword_1A238D000, v57, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | skipping [unsupported type] result=%@ context=%p entityType=%@ key=%@", v92, 0x2Au);
        }

        v34 = 0;
        v46 = v77;
        goto LABEL_77;
      }

      v31 = [MPStoreItemMetadata alloc];
      v76 = [(MPStoreItemMetadata *)v31 initWithStorePlatformDictionary:*(*&buf[8] + 40)];
      v74 = [(MPStoreModelObjectBuilder *)[MPStoreModelGenericObjectBuilder alloc] initWithRequestedPropertySet:v80];
      [(MPStoreModelGenericObjectBuilder *)v74 setPreventStoreItemMetadataCaching:1];
      if ([personID longLongValue])
      {
        v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(personID, "longLongValue")}];
      }

      else
      {
        v32 = 0;
      }

      v65 = [MEMORY[0x1E69E4680] specificAccountWithDSID:v32];
      v66 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *v92 = 138413058;
        v93 = resultCopy;
        v94 = 2048;
        v95 = contextCopy;
        v96 = 2112;
        v97 = v77;
        v98 = 2112;
        v99 = genericObjectRelationshipKey;
        _os_log_impl(&dword_1A238D000, v66, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | building [store platform] result=%@ context=%p entityType=%@ key=%@", v92, 0x2Au);
      }

      v46 = [(MPStoreModelObjectBuilder *)v74 modelObjectWithStoreItemMetadata:v76 userIdentity:v65];
      identifiers2 = [v46 identifiers];
      [(_MPServerObjectDatabaseProgressiveContext *)contextCopy _createdObjectForIdentifiers:identifiers2];
    }

    v68 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    v69 = v68;
    if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v68))
    {
      *v92 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v69, OS_SIGNPOST_INTERVAL_END, v12, "modelObject:build", &unk_1A2797D62, v92, 2u);
    }

    if (v46)
    {
      if ((v19 & 0x400000000000000) != 0)
      {
        v70 = [MPModelPlaylistEntry _playlistEntryFromModel:v46 source:@"SOD::ContainerUpgrade" occurrenceCount:BYTE6(v19)];

        v46 = v70;
      }

      v34 = [MPModelGenericObject genericObjectWithModelObject:v46];
      v71 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *v92 = 138412802;
        v93 = resultCopy;
        v94 = 2048;
        v95 = contextCopy;
        v96 = 2112;
        v97 = v34;
        _os_log_impl(&dword_1A238D000, v71, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | done [] result=%@ context=%p object=%@", v92, 0x20u);
      }

      goto LABEL_77;
    }

    v46 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v72 = v84[3];
      *v92 = 138412802;
      v93 = resultCopy;
      v94 = 2048;
      v95 = contextCopy;
      v96 = 1024;
      LODWORD(v97) = v72;
      _os_log_impl(&dword_1A238D000, v46, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | skipping [no source object] result=%@ context=%p source=%d", v92, 0x1Cu);
    }

LABEL_76:
    v34 = 0;
LABEL_77:

LABEL_78:
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v83, 8);
    goto LABEL_79;
  }

  v35 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = resultCopy;
    *&buf[12] = 2048;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_1A238D000, v35, OS_LOG_TYPE_DEBUG, "[SOD] modelObjectForResult:inContext: | skipping [no token] result=%@ context=%p", buf, 0x16u);
  }

  v36 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v37 = v36;
  if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v37, OS_SIGNPOST_INTERVAL_END, v12, "modelObject", "skipping", buf, 2u);
  }

  v34 = 0;
LABEL_79:
  v16[2](v16);

  return v34;
}

void __63__MPServerObjectDatabase_modelObjectForResult_inContext_error___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "modelObject", &unk_1A2797D62, v5, 2u);
  }
}

void __63__MPServerObjectDatabase_modelObjectForResult_inContext_error___block_invoke_213(void *a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v4 = a1[7];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "modelObject:query", &unk_1A2797D62, buf, 2u);
  }

  [*(a1[4] + 32) bindInt64Value:a1[8] toParameterNamed:@"@rowid"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MPServerObjectDatabase_modelObjectForResult_inContext_error___block_invoke_217;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = a1[4];
  v5 = _Block_copy(aBlock);
  v6 = [*(a1[4] + 48) resultsForStatement:*(a1[4] + 32)];
  v7 = [v6 nextObject];
  *(*(a1[5] + 8) + 24) = [v7 int64ValueAtColumnIndex:0];
  v16 = 0;
  v8 = [v7 jsonValueAtColumnIndex:1 error:&v16];
  v9 = v16;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a1[10] object:a1[4] file:@"MPServerObjectDatabase.mm" lineNumber:1218 description:{@"SOD: failed parsing json: %@", v9}];
  }

  v12 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v13 = v12;
  v14 = a1[7];
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v13, OS_SIGNPOST_INTERVAL_END, v14, "modelObject:query", &unk_1A2797D62, buf, 2u);
  }

  v5[2](v5);
}

- (id)objectBuildingContextForResults:(id)results propertySet:(id)set
{
  v14 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v13.receiver) = 138412290;
    *(&v13.receiver + 4) = setCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "[SOD] objectBuildingContextForResults:propertySet: | begin [] propertySet=%@", &v13, 0xCu);
  }

  v6 = [_MPServerObjectDatabaseProgressiveContext alloc];
  v7 = setCopy;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = _MPServerObjectDatabaseProgressiveContext;
    v6 = [(MPServerObjectDatabase *)&v13 init];
    if (v6)
    {
      v8 = [v7 copy];
      propertySet = v6->_propertySet;
      v6->_propertySet = v8;

      v10 = +[MPServerObjectDatabase sharedServerObjectDatabase];
      [v10 registerObserver:v6];
    }
  }

  v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v13.receiver) = 134217984;
    *(&v13.receiver + 4) = v6;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEBUG, "[SOD] objectBuildingContextForResults:propertySet: | done [] context=%p", &v13, 0xCu);
  }

  return v6;
}

- (void)enumerateRelatedTokensForResult:(id)result childKey:(id)key block:(id)block
{
  v49 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  keyCopy = key;
  blockCopy = block;
  v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = resultCopy;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | begin [] result=%@", buf, 0xCu);
  }

  v12 = keyCopy;
  v13 = @"MPModelChildPlaylistEntries";
  v14 = v12;
  v15 = @"MPModelChildPlaylistEntries";
  if (v14 == @"MPModelChildPlaylistEntries")
  {
    v30 = 1;
  }

  else
  {
    v30 = [(__CFString *)v14 isEqual:@"MPModelChildPlaylistEntries"];
  }

  v16 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v17 = os_signpost_id_generate(v16);

  v18 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138543362;
    *&buf[4] = v14;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "relatedTokens", "childKey=%{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__MPServerObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v17;
  v20 = _Block_copy(aBlock);
  v21 = [resultCopy tokenForDatabase:self];
  v23 = v22;
  v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = resultCopy;
    *&buf[12] = 2048;
    *&buf[14] = v21;
    *&buf[22] = 1024;
    *v46 = v23;
    *&v46[4] = 1024;
    *&v46[6] = HIBYTE(v23);
    v47 = 1024;
    v48 = BYTE6(v23);
    _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | inspect [token] result=%@ token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .options={%d}, .occurrenceCount=%d } }", buf, 0x28u);
  }

  if (v21)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *v46 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MPServerObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke_207;
    block[3] = &unk_1E767C310;
    v36 = v17;
    v37 = v21;
    block[4] = self;
    v38 = v23;
    v32 = v14;
    v26 = resultCopy;
    v33 = v26;
    v39 = v30;
    v34 = blockCopy;
    v35 = buf;
    dispatch_sync(accessQueue, block);
    v27 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(*&buf[8] + 24);
      *v41 = 138412546;
      v42 = v26;
      v43 = 2048;
      v44 = v28;
      _os_log_impl(&dword_1A238D000, v27, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | done [] result=%@ count=%zu", v41, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = resultCopy;
      _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | skipping result [no token] result=%@", buf, 0xCu);
    }
  }

  v20[2](v20);
}

void __73__MPServerObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "relatedTokens", &unk_1A2797D62, v5, 2u);
  }
}

void __73__MPServerObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke_207(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v39 = a1;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "relatedTokens:query", &unk_1A2797D62, buf, 2u);
  }

  [*(*(a1 + 32) + 24) bindInt64Value:*(a1 + 80) toParameterNamed:@"@id"];
  [*(*(a1 + 32) + 24) _bindNoCopyStringValue:*(a1 + 40) toParameterNamed:@"@childKey"];
  v36 = [*(a1 + 48) inputIdentifiers];
  v5 = [v36 versionHash];
  if ([v5 length])
  {
    v35 = [v36 versionHash];

    if (v35)
    {
      v6 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 48);
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | matching parent [version hash] result=%@ versionHash=%@", buf, 0x16u);
      }

      v8 = a1;
      [*(*(a1 + 32) + 24) _bindNoCopyStringValue:v35 toParameterNamed:@"@parentVersionHash"];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 48);
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | matching any parent [no version hash] result=%@", buf, 0xCu);
  }

  v8 = a1;
  v35 = 0;
  [*(*(a1 + 32) + 24) bindNullValueToParameterNamed:@"@parentVersionHash"];
LABEL_13:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__MPServerObjectDatabase_enumerateRelatedTokensForResult_childKey_block___block_invoke_211;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = *(v8 + 32);
  v34 = _Block_copy(aBlock);
  v11 = [*(*(v8 + 32) + 48) resultsForStatement:*(*(v8 + 32) + 24)];
  memset(buf, 0, sizeof(buf));
  v57 = 1065353216;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  v13 = a1;
  if (v12)
  {
    v14 = v12;
    v38 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v40 = [v16 int64ValueAtColumnIndex:0];
        if ([v16 BOOLValueAtColumnIndex:1])
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        if (v13[12])
        {
          *v46 = &v40;
          v18 = std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(buf, v40)[3];
          *v46 = &v40;
          v19 = std::__hash_table<std::__hash_value_type<long long,unsigned long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(buf, v40);
          v17 |= 4u;
          ++v19[3];
          v20 = v18 << 48;
        }

        else
        {
          v20 = 0;
        }

        v21 = v40;
        v22 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = v13[6];
          *v46 = 138413314;
          *&v46[4] = v23;
          v47 = 2048;
          v48 = v21;
          v49 = 1024;
          v50 = 1;
          v51 = 1024;
          v52 = v17;
          v53 = 1024;
          v54 = HIWORD(v20);
          _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEBUG, "[SOD] enumerateRelatedTokensForResult:childKey: | found result [] result=%@ token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .options={%d}, .occurrenceCount=%d } }", v46, 0x28u);
        }

        v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v25 = os_signpost_id_generate(v24);

        v26 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v27 = v26;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "relatedTokens:callout", &unk_1A2797D62, v46, 2u);
        }

        (*(v39[7] + 16))();
        v28 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v29 = v28;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v29, OS_SIGNPOST_INTERVAL_END, v25, "relatedTokens:callout", &unk_1A2797D62, v46, 2u);
        }

        v13 = v39;
        ++*(*(v39[8] + 8) + 24);
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v14);
  }

  v30 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v31 = v30;
  v32 = v39[9];
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    v33 = *(*(v39[8] + 8) + 24);
    *v46 = 134217984;
    *&v46[4] = v33;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v31, OS_SIGNPOST_INTERVAL_END, v32, "relatedTokens:query", "count=%zu", v46, 0xCu);
  }

  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(buf);
  v34[2](v34);
}

- (void)updateIdentifiersForResults:(id)results options:(unint64_t)options
{
  optionsCopy = options;
  v53 = a2;
  v91 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x4812000000;
  v72 = __Block_byref_object_copy__193;
  v73 = __Block_byref_object_dispose__194;
  v74 = "";
  v76 = 0;
  v77 = 0;
  __p = 0;
  v58 = optionsCopy & 1;
  v6 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v58;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | begin [] restricted=%{BOOL}u", buf, 8u);
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  spid = os_signpost_id_generate(v7);

  v8 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v9 = v8;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67109120;
    *&buf[4] = v58;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateIdentifiers", "restricted=%{BOOL}u", buf, 8u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = spid;
  v54 = _Block_copy(aBlock);
  v67 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v10 = resultsCopy;
  v11 = [v10 countByEnumeratingWithState:&v64 objects:v90 count:16];
  if (v11)
  {
    v59 = *v65;
    v56 = v10;
    do
    {
      v12 = 0;
      v60 = v11;
      do
      {
        if (*v65 != v59)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v64 + 1) + 8 * v12);
        v14 = [v13 tokenForDatabase:{self, v53}];
        v16 = v15;
        v17 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219010;
          *&buf[4] = v14;
          v82 = 1024;
          v83 = v16;
          v84 = 1024;
          v85 = HIBYTE(v16);
          v86 = 1024;
          v87 = BYTE6(v16);
          v88 = 2112;
          v89 = v13;
          _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | inspect [token] token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .options={%d}, .occurrenceCount=%d } } result=%@", buf, 0x28u);
        }

        if (v14)
        {
          v18 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
          if (v58 && (v16 & 0x200000000000000) != 0)
          {
            if (v19)
            {
              *buf = 138412290;
              *&buf[4] = v13;
              _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | clearing result [restricted] result=%@", buf, 0xCu);
            }

            [v13 setIdentifiers:0 forDatabase:self];
            v20 = v60;
          }

          else
          {
            if (v19)
            {
              *buf = 138412290;
              *&buf[4] = v13;
              _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | setup node [] result=%@", buf, 0xCu);
            }

            v22 = v13;
            v23 = v22;
            v24 = v79;
            if (v79 >= v80)
            {
              v26 = 0xAAAAAAAAAAAAAAABLL * (v79 - v78) + 1;
              if (v26 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v80 - v78) >> 3) > v26)
              {
                v26 = 0x5555555555555556 * ((v80 - v78) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v80 - v78) >> 3) >= 0x555555555555555)
              {
                v27 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v27 = v26;
              }

              if (v27)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>>(v27);
              }

              v28 = (8 * (v79 - v78));
              v57 = v23;
              *v28 = v23;
              v28[1] = v14;
              v28[2] = v16;
              v29 = v78;
              v30 = v79;
              v31 = (v28 + v78 - v79);
              if (v78 != v79)
              {
                v32 = v78;
                v33 = v28 + v78 - v79;
                do
                {
                  *v33 = *v32;
                  *(v33 + 8) = *(v32 + 1);
                  v32 += 3;
                  v33 += 24;
                }

                while (v32 != v30);
                v10 = v56;
                do
                {

                  v29 += 3;
                }

                while (v29 != v30);
                v29 = v78;
              }

              v25 = (v28 + 3);
              v78 = v31;
              v79 = v25;
              v80 = 0;
              if (v29)
              {
                operator delete(v29);
              }

              v23 = v57;
            }

            else
            {
              *v24 = v22;
              v24[1] = v14;
              v24[2] = v16;
              v25 = v24 + 3;
            }

            v79 = v25;

            v34 = v70;
            v36 = v70[7];
            v35 = v70[8];
            if (v36 >= v35)
            {
              v38 = v70[6];
              v39 = v36 - v38;
              v40 = (v36 - v38) >> 3;
              v41 = v40 + 1;
              if ((v40 + 1) >> 61)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v42 = v35 - v38;
              if (v42 >> 2 > v41)
              {
                v41 = v42 >> 2;
              }

              if (v42 >= 0x7FFFFFFFFFFFFFF8)
              {
                v43 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v43 = v41;
              }

              v20 = v60;
              if (v43)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v43);
              }

              v44 = (v36 - v38) >> 3;
              v45 = (8 * v40);
              v46 = (8 * v40 - 8 * v44);
              *v45 = v14;
              v37 = (v45 + 1);
              memcpy(v46, v38, v39);
              v47 = v34[6];
              v34[6] = v46;
              v34[7] = v37;
              v34[8] = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v36 = v14;
              v37 = (v36 + 1);
              v20 = v60;
            }

            v34[7] = v37;
          }
        }

        else
        {
          v21 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | skipping result [no token] result=%@", buf, 0xCu);
          }

          v20 = v60;
        }

        ++v12;
      }

      while (v12 != v20);
      v11 = [v10 countByEnumeratingWithState:&v64 objects:v90 count:16];
    }

    while (v11);
  }

  v48 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v49 = v48;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v48))
  {
    v50 = v70[7] - v70[6];
    *buf = 134217984;
    *&buf[4] = v50;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v49, OS_SIGNPOST_EVENT, spid, "updateIdentifiers", "count=%zu", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke_196;
  block[3] = &unk_1F1497D48;
  block[4] = self;
  block[5] = &v69;
  block[6] = spid;
  std::vector<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>::vector[abi:ne200100](v63, &v78);
  v63[3] = v53;
  dispatch_sync(accessQueue, block);
  v52 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v52, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | done []", buf, 2u);
  }

  *buf = v63;
  std::vector<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>::__destroy_vector::operator()[abi:ne200100](buf);
  v54[2](v54);

  _Block_object_dispose(&v69, 8);
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  v69 = &v78;
  std::vector<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>::__destroy_vector::operator()[abi:ne200100](&v69);
}

void __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "updateIdentifiers", &unk_1A2797D62, v5, 2u);
  }
}

void __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke_196(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "updateIdentifiers:query", &unk_1A2797D62, buf, 2u);
  }

  [*(a1[4] + 16) _bindInt64Array:? length:? toParameterNamed:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke_197;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = a1[4];
  v40 = _Block_copy(aBlock);
  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | running query []", buf, 2u);
  }

  v41 = [*(a1[4] + 48) resultsForStatement:*(a1[4] + 16)];
  v43 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, 0xAAAAAAAAAAAAAAABLL * ((a1[8] - a1[7]) >> 3)}];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v41;
  v6 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v6)
  {
    v7 = *v47;
    do
    {
      v8 = 0;
      do
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * v8);
        v45 = 0;
        v10 = [v9 jsonValueAtColumnIndex:0 error:&v45];
        v11 = v45;
        if (v11)
        {
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          [v23 handleFailureInMethod:a1[10] object:a1[4] file:@"MPServerObjectDatabase.mm" lineNumber:1072 description:{@"Failed decoding JSON from SOD: %@", v11}];
        }

        v12 = [MPIdentifierSet alloc];
        v13 = [(MPIdentifierSet *)v12 msv_initWithJSONValue:v10];

        v14 = [v9 int64ValueAtColumnIndex:1];
        v15 = v14;
        v16 = a1[7];
        if (0xAAAAAAAAAAAAAAABLL * ((a1[8] - v16) >> 3) <= v14)
        {
          std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
        }

        v17 = v16 + 24 * v14;
        v18 = *v17;
        LODWORD(v17) = *(v17 + 20);
        v19 = v18;
        if ((v17 & 0x4000000) != 0)
        {
          v20 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v52 = v19;
            v53 = 2112;
            v54 = v13;
            _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | upgrading identifiers [playlist entry] result=%@ identifiers=%@", buf, 0x16u);
          }

          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke_204;
          v44[3] = &unk_1E7680B28;
          v44[4] = v19;
          v21 = [v13 copyWithSource:@"SOD::PlaylistEntry" block:v44];

          v13 = v21;
        }

        v22 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v52 = v19;
          v53 = 2112;
          v54 = v13;
          _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | found identifiers [] result=%@ identifiers=%@", buf, 0x16u);
        }

        [v19 setIdentifiers:v13 forDatabase:a1[4]];
        [v43 removeIndex:v15];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v6);
  }

  v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v25 = v24;
  v26 = a1[6];
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v25, OS_SIGNPOST_INTERVAL_END, v26, "updateIdentifiers:query", &unk_1A2797D62, buf, 2u);
  }

  if ([v43 count])
  {
    v27 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    v28 = v27;
    v29 = a1[6];
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v30 = [v43 count];
      *buf = 134217984;
      v52 = v30;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "updateIdentifiers:clear", "missingCount=%lld", buf, 0xCu);
    }

    v31 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v43 count];
      *buf = 134217984;
      v52 = v32;
      _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEBUG, "[SOD] updateIdentifiersForResults: | clearing result tokens [not found] count=%lld", buf, 0xCu);
    }

    for (i = [v43 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v43, "indexGreaterThanIndex:", i))
    {
      v34 = a1[7];
      if (0xAAAAAAAAAAAAAAABLL * ((a1[8] - v34) >> 3) <= i)
      {
        std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
      }

      v35 = *(v34 + 24 * i);
      v36 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v52 = v35;
        _os_log_impl(&dword_1A238D000, v36, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | clearing result [not found] result=%@", buf, 0xCu);
      }

      [v35 setIdentifiers:0 forDatabase:a1[4]];
    }

    v37 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    v38 = v37;
    v39 = a1[6];
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A238D000, v38, OS_SIGNPOST_INTERVAL_END, v39, "updateIdentifiers:clear", &unk_1A2797D62, buf, 2u);
    }
  }

  v40[2](v40);
}

- (void)updateIdentifiersForResults:(void *)result options:(void *)options
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = options[1];
  if (v2 != *options)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *options) >> 3);
    if (v3 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<-[MPServerObjectDatabase updateIdentifiersForResults:options:]::Node>>(v3);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

- (void)updateIdentifiersForResults:options:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void __62__MPServerObjectDatabase_updateIdentifiersForResults_options___block_invoke_204(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 modelKind];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [MPModelPlaylistEntry kindWithKinds:v5];
  [v3 setModelKind:v6];

  v7 = [*(a1 + 32) inputIdentifiers];
  v8 = [v7 containerUniqueID];
  [v3 setContainerUniqueID:v8];
}

- (void)updateTokensForResults:(id)results
{
  v112 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v3 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | begin []", buf, 2u);
  }

  memset(v100, 0, sizeof(v100));
  v101 = 1065353216;
  v73 = +[MPModelPlaylistEntryKind identityKind];
  v4 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  spid = os_signpost_id_generate(v4);

  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v6 = v5;
  v69 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateTokens", &unk_1A2797D62, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__MPServerObjectDatabase_updateTokensForResults___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = spid;
  v70 = _Block_copy(aBlock);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = resultsCopy;
  v7 = [obj countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v7)
  {
    v74 = 0;
    v75 = 0;
    v78 = *v96;
    while (1)
    {
      v8 = 0;
      v80 = v7;
      do
      {
        if (*v96 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v95 + 1) + 8 * v8);
        v10 = [v9 tokenForDatabase:{self, v69}];
        v12 = v11;
        v82 = v8;
        v13 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219010;
          *&buf[4] = v10;
          *&buf[12] = 1024;
          *&buf[14] = v12;
          *&buf[18] = 1024;
          *&buf[20] = HIBYTE(v12);
          LOWORD(v110) = 1024;
          *(&v110 + 2) = BYTE6(v12);
          HIWORD(v110) = 2112;
          v111 = v9;
          _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | inspect [token] token={ .tokenID=%lld, .tokenRevision=%d, .databaseStorage={ .options={%d}, .occurrenceCount=%d } } result=%@", buf, 0x28u);
        }

        if (!v10)
        {
          inputIdentifiers = [v9 inputIdentifiers];
          v16 = +[MPIdentifierSet emptyIdentifierSet];
          v81 = inputIdentifiers;
          v17 = inputIdentifiers == v16;

          if (v17)
          {
            v31 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v9;
              _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | skipping result [empty identifiers] result=%@", buf, 0xCu);
            }
          }

          else
          {
            personalizedStore = [inputIdentifiers personalizedStore];
            personID = [personalizedStore personID];

            if ([personID length])
            {
              v19 = [inputIdentifiers prioritizedStoreStringIdentifiersForPersonID:personID];
              if ([v19 count])
              {
                v94 = [personID hash];
                v20 = std::unordered_map<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>::operator[](v100, &v94);
                objc_storeStrong(v20 + 4, personID);
                v21 = [v19 count];
                v22 = std::unordered_map<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>::operator[](v100, &v94);
                v22[3] += v21;
                v89 = v9;
                v91 = 0;
                v92 = 0;
                v90 = 0;
                modelKind = [inputIdentifiers modelKind];
                identityKind = [modelKind identityKind];
                v25 = v73;
                v26 = identityKind;
                v27 = v25;
                v28 = v27;
                if (v26 == v27)
                {
                }

                else
                {
                  v29 = [v26 isEqual:v27];

                  if ((v29 & 1) == 0)
                  {
                    containerUniqueID = [inputIdentifiers containerUniqueID];
                    v93 = containerUniqueID != 0;

                    goto LABEL_31;
                  }
                }

                v93 = 1;
LABEL_31:

                v88 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v19 = v19;
                v33 = [v19 countByEnumeratingWithState:&v85 objects:v107 count:16];
                if (v33)
                {
                  v34 = *v86;
                  do
                  {
                    for (i = 0; i != v33; ++i)
                    {
                      if (*v86 != v34)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v36 = *(*(&v85 + 1) + 8 * i);
                      v37 = v91;
                      if (v91 >= v92)
                      {
                        v39 = v91 - v90;
                        if ((v39 + 1) >> 61)
                        {
                          std::vector<std::string>::__throw_length_error[abi:ne200100]();
                        }

                        v40 = (v92 - v90) >> 2;
                        if (v40 <= v39 + 1)
                        {
                          v40 = v39 + 1;
                        }

                        if (v92 - v90 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v41 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v41 = v40;
                        }

                        if (v41)
                        {
                          std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>>(v41);
                        }

                        v42 = (8 * v39);
                        *v42 = v36;
                        v38 = 8 * v39 + 8;
                        v43 = v90;
                        v44 = v91;
                        v45 = (v42 + v90 - v91);
                        if (v91 != v90)
                        {
                          v46 = v90;
                          v47 = v45;
                          do
                          {
                            v48 = *v46;
                            *v46++ = 0;
                            *v47++ = v48;
                          }

                          while (v46 != v44);
                          do
                          {
                          }

                          while (v43 != v44);
                          v43 = v90;
                        }

                        v90 = v45;
                        v91 = v38;
                        v92 = 0;
                        if (v43)
                        {
                          operator delete(v43);
                        }
                      }

                      else
                      {
                        *v37 = v36;
                        v38 = (v37 + 1);
                      }

                      v91 = v38;
                    }

                    v33 = [v19 countByEnumeratingWithState:&v85 objects:v107 count:16];
                  }

                  while (v33);
                }

                v49 = std::unordered_map<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>::operator[](v100, &v94);
                v50 = v49;
                v52 = v49[1];
                v51 = v49[2];
                if (v52 >= v51)
                {
                  v54 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - *v49) >> 3);
                  v55 = v54 + 1;
                  if (v54 + 1 > 0x666666666666666)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v56 = 0xCCCCCCCCCCCCCCCDLL * ((v51 - *v49) >> 3);
                  if (2 * v56 > v55)
                  {
                    v55 = 2 * v56;
                  }

                  if (v56 >= 0x333333333333333)
                  {
                    v57 = 0x666666666666666;
                  }

                  else
                  {
                    v57 = v55;
                  }

                  v111 = v50;
                  if (v57)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>>(v57);
                  }

                  *buf = 0;
                  *&buf[8] = 40 * v54;
                  *&buf[16] = 40 * v54;
                  v110 = 0;
                  std::allocator_traits<std::allocator<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>>::construct[abi:ne200100]<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode,-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode const&,void,0>(40 * v54, &v89);
                  *&buf[16] += 40;
                  v59 = *v50;
                  v58 = v50[1];
                  v102[0] = v50;
                  v102[1] = &v104;
                  v102[2] = &v105;
                  v60 = v59;
                  v61 = (*&buf[8] + v59 - v58);
                  v105 = v61;
                  v104 = v61;
                  v62 = v61;
                  if (v59 == v58)
                  {
                    v103 = 1;
                  }

                  else
                  {
                    do
                    {
                      *v62 = *v60;
                      *(v62 + 1) = 0;
                      *(v62 + 2) = 0;
                      *(v62 + 3) = 0;
                      *(v62 + 8) = *(v60 + 1);
                      *(v62 + 3) = v60[3];
                      v60[1] = 0;
                      v60[2] = 0;
                      v60[3] = 0;
                      v62[32] = *(v60 + 32);
                      v60 += 5;
                      v62 += 40;
                    }

                    while (v60 != v58);
                    v105 = v62;
                    v103 = 1;
                    do
                    {
                      v106 = v59 + 1;
                      std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v106);

                      v59 += 5;
                    }

                    while (v59 != v58);
                  }

                  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>,-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode*>>::~__exception_guard_exceptions[abi:ne200100](v102);
                  v63 = *v50;
                  *v50 = v61;
                  v53 = *&buf[16];
                  *buf = v63;
                  *&buf[8] = v63;
                  v50[1] = *&buf[16];
                  *&buf[16] = v63;
                  v64 = v50[2];
                  v50[2] = v110;
                  v110 = v64;
                  std::__split_buffer<[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>::~__split_buffer(buf);
                }

                else
                {
                  std::allocator_traits<std::allocator<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>>::construct[abi:ne200100]<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode,-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode const&,void,0>(v49[1], &v89);
                  v53 = v52 + 40;
                  v50[1] = v53;
                }

                v50[1] = v53;
                v65 = [v19 count];
                *buf = &v90;
                std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);

                v75 += v65;
                ++v74;
              }

              else
              {
                v32 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *&buf[4] = v9;
                  *&buf[12] = 2112;
                  *&buf[14] = inputIdentifiers;
                  _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | skipping result [no store identifiers] result=%@ identifiers=%@", buf, 0x16u);
                }
              }
            }

            else
            {
              v19 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                *&buf[4] = v9;
                *&buf[12] = 2112;
                *&buf[14] = inputIdentifiers;
                _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | skipping result [not personalized] result=%@ identifiers=%@", buf, 0x16u);
              }
            }

            v31 = personID;
          }

          v14 = v81;
          goto LABEL_75;
        }

        v14 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | skipping result [existing token] result=%@", buf, 0xCu);
        }

LABEL_75:

        v8 = v82 + 1;
      }

      while (v82 + 1 != v80);
      v7 = [obj countByEnumeratingWithState:&v95 objects:v108 count:16];
      if (!v7)
      {
        goto LABEL_79;
      }
    }
  }

  v74 = 0;
  v75 = 0;
LABEL_79:

  v66 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v67 = v66;
  if (v69 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v66))
  {
    *buf = 134218240;
    *&buf[4] = v74;
    *&buf[12] = 2048;
    *&buf[14] = v75;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v67, OS_SIGNPOST_EVENT, spid, "updateTokens", "results=%zu identifiers=%zu", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __49__MPServerObjectDatabase_updateTokensForResults___block_invoke_187;
  block[3] = &unk_1F1497D10;
  std::unordered_map<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>::unordered_map(v84, v100);
  block[4] = self;
  v84[5] = spid;
  dispatch_sync(accessQueue, block);
  std::__hash_table<std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>>>::~__hash_table(v84);
  v70[2](v70);

  std::__hash_table<std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,[MPServerObjectDatabase updateTokensForResults:]::PersonNode>>>::~__hash_table(v100);
}

void __49__MPServerObjectDatabase_updateTokensForResults___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "updateTokens", &unk_1A2797D62, v5, 2u);
  }
}

- (void)updateTokensForResults:(void *)results
{
  v2 = *a2;
  v3 = results[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*results + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

- (void)updateTokensForResults:(uint64_t)results
{
  *results = *a2;
  *(results + 16) = 0;
  *(results + 24) = 0;
  *(results + 8) = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * {__strong}*,NSString * {__strong}*>(results + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(results + 32) = *(a2 + 32);
}

- (uint64_t)updateTokensForResults:(uint64_t)results
{
  v2 = *results;
  *results = 0;
  if (v2)
  {
    if (*(results + 16) == 1)
    {

      v4 = v2 + 3;
      std::vector<-[MPServerObjectDatabase updateTokensForResults:]::PersonNode::ResultNode>::__destroy_vector::operator()[abi:ne200100](&v4);
    }

    operator delete(v2);
  }

  return results;
}

- (id)updateTokensForResults:(id *)results
{
  v3 = results + 1;
  std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);

  return results;
}

void __49__MPServerObjectDatabase_updateTokensForResults___block_invoke_187(void *a1, __n128 a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    a2.n128_u64[0] = 138543362;
    v32 = a2;
    do
    {
      v38 = v2;
      v35 = *(v2 + 56);
      v3 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      spid = os_signpost_id_generate(v3);

      v4 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      v5 = v4;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
      {
        *buf = v32.n128_u32[0];
        *&buf[4] = v35;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateTokens:search", "personID=%{public}@", buf, 0xCu);
      }

      v6 = v38[6];
      if (v6)
      {
        if (!(v6 >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v6);
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v42 = 0;
      v8 = v38[3];
      v7 = v38[4];
      while (v8 != v7)
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 16);
        if (v9 != v10)
        {
          [*v9 UTF8String];
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(1uLL);
        }

        ++v42;
        v8 += 40;
      }

      v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = v35;
        *&buf[12] = 2048;
        *&buf[14] = 0;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | running token lookup query [] personID=%@ count=%zu", buf, 0x16u);
      }

      [*(a1[4] + 8) _bindCStringArray:0 length:0 toParameterNamed:@"@ids"];
      [*(a1[4] + 8) _bindNoCopyStringValue:v35 toParameterNamed:@"@personID"];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __49__MPServerObjectDatabase_updateTokensForResults___block_invoke_191;
      aBlock[3] = &unk_1E7682518;
      aBlock[4] = a1[4];
      v33 = _Block_copy(aBlock);
      v37 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, 0xCCCCCCCCCCCCCCCDLL * ((v38[4] - v38[3]) >> 3)}];
      v12 = [*(a1[4] + 48) resultsForStatement:*(a1[4] + 8)];
      memset(v40, 0, sizeof(v40));
      obj = v12;
      if ([obj countByEnumeratingWithState:v40 objects:v47 count:16])
      {
        v13 = **(&v40[0] + 1);
        [**(&v40[0] + 1) int64ValueAtColumnIndex:{0, *&v32}];
        [v13 BOOLValueAtColumnIndex:1];
        [v13 int64ValueAtColumnIndex:2];
        std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
      }

      if ([v37 count])
      {
        v14 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v15 = v14;
        v16 = a1[10];
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          v17 = [v37 count];
          *buf = 134217984;
          *&buf[4] = v17;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "updateTokens:clear", "count=%zu", buf, 0xCu);
        }

        v18 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v37 count];
          *buf = 134217984;
          *&buf[4] = v19;
          _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | clearing result tokens [not found] count=%lld", buf, 0xCu);
        }

        v20 = [v37 firstIndex];
        v21 = a1;
        while (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = v38[3];
          if (0xCCCCCCCCCCCCCCCDLL * ((v38[4] - v22) >> 3) <= v20)
          {
            std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
          }

          v23 = v22 + 40 * v20;
          *buf = *v23;
          *&buf[16] = 0;
          v44 = 0;
          *&buf[8] = 0;
          std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * {__strong}*,NSString * {__strong}*>(&buf[8], *(v23 + 8), *(v23 + 16), (*(v23 + 16) - *(v23 + 8)) >> 3);
          LOBYTE(v45) = *(v23 + 32);
          v24 = *buf;
          v25 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *v46 = 138412290;
            *&v46[4] = v24;
            _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | clearing result token [not found] result=%@", v46, 0xCu);
          }

          [v24 setToken:0 forDatabase:{0, a1[4]}];
          *v46 = &buf[8];
          std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](v46);

          v20 = [v37 indexGreaterThanIndex:v20];
          v21 = a1;
        }

        v26 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v27 = v26;
        v28 = v21[10];
        if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A238D000, v27, OS_SIGNPOST_INTERVAL_END, v28, "updateTokens:clear", &unk_1A2797D62, buf, 2u);
        }
      }

      v29 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      v30 = v29;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A238D000, v30, OS_SIGNPOST_INTERVAL_END, spid, "updateTokens:search", &unk_1A2797D62, buf, 2u);
      }

      v33[2](v33);
      v2 = *v38;
    }

    while (*v38);
  }

  v31 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEBUG, "[SOD] updateTokensForResults: | done []", buf, 2u);
  }
}

- (void)updateTokensForResults:
{
  v1 = *self;
  v2 = **self;
  if (v2)
  {
    v4 = v1[1];
    v5 = **self;
    if (v4 != v2)
    {
      do
      {
        v7 = (v4 - 32);
        std::vector<objc_object  {objcproto33MPObjectDatabaseProgressiveResult}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v7);
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **self;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

- (id)_modelObjectMatchingIdentifierSet:(id)set propertySet:(id)propertySet options:(unint64_t)options error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  setCopy = set;
  propertySetCopy = propertySet;
  v10 = setCopy;
  if (self)
  {
    v65 = 0;
    v66 = 0;
    v11 = [MPServerObjectDatabase _payloadData:&v66 forIdentifierSet:v10 options:&v65 outError:?];
    v12 = v66;
    v13 = v65;
    v14 = v13;
    if (!v12 || v13)
    {
      v21 = v13;
      v15 = 0;
      v20 = v14;
    }

    else
    {
      v64 = 0;
      v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v64];
      v16 = v64;
      v17 = v15;
      if (v16)
      {
        v18 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v74 = v16;
          _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_FAULT, "SOD: _payload:withIdentifierSet:options: jsonError: %{public}@", buf, 0xCu);
        }

        v19 = v16;
        v20 = v16;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
    v20 = 0;
    v11 = 0;
  }

  v22 = v15;
  v23 = v20;
  v24 = v23;
  if (!v22 || v23)
  {
    if (error)
    {
      v28 = v23;
      v29 = 0;
      *error = v24;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_52;
  }

  personalizedStore = [v10 personalizedStore];
  personID = [personalizedStore personID];
  if ([personID length])
  {
    personalizedStore2 = [v10 personalizedStore];
    personID2 = [personalizedStore2 personID];
  }

  else
  {
    personID2 = *MEMORY[0x1E69E4388];
  }

  context = objc_autoreleasePoolPush();
  if (v11 == 1)
  {
    v59 = [MPServerObjectDatabaseMediaKitImportRequest _entityTypeForObject:v22];
    genericObjectRelationshipKey = [v59 genericObjectRelationshipKey];
    relationships = [propertySetCopy relationships];
    v37 = [relationships objectForKeyedSubscript:genericObjectRelationshipKey];
    v38 = v37 == 0;

    if (!v38)
    {
      v33 = objc_alloc_init(MPMediaKitEntityTranslatorContext);
      [(MPMediaKitEntityTranslatorContext *)v33 setPersonID:personID2];
      [(MPMediaKitEntityTranslatorContext *)v33 setRelationshipPayloadProvider:self];
      v34 = [(MPBaseEntityTranslator *)MPMediaKitEntityTranslator translatorForMPModelClass:objc_opt_class()];
      v39 = [MPPropertySet alloc];
      v69 = genericObjectRelationshipKey;
      relationships2 = [propertySetCopy relationships];
      v41 = [relationships2 objectForKeyedSubscript:genericObjectRelationshipKey];
      v70 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v35 = [(MPPropertySet *)v39 initWithProperties:MEMORY[0x1E695E0F0] relationships:v42];

      v29 = [(MPStoreModelGenericObjectBuilder *)v34 objectForPropertySet:v35 payload:v22 context:v33];
LABEL_46:

      v43 = 0;
      goto LABEL_47;
    }

    v49 = MEMORY[0x1E696ABC0];
    v71[0] = @"MissingPropertySetMappingEntityType";
    serverEntityType = [v59 serverEntityType];
    v33 = serverEntityType;
    v51 = @"<null>";
    if (serverEntityType)
    {
      v52 = serverEntityType;
    }

    else
    {
      v52 = @"<null>";
    }

    v71[1] = @"MissingPropertySetMappingRelationshipKey";
    if (genericObjectRelationshipKey)
    {
      v51 = genericObjectRelationshipKey;
    }

    v72[0] = v52;
    v72[1] = v51;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
    v48 = [v49 msv_errorWithDomain:@"MPObjectDatabaseError" code:1 userInfo:v34 debugDescription:@"Matching object is not supported"];
LABEL_41:
    v43 = v48;
    v29 = 0;
LABEL_47:

    goto LABEL_48;
  }

  if (v11 == 2)
  {
    v59 = [MPServerObjectDatabaseStorePlatformImportRequest _entityTypeForObject:v22];
    genericObjectRelationshipKey = [v59 genericObjectRelationshipKey];
    relationships3 = [propertySetCopy relationships];
    v31 = [relationships3 objectForKeyedSubscript:genericObjectRelationshipKey];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [[MPStoreItemMetadata alloc] initWithStorePlatformDictionary:v22];
      if (!v33)
      {
        v29 = 0;
        v43 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v34 = [(MPStoreModelObjectBuilder *)[MPStoreModelGenericObjectBuilder alloc] initWithRequestedPropertySet:propertySetCopy];
      [(MPStoreModelGenericObjectBuilder *)v34 setPreventStoreItemMetadataCaching:1];
      if ([personID2 longLongValue])
      {
        v35 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(personID2, "longLongValue")}];
      }

      else
      {
        v35 = 0;
      }

      v53 = [MEMORY[0x1E69E4680] specificAccountWithDSID:v35];
      v29 = [(MPStoreModelObjectBuilder *)v34 modelObjectWithStoreItemMetadata:v33 userIdentity:v53];

      if (!v35)
      {
        identifiers = [v29 identifiers];
        v55 = [identifiers copyWithSource:@"ServerObjectDatabase-UnknownPersonID" block:&__block_literal_global_181_35149];
        v58 = [v29 copyWithIdentifiers:v55];

        v29 = v58;
      }

      goto LABEL_46;
    }

    v44 = MEMORY[0x1E696ABC0];
    v67[0] = @"MissingPropertySetMappingEntityType";
    serverEntityType2 = [v59 serverEntityType];
    v33 = serverEntityType2;
    v46 = @"<null>";
    if (serverEntityType2)
    {
      v47 = serverEntityType2;
    }

    else
    {
      v47 = @"<null>";
    }

    v67[1] = @"MissingPropertySetMappingRelationshipKey";
    v68[0] = v47;
    if (genericObjectRelationshipKey)
    {
      v46 = genericObjectRelationshipKey;
    }

    v68[1] = v46;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v48 = [v44 msv_errorWithDomain:@"MPObjectDatabaseError" code:1 userInfo:v34 debugDescription:@"Matching object is not supported"];
    goto LABEL_41;
  }

  v29 = 0;
  v43 = 0;
LABEL_49:
  objc_autoreleasePoolPop(context);
  if (error)
  {
    v56 = v43;
    *error = v43;
  }

LABEL_52:

  return v29;
}

- (uint64_t)_payloadData:(uint64_t)data forIdentifierSet:(void *)set options:(void *)options outError:(void *)error
{
  optionsCopy = options;
  if (data)
  {
    if (!set)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__payloadData_forIdentifierSet_options_outError_ object:data file:@"MPServerObjectDatabase.mm" lineNumber:733 description:{@"Invalid parameter not satisfying: %@", @"payloadData"}];
    }

    personalizedStore = [optionsCopy personalizedStore];
    personID = [personalizedStore personID];

    if (![personID length])
    {
      v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_INFO, "SOD: modelObjectMatchingIdentifierSet [missing personID, defaulting to 'Unknown-PersonID']", buf, 2u);
      }

      v11 = *MEMORY[0x1E69E4388];
      personID = v11;
    }

    v12 = [optionsCopy prioritizedStoreStringIdentifiersForPersonID:personID];
    if ([v12 count])
    {
      *buf = 0;
      v38 = buf;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__34964;
      v41 = __Block_byref_object_dispose__34965;
      v42 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__34964;
      v31 = __Block_byref_object_dispose__34965;
      v32 = 0;
      v13 = *(data + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__MPServerObjectDatabase__payloadData_forIdentifierSet_options_outError___block_invoke;
      block[3] = &unk_1E767C2E8;
      v26 = 0;
      block[4] = data;
      v21 = v12;
      v22 = personID;
      v23 = &v33;
      v24 = buf;
      v25 = &v27;
      dispatch_sync(v13, block);
      v14 = *(v38 + 5);
      if (!v14)
      {
        if (error)
        {
          v15 = v28[5];
          if (v15)
          {
            v16 = v15;
            *error = v15;
            v14 = *(v38 + 5);
          }
        }
      }

      *set = v14;
      v17 = v34[3];

      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(buf, 8);
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:0 userInfo:0];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __73__MPServerObjectDatabase__payloadData_forIdentifierSet_options_outError___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    v2 = [@"SELECT source payload FROM objects WHERE identifier = @identifier AND person_id = @personID"];
  }

  else
  {
    v2 = @"SELECT source, payload FROM objects WHERE identifier = @identifier AND person_id = @personID";
  }

  v15 = v2;
  v3 = [*(*(a1 + 32) + 48) statementWithString:? error:?];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        [v3 bindStringValue:*(*(&v18 + 1) + 8 * i) toParameterNamed:@"@identifier"];
        [v3 bindStringValue:*(a1 + 48) toParameterNamed:@"@personID"];
        v7 = [*(*(a1 + 32) + 48) resultsForStatement:v3];
        v17 = 0;
        v8 = [v7 nextObjectWithError:&v17];
        v9 = v17;
        v10 = v17;
        *(*(*(a1 + 56) + 8) + 24) = [v8 int64ValueAtColumnIndex:0];
        v11 = [v8 jsonDataAtColumnIndex:1];
        v12 = *(*(a1 + 64) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        if (v10)
        {
          v14 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v23 = v10;
            _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_FAULT, "SOD: modelObjectMatchingIdentifierSet stepError: %{public}@", buf, 0xCu);
          }

          objc_storeStrong((*(*(a1 + 72) + 8) + 40), v9);
        }

        if (*(*(*(a1 + 64) + 8) + 40))
        {

          goto LABEL_18;
        }

        [v3 reset];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  [v3 invalidate];
}

- (id)payloadDataForIdentifierSet:(id)set outError:(id *)error
{
  v6 = 0;
  [MPServerObjectDatabase _payloadData:&v6 forIdentifierSet:set options:error outError:?];
  v4 = v6;

  return v4;
}

- (id)_hlsAssetMatchingIdentifierSet:(id)set query:(id)query
{
  setCopy = set;
  queryCopy = query;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__34964;
  v21 = __Block_byref_object_dispose__34965;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__MPServerObjectDatabase__hlsAssetMatchingIdentifierSet_query___block_invoke;
  v13[3] = &unk_1E7681900;
  v13[4] = self;
  v14 = setCopy;
  v15 = queryCopy;
  v16 = &v17;
  v9 = queryCopy;
  v10 = setCopy;
  dispatch_sync(accessQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __63__MPServerObjectDatabase__hlsAssetMatchingIdentifierSet_query___block_invoke(void *a1)
{
  v188[0] = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[6];
  v178 = *(a1[4] + 48);
  v3 = v1;
  v177 = v2;
  v173 = v3;
  v4 = [v3 personalizedStore];
  v5 = [v4 personID];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_INFO, "SOD: _MPServerObjectDatabaseHLSAssetsMatchingIdentifierSet [missing personID, defaulting to 'Unknown-PersonID']", buf, 2u);
    }

    v8 = *MEMORY[0x1E69E4388];
    v6 = v8;
  }

  v174 = v6;
  v172 = [v173 prioritizedStoreStringIdentifiersForPersonID:?];
  if (![v172 count])
  {
    v10 = 0;
    goto LABEL_176;
  }

  v9 = v174;
  memset(&v180, 0, sizeof(v180));
  *buf = 4001;
  CC_SHA1_Init(&v180);
  v10 = v9;
  v11 = v10;
  v12 = [(MPServerObjectDatabaseHLSAsset *)v10 UTF8String];
  v13 = [(MPServerObjectDatabaseHLSAsset *)v10 length];
  v14 = v13;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        _MSV_XXH_XXH64_update(&v180, v12, v13);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Update(&v180, v12, v13);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Update(&v180, v12, v13);
          break;
        case 0x10A0:
          CC_SHA256_Update(&v180, v12, v13);
          break;
        case 0x11A0:
          CC_SHA512_Update(&v180, v12, v13);
          break;
      }
    }

    goto LABEL_76;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf == 3000)
      {
        _MSV_XXH_XXH32_update_27340(&v180, v12, v13);
      }

      goto LABEL_76;
    }

    v49 = v13 + BYTE3(v180.count[1]);
    if (v49 < 4)
    {
      v50 = &buf[BYTE3(v180.count[1])];
      if (v13 <= 1u)
      {
        if (!v13)
        {
LABEL_75:
          HIDWORD(v180.count[0]) += v14;
          goto LABEL_76;
        }

        if (v13 == 1)
        {
          v50[16] = *v12;
          goto LABEL_75;
        }

LABEL_59:
        memcpy(v50 + 16, v12, v13);
        goto LABEL_75;
      }

      if (v13 == 2)
      {
        v55 = *v12;
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_59;
        }

        v55 = *v12;
        v50[18] = v12[2];
      }

      *(v50 + 8) = v55;
      goto LABEL_75;
    }

    v51 = 0;
    v52 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v180.count[1]) > 1u)
    {
      if (BYTE3(v180.count[1]) != 2)
      {
        LOBYTE(v53) = 0;
        LOBYTE(v54) = 0;
        v56 = 0;
        if (BYTE3(v180.count[1]) == 3)
        {
          LOBYTE(v53) = v180.count[1];
          v51 = HIBYTE(LOWORD(v180.count[1]));
          LOBYTE(v54) = BYTE2(v180.count[1]);
          v56 = *v12;
        }

        goto LABEL_65;
      }

      LOBYTE(v53) = v180.count[1];
      v51 = HIBYTE(LOWORD(v180.count[1]));
      v54 = *v12;
    }

    else if (BYTE3(v180.count[1]))
    {
      LOBYTE(v53) = v180.count[1];
      v51 = *v12;
      v54 = *(v12 + 1);
    }

    else
    {
      v53 = *v12;
      v51 = v53 >> 8;
      v54 = *(v12 + 1);
    }

    v56 = v54 >> 8;
LABEL_65:
    v57 = v49 & 3;
    v58 = (v54 << 16) | (v56 << 24) | v53 | (v51 << 8);
    HIDWORD(v59) = (461845907 * ((380141568 * v58) | ((-862048943 * v58) >> 17))) ^ LODWORD(v180.count[0]);
    LODWORD(v59) = HIDWORD(v59);
    v60 = 5 * (v59 >> 19) - 430675100;
    LODWORD(v180.count[0]) = v60;
    v61 = &v12[-BYTE3(v180.count[1]) + 4];
    v62 = &v12[v52 - BYTE3(v180.count[1])];
    while (v61 < v62)
    {
      v63 = *v61;
      v61 += 4;
      HIDWORD(v64) = (461845907 * ((380141568 * v63) | ((-862048943 * v63) >> 17))) ^ v60;
      LODWORD(v64) = HIDWORD(v64);
      v60 = 5 * (v64 >> 19) - 430675100;
      LODWORD(v180.count[0]) = v60;
    }

    if (v57 > 1)
    {
      if (v57 == 2)
      {
        LOWORD(v180.count[1]) = *v62;
      }

      else
      {
        v65 = *v62;
        BYTE2(v180.count[1]) = v62[2];
        LOWORD(v180.count[1]) = v65;
      }
    }

    else if (v57)
    {
      LOBYTE(v180.count[1]) = *v62;
    }

    BYTE3(v180.count[1]) = v57;
    goto LABEL_75;
  }

  if (!*buf)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v47 handleFailureInFunction:v48 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_76;
  }

  if (*buf != 1000)
  {
    goto LABEL_76;
  }

  v15 = HIBYTE(v180.hash[2]);
  v16 = v180.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v17 = HIBYTE(v180.hash[2]) & 7;
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = 8 - v17;
  v19 = v13 - (8 - v17);
  if (v13 >= 8 - v17)
  {
    v20 = 8 * v17;
    v21 = v12;
    v22 = v180.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v23 = *v21++;
      v22 |= v23 << v20;
      v20 += 8;
    }

    while (v20 != 64);
    v24 = (v180.count[0] + v180.count[1]) ^ __ROR8__(v180.count[1], 51);
    v25 = v180.hash[0] + (v180.hash[1] ^ v22);
    v26 = __ROR8__(v180.hash[1] ^ v22, 48);
    v27 = (v25 ^ v26) + __ROR8__(v180.count[0] + v180.count[1], 32);
    v28 = v27 ^ __ROR8__(v25 ^ v26, 43);
    v29 = v25 + v24;
    v180.hash[0] = __ROR8__(v29, 32);
    v180.hash[1] = v28;
    v180.count[0] = v27 ^ v22;
    v180.count[1] = v29 ^ __ROR8__(v24, 47);
    v12 += v18;
    v180.hash[2] = (v18 + v15) << 56;
    v14 = v19;
LABEL_22:
    if (v14 >= 8)
    {
      v30 = v180.count[1];
      v31 = v180.count[0];
      v32 = v180.hash[1];
      v33 = v180.hash[0];
      do
      {
        v34 = *v12;
        v12 += 8;
        v35 = v34 ^ v32;
        v36 = v31 + v30;
        v37 = v36 ^ __ROR8__(v30, 51);
        v38 = v35 + v33;
        v39 = __ROR8__(v35, 48);
        v40 = (v38 ^ v39) + __ROR8__(v36, 32);
        v32 = v40 ^ __ROR8__(v38 ^ v39, 43);
        v41 = v38 + v37;
        v30 = v41 ^ __ROR8__(v37, 47);
        v33 = __ROR8__(v41, 32);
        v180.hash[0] = v33;
        v180.hash[1] = v32;
        v31 = v40 ^ v34;
        v180.count[0] = v31;
        v180.count[1] = v30;
        v14 -= 8;
        v15 += 8;
      }

      while (v14 > 7);
    }

    v17 = 0;
  }

  if (v14)
  {
    v42 = 0;
    v43 = 0;
    v44 = v14;
    do
    {
      v45 = *v12++;
      v43 |= v45 << v42;
      v42 += 8;
      --v44;
    }

    while (v44);
    if (v17)
    {
      v46 = (v43 << (8 * v17)) | ((v14 + v15) << 56) | v16;
    }

    else
    {
      v46 = v43 | ((v14 + v15) << 56);
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_76;
    }

    v46 = v15 << 56;
  }

  v180.hash[2] = v46;
LABEL_76:

  memset(v181 + 8, 0, 64);
  *&v181[0] = *buf;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        *(&v181[0] + 1) = _MSV_XXH_XXH64_digest(&v180);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Final(v181 + 8, &v180);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Final(v181 + 8, &v180);
          break;
        case 0x10A0:
          CC_SHA256_Final(v181 + 8, &v180);
          break;
        case 0x11A0:
          CC_SHA512_Final(v181 + 8, &v180);
          break;
      }
    }

    goto LABEL_113;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf != 3000)
      {
        goto LABEL_113;
      }

      if (HIDWORD(v180.count[0]))
      {
        v96 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v180.count[1], xmmword_1A273DD70), vshlq_u32(*&v180.count[1], xmmword_1A273DD60)));
      }

      else
      {
        v96 = LODWORD(v180.hash[0]) + 374761393;
      }

      v100 = LODWORD(v180.count[0]) + v96;
      v101 = &v180.hash[1];
      v102 = v180.hash[3] & 0xF;
      if (v102 >= 4)
      {
        do
        {
          v103 = *v101;
          v101 = (v101 + 4);
          HIDWORD(v104) = v100 - 1028477379 * v103;
          LODWORD(v104) = HIDWORD(v104);
          v100 = 668265263 * (v104 >> 15);
          v102 -= 4;
        }

        while (v102 > 3);
      }

      for (; v102; --v102)
      {
        v105 = *v101;
        v101 = (v101 + 1);
        HIDWORD(v106) = v100 + 374761393 * v105;
        LODWORD(v106) = HIDWORD(v106);
        v100 = -1640531535 * (v106 >> 21);
      }

      v107 = (-2048144777 * (v100 ^ (v100 >> 15))) ^ ((-2048144777 * (v100 ^ (v100 >> 15))) >> 13);
      v108 = (-1028477379 * v107) ^ ((-1028477379 * v107) >> 16);
      goto LABEL_112;
    }

    switch(BYTE3(v180.count[1]))
    {
      case 1u:
        v99 = LOBYTE(v180.count[1]);
        break;
      case 2u:
        v99 = LOWORD(v180.count[1]);
        break;
      case 3u:
        v99 = LOWORD(v180.count[1]) | (BYTE2(v180.count[1]) << 16);
        break;
      default:
        v109 = v180.count[0];
        goto LABEL_111;
    }

    v109 = (461845907 * ((380141568 * v99) | ((-862048943 * v99) >> 17))) ^ LODWORD(v180.count[0]);
LABEL_111:
    v110 = -2048144789 * (HIDWORD(v180.count[0]) ^ v109 ^ ((HIDWORD(v180.count[0]) ^ v109) >> 16));
    v108 = (-1028477387 * (v110 ^ (v110 >> 13))) ^ ((-1028477387 * (v110 ^ (v110 >> 13))) >> 16);
    LODWORD(v180.count[0]) = v108;
LABEL_112:
    DWORD2(v181[0]) = v108;
    goto LABEL_113;
  }

  if (*buf)
  {
    if (*buf == 1000)
    {
      v66 = (v180.count[0] + v180.count[1]) ^ __ROR8__(v180.count[1], 51);
      v67 = v180.hash[0] + (v180.hash[1] ^ v180.hash[2]);
      v68 = __ROR8__(v180.hash[1] ^ v180.hash[2], 48);
      v69 = (v67 ^ v68) + __ROR8__(v180.count[0] + v180.count[1], 32);
      v70 = v69 ^ __ROR8__(v67 ^ v68, 43);
      v71 = v67 + v66;
      v72 = v71 ^ __ROR8__(v66, 47);
      v73 = (v69 ^ v180.hash[2]) + v72;
      v74 = v73 ^ __ROR8__(v72, 51);
      v75 = (__ROR8__(v71, 32) ^ 0xFFLL) + v70;
      v76 = __ROR8__(v70, 48);
      v77 = __ROR8__(v73, 32) + (v75 ^ v76);
      v78 = v77 ^ __ROR8__(v75 ^ v76, 43);
      v79 = v74 + v75;
      v80 = v79 ^ __ROR8__(v74, 47);
      v81 = v80 + v77;
      v82 = v81 ^ __ROR8__(v80, 51);
      v83 = __ROR8__(v79, 32) + v78;
      v84 = __ROR8__(v78, 48);
      v85 = __ROR8__(v81, 32) + (v83 ^ v84);
      v86 = v85 ^ __ROR8__(v83 ^ v84, 43);
      v87 = v82 + v83;
      v88 = v87 ^ __ROR8__(v82, 47);
      v89 = v88 + v85;
      v90 = v89 ^ __ROR8__(v88, 51);
      v91 = __ROR8__(v87, 32) + v86;
      v92 = __ROR8__(v86, 48);
      v93 = __ROR8__(v89, 32) + (v91 ^ v92);
      v94 = v93 ^ __ROR8__(v91 ^ v92, 43);
      v95 = v90 + v91;
      v180.count[0] = v93;
      v180.count[1] = v95 ^ __ROR8__(v90, 47);
      v180.hash[0] = __ROR8__(v95, 32);
      v180.hash[1] = v94;
      *(&v181[0] + 1) = v180.count[1] ^ v93 ^ v180.hash[0] ^ v94;
    }
  }

  else
  {
    v97 = [MEMORY[0x1E696AAA8] currentHandler];
    v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [v97 handleFailureInFunction:v98 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_113:
  v182 = v181[0];
  v183 = v181[1];
  v184 = v181[2];
  v185 = v181[3];
  v186 = *&v181[4];
  if (*&v181[0] > 3999)
  {
    if (*&v181[0] > 4255)
    {
      if (*&v181[0] == 4256)
      {
        v148 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v117 = v148;
        v149 = 0;
        v150 = &v182 + 8;
        do
        {
          v151 = *v150++;
          v152 = &v148[v149];
          *v152 = MSVFastHexStringFromBytes_hexCharacters_55966[v151 >> 4];
          v152[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v151 & 0xF];
          v149 += 2;
        }

        while (v149 != 64);
        v122 = objc_alloc(MEMORY[0x1E696AEC0]);
        v123 = 64;
      }

      else
      {
        if (*&v181[0] != 4512)
        {
          goto LABEL_177;
        }

        v128 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v117 = v128;
        v129 = 0;
        v130 = &v182 + 8;
        do
        {
          v131 = *v130++;
          v132 = &v128[v129];
          *v132 = MSVFastHexStringFromBytes_hexCharacters_55966[v131 >> 4];
          v132[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v131 & 0xF];
          v129 += 2;
        }

        while (v129 != 128);
        v122 = objc_alloc(MEMORY[0x1E696AEC0]);
        v123 = 128;
      }
    }

    else if (*&v181[0] == 4000)
    {
      v139 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v117 = v139;
      v140 = 0;
      v141 = &v182 + 8;
      do
      {
        v142 = *v141++;
        v143 = &v139[v140];
        *v143 = MSVFastHexStringFromBytes_hexCharacters_55966[v142 >> 4];
        v143[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v142 & 0xF];
        v140 += 2;
      }

      while (v140 != 32);
      v122 = objc_alloc(MEMORY[0x1E696AEC0]);
      v123 = 32;
    }

    else
    {
      if (*&v181[0] != 4001)
      {
        goto LABEL_177;
      }

      v116 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v117 = v116;
      v118 = 0;
      v119 = &v182 + 8;
      do
      {
        v120 = *v119++;
        v121 = &v116[v118];
        *v121 = MSVFastHexStringFromBytes_hexCharacters_55966[v120 >> 4];
        v121[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v120 & 0xF];
        v118 += 2;
      }

      while (v118 != 40);
      v122 = objc_alloc(MEMORY[0x1E696AEC0]);
      v123 = 40;
    }

    v115 = [v122 initWithBytesNoCopy:v117 length:v123 encoding:4 freeWhenDone:1];
  }

  else
  {
    if (*&v181[0] <= 2999)
    {
      if (*&v181[0] == 1000)
      {
        v133 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
          v134 = v188 + 1;
          quot = *(&v182 + 1);
          do
          {
            v136 = lldiv(quot, 10);
            quot = v136.quot;
            if (v136.rem >= 0)
            {
              LOBYTE(v137) = v136.rem;
            }

            else
            {
              v137 = -v136.rem;
            }

            *(v134 - 2) = v137 + 48;
            v138 = (v134 - 2);
            --v134;
          }

          while (v136.quot);
          if (v133 < 0)
          {
            *(v134 - 2) = 45;
            v138 = (v134 - 2);
          }

          v115 = CFStringCreateWithBytes(0, v138, v188 - v138, 0x8000100u, 0);
          goto LABEL_159;
        }

        goto LABEL_178;
      }

      if (*&v181[0] == 2000)
      {
        v111 = DWORD2(v182);
        if (DWORD2(v182))
        {
          v112 = v188;
          do
          {
            v113 = ldiv(v111, 10);
            v111 = v113.quot;
            if (v113.rem >= 0)
            {
              LOBYTE(v114) = v113.rem;
            }

            else
            {
              v114 = -v113.rem;
            }

            *--v112 = v114 + 48;
          }

          while (v113.quot);
          v115 = CFStringCreateWithBytes(0, v112, v188 - v112, 0x8000100u, 0);
          goto LABEL_159;
        }

LABEL_178:
        v153 = @"0";
        goto LABEL_160;
      }

LABEL_177:
      v168 = [MEMORY[0x1E696AAA8] currentHandler];
      v169 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
      [v168 handleFailureInFunction:v169 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

      v153 = &stru_1F149ECA8;
      goto LABEL_160;
    }

    if (*&v181[0] == 3000)
    {
      LODWORD(v187[0]) = bswap32(DWORD2(v182));
      v144 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v145 = 0;
      v146 = v144 + 1;
      do
      {
        v147 = *(v187 + v145);
        *(v146 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v147 >> 4];
        *v146 = MSVFastHexStringFromBytes_hexCharacters_55966[v147 & 0xF];
        v146 += 2;
        ++v145;
      }

      while (v145 != 4);
      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v144 length:8 encoding:4 freeWhenDone:1];
    }

    else
    {
      if (*&v181[0] != 3001)
      {
        goto LABEL_177;
      }

      v187[0] = bswap64(*(&v182 + 1));
      v124 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v125 = 0;
      v126 = v124 + 1;
      do
      {
        v127 = *(v187 + v125);
        *(v126 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v127 >> 4];
        *v126 = MSVFastHexStringFromBytes_hexCharacters_55966[v127 & 0xF];
        v126 += 2;
        ++v125;
      }

      while (v125 != 8);
      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v124 length:16 encoding:4 freeWhenDone:1];
    }
  }

LABEL_159:
  v153 = v115;
LABEL_160:

  v176 = [(__CFString *)v153 substringToIndex:7];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v155 = v154;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = v172;
  v156 = [obj countByEnumeratingWithState:&v182 objects:buf count:16];
  if (v156)
  {
    v158 = *v183;
    *&v157 = 138543618;
    v170 = v157;
LABEL_162:
    v159 = 0;
    while (1)
    {
      if (*v183 != v158)
      {
        objc_enumerationMutation(obj);
      }

      v160 = *(*(&v182 + 1) + 8 * v159);
      v161 = [v178 statementWithString:v177 error:{0, v170}];
      [v161 bindStringValue:v160 toParameterNamed:@"@identifier"];
      [v161 bindStringValue:v176 toParameterNamed:@"@hashedPersonID"];
      [v161 bindInt64Value:v155 toParameterNamed:@"@now"];
      v162 = [v178 resultsForStatement:v161];
      v187[0] = 0;
      v163 = [v162 nextObjectWithError:v187];
      v164 = v187[0];
      if (v163)
      {
        v10 = [[MPServerObjectDatabaseHLSAsset alloc] initWithSQLRowResult:v163];
      }

      else
      {
        [v161 invalidate];
        if (v164)
        {
          v165 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
          {
            LODWORD(v181[0]) = v170;
            *(v181 + 4) = v177;
            WORD6(v181[0]) = 2114;
            *(v181 + 14) = v164;
            _os_log_impl(&dword_1A238D000, v165, OS_LOG_TYPE_FAULT, "SOD: _MPServerObjectDatabaseAssetsMatchingIdentifierSet query='%{public}@' stepError=%{public}@", v181, 0x16u);
          }
        }
      }

      if (v163)
      {
        break;
      }

      if (v156 == ++v159)
      {
        v156 = [obj countByEnumeratingWithState:&v182 objects:buf count:16];
        if (v156)
        {
          goto LABEL_162;
        }

        goto LABEL_174;
      }
    }
  }

  else
  {
LABEL_174:
    v10 = 0;
  }

LABEL_176:
  v166 = *(a1[7] + 8);
  v167 = *(v166 + 40);
  *(v166 + 40) = v10;
}

- (id)_assetsMatchingIdentifierSet:(id)set query:(id)query
{
  setCopy = set;
  queryCopy = query;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__34964;
  v25 = __Block_byref_object_dispose__34965;
  v26 = MEMORY[0x1E695E0F0];
  accessQueue = self->_accessQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__MPServerObjectDatabase__assetsMatchingIdentifierSet_query___block_invoke;
  v16 = &unk_1E7681900;
  v20 = &v21;
  selfCopy = self;
  v9 = setCopy;
  v18 = v9;
  v10 = queryCopy;
  v19 = v10;
  dispatch_sync(accessQueue, &v13);
  v11 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __61__MPServerObjectDatabase__assetsMatchingIdentifierSet_query___block_invoke(void *a1)
{
  v195[0] = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[6];
  v185 = *(a1[4] + 48);
  v3 = v1;
  v184 = v2;
  v177 = v3;
  v4 = [v3 personalizedStore];
  v5 = [v4 personID];

  if (![v5 length])
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_INFO, "SOD: _MPServerObjectDatabaseAssetsMatchingIdentifierSet [missing personID, defaulting to 'Unknown-PersonID']", buf, 2u);
    }

    v7 = *MEMORY[0x1E69E4388];
    v5 = v7;
  }

  v179 = [v3 prioritizedStoreStringIdentifiersForPersonID:{v5, v5}];
  v8 = [v179 count];
  v9 = MEMORY[0x1E695E0F0];
  if (!v8)
  {
    v181 = 0;
    goto LABEL_178;
  }

  v10 = v5;
  memset(&v187, 0, sizeof(v187));
  *buf = 4001;
  CC_SHA1_Init(&v187);
  v11 = v10;
  v12 = v11;
  v13 = [v11 UTF8String];
  v14 = [v11 length];
  v15 = v14;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        _MSV_XXH_XXH64_update(&v187, v13, v14);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Update(&v187, v13, v14);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Update(&v187, v13, v14);
          break;
        case 0x10A0:
          CC_SHA256_Update(&v187, v13, v14);
          break;
        case 0x11A0:
          CC_SHA512_Update(&v187, v13, v14);
          break;
      }
    }

    goto LABEL_75;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf == 3000)
      {
        _MSV_XXH_XXH32_update_27340(&v187, v13, v14);
      }

      goto LABEL_75;
    }

    v50 = v14 + BYTE3(v187.count[1]);
    if (v50 < 4)
    {
      v51 = &buf[BYTE3(v187.count[1])];
      if (v14 <= 1u)
      {
        if (!v14)
        {
LABEL_74:
          HIDWORD(v187.count[0]) += v15;
          goto LABEL_75;
        }

        if (v14 == 1)
        {
          v51[16] = *v13;
          goto LABEL_74;
        }

LABEL_58:
        memcpy(v51 + 16, v13, v14);
        goto LABEL_74;
      }

      if (v14 == 2)
      {
        v56 = *v13;
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_58;
        }

        v56 = *v13;
        v51[18] = v13[2];
      }

      *(v51 + 8) = v56;
      goto LABEL_74;
    }

    v52 = 0;
    v53 = v50 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v187.count[1]) > 1u)
    {
      if (BYTE3(v187.count[1]) != 2)
      {
        LOBYTE(v54) = 0;
        LOBYTE(v55) = 0;
        v57 = 0;
        if (BYTE3(v187.count[1]) == 3)
        {
          LOBYTE(v54) = v187.count[1];
          v52 = HIBYTE(LOWORD(v187.count[1]));
          LOBYTE(v55) = BYTE2(v187.count[1]);
          v57 = *v13;
        }

        goto LABEL_64;
      }

      LOBYTE(v54) = v187.count[1];
      v52 = HIBYTE(LOWORD(v187.count[1]));
      v55 = *v13;
    }

    else if (BYTE3(v187.count[1]))
    {
      LOBYTE(v54) = v187.count[1];
      v52 = *v13;
      v55 = *(v13 + 1);
    }

    else
    {
      v54 = *v13;
      v52 = v54 >> 8;
      v55 = *(v13 + 1);
    }

    v57 = v55 >> 8;
LABEL_64:
    v58 = v50 & 3;
    v59 = (v55 << 16) | (v57 << 24) | v54 | (v52 << 8);
    HIDWORD(v60) = (461845907 * ((380141568 * v59) | ((-862048943 * v59) >> 17))) ^ LODWORD(v187.count[0]);
    LODWORD(v60) = HIDWORD(v60);
    v61 = 5 * (v60 >> 19) - 430675100;
    LODWORD(v187.count[0]) = v61;
    v62 = &v13[-BYTE3(v187.count[1]) + 4];
    v63 = &v13[v53 - BYTE3(v187.count[1])];
    while (v62 < v63)
    {
      v64 = *v62;
      v62 += 4;
      HIDWORD(v65) = (461845907 * ((380141568 * v64) | ((-862048943 * v64) >> 17))) ^ v61;
      LODWORD(v65) = HIDWORD(v65);
      v61 = 5 * (v65 >> 19) - 430675100;
      LODWORD(v187.count[0]) = v61;
    }

    if (v58 > 1)
    {
      if (v58 == 2)
      {
        LOWORD(v187.count[1]) = *v63;
      }

      else
      {
        v66 = *v63;
        BYTE2(v187.count[1]) = v63[2];
        LOWORD(v187.count[1]) = v66;
      }
    }

    else if (v58)
    {
      LOBYTE(v187.count[1]) = *v63;
    }

    BYTE3(v187.count[1]) = v58;
    goto LABEL_74;
  }

  if (!*buf)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [v48 handleFailureInFunction:v49 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_75;
  }

  if (*buf != 1000)
  {
    goto LABEL_75;
  }

  v16 = HIBYTE(v187.hash[2]);
  v17 = v187.hash[2] & 0xFFFFFFFFFFFFFFLL;
  v18 = HIBYTE(v187.hash[2]) & 7;
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = 8 - v18;
  v20 = v14 - (8 - v18);
  if (v14 >= 8 - v18)
  {
    v21 = 8 * v18;
    v22 = v13;
    v23 = v187.hash[2] & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v24 = *v22++;
      v23 |= v24 << v21;
      v21 += 8;
    }

    while (v21 != 64);
    v25 = (v187.count[0] + v187.count[1]) ^ __ROR8__(v187.count[1], 51);
    v26 = v187.hash[0] + (v187.hash[1] ^ v23);
    v27 = __ROR8__(v187.hash[1] ^ v23, 48);
    v28 = (v26 ^ v27) + __ROR8__(v187.count[0] + v187.count[1], 32);
    v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
    v30 = v26 + v25;
    v187.hash[0] = __ROR8__(v30, 32);
    v187.hash[1] = v29;
    v187.count[0] = v28 ^ v23;
    v187.count[1] = v30 ^ __ROR8__(v25, 47);
    v13 += v19;
    v187.hash[2] = (v19 + v16) << 56;
    v15 = v20;
LABEL_21:
    if (v15 >= 8)
    {
      v31 = v187.count[1];
      v32 = v187.count[0];
      v33 = v187.hash[1];
      v34 = v187.hash[0];
      do
      {
        v35 = *v13;
        v13 += 8;
        v36 = v35 ^ v33;
        v37 = v32 + v31;
        v38 = v37 ^ __ROR8__(v31, 51);
        v39 = v36 + v34;
        v40 = __ROR8__(v36, 48);
        v41 = (v39 ^ v40) + __ROR8__(v37, 32);
        v33 = v41 ^ __ROR8__(v39 ^ v40, 43);
        v42 = v39 + v38;
        v31 = v42 ^ __ROR8__(v38, 47);
        v34 = __ROR8__(v42, 32);
        v187.hash[0] = v34;
        v187.hash[1] = v33;
        v32 = v41 ^ v35;
        v187.count[0] = v32;
        v187.count[1] = v31;
        v15 -= 8;
        v16 += 8;
      }

      while (v15 > 7);
    }

    v18 = 0;
  }

  if (v15)
  {
    v43 = 0;
    v44 = 0;
    v45 = v15;
    do
    {
      v46 = *v13++;
      v44 |= v46 << v43;
      v43 += 8;
      --v45;
    }

    while (v45);
    if (v18)
    {
      v47 = (v44 << (8 * v18)) | ((v15 + v16) << 56) | v17;
    }

    else
    {
      v47 = v44 | ((v15 + v16) << 56);
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_75;
    }

    v47 = v16 << 56;
  }

  v187.hash[2] = v47;
LABEL_75:

  memset(v188 + 8, 0, 64);
  *&v188[0] = *buf;
  if (*buf > 3000)
  {
    if (*buf <= 4000)
    {
      if (*buf == 3001)
      {
        *(&v188[0] + 1) = _MSV_XXH_XXH64_digest(&v187);
      }

      else if (*buf == 4000)
      {
        CC_MD5_Final(v188 + 8, &v187);
      }
    }

    else
    {
      switch(*buf)
      {
        case 0xFA1:
          CC_SHA1_Final(v188 + 8, &v187);
          break;
        case 0x10A0:
          CC_SHA256_Final(v188 + 8, &v187);
          break;
        case 0x11A0:
          CC_SHA512_Final(v188 + 8, &v187);
          break;
      }
    }

    goto LABEL_112;
  }

  if (*buf > 1999)
  {
    if (*buf != 2000)
    {
      if (*buf != 3000)
      {
        goto LABEL_112;
      }

      if (HIDWORD(v187.count[0]))
      {
        v97 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v187.count[1], xmmword_1A273DD70), vshlq_u32(*&v187.count[1], xmmword_1A273DD60)));
      }

      else
      {
        v97 = LODWORD(v187.hash[0]) + 374761393;
      }

      v101 = LODWORD(v187.count[0]) + v97;
      v102 = &v187.hash[1];
      v103 = v187.hash[3] & 0xF;
      if (v103 >= 4)
      {
        do
        {
          v104 = *v102;
          v102 = (v102 + 4);
          HIDWORD(v105) = v101 - 1028477379 * v104;
          LODWORD(v105) = HIDWORD(v105);
          v101 = 668265263 * (v105 >> 15);
          v103 -= 4;
        }

        while (v103 > 3);
      }

      for (; v103; --v103)
      {
        v106 = *v102;
        v102 = (v102 + 1);
        HIDWORD(v107) = v101 + 374761393 * v106;
        LODWORD(v107) = HIDWORD(v107);
        v101 = -1640531535 * (v107 >> 21);
      }

      v108 = (-2048144777 * (v101 ^ (v101 >> 15))) ^ ((-2048144777 * (v101 ^ (v101 >> 15))) >> 13);
      v109 = (-1028477379 * v108) ^ ((-1028477379 * v108) >> 16);
      goto LABEL_111;
    }

    switch(BYTE3(v187.count[1]))
    {
      case 1u:
        v100 = LOBYTE(v187.count[1]);
        break;
      case 2u:
        v100 = LOWORD(v187.count[1]);
        break;
      case 3u:
        v100 = LOWORD(v187.count[1]) | (BYTE2(v187.count[1]) << 16);
        break;
      default:
        v110 = v187.count[0];
        goto LABEL_110;
    }

    v110 = (461845907 * ((380141568 * v100) | ((-862048943 * v100) >> 17))) ^ LODWORD(v187.count[0]);
LABEL_110:
    v111 = -2048144789 * (HIDWORD(v187.count[0]) ^ v110 ^ ((HIDWORD(v187.count[0]) ^ v110) >> 16));
    v109 = (-1028477387 * (v111 ^ (v111 >> 13))) ^ ((-1028477387 * (v111 ^ (v111 >> 13))) >> 16);
    LODWORD(v187.count[0]) = v109;
LABEL_111:
    DWORD2(v188[0]) = v109;
    goto LABEL_112;
  }

  if (*buf)
  {
    if (*buf == 1000)
    {
      v67 = (v187.count[0] + v187.count[1]) ^ __ROR8__(v187.count[1], 51);
      v68 = v187.hash[0] + (v187.hash[1] ^ v187.hash[2]);
      v69 = __ROR8__(v187.hash[1] ^ v187.hash[2], 48);
      v70 = (v68 ^ v69) + __ROR8__(v187.count[0] + v187.count[1], 32);
      v71 = v70 ^ __ROR8__(v68 ^ v69, 43);
      v72 = v68 + v67;
      v73 = v72 ^ __ROR8__(v67, 47);
      v74 = (v70 ^ v187.hash[2]) + v73;
      v75 = v74 ^ __ROR8__(v73, 51);
      v76 = (__ROR8__(v72, 32) ^ 0xFFLL) + v71;
      v77 = __ROR8__(v71, 48);
      v78 = __ROR8__(v74, 32) + (v76 ^ v77);
      v79 = v78 ^ __ROR8__(v76 ^ v77, 43);
      v80 = v75 + v76;
      v81 = v80 ^ __ROR8__(v75, 47);
      v82 = v81 + v78;
      v83 = v82 ^ __ROR8__(v81, 51);
      v84 = __ROR8__(v80, 32) + v79;
      v85 = __ROR8__(v79, 48);
      v86 = __ROR8__(v82, 32) + (v84 ^ v85);
      v87 = v86 ^ __ROR8__(v84 ^ v85, 43);
      v88 = v83 + v84;
      v89 = v88 ^ __ROR8__(v83, 47);
      v90 = v89 + v86;
      v91 = v90 ^ __ROR8__(v89, 51);
      v92 = __ROR8__(v88, 32) + v87;
      v93 = __ROR8__(v87, 48);
      v94 = __ROR8__(v90, 32) + (v92 ^ v93);
      v95 = v94 ^ __ROR8__(v92 ^ v93, 43);
      v96 = v91 + v92;
      v187.count[0] = v94;
      v187.count[1] = v96 ^ __ROR8__(v91, 47);
      v187.hash[0] = __ROR8__(v96, 32);
      v187.hash[1] = v95;
      *(&v188[0] + 1) = v187.count[1] ^ v94 ^ v187.hash[0] ^ v95;
    }
  }

  else
  {
    v98 = [MEMORY[0x1E696AAA8] currentHandler];
    v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [v98 handleFailureInFunction:v99 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_112:
  v189 = v188[0];
  v190 = v188[1];
  v191 = v188[2];
  v192 = v188[3];
  v193 = *&v188[4];
  if (*&v188[0] > 3999)
  {
    if (*&v188[0] > 4255)
    {
      if (*&v188[0] == 4256)
      {
        v149 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v118 = v149;
        v150 = 0;
        v151 = &v189 + 8;
        do
        {
          v152 = *v151++;
          v153 = &v149[v150];
          *v153 = MSVFastHexStringFromBytes_hexCharacters_55966[v152 >> 4];
          v153[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v152 & 0xF];
          v150 += 2;
        }

        while (v150 != 64);
        v123 = objc_alloc(MEMORY[0x1E696AEC0]);
        v124 = 64;
      }

      else
      {
        if (*&v188[0] != 4512)
        {
          goto LABEL_181;
        }

        v129 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v118 = v129;
        v130 = 0;
        v131 = &v189 + 8;
        do
        {
          v132 = *v131++;
          v133 = &v129[v130];
          *v133 = MSVFastHexStringFromBytes_hexCharacters_55966[v132 >> 4];
          v133[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v132 & 0xF];
          v130 += 2;
        }

        while (v130 != 128);
        v123 = objc_alloc(MEMORY[0x1E696AEC0]);
        v124 = 128;
      }
    }

    else if (*&v188[0] == 4000)
    {
      v140 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v118 = v140;
      v141 = 0;
      v142 = &v189 + 8;
      do
      {
        v143 = *v142++;
        v144 = &v140[v141];
        *v144 = MSVFastHexStringFromBytes_hexCharacters_55966[v143 >> 4];
        v144[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v143 & 0xF];
        v141 += 2;
      }

      while (v141 != 32);
      v123 = objc_alloc(MEMORY[0x1E696AEC0]);
      v124 = 32;
    }

    else
    {
      if (*&v188[0] != 4001)
      {
        goto LABEL_181;
      }

      v117 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v118 = v117;
      v119 = 0;
      v120 = &v189 + 8;
      do
      {
        v121 = *v120++;
        v122 = &v117[v119];
        *v122 = MSVFastHexStringFromBytes_hexCharacters_55966[v121 >> 4];
        v122[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v121 & 0xF];
        v119 += 2;
      }

      while (v119 != 40);
      v123 = objc_alloc(MEMORY[0x1E696AEC0]);
      v124 = 40;
    }

    v116 = [v123 initWithBytesNoCopy:v118 length:v124 encoding:4 freeWhenDone:1];
  }

  else
  {
    if (*&v188[0] <= 2999)
    {
      if (*&v188[0] == 1000)
      {
        v134 = *(&v189 + 1);
        if (*(&v189 + 1))
        {
          v135 = v195 + 1;
          quot = *(&v189 + 1);
          do
          {
            v137 = lldiv(quot, 10);
            quot = v137.quot;
            if (v137.rem >= 0)
            {
              LOBYTE(v138) = v137.rem;
            }

            else
            {
              v138 = -v137.rem;
            }

            *(v135 - 2) = v138 + 48;
            v139 = (v135 - 2);
            --v135;
          }

          while (v137.quot);
          if (v134 < 0)
          {
            *(v135 - 2) = 45;
            v139 = (v135 - 2);
          }

          v116 = CFStringCreateWithBytes(0, v139, v195 - v139, 0x8000100u, 0);
          goto LABEL_158;
        }

        goto LABEL_182;
      }

      if (*&v188[0] == 2000)
      {
        v112 = DWORD2(v189);
        if (DWORD2(v189))
        {
          v113 = v195;
          do
          {
            v114 = ldiv(v112, 10);
            v112 = v114.quot;
            if (v114.rem >= 0)
            {
              LOBYTE(v115) = v114.rem;
            }

            else
            {
              v115 = -v114.rem;
            }

            *--v113 = v115 + 48;
          }

          while (v114.quot);
          v116 = CFStringCreateWithBytes(0, v113, v195 - v113, 0x8000100u, 0);
          goto LABEL_158;
        }

LABEL_182:
        v154 = @"0";
        goto LABEL_159;
      }

LABEL_181:
      v174 = [MEMORY[0x1E696AAA8] currentHandler];
      v175 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
      [v174 handleFailureInFunction:v175 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

      v154 = &stru_1F149ECA8;
      goto LABEL_159;
    }

    if (*&v188[0] == 3000)
    {
      LODWORD(v194[0]) = bswap32(DWORD2(v189));
      v145 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v146 = 0;
      v147 = v145 + 1;
      do
      {
        v148 = *(v194 + v146);
        *(v147 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v148 >> 4];
        *v147 = MSVFastHexStringFromBytes_hexCharacters_55966[v148 & 0xF];
        v147 += 2;
        ++v146;
      }

      while (v146 != 4);
      v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v145 length:8 encoding:4 freeWhenDone:1];
    }

    else
    {
      if (*&v188[0] != 3001)
      {
        goto LABEL_181;
      }

      v194[0] = bswap64(*(&v189 + 1));
      v125 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v126 = 0;
      v127 = v125 + 1;
      do
      {
        v128 = *(v194 + v126);
        *(v127 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v128 >> 4];
        *v127 = MSVFastHexStringFromBytes_hexCharacters_55966[v128 & 0xF];
        v127 += 2;
        ++v126;
      }

      while (v126 != 8);
      v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v125 length:16 encoding:4 freeWhenDone:1];
    }
  }

LABEL_158:
  v154 = v116;
LABEL_159:

  v183 = [(__CFString *)v154 substringToIndex:7];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v156 = v155;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  obj = v179;
  v157 = [obj countByEnumeratingWithState:&v189 objects:buf count:16];
  if (v157)
  {
    v181 = 0;
    v182 = *v190;
LABEL_161:
    v158 = 0;
    while (1)
    {
      if (*v190 != v182)
      {
        objc_enumerationMutation(obj);
      }

      v159 = *(*(&v189 + 1) + 8 * v158);
      v160 = [v185 statementWithString:v184 error:0];
      [v160 bindStringValue:v159 toParameterNamed:@"@identifier"];
      [v160 bindStringValue:v183 toParameterNamed:@"@hashedPersonID"];
      [v160 bindInt64Value:v156 toParameterNamed:@"@now"];
      v161 = [v185 resultsForStatement:v160];
      for (i = 0; ; i = v163)
      {
        v194[0] = 0;
        v163 = [v161 nextObjectWithError:v194];
        v164 = v194[0];

        if (!v163 || v164)
        {
          break;
        }

        v165 = [[MPServerObjectDatabaseAsset alloc] initWithSQLRowResult:v163];
        [v9 addObject:v165];
      }

      [v160 invalidate];
      if (v164)
      {
        v166 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v188[0]) = 138543618;
          *(v188 + 4) = v184;
          WORD6(v188[0]) = 2114;
          *(v188 + 14) = v164;
          _os_log_impl(&dword_1A238D000, v166, OS_LOG_TYPE_FAULT, "SOD: _MPServerObjectDatabaseAssetsMatchingIdentifierSet query='%{public}@' stepError=%{public}@", v188, 0x16u);
        }

        v167 = v164;
        v181 = v164;
      }

      v168 = [v9 count] == 0;

      if (!v168)
      {
        break;
      }

      if (++v158 == v157)
      {
        v157 = [obj countByEnumeratingWithState:&v189 objects:buf count:16];
        if (v157)
        {
          goto LABEL_161;
        }

        break;
      }
    }
  }

  else
  {
    v181 = 0;
  }

LABEL_178:
  v169 = v181;
  v170 = *(a1[7] + 8);
  v171 = *(v170 + 40);
  *(v170 + 40) = v9;

  if (v169)
  {
    v172 = *(a1[7] + 8);
    v173 = *(v172 + 40);
    *(v172 + 40) = MEMORY[0x1E695E0F0];
  }
}

- (void)dealloc
{
  [(MSVSQLStatement *)self->_tokenLookupStatement invalidate];
  [(MSVSQLStatement *)self->_tokenIdentifiersLookupStatement invalidate];
  [(MSVSQLStatement *)self->_tokenRelatedLookupStatement invalidate];
  [(MSVSQLStatement *)self->_payloadFetchStatement invalidate];
  v3.receiver = self;
  v3.super_class = MPServerObjectDatabase;
  [(MPServerObjectDatabase *)&v3 dealloc];
}

- (id)_initWithDatabaseCreationBlock:(id)block
{
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = MPServerObjectDatabase;
  v6 = [(MPServerObjectDatabase *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.MediaPlayer.MPServerObjectDatabase/accessQueue", v7);
    v9 = *(v6 + 5);
    *(v6 + 5) = v8;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = *(v6 + 7);
    *(v6 + 7) = weakObjectsHashTable;

    *(v6 + 8) = 0;
    v12 = *(v6 + 5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MPServerObjectDatabase__initWithDatabaseCreationBlock___block_invoke;
    block[3] = &unk_1E7681358;
    v15 = v6;
    v16 = blockCopy;
    v17 = a2;
    dispatch_async(v12, block);
  }

  return v6;
}

void __57__MPServerObjectDatabase__initWithDatabaseCreationBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  if (([*(a1 + 32) _createDatabaseSchema] & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_FAULT, "SOD: Unable to create database schema. Attempting fallback to in-memory database.", buf, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x1E69B1490]) initWithMemory];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v9 = *(a1 + 32);
    if (!v9[6])
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPServerObjectDatabase.mm" lineNumber:495 description:@"SOD: Unable to create server objects database in-memory"];

      v9 = *(a1 + 32);
    }

    if (([v9 _createDatabaseSchema] & 1) == 0)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPServerObjectDatabase.mm" lineNumber:496 description:@"SOD: Unable to create database schema on disk or in-memory."];
    }
  }

  [*(*(a1 + 32) + 48) _installArraySupport];
  v10 = *(*(a1 + 32) + 48);
  v39 = 0;
  v11 = [v10 statementWithString:@" SELECT objects.rowid error:{explicit, input.idx FROM msv_carray(@ids) AS input INNER JOIN objects ON   (identifier = input.value AND person_id = @personID)", &v39}];
  v12 = v39;
  v13 = *(a1 + 32);
  v14 = *(v13 + 8);
  *(v13 + 8) = v11;

  if (v12)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPServerObjectDatabase.mm" lineNumber:508 description:{@"SOD: failed to create _tokenLookupStatement: %@ %@", @" SELECT objects.rowid, explicit, input.idx FROM msv_carray(@ids) AS input INNER JOIN objects ON   (identifier = input.value AND person_id = @personID)", v12}];
  }

  v15 = *(*(a1 + 32) + 48);
  v38 = v12;
  v16 = [v15 statementWithString:@" SELECT identifier_set error:{input.idx FROM msv_carray(@ids) AS input INNER JOIN objects ON objects.rowid = input.value", &v38}];
  v17 = v38;

  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  *(v18 + 16) = v16;

  if (v17)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPServerObjectDatabase.mm" lineNumber:515 description:{@"SOD: failed to create _tokenIdentifiersLookupStatement: %@ %@", @" SELECT objects.rowid, explicit, input.idx FROM msv_carray(@ids) AS input INNER JOIN objects ON   (identifier = input.value AND person_id = @personID)", v17}];
  }

  v20 = *(*(a1 + 32) + 48);
  v37 = v17;
  v21 = [v20 statementWithString:@" SELECT child.rowid error:{child.explicit, r.suborder FROM object_relationships r INNER JOIN objects parent   ON parent.identifier = r.parent_identifier INNER JOIN objects child   ON child.identifier = r.child_identifier WHERE parent.rowid = @id   AND r.child_key = @childKey   AND r.parent_version_hash = COALESCE(@parentVersionHash, r.parent_version_hash) ORDER BY r.suborder", &v37}];
  v22 = v37;

  v23 = *(a1 + 32);
  v24 = *(v23 + 24);
  *(v23 + 24) = v21;

  if (v22)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPServerObjectDatabase.mm" lineNumber:529 description:{@"SOD: failed to create _tokenRelatedLookupStatement: %@ %@", @" SELECT child.rowid, child.explicit, r.suborder FROM object_relationships r INNER JOIN objects parent   ON parent.identifier = r.parent_identifier INNER JOIN objects child   ON child.identifier = r.child_identifier WHERE parent.rowid = @id   AND r.child_key = @childKey   AND r.parent_version_hash = COALESCE(@parentVersionHash, r.parent_version_hash) ORDER BY r.suborder", v22}];
  }

  v25 = *(*(a1 + 32) + 48);
  v36 = v22;
  v26 = [v25 statementWithString:@"SELECT source error:{payload FROM objects WHERE objects.rowid = @rowid", &v36}];
  v27 = v36;

  v28 = *(a1 + 32);
  v29 = *(v28 + 32);
  *(v28 + 32) = v26;

  if (v27)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPServerObjectDatabase.mm" lineNumber:534 description:{@"SOD: failed to create _payloadFetchStatement: %@ %@", @"SELECT source, payload FROM objects WHERE objects.rowid = @rowid", v27}];
  }
}

- (id)payloadForRelatedEntityWithIdentifierSet:(id)set
{
  setCopy = set;
  personalizedStore = [setCopy personalizedStore];
  personID = [personalizedStore personID];
  v7 = [setCopy preferredStoreStringIdentifierForPersonID:personID];

  if (v7)
  {
    personalizedStore2 = [setCopy personalizedStore];
    personID2 = [personalizedStore2 personID];

    if (![personID2 length])
    {
      v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_INFO, "SOD: payloadForRelatedEntityWithIdentifierSet [missing personID, defaulting to 'Unknown-PersonID']", buf, 2u);
      }

      v11 = *MEMORY[0x1E69E4388];
      personID2 = v11;
    }

    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__34964;
    v24 = __Block_byref_object_dispose__34965;
    v25 = 0;
    accessQueue = self->_accessQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__MPServerObjectDatabase_payloadForRelatedEntityWithIdentifierSet___block_invoke;
    v16[3] = &unk_1E7681900;
    v16[4] = self;
    v17 = v7;
    v18 = personID2;
    v19 = buf;
    v13 = personID2;
    dispatch_sync(accessQueue, v16);
    v14 = *(v21 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __67__MPServerObjectDatabase_payloadForRelatedEntityWithIdentifierSet___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 48) statementWithString:@"SELECT payload FROM objects WHERE identifier = @identifier AND person_id = @personID AND source = @source LIMIT 1" error:0];
  [v2 bindStringValue:a1[5] toParameterNamed:@"@identifier"];
  [v2 bindStringValue:a1[6] toParameterNamed:@"@personID"];
  [v2 bindInt64Value:1 toParameterNamed:@"@source"];
  v3 = [*(a1[4] + 48) resultsForStatement:v2];
  v13 = 0;
  v4 = [v3 nextObjectWithError:&v13];
  v5 = v13;
  v12 = 0;
  v6 = [v4 jsonValueAtColumnIndex:0 error:&v12];
  v7 = v12;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  [v2 invalidate];
  if (v5)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_FAULT, "SOD: payloadForRelatedEntityWithIdentifierSet stepError: %{public}@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_FAULT, "SOD: payloadForRelatedEntityWithIdentifierSet jsonError: %{public}@", buf, 0xCu);
    }
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_recursive_lock_lock_with_options();
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_recursive_lock_lock_with_options();
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_recursive_lock_unlock();
}

- (BOOL)importAssetsFromRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__34964;
  v25 = __Block_byref_object_dispose__34965;
  v26 = 0;
  v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v8 = os_signpost_id_make_with_pointer(v7, requestCopy);

  v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SODImportAssetsFromRequest", " enableTelemetry=YES ", buf, 2u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MPServerObjectDatabase_importAssetsFromRequest_error___block_invoke;
  block[3] = &unk_1E7681330;
  block[4] = self;
  v12 = requestCopy;
  v18 = v12;
  v19 = &v21;
  dispatch_sync(accessQueue, block);
  if (error)
  {
    *error = v22[5];
  }

  v13 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v14 = v13;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v14, OS_SIGNPOST_INTERVAL_END, v8, "SODImportAssetsFromRequest", &unk_1A2797D62, buf, 2u);
  }

  v15 = v22[5] == 0;
  _Block_object_dispose(&v21, 8);

  return v15;
}

void __56__MPServerObjectDatabase_importAssetsFromRequest_error___block_invoke(void *a1)
{
  v2 = [[_MPServerObjectDatabaseImporter alloc] initWithDatabase:?];
  v3 = a1[5];
  obj = 0;
  [v3 performWithDatabaseOperations:v2 error:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

- (void)enumerateAssetsMissingSINFsForHashedPersonID:(id)d usingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MPServerObjectDatabase_enumerateAssetsMissingSINFsForHashedPersonID_usingBlock___block_invoke;
  block[3] = &unk_1E7681568;
  block[4] = self;
  v12 = dCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = dCopy;
  dispatch_sync(accessQueue, block);
}

void __82__MPServerObjectDatabase_enumerateAssetsMissingSINFsForHashedPersonID_usingBlock___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 48) statementWithString:@"SELECT identifier error:{hashed_person_id, flavor, url, mini_sinf, sinfs FROM assets WHERE mini_sinf IS NULL AND sinfs is NULL AND hashed_person_id = @hashedPersonID AND cast(identifier AS INT) != 0", 0}];
  [v2 bindStringValue:a1[5] toParameterNamed:@"@hashedPersonID"];
  v3 = [*(a1[4] + 48) resultsForStatement:v2];
  v4 = 0;
  v10 = 0;
  while (1)
  {
    v9 = 0;
    v5 = [v3 nextObjectWithError:&v9];
    v6 = v9;

    if (!v5 || v6)
    {
      break;
    }

    v7 = [[MPServerObjectDatabaseAsset alloc] initWithSQLRowResult:v5];
    (*(a1[6] + 16))();

    v4 = v5;
    if (v10)
    {
      v6 = 0;
      break;
    }
  }

  [v2 invalidate];
  if (v6)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_FAULT, "SOD: enumerateAssetsMissingSINFsUsingBlock stepError: %{public}@", buf, 0xCu);
    }
  }
}

- (id)hlsAssetMatchingIdentifierSet:(id)set
{
  setCopy = set;
  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SODHLSAssetMatchingIdentifierSet", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [(MPServerObjectDatabase *)self _hlsAssetMatchingIdentifierSet:setCopy query:@"SELECT identifier, hashed_person_id, playlist_url, key_certificate_url, key_server_url, key_server_adam_id, key_server_protocol_type, is_itunes_store_stream FROM hls_assets WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND url_expiration_date > @now"];
  v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v11, OS_SIGNPOST_INTERVAL_END, v6, "SODHLSAssetMatchingIdentifierSet", &unk_1A2797D62, v13, 2u);
  }

  return v9;
}

- (id)assetsWithMiniSINFsMatchingIdentifierSet:(id)set
{
  setCopy = set;
  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SODAssetsWithMiniSINFsMatchingIdentifierSet", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [(MPServerObjectDatabase *)self _assetsMatchingIdentifierSet:setCopy query:@"SELECT identifier, hashed_person_id, flavor, url, mini_sinf, sinfs FROM assets WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND LENGTH(mini_sinf) > 1 AND url_expiration_date > @now"];
  v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v11, OS_SIGNPOST_INTERVAL_END, v6, "SODAssetsWithMiniSINFsMatchingIdentifierSet", &unk_1A2797D62, v13, 2u);
  }

  return v9;
}

- (id)assetsMatchingIdentifierSet:(id)set
{
  setCopy = set;
  v5 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SODAssetsMatchingIdentifierSet", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [(MPServerObjectDatabase *)self _assetsMatchingIdentifierSet:setCopy query:@"SELECT identifier, hashed_person_id, flavor, url, mini_sinf, sinfs FROM assets WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND url_expiration_date > @now"];
  v10 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v11, OS_SIGNPOST_INTERVAL_END, v6, "SODAssetsMatchingIdentifierSet", &unk_1A2797D62, v13, 2u);
  }

  return v9;
}

- (id)relatedIdentifierSetsForParentIdentifierSet:(id)set parentVersionHash:(id)hash childKey:(id)key
{
  v5 = [(MPServerObjectDatabase *)self _relatedIdentifierSetsForParentIdentifierSet:set parentVersionHash:hash childKey:key];

  return v5;
}

- (id)_relatedIdentifierSetsForParentIdentifierSet:(id)set parentVersionHash:(id)hash childKey:(id)key
{
  setCopy = set;
  hashCopy = hash;
  keyCopy = key;
  personalizedStore = [setCopy personalizedStore];
  personID = [personalizedStore personID];

  if (![personID length])
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_INFO, "SOD: relatedIdentifierSetsForParentIdentifierSet [missing personID, defaulting to 'Unknown-PersonID']", buf, 2u);
    }

    v14 = *MEMORY[0x1E69E4388];
    personID = v14;
  }

  v15 = [setCopy prioritizedStoreStringIdentifiersForPersonID:personID];
  if ([v15 count])
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__34964;
    v33 = __Block_byref_object_dispose__34965;
    v34 = 0;
    array = [MEMORY[0x1E695DF70] array];
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__MPServerObjectDatabase__relatedIdentifierSetsForParentIdentifierSet_parentVersionHash_childKey___block_invoke;
    block[3] = &unk_1E767C2C0;
    v22 = personID;
    v23 = v15;
    v24 = hashCopy;
    selfCopy = self;
    v26 = keyCopy;
    v18 = array;
    v27 = v18;
    v28 = buf;
    dispatch_sync(accessQueue, block);
    if (*(v30 + 5))
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v19 = [v18 copy];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

void __98__MPServerObjectDatabase__relatedIdentifierSetsForParentIdentifierSet_parentVersionHash_childKey___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(MPMediaKitEntityTranslatorContext);
  [(MPMediaKitEntityTranslatorContext *)v2 setPersonID:*(a1 + 32)];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 40);
  v24 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v24)
  {
    goto LABEL_45;
  }

  v23 = *v29;
LABEL_3:
  v25 = 0;
  while (2)
  {
    if (*v29 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v3 = *(*(&v28 + 1) + 8 * v25);
    v4 = *(*(a1 + 56) + 48);
    if (*(a1 + 48))
    {
      v5 = [v4 statementWithString:@"SELECT child_identifier FROM object_relationships WHERE parent_identifier = @parentIdentifier AND person_id = @personID AND parent_version_hash = @parentVersionHash AND child_key = @childKey ORDER BY suborder" error:0];
      [v5 bindStringValue:*(a1 + 48) toParameterNamed:@"@parentVersionHash"];
    }

    else
    {
      v5 = [v4 statementWithString:@"SELECT child_identifier FROM object_relationships WHERE parent_identifier = @parentIdentifier AND person_id = @personID AND child_key = @childKey ORDER BY suborder" error:0];
    }

    [v5 bindStringValue:v3 toParameterNamed:@"@parentIdentifier"];
    [v5 bindStringValue:*(a1 + 32) toParameterNamed:@"@personID"];
    [v5 bindStringValue:*(a1 + 64) toParameterNamed:@"@childKey"];
    v26 = v5;
    v6 = [*(*(a1 + 56) + 48) resultsForStatement:v5];
    v7 = 0;
    for (i = 0; ; i = v9)
    {
      v27 = 0;
      v9 = [v6 nextObjectWithError:&v27];
      v10 = v27;

      if (!v9 || v10)
      {
        break;
      }

      v11 = [v9 stringValueAtColumnIndex:0];
      v34 = @"id";
      v35 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v13 = *(a1 + 64);
      if ([v13 isEqualToString:@"MPModelChildSongAlbum"])
      {
        v14 = @"songs";
        goto LABEL_14;
      }

      if ([v13 isEqualToString:@"MPModelChildSongArtists"])
      {
        v14 = @"songs";
        goto LABEL_17;
      }

      if ([v13 isEqualToString:@"MPModelChildAlbumSongs"])
      {
        v14 = @"albums";
        goto LABEL_20;
      }

      if ([v13 isEqualToString:@"MPModelChildAlbumArtists"])
      {
        v14 = @"albums";
        goto LABEL_17;
      }

      if ([v13 isEqualToString:@"MPModelChildAlbumRecordLabels"])
      {
        v14 = @"albums";
        v15 = @"record-labels";
        goto LABEL_21;
      }

      if ([v13 isEqualToString:@"MPModelChildArtistAlbums"])
      {
        v14 = @"artists";
LABEL_14:
        v15 = @"albums";
LABEL_21:
        v16 = [MEMORY[0x1E69B1470] pairWithFirst:v14 second:v15];
        goto LABEL_22;
      }

      if ([v13 isEqualToString:@"MPModelChildPlaylistEntries"])
      {
        v14 = @"playlists";
LABEL_20:
        v15 = @"songs";
        goto LABEL_21;
      }

      if ([v13 isEqualToString:@"MPModelChildRadioStationEvents"])
      {
        v14 = @"stations";
        v15 = @"station-events";
        goto LABEL_21;
      }

      if ([v13 isEqualToString:@"MPModelChildCreditsArtistRelatedArtist"])
      {
        v14 = @"credit-artists";
LABEL_17:
        v15 = @"artists";
        goto LABEL_21;
      }

      v16 = 0;
LABEL_22:

      v17 = [v16 second];

      v18 = [MPMediaKitEntityTranslator translatorForType:v17];
      v19 = [v18 identifiersForPayload:v12 context:v2];
      if (v19)
      {
        [*(a1 + 72) addObject:v19];
      }

      v7 = 1;
    }

    [v26 invalidate];
    if (v10)
    {
      v20 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v33 = v10;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_FAULT, "SOD: relatedIdentifierSetsForParentIdentifierSet stepError: %{public}@", buf, 0xCu);
      }

      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v10);
    }

    if ((v7 & 1) == 0)
    {
      if (++v25 != v24)
      {
        continue;
      }

      v24 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v24)
      {
        break;
      }

      goto LABEL_3;
    }

    break;
  }

LABEL_45:

  objc_autoreleasePoolPop(context);
}

- (id)relatedIdentifierSetsForParentIdentifierSet:(id)set childKey:(id)key
{
  v4 = [(MPServerObjectDatabase *)self _relatedIdentifierSetsForParentIdentifierSet:set parentVersionHash:0 childKey:key];

  return v4;
}

- (id)modelObjectMatchingIdentifierSet:(id)set propertySet:(id)propertySet
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v6 = [(MPServerObjectDatabase *)self modelObjectMatchingIdentifierSet:set propertySet:propertySet error:&v21];
  v7 = v21;
  if (!v7)
  {
    v13 = v6;
    goto LABEL_12;
  }

  v8 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    msv_description = [v7 msv_description];
    *buf = 138543362;
    v23 = msv_description;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "SOD: modelObjectMatchingIdentifierSet: returning nil [non-nil error] error=%{public}@", buf, 0xCu);
  }

  domain = [v7 domain];
  v11 = domain;
  if (domain == @"MPObjectDatabaseError")
  {

LABEL_9:
    v14 = [v7 code] == 1;

    if (v14)
    {
      userInfo = [v7 userInfo];
      v16 = [userInfo objectForKeyedSubscript:@"MissingPropertySetMappingEntityType"];

      userInfo2 = [v7 userInfo];
      v18 = [userInfo2 objectForKeyedSubscript:@"MissingPropertySetMappingRelationshipKey"];

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:255 description:{@"PropertySet does not contain mapping for identifierSet [] matchingEntityType='%@' relationshipKey=%@", v16, v18}];
    }

    goto LABEL_11;
  }

  v12 = [(__CFString *)domain isEqual:@"MPObjectDatabaseError"];

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_11:
  v13 = 0;
LABEL_12:

  return v13;
}

- (id)modelObjectMatchingIdentifierSet:(id)set propertySet:(id)propertySet error:(id *)error
{
  v5 = [(MPServerObjectDatabase *)self _modelObjectMatchingIdentifierSet:set propertySet:propertySet options:0 error:error];

  return v5;
}

- (id)importObjectsFromRequest:(id)request options:(unint64_t)options error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v10 = os_signpost_id_make_with_pointer(v9, requestCopy);

  v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = [v14 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SODImportObjectsFromRequest", " enableTelemetry=YES type=%{public, signpost.telemetry:string1, name=type}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__34964;
  v41 = __Block_byref_object_dispose__34965;
  v42 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__34964;
  v36 = __Block_byref_object_dispose__34965;
  v37 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPServerObjectDatabase_importObjectsFromRequest_options_error___block_invoke;
  block[3] = &unk_1E767C298;
  optionsCopy = options;
  block[4] = self;
  v29 = &v32;
  v16 = requestCopy;
  v28 = v16;
  p_buf = &buf;
  dispatch_sync(accessQueue, block);
  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  v17 = self->_accessQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__MPServerObjectDatabase_importObjectsFromRequest_options_error___block_invoke_2;
  v24[3] = &unk_1E7681330;
  v24[4] = self;
  v18 = v16;
  v25 = v18;
  v26 = &v32;
  dispatch_async(v17, v24);
  v19 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  v20 = v19;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v20, OS_SIGNPOST_INTERVAL_END, v10, "SODImportObjectsFromRequest", &unk_1A2797D62, v23, 2u);
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&buf, 8);

  return v21;
}

void __65__MPServerObjectDatabase_importObjectsFromRequest_options_error___block_invoke(void *a1)
{
  v2 = [[_MPServerObjectDatabaseImporter alloc] initWithDatabase:?];
  v3 = a1[8];
  v4 = a1[5];
  if (v3)
  {
    v12 = 0;
  }

  v5 = [v4 performWithDatabaseOperations:v2 augmentingPayload:(v3 << 63 >> 63) & &v12];
  if (v3)
  {
    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = [*(*(a1[6] + 8) + 40) error];
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __65__MPServerObjectDatabase_importObjectsFromRequest_options_error___block_invoke_2(void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = [*(a1[4] + 56) allObjects];
  os_unfair_recursive_lock_unlock();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPServerObjectDatabase_importObjectsFromRequest_options_error___block_invoke_3;
  v8[3] = &unk_1E7681900;
  v3 = a1[4];
  v4 = a1[5];
  v9 = v2;
  v10 = v3;
  v5 = v4;
  v6 = a1[6];
  v11 = v5;
  v12 = v6;
  v7 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __65__MPServerObjectDatabase_importObjectsFromRequest_options_error___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 database:*(a1 + 40) didFinishImportRequest:*(a1 + 48) result:{*(*(*(a1 + 56) + 8) + 40), v7}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

id __52__MPServerObjectDatabase_sharedServerObjectDatabase__block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x1E69B1490]) initWithMemory];

  return v0;
}

+ (void)setXPCHostApplicationIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "SOD: setXPCHostApplicationIdentifier: %{public}@", &v10, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (_XPCHostApplicationIdentifier && ([identifierCopy isEqualToString:?] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:118 description:@"XPCHostApplicationIdentifier is inconsistent"];
  }

  v7 = [identifierCopy copy];
  v8 = _XPCHostApplicationIdentifier;
  _XPCHostApplicationIdentifier = v7;
}

@end
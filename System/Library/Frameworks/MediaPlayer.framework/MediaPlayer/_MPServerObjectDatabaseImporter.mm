@interface _MPServerObjectDatabaseImporter
- (BOOL)_importAssetFullSINF:(id)f forIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor;
- (BOOL)_importAssetMiniSINF:(id)f forIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor;
- (BOOL)importAssetSinf:(id)sinf type:(int64_t)type forIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor sinfPayload:(id)payload;
- (BOOL)importAssetURLString:(id)string forIdentifiers:(id)identifiers flavor:(int64_t)flavor expirationDate:(id)date;
- (BOOL)importHLSAssetURLString:(id)string keyCertificateURL:(id)l keyServerURL:(id)rL redeliveryId:(int64_t)id protocolType:(id)type isiTunesStoreStream:(BOOL)stream forIdentifiers:(id)identifiers expirationDate:(id)self0;
- (BOOL)importObject:(id)object type:(id)type identifiers:(id)identifiers isExplicitContent:(BOOL)content source:(int64_t)source expiration:(id)expiration;
- (BOOL)relateIdentifiers:(id)identifiers type:(id)type toParentIdentifiers:(id)parentIdentifiers parentVersionHash:(id)hash childKey:(id)key order:(int64_t)order;
- (BOOL)removeRelationshipsForParentIdentifiers:(id)identifiers childKey:(id)key;
- (id)_existingAssetMatchingIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor;
- (id)_existingHLSAssetMatchingIdentifier:(id)identifier hashedPersonID:(id)d;
- (void)dealloc;
- (void)initWithDatabase:(void *)database;
@end

@implementation _MPServerObjectDatabaseImporter

- (void)initWithDatabase:(void *)database
{
  v3 = a2;
  if (database)
  {
    v75.receiver = database;
    v75.super_class = _MPServerObjectDatabaseImporter;
    database = objc_msgSendSuper2(&v75, sel_init);
    if (database)
    {
      v4 = MSVNanoIDCreateTaggedPointer();
      v5 = [@"MPServerObjectDatabaseImport-" stringByAppendingString:v4];
      v6 = [v3 transactionWithName:v5 error:0];
      v7 = database[1];
      database[1] = v6;

      v8 = database[1];
      v74 = 0;
      v9 = [v8 statementWithString:@" INSERT INTO objects(  identifier error:{person_id, source, expiration_date, type, explicit, payload, identifier_set) VALUES(  @identifier, @personID, @source, @expirationDate, @type, @explicit, @payload, @identifierSet) ON CONFLICT (identifier, person_id) DO UPDATE SET   source = excluded.source, expiration_date = excluded.expiration_date, type = excluded.type, explicit = excluded.explicit, payload = excluded.payload, identifier_set = excluded.identifier_set", &v74}];;
      v10 = v74;
      v11 = database[2];
      database[2] = v9;

      if (v10)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1346 description:{@"SOD Importer failed _insertObjectStatement: %@", v10}];
      }

      v12 = database[1];
      v73 = v10;
      v13 = [v12 statementWithString:@" INSERT OR IGNORE INTO objects(  identifier error:{person_id, type, identifier_set) VALUES(  @identifier, @personID, @type, @identifierSet)", &v73}];;
      v14 = v73;

      v15 = database[3];
      database[3] = v13;

      if (v14)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1354 description:{@"SOD Importer failed _insertPlaceholderObjectStatement: %@", v14}];
      }

      v16 = database[1];
      v72 = v14;
      v17 = [v16 statementWithString:@" INSERT OR REPLACE INTO assets(  identifier error:{hashed_person_id, flavor, url, url_expiration_date) VALUES(  @identifier, @hashedPersonID, @flavor, @url, @urlExpirationDate) ", &v72}];;
      v18 = v72;

      v19 = database[5];
      database[5] = v17;

      if (v18)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1364 description:{@"SOD Importer failed _insertAssetURLStatement: %@", v18}];
      }

      v20 = database[1];
      v71 = v18;
      v21 = [v20 statementWithString:@"INSERT OR REPLACE INTO hls_assets (identifier error:{hashed_person_id, url_expiration_date, playlist_url, key_certificate_url, key_server_url, key_server_adam_id, key_server_protocol_type, is_itunes_store_stream) VALUES (@identifier, @hashedPersonID, @urlExpirationDate, @playlistURL, @keyCertificateURL, @keyServerURL, @keyServerAdamID, @keyServerProtocolType, @isiTunesStoreStream)", &v71}];
      v22 = v71;

      v23 = database[6];
      database[6] = v21;

      if (v22)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1367 description:{@"SOD Importer failed _insertHLSAssetURLStatement: %@", v22}];
      }

      v24 = database[1];
      v70 = v22;
      v25 = [v24 statementWithString:@"INSERT OR REPLACE INTO object_relationships (parent_identifier error:{child_identifier, person_id, child_key, suborder, parent_version_hash) VALUES (@parentIdentifier, @childIdentifier, @personID, @childKey, @suborder, @parentVersionHash)", &v70}];
      v26 = v70;

      v27 = database[4];
      database[4] = v25;

      if (v26)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1370 description:{@"SOD Importer failed _insertObjectRelationshipStatement: %@", v26}];
      }

      v28 = database[1];
      v69 = v26;
      v29 = [v28 statementWithString:@"DELETE FROM object_relationships WHERE parent_identifier = @parentIdentifier AND person_id = @personID AND child_key = @childKey" error:&v69];
      v30 = v69;

      v31 = database[7];
      database[7] = v29;

      if (v30)
      {
        currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler6 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1373 description:{@"SOD Importer failed _removeRelationshipsStatement: %@", v30}];
      }

      v32 = database[1];
      v68 = v30;
      v33 = [v32 statementWithString:@"UPDATE assets SET mini_sinf = @miniSINF WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND flavor = @flavor" error:&v68];
      v34 = v68;

      v35 = database[8];
      database[8] = v33;

      if (v34)
      {
        currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler7 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1376 description:{@"SOD Importer failed _updateMiniSINFStatement: %@", v34}];
      }

      v36 = database[1];
      v67 = v34;
      v37 = [v36 statementWithString:@"UPDATE assets SET sinfs = @sinfs WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND flavor = @flavor" error:&v67];
      v38 = v67;

      v39 = database[9];
      database[9] = v37;

      if (v38)
      {
        currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler8 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1379 description:{@"SOD Importer failed _updateSINFStatement: %@", v38}];
      }

      v40 = database[1];
      v66 = v38;
      v41 = [v40 statementWithString:@"UPDATE assets SET url = @url error:{url_expiration_date = @urlExpirationDate WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND flavor = @flavor", &v66}];
      v42 = v66;

      v43 = database[10];
      database[10] = v41;

      if (v42)
      {
        currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler9 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1382 description:{@"SOD Importer failed _updateAssetURLStatement: %@", v42}];
      }

      v44 = database[1];
      v65 = v42;
      v45 = [v44 statementWithString:@"SELECT identifier error:{hashed_person_id, flavor, url, mini_sinf, sinfs FROM assets WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID AND flavor = @flavor", &v65}];
      v46 = v65;

      v47 = database[11];
      database[11] = v45;

      if (v46)
      {
        currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler10 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1385 description:{@"SOD Importer failed _existingAssetStatement: %@", v46}];
      }

      v48 = database[1];
      v64 = v46;
      v49 = [v48 statementWithString:@"SELECT identifier error:{hashed_person_id, playlist_url, key_certificate_url, key_server_url, key_server_adam_id, key_server_protocol_type, is_itunes_store_stream FROM hls_assets WHERE identifier = @identifier AND hashed_person_id = @hashedPersonID", &v64}];
      v50 = v64;

      v51 = database[12];
      database[12] = v49;

      if (v50)
      {
        currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler11 handleFailureInMethod:sel_initWithDatabase_ object:database file:@"MPServerObjectDatabase.mm" lineNumber:1388 description:{@"SOD Importer failed _existingHLSAssetStatement: %@", v50}];
      }
    }
  }

  return database;
}

- (id)_existingHLSAssetMatchingIdentifier:(id)identifier hashedPersonID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  [(MSVSQLStatement *)self->_existingHLSAssetStatement bindStringValue:identifierCopy toParameterNamed:@"@identifier"];
  [(MSVSQLStatement *)self->_existingHLSAssetStatement bindStringValue:dCopy toParameterNamed:@"@hashedPersonID"];
  v8 = [(MSVSQLDatabaseTransaction *)self->_transaction resultsForStatement:self->_existingHLSAssetStatement];
  v14 = 0;
  v9 = [v8 nextObjectWithError:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_FAULT, "SOD: _existingHLSAssetMatchingIdentifier stepError: %{public}@", buf, 0xCu);
    }
  }

  if (v9)
  {
    v12 = [[MPServerObjectDatabaseHLSAsset alloc] initWithSQLRowResult:v9];
  }

  else
  {
    v12 = 0;
  }

  [(MSVSQLStatement *)self->_existingHLSAssetStatement reset];

  return v12;
}

- (id)_existingAssetMatchingIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  [(MSVSQLStatement *)self->_existingAssetStatement bindStringValue:identifierCopy toParameterNamed:@"@identifier"];
  [(MSVSQLStatement *)self->_existingAssetStatement bindStringValue:dCopy toParameterNamed:@"@hashedPersonID"];
  if ((flavor - 1) > 3)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E767C390[flavor - 1];
  }

  [(MSVSQLStatement *)self->_existingAssetStatement bindStringValue:v10 toParameterNamed:@"@flavor"];
  v11 = [(MSVSQLDatabaseTransaction *)self->_transaction resultsForStatement:self->_existingAssetStatement];
  v17 = 0;
  v12 = [v11 nextObjectWithError:&v17];
  v13 = v17;
  if (v13)
  {
    v14 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_FAULT, "SOD: _existingAssetMatchingIdentifier stepError: %{public}@", buf, 0xCu);
    }
  }

  if (v12)
  {
    v15 = [[MPServerObjectDatabaseAsset alloc] initWithSQLRowResult:v12];
  }

  else
  {
    v15 = 0;
  }

  [(MSVSQLStatement *)self->_existingAssetStatement reset];

  return v15;
}

- (BOOL)_importAssetFullSINF:(id)f forIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor
{
  v22 = *MEMORY[0x1E69E9840];
  fCopy = f;
  identifierCopy = identifier;
  dCopy = d;
  [(MSVSQLStatement *)self->_updateSINFStatement bindDataValue:fCopy toParameterNamed:@"@sinfs"];
  [(MSVSQLStatement *)self->_updateSINFStatement bindStringValue:identifierCopy toParameterNamed:@"@identifier"];
  [(MSVSQLStatement *)self->_updateSINFStatement bindStringValue:dCopy toParameterNamed:@"@hashedPersonID"];
  if ((flavor - 1) > 3)
  {
    v13 = @"unknown";
  }

  else
  {
    v13 = off_1E767C390[flavor - 1];
  }

  [(MSVSQLStatement *)self->_updateSINFStatement bindStringValue:v13 toParameterNamed:@"@flavor"];
  transaction = self->_transaction;
  updateSINFStatement = self->_updateSINFStatement;
  v19 = 0;
  [(MSVSQLDatabaseTransaction *)transaction executeStatement:updateSINFStatement error:&v19];
  v16 = v19;
  if (v16)
  {
    v17 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_FAULT, "SOD: importAssetFullSINF: update failed error=%{public}@", buf, 0xCu);
    }
  }

  [(MSVSQLStatement *)self->_updateSINFStatement reset];

  return v16 == 0;
}

- (BOOL)_importAssetMiniSINF:(id)f forIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor
{
  v22 = *MEMORY[0x1E69E9840];
  fCopy = f;
  identifierCopy = identifier;
  dCopy = d;
  [(MSVSQLStatement *)self->_updateMiniSINFStatement bindDataValue:fCopy toParameterNamed:@"@miniSINF"];
  [(MSVSQLStatement *)self->_updateMiniSINFStatement bindStringValue:identifierCopy toParameterNamed:@"@identifier"];
  [(MSVSQLStatement *)self->_updateMiniSINFStatement bindStringValue:dCopy toParameterNamed:@"@hashedPersonID"];
  if ((flavor - 1) > 3)
  {
    v13 = @"unknown";
  }

  else
  {
    v13 = off_1E767C390[flavor - 1];
  }

  [(MSVSQLStatement *)self->_updateMiniSINFStatement bindStringValue:v13 toParameterNamed:@"@flavor"];
  transaction = self->_transaction;
  updateMiniSINFStatement = self->_updateMiniSINFStatement;
  v19 = 0;
  [(MSVSQLDatabaseTransaction *)transaction executeStatement:updateMiniSINFStatement error:&v19];
  v16 = v19;
  if (v16)
  {
    v17 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_FAULT, "SOD: importAssetMiniSINF: update failed error=%{public}@", buf, 0xCu);
    }
  }

  [(MSVSQLStatement *)self->_updateMiniSINFStatement reset];

  return v16 == 0;
}

- (BOOL)removeRelationshipsForParentIdentifiers:(id)identifiers childKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1654 description:{@"Invalid parameter not satisfying: %@", @"childKey"}];
  }

  personalizedStore = [identifiersCopy personalizedStore];
  personID = [personalizedStore personID];
  v11 = [identifiersCopy preferredStoreStringIdentifierForPersonID:personID];

  if (v11)
  {
    personalizedStore2 = [identifiersCopy personalizedStore];
    personID2 = [personalizedStore2 personID];

    if (!personID2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1658 description:@"Cannot remove relationships without a personID"];
    }

    [(MSVSQLStatement *)self->_removeRelationshipsStatement bindStringValue:v11 toParameterNamed:@"@parentIdentifier"];
    [(MSVSQLStatement *)self->_removeRelationshipsStatement bindStringValue:personID2 toParameterNamed:@"@personID"];
    [(MSVSQLStatement *)self->_removeRelationshipsStatement bindStringValue:keyCopy toParameterNamed:@"@childKey"];
    transaction = self->_transaction;
    removeRelationshipsStatement = self->_removeRelationshipsStatement;
    v22 = 0;
    [(MSVSQLDatabaseTransaction *)transaction executeStatement:removeRelationshipsStatement error:&v22];
    v16 = v22;
    v17 = v16 == 0;
    if (v16)
    {
      v18 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v24 = v16;
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_FAULT, "SOD: removeRelationshipsForParentIdentifiersError: %{public}@", buf, 0xCu);
      }
    }

    [(MSVSQLStatement *)self->_removeRelationshipsStatement reset];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)relateIdentifiers:(id)identifiers type:(id)type toParentIdentifiers:(id)parentIdentifiers parentVersionHash:(id)hash childKey:(id)key order:(int64_t)order
{
  v52 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  typeCopy = type;
  parentIdentifiersCopy = parentIdentifiers;
  hashCopy = hash;
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1606 description:{@"Invalid parameter not satisfying: %@", @"childKey"}];
  }

  personalizedStore = [parentIdentifiersCopy personalizedStore];
  personID = [personalizedStore personID];
  v19 = [parentIdentifiersCopy preferredStoreStringIdentifierForPersonID:personID];

  if (v19)
  {
    personalizedStore2 = [identifiersCopy personalizedStore];
    personID2 = [personalizedStore2 personID];
    v22 = [identifiersCopy preferredStoreStringIdentifierForPersonID:personID2];

    if (v22)
    {
      personalizedStore3 = [identifiersCopy personalizedStore];
      personID3 = [personalizedStore3 personID];

      v41 = personID3;
      if (!personID3)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1612 description:@"Cannot relate without a personID"];
      }

      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement bindStringValue:v19 toParameterNamed:@"@parentIdentifier"];
      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement bindStringValue:v22 toParameterNamed:@"@childIdentifier"];
      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement bindStringValue:personID3 toParameterNamed:@"@personID"];
      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement bindStringValue:keyCopy toParameterNamed:@"@childKey"];
      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement bindInt64Value:order toParameterNamed:@"@suborder"];
      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement bindStringValue:hashCopy toParameterNamed:@"@parentVersionHash"];
      transaction = self->_transaction;
      insertObjectRelationshipStatement = self->_insertObjectRelationshipStatement;
      v47 = 0;
      [(MSVSQLDatabaseTransaction *)transaction executeStatement:insertObjectRelationshipStatement error:&v47];
      v27 = v47;
      if (v27)
      {
        v28 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v49 = v27;
          _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_FAULT, "SOD: relateIdentifiers:type:toParentIdentifiers:order: %{public}@", buf, 0xCu);
        }
      }

      [(MSVSQLStatement *)self->_insertObjectRelationshipStatement reset];
      [(MSVSQLStatement *)self->_insertPlaceholderObjectStatement bindStringValue:v22 toParameterNamed:@"@identifier"];
      [(MSVSQLStatement *)self->_insertPlaceholderObjectStatement bindStringValue:personID3 toParameterNamed:@"@personID"];
      [(MSVSQLStatement *)self->_insertPlaceholderObjectStatement bindStringValue:typeCopy toParameterNamed:@"@type"];
      v29 = [identifiersCopy copyWithSource:@"SOD-Placeholder" block:&__block_literal_global_497];
      insertPlaceholderObjectStatement = self->_insertPlaceholderObjectStatement;
      v46 = 0;
      [(MSVSQLStatement *)insertPlaceholderObjectStatement bindJSONConvertible:v29 toParameterNamed:@"@identifierSet" error:&v46];
      v31 = v46;
      if (v31)
      {
        v32 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          v49 = v31;
          v50 = 2114;
          v51 = identifiersCopy;
          _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_FAULT, "SOD: importObject: jsonError: %{public}@ identifiers=%{public}@", buf, 0x16u);
        }

        [(MSVSQLStatement *)self->_insertPlaceholderObjectStatement reset];
        v33 = 0;
      }

      else
      {
        v34 = self->_transaction;
        v35 = self->_insertPlaceholderObjectStatement;
        v45 = 0;
        [(MSVSQLDatabaseTransaction *)v34 executeStatement:v35 error:&v45];
        v36 = v45;
        if (v36)
        {
          v37 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v49 = v36;
            _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_FAULT, "SOD: relateIdentifiers:type:toParentIdentifiers:order: %{public}@", buf, 0xCu);
          }
        }

        [(MSVSQLStatement *)self->_insertPlaceholderObjectStatement reset];
        v33 = (v27 | v36) == 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)importAssetSinf:(id)sinf type:(int64_t)type forIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor sinfPayload:(id)payload
{
  *&v41[5] = *MEMORY[0x1E69E9840];
  sinfCopy = sinf;
  identifierCopy = identifier;
  dCopy = d;
  payloadCopy = payload;
  if (![dCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1562 description:@"Cannot import an asset without personID"];
  }

  if (![identifierCopy length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1563 description:@"Cannot import an asset without identifier"];
  }

  if ([sinfCopy length])
  {
    if (type)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1564 description:@"Cannot import an asset without sinfData"];

    if (type)
    {
      goto LABEL_7;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1565 description:@"Cannot import sinf with invalid type"];

LABEL_7:
  v19 = [(_MPServerObjectDatabaseImporter *)self _existingAssetMatchingIdentifier:identifierCopy hashedPersonID:dCopy flavor:flavor];
  v20 = v19;
  v21 = v19 != 0;
  if (!v19)
  {
    v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v38 = 138543874;
      v39 = identifierCopy;
      v40 = 1024;
      *v41 = flavor;
      v41[2] = 1024;
      *&v41[3] = type;
      v26 = "SOD: importAssetSinf: skipping [asset does not exist] identifiers=%{public}@ flavor=%d sinfType=%d";
      v27 = v24;
      v28 = OS_LOG_TYPE_FAULT;
      v29 = 24;
LABEL_34:
      _os_log_impl(&dword_1A238D000, v27, v28, v26, &v38, v29);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (type == 1)
  {
    sinfs = [v19 sinfs];
    v31 = [payloadCopy isEqualToArray:sinfs];

    if (v31)
    {
      v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        if ((flavor - 1) > 3)
        {
          v32 = @"unknown";
        }

        else
        {
          v32 = off_1E767C370[flavor - 1];
        }

        v38 = 138543618;
        v39 = identifierCopy;
        v40 = 2114;
        *v41 = v32;
        v26 = "SOD: importAssetSinf: skipping [existing fullSinf already in database] id=%{public}@ / flavor=%{public}@";
        goto LABEL_32;
      }

LABEL_35:

      goto LABEL_36;
    }

    if ([(_MPServerObjectDatabaseImporter *)self _importAssetFullSINF:sinfCopy forIdentifier:identifierCopy hashedPersonID:dCopy flavor:flavor])
    {
      v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v38 = 138543618;
      v39 = identifierCopy;
      v40 = 2114;
      *v41 = dCopy;
      v26 = "SOD: importAssetSinf: [success] type=fullSinf identifier=%{public}@ person=%{public}@";
      goto LABEL_26;
    }
  }

  else if (type == 2)
  {
    miniSINF = [v19 miniSINF];
    v23 = [sinfCopy isEqualToData:miniSINF];

    if (v23)
    {
      v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        if ((flavor - 1) > 3)
        {
          v25 = @"unknown";
        }

        else
        {
          v25 = off_1E767C370[flavor - 1];
        }

        v38 = 138543618;
        v39 = identifierCopy;
        v40 = 2114;
        *v41 = v25;
        v26 = "SOD: importAssetSinf: skipping [existing miniSinf already in database] id=%{public}@ / flavor=%{public}@";
LABEL_32:
        v27 = v24;
        v28 = OS_LOG_TYPE_DEBUG;
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    if ([(_MPServerObjectDatabaseImporter *)self _importAssetMiniSINF:sinfCopy forIdentifier:identifierCopy hashedPersonID:dCopy flavor:flavor])
    {
      v24 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v38 = 138543618;
      v39 = identifierCopy;
      v40 = 2114;
      *v41 = dCopy;
      v26 = "SOD: importAssetSinf: [success] type=miniSinf identifier=%{public}@ person=%{public}@";
LABEL_26:
      v27 = v24;
      v28 = OS_LOG_TYPE_INFO;
LABEL_33:
      v29 = 22;
      goto LABEL_34;
    }
  }

  v21 = 0;
LABEL_36:

  return v21;
}

- (BOOL)importHLSAssetURLString:(id)string keyCertificateURL:(id)l keyServerURL:(id)rL redeliveryId:(int64_t)id protocolType:(id)type isiTunesStoreStream:(BOOL)stream forIdentifiers:(id)identifiers expirationDate:(id)self0
{
  streamCopy = stream;
  v141[0] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  lCopy = l;
  rLCopy = rL;
  typeCopy = type;
  identifiersCopy = identifiers;
  dateCopy = date;
  personalizedStore = [identifiersCopy personalizedStore];
  personID = [personalizedStore personID];

  if (personID)
  {
    v118 = [identifiersCopy preferredStoreStringIdentifierForPersonID:personID];
    if (!v118)
    {
      v22 = 0;
LABEL_116:

      goto LABEL_117;
    }

    if (!id)
    {
      universalStore = [identifiersCopy universalStore];
      id = [universalStore subscriptionAdamID];

      if (!id)
      {
        universalStore2 = [identifiersCopy universalStore];
        id = [universalStore2 adamID];

        if (!id)
        {
          v23 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_16;
          }

          *buf = 138543362;
          *&buf[4] = v118;
          v24 = "SOD: importHLSAssetURLString: skipping [no keyServerAdamID (redeliveryId or adamID)] id=%{public}@";
          goto LABEL_15;
        }
      }
    }

    if ((!lCopy || !rLCopy) && (!streamCopy || ([typeCopy isEqualToString:@"simplified"] & 1) == 0))
    {
      v23 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        v22 = 0;
LABEL_115:

        goto LABEL_116;
      }

      *buf = 138543362;
      *&buf[4] = v118;
      v24 = "SOD: importHLSAssetURLString: skipping [no key server URLs for non-store stream] id=%{public}@";
LABEL_15:
      _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
      goto LABEL_16;
    }

    idCopy = id;
    v19 = personID;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    memset(&buf[8], 0, 32);
    *buf = 4001;
    CC_SHA1_Init(&buf[8]);
    v20 = v19;
    v21 = v20;
    CC_SHA1_Update(&buf[8], [v20 UTF8String], objc_msgSend(v20, "length"));

    memset(&v137[8], 0, 64);
    *v137 = 4001;
    CC_SHA1_Final(&v137[8], &buf[8]);
    v138[0] = *v137;
    v138[1] = *&v137[16];
    v138[2] = *&v137[32];
    v138[3] = *&v137[48];
    v139 = *&v137[64];
    if (*v137 > 3999)
    {
      if (*v137 > 4255)
      {
        if (*v137 == 4256)
        {
          v62 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
          v31 = v62;
          v63 = 0;
          v64 = v138 + 8;
          do
          {
            v65 = *v64++;
            v66 = &v62[v63];
            *v66 = MSVFastHexStringFromBytes_hexCharacters_55966[v65 >> 4];
            v66[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v65 & 0xF];
            v63 += 2;
          }

          while (v63 != 64);
          v36 = objc_alloc(MEMORY[0x1E696AEC0]);
          v37 = 64;
        }

        else
        {
          if (*v137 != 4512)
          {
            goto LABEL_77;
          }

          v42 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
          v31 = v42;
          v43 = 0;
          v44 = v138 + 8;
          do
          {
            v45 = *v44++;
            v46 = &v42[v43];
            *v46 = MSVFastHexStringFromBytes_hexCharacters_55966[v45 >> 4];
            v46[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v45 & 0xF];
            v43 += 2;
          }

          while (v43 != 128);
          v36 = objc_alloc(MEMORY[0x1E696AEC0]);
          v37 = 128;
        }
      }

      else if (*v137 == 4000)
      {
        v53 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v31 = v53;
        v54 = 0;
        v55 = v138 + 8;
        do
        {
          v56 = *v55++;
          v57 = &v53[v54];
          *v57 = MSVFastHexStringFromBytes_hexCharacters_55966[v56 >> 4];
          v57[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v56 & 0xF];
          v54 += 2;
        }

        while (v54 != 32);
        v36 = objc_alloc(MEMORY[0x1E696AEC0]);
        v37 = 32;
      }

      else
      {
        if (*v137 != 4001)
        {
          goto LABEL_77;
        }

        v30 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v31 = v30;
        v32 = 0;
        v33 = v138 + 8;
        do
        {
          v34 = *v33++;
          v35 = &v30[v32];
          *v35 = MSVFastHexStringFromBytes_hexCharacters_55966[v34 >> 4];
          v35[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v34 & 0xF];
          v32 += 2;
        }

        while (v32 != 40);
        v36 = objc_alloc(MEMORY[0x1E696AEC0]);
        v37 = 40;
      }

      v29 = [v36 initWithBytesNoCopy:v31 length:v37 encoding:4 freeWhenDone:1];
    }

    else
    {
      if (*v137 <= 2999)
      {
        if (*v137 == 1000)
        {
          v47 = *(&v138[0] + 1);
          if (*(&v138[0] + 1))
          {
            v48 = v141 + 1;
            quot = *(&v138[0] + 1);
            do
            {
              v50 = lldiv(quot, 10);
              quot = v50.quot;
              if (v50.rem >= 0)
              {
                LOBYTE(v51) = v50.rem;
              }

              else
              {
                v51 = -v50.rem;
              }

              *(v48 - 2) = v51 + 48;
              v52 = (v48 - 2);
              --v48;
            }

            while (v50.quot);
            if (v47 < 0)
            {
              *(v48 - 2) = 45;
              v52 = (v48 - 2);
            }

            v29 = CFStringCreateWithBytes(0, v52, v141 - v52, 0x8000100u, 0);
            goto LABEL_65;
          }

LABEL_84:
          v67 = @"0";
LABEL_66:

          v23 = [(__CFString *)v67 substringToIndex:7];

          v68 = self->_insertHLSAssetURLStatement;
          v69 = [(_MPServerObjectDatabaseImporter *)self _existingHLSAssetMatchingIdentifier:v118 hashedPersonID:v23];
          if (!v69)
          {
LABEL_102:
            [(MSVSQLStatement *)v68 bindStringValue:v118 toParameterNamed:@"@identifier", v111];
            [(MSVSQLStatement *)v68 bindStringValue:v23 toParameterNamed:@"@hashedPersonID"];
            [dateCopy timeIntervalSinceReferenceDate];
            [(MSVSQLStatement *)v68 bindInt64Value:v101 toParameterNamed:@"@urlExpirationDate"];
            [(MSVSQLStatement *)v68 bindStringValue:stringCopy toParameterNamed:@"@playlistURL"];
            absoluteString = [lCopy absoluteString];
            v103 = absoluteString;
            if (absoluteString)
            {
              v104 = absoluteString;
            }

            else
            {
              v104 = &stru_1F149ECA8;
            }

            [(MSVSQLStatement *)v68 bindStringValue:v104 toParameterNamed:@"@keyCertificateURL"];

            absoluteString2 = [rLCopy absoluteString];
            v106 = absoluteString2;
            if (absoluteString2)
            {
              v107 = absoluteString2;
            }

            else
            {
              v107 = &stru_1F149ECA8;
            }

            [(MSVSQLStatement *)v68 bindStringValue:v107 toParameterNamed:@"@keyServerURL"];

            [(MSVSQLStatement *)v68 bindInt64Value:idCopy toParameterNamed:@"@keyServerAdamID"];
            [(MSVSQLStatement *)v68 bindStringValue:typeCopy toParameterNamed:@"@keyServerProtocolType"];
            [(MSVSQLStatement *)v68 bindBoolValue:streamCopy toParameterNamed:@"@isiTunesStoreStream"];
            transaction = self->_transaction;
            v124 = 0;
            [(MSVSQLDatabaseTransaction *)transaction executeStatement:v68 error:&v124];
            v74 = v124;
            v22 = v74 == 0;
            if (v74)
            {
              v109 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
              if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                *&buf[4] = v74;
                _os_log_impl(&dword_1A238D000, v109, OS_LOG_TYPE_FAULT, "SOD: importHLSAssetURLString: failed [SQL error] upsertAssetError=%{public}@", buf, 0xCu);
              }
            }

            else
            {
              ++self->_importedHLSAssetsCount;
            }

            [(MSVSQLStatement *)v68 reset];
LABEL_114:

            goto LABEL_115;
          }

          v112 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
          playlistURL = [v69 playlistURL];
          v71 = v112;
          v72 = playlistURL;
          v73 = v71;
          v74 = v73;
          if (v72 == v73)
          {
          }

          else
          {
            v75 = [v72 isEqual:v73];

            if ((v75 & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          if (lCopy)
          {
            keyCertificateURL = [v69 keyCertificateURL];
            v77 = lCopy;
            v78 = keyCertificateURL;
            v79 = v77;
            v80 = v79;
            v114 = v78;
            if (v78 == v79)
            {
            }

            else
            {
              v81 = [v78 isEqual:v79];

              if ((v81 & 1) == 0)
              {

LABEL_75:
LABEL_101:

                goto LABEL_102;
              }
            }
          }

          if (rLCopy)
          {
            keyServerURL = [v69 keyServerURL];
            v85 = rLCopy;
            v86 = keyServerURL;
            v87 = v85;
            v88 = v87;
            v113 = v86;
            if (v86 == v87)
            {
            }

            else
            {
              v89 = [v86 isEqual:v87];

              if ((v89 & 1) == 0)
              {
                v90 = 0;
                goto LABEL_92;
              }
            }
          }

          keyServerAdamID = [v69 keyServerAdamID];
          if ([keyServerAdamID longLongValue] == idCopy)
          {
            [v69 keyServerProtocolType];
            v92 = v111 = keyServerAdamID;
            v93 = typeCopy;
            v94 = v92;
            v95 = v93;
            v96 = v95;
            if (v94 == v95)
            {
            }

            else
            {
              v97 = [v94 isEqual:v95];

              if ((v97 & 1) == 0)
              {
                v98 = rLCopy == 0;

                goto LABEL_91;
              }
            }

            isiTunesStoreStream = [v69 isiTunesStoreStream];

            v90 = isiTunesStoreStream ^ streamCopy ^ 1;
            if (rLCopy)
            {
LABEL_92:

              if (lCopy)
              {
                goto LABEL_93;
              }

              goto LABEL_100;
            }

LABEL_99:
            if (lCopy)
            {
LABEL_93:

              if ((v90 & 1) == 0)
              {
                goto LABEL_101;
              }

LABEL_94:
              v99 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v118;
                _os_log_impl(&dword_1A238D000, v99, OS_LOG_TYPE_DEBUG, "SOD: importHLSAssetURLString: skipping [existing asset already in database] id=%{public}@", buf, 0xCu);
              }

              v22 = 1;
              goto LABEL_114;
            }

LABEL_100:

            if (!v90)
            {
              goto LABEL_101;
            }

            goto LABEL_94;
          }

          v98 = rLCopy == 0;

LABEL_91:
          v90 = 0;
          if (!v98)
          {
            goto LABEL_92;
          }

          goto LABEL_99;
        }

        if (*v137 == 2000)
        {
          v25 = DWORD2(v138[0]);
          if (DWORD2(v138[0]))
          {
            v26 = v141;
            do
            {
              v27 = ldiv(v25, 10);
              v25 = v27.quot;
              if (v27.rem >= 0)
              {
                LOBYTE(v28) = v27.rem;
              }

              else
              {
                v28 = -v27.rem;
              }

              *--v26 = v28 + 48;
            }

            while (v27.quot);
            v29 = CFStringCreateWithBytes(0, v26, v141 - v26, 0x8000100u, 0);
            goto LABEL_65;
          }

          goto LABEL_84;
        }

LABEL_77:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
        [currentHandler handleFailureInFunction:v83 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

        v67 = &stru_1F149ECA8;
        goto LABEL_66;
      }

      if (*v137 == 3000)
      {
        LODWORD(v140[0]) = bswap32(DWORD2(v138[0]));
        v58 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
        v59 = 0;
        v60 = v58 + 1;
        do
        {
          v61 = *(v140 + v59);
          *(v60 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v61 >> 4];
          *v60 = MSVFastHexStringFromBytes_hexCharacters_55966[v61 & 0xF];
          v60 += 2;
          ++v59;
        }

        while (v59 != 4);
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v58 length:8 encoding:4 freeWhenDone:1];
      }

      else
      {
        if (*v137 != 3001)
        {
          goto LABEL_77;
        }

        v140[0] = bswap64(*(&v138[0] + 1));
        v38 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
        v39 = 0;
        v40 = v38 + 1;
        do
        {
          v41 = *(v140 + v39);
          *(v40 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v41 >> 4];
          *v40 = MSVFastHexStringFromBytes_hexCharacters_55966[v41 & 0xF];
          v40 += 2;
          ++v39;
        }

        while (v39 != 8);
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v38 length:16 encoding:4 freeWhenDone:1];
      }
    }

LABEL_65:
    v67 = v29;
    goto LABEL_66;
  }

  v22 = 0;
LABEL_117:

  return v22;
}

- (BOOL)importAssetURLString:(id)string forIdentifiers:(id)identifiers flavor:(int64_t)flavor expirationDate:(id)date
{
  v113[0] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifiersCopy = identifiers;
  dateCopy = date;
  v94 = identifiersCopy;
  personalizedStore = [identifiersCopy personalizedStore];
  personID = [personalizedStore personID];
  v12 = [v94 preferredStoreStringIdentifierForPersonID:personID];

  if (v12)
  {
    v91 = v12;
    personalizedStore2 = [v94 personalizedStore];
    personID2 = [personalizedStore2 personID];

    v87 = personID2;
    if (!personID2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1459 description:@"Cannot import an asset without a personID"];
    }

    v15 = personID2;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    memset(&buf[8], 0, 32);
    *buf = 4001;
    CC_SHA1_Init(&buf[8]);
    v95 = v15;
    v16 = v95;
    CC_SHA1_Update(&buf[8], [v95 UTF8String], objc_msgSend(v95, "length"));

    memset(&v109[8], 0, 64);
    *v109 = 4001;
    CC_SHA1_Final(&v109[8], &buf[8]);
    v110[0] = *v109;
    v110[1] = *&v109[16];
    v110[2] = *&v109[32];
    v110[3] = *&v109[48];
    v111 = *&v109[64];
    if (*v109 > 3999)
    {
      if (*v109 > 4255)
      {
        if (*v109 == 4256)
        {
          v55 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
          v24 = v55;
          v56 = 0;
          v57 = v110 + 8;
          do
          {
            v58 = *v57++;
            v59 = &v55[v56];
            *v59 = MSVFastHexStringFromBytes_hexCharacters_55966[v58 >> 4];
            v59[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v58 & 0xF];
            v56 += 2;
          }

          while (v56 != 64);
          v29 = objc_alloc(MEMORY[0x1E696AEC0]);
          v30 = 64;
        }

        else
        {
          if (*v109 != 4512)
          {
            goto LABEL_74;
          }

          v35 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
          v24 = v35;
          v36 = 0;
          v37 = v110 + 8;
          do
          {
            v38 = *v37++;
            v39 = &v35[v36];
            *v39 = MSVFastHexStringFromBytes_hexCharacters_55966[v38 >> 4];
            v39[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v38 & 0xF];
            v36 += 2;
          }

          while (v36 != 128);
          v29 = objc_alloc(MEMORY[0x1E696AEC0]);
          v30 = 128;
        }
      }

      else if (*v109 == 4000)
      {
        v46 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v24 = v46;
        v47 = 0;
        v48 = v110 + 8;
        do
        {
          v49 = *v48++;
          v50 = &v46[v47];
          *v50 = MSVFastHexStringFromBytes_hexCharacters_55966[v49 >> 4];
          v50[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v49 & 0xF];
          v47 += 2;
        }

        while (v47 != 32);
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = 32;
      }

      else
      {
        if (*v109 != 4001)
        {
          goto LABEL_74;
        }

        v23 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v24 = v23;
        v25 = 0;
        v26 = v110 + 8;
        do
        {
          v27 = *v26++;
          v28 = &v23[v25];
          *v28 = MSVFastHexStringFromBytes_hexCharacters_55966[v27 >> 4];
          v28[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v27 & 0xF];
          v25 += 2;
        }

        while (v25 != 40);
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = 40;
      }

      v22 = [v29 initWithBytesNoCopy:v24 length:v30 encoding:4 freeWhenDone:{1, v87}];
    }

    else
    {
      if (*v109 <= 2999)
      {
        if (*v109 == 1000)
        {
          v40 = *(&v110[0] + 1);
          if (*(&v110[0] + 1))
          {
            v41 = v113 + 1;
            quot = *(&v110[0] + 1);
            do
            {
              v43 = lldiv(quot, 10);
              quot = v43.quot;
              if (v43.rem >= 0)
              {
                LOBYTE(v44) = v43.rem;
              }

              else
              {
                v44 = -v43.rem;
              }

              *(v41 - 2) = v44 + 48;
              v45 = (v41 - 2);
              --v41;
            }

            while (v43.quot);
            if (v40 < 0)
            {
              *(v41 - 2) = 45;
              v45 = (v41 - 2);
            }

            v22 = CFStringCreateWithBytes(0, v45, v113 - v45, 0x8000100u, 0);
            goto LABEL_52;
          }

LABEL_75:
          v60 = @"0";
LABEL_53:

          v89 = [(__CFString *)v60 substringToIndex:7];

          v61 = self->_insertAssetURLStatement;
          v62 = [(_MPServerObjectDatabaseImporter *)self _existingAssetMatchingIdentifier:v12 hashedPersonID:v89 flavor:flavor];
          v63 = [v62 url];
          v64 = v63 == 0;

          if (v64)
          {
LABEL_63:
            [(MSVSQLStatement *)v61 bindStringValue:v91 toParameterNamed:@"@identifier", v87];
            [(MSVSQLStatement *)v61 bindStringValue:v89 toParameterNamed:@"@hashedPersonID"];
            if ((flavor - 1) > 3)
            {
              v78 = @"unknown";
            }

            else
            {
              v78 = off_1E767C390[flavor - 1];
            }

            [(MSVSQLStatement *)v61 bindStringValue:v78 toParameterNamed:@"@flavor"];
            [(MSVSQLStatement *)v61 bindStringValue:stringCopy toParameterNamed:@"@url"];
            [dateCopy timeIntervalSinceReferenceDate];
            [(MSVSQLStatement *)v61 bindInt64Value:v79 toParameterNamed:@"@urlExpirationDate"];
            transaction = self->_transaction;
            v96 = 0;
            [(MSVSQLDatabaseTransaction *)transaction executeStatement:v61 error:&v96];
            v65 = v96;
            v17 = v65 == 0;
            if (v65)
            {
              v81 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
              if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                *&buf[4] = v65;
                _os_log_impl(&dword_1A238D000, v81, OS_LOG_TYPE_FAULT, "SOD: importAssetURLString: failed [SQL error] upsertAssetError=%{public}@", buf, 0xCu);
              }
            }

            else
            {
              ++self->_importedAssetsCount;
            }

            [(MSVSQLStatement *)v61 reset];
            goto LABEL_72;
          }

          v65 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
          host = [v65 host];
          v67 = [v62 url];
          host2 = [v67 host];
          if ([host isEqual:host2])
          {
            path = [v65 path];
            v70 = [v62 url];
            path2 = [v70 path];
            v72 = [path isEqual:path2];

            if (!v72)
            {
LABEL_62:

              goto LABEL_63;
            }

            v73 = [v62 url];
            v74 = [v73 isEqual:v65];

            v75 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
            v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG);
            if (v74)
            {
              if (v76)
              {
                if ((flavor - 1) > 3)
                {
                  v77 = @"unknown";
                }

                else
                {
                  v77 = off_1E767C370[flavor - 1];
                }

                *buf = 138543618;
                *&buf[4] = v91;
                *&buf[12] = 2114;
                *&buf[14] = v77;
                _os_log_impl(&dword_1A238D000, v75, OS_LOG_TYPE_DEBUG, "SOD: importAssetURLString: skipping [existing asset already in database] id=%{public}@ / flavor=%{public}@", buf, 0x16u);
              }

              v17 = 1;
LABEL_72:

              v12 = v91;
              goto LABEL_73;
            }

            if (v76)
            {
              if ((flavor - 1) > 3)
              {
                v85 = @"unknown";
              }

              else
              {
                v85 = off_1E767C370[flavor - 1];
              }

              *buf = 138543618;
              *&buf[4] = v91;
              *&buf[12] = 2114;
              *&buf[14] = v85;
              _os_log_impl(&dword_1A238D000, v75, OS_LOG_TYPE_DEBUG, "SOD: importAssetURLString: updating URL [existing asset already in database] id=%{public}@ / flavor=%{public}@", buf, 0x16u);
            }

            host = v61;
            v61 = self->_updateAssetURLStatement;
          }

          else
          {
          }

          goto LABEL_62;
        }

        if (*v109 == 2000)
        {
          v18 = DWORD2(v110[0]);
          if (DWORD2(v110[0]))
          {
            v19 = v113;
            do
            {
              v20 = ldiv(v18, 10);
              v18 = v20.quot;
              if (v20.rem >= 0)
              {
                LOBYTE(v21) = v20.rem;
              }

              else
              {
                v21 = -v20.rem;
              }

              *--v19 = v21 + 48;
            }

            while (v20.quot);
            v22 = CFStringCreateWithBytes(0, v19, v113 - v19, 0x8000100u, 0);
            goto LABEL_52;
          }

          goto LABEL_75;
        }

LABEL_74:
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
        [currentHandler2 handleFailureInFunction:v84 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

        v60 = &stru_1F149ECA8;
        goto LABEL_53;
      }

      if (*v109 == 3000)
      {
        LODWORD(v112[0]) = bswap32(DWORD2(v110[0]));
        v51 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
        v52 = 0;
        v53 = v51 + 1;
        do
        {
          v54 = *(v112 + v52);
          *(v53 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v54 >> 4];
          *v53 = MSVFastHexStringFromBytes_hexCharacters_55966[v54 & 0xF];
          v53 += 2;
          ++v52;
        }

        while (v52 != 4);
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v51 length:8 encoding:4 freeWhenDone:1];
      }

      else
      {
        if (*v109 != 3001)
        {
          goto LABEL_74;
        }

        v112[0] = bswap64(*(&v110[0] + 1));
        v31 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
        v32 = 0;
        v33 = v31 + 1;
        do
        {
          v34 = *(v112 + v32);
          *(v33 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v34 >> 4];
          *v33 = MSVFastHexStringFromBytes_hexCharacters_55966[v34 & 0xF];
          v33 += 2;
          ++v32;
        }

        while (v32 != 8);
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v31 length:16 encoding:4 freeWhenDone:1];
      }
    }

LABEL_52:
    v60 = v22;
    goto LABEL_53;
  }

  v17 = 0;
LABEL_73:

  return v17;
}

- (BOOL)importObject:(id)object type:(id)type identifiers:(id)identifiers isExplicitContent:(BOOL)content source:(int64_t)source expiration:(id)expiration
{
  contentCopy = content;
  v51 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  typeCopy = type;
  identifiersCopy = identifiers;
  expirationCopy = expiration;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1412 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  personalizedStore = [identifiersCopy personalizedStore];
  personID = [personalizedStore personID];

  if (!personID)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabase.mm" lineNumber:1414 description:@"Cannot import an object without a personID"];
  }

  v21 = [identifiersCopy preferredStoreStringIdentifierForPersonID:personID];
  if (v21)
  {
    [(MSVSQLStatement *)self->_insertObjectStatement bindStringValue:v21 toParameterNamed:@"@identifier"];
    [(MSVSQLStatement *)self->_insertObjectStatement bindStringValue:personID toParameterNamed:@"@personID"];
    [(MSVSQLStatement *)self->_insertObjectStatement bindInt64Value:source toParameterNamed:@"@source"];
    [(MSVSQLStatement *)self->_insertObjectStatement bindStringValue:typeCopy toParameterNamed:@"@type"];
    [(MSVSQLStatement *)self->_insertObjectStatement bindBoolValue:contentCopy toParameterNamed:@"@explicit"];
    insertObjectStatement = self->_insertObjectStatement;
    [expirationCopy timeIntervalSinceReferenceDate];
    [(MSVSQLStatement *)insertObjectStatement bindInt64Value:v23 toParameterNamed:@"@expirationDate"];
    v24 = self->_insertObjectStatement;
    v44 = 0;
    [(MSVSQLStatement *)v24 bindJSONValue:objectCopy toParameterNamed:@"@payload" error:&v44];
    v25 = v44;
    if (v25)
    {
      v26 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v46 = v25;
        v47 = 2114;
        v48 = objectCopy;
        _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_FAULT, "SOD: importObject: jsonError: %{public}@ payload=%{public}@", buf, 0x16u);
      }

      [(MSVSQLStatement *)self->_insertObjectStatement reset];
    }

    else
    {
      v28 = self->_insertObjectStatement;
      v43 = 0;
      [(MSVSQLStatement *)v28 bindJSONConvertible:identifiersCopy toParameterNamed:@"@identifierSet" error:&v43];
      v29 = v43;
      if (!v29)
      {
        transaction = self->_transaction;
        v33 = self->_insertObjectStatement;
        v42 = 0;
        [(MSVSQLDatabaseTransaction *)transaction executeStatement:v33 error:&v42];
        v34 = v42;
        v27 = v34 == 0;
        v35 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
        v41 = v34;
        if (v34)
        {
          v36 = v35;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v46 = v34;
            _os_log_impl(&dword_1A238D000, v36, OS_LOG_TYPE_FAULT, "SOD: insertObjectError: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v37 = v35;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            if (source > 2)
            {
              v38 = @"UNDEF";
            }

            else
            {
              v38 = off_1E767C358[source];
            }

            *buf = 138543874;
            v46 = v38;
            v47 = 2114;
            v48 = v21;
            v49 = 2114;
            v50 = typeCopy;
            _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_INFO, "SOD: importObject: imported object [success] source=%{public}@ identifier=%{public}@ type=%{public}@", buf, 0x20u);
          }

          ++self->_importedObjectsCount;
        }

        [(MSVSQLStatement *)self->_insertObjectStatement reset];

        v25 = 0;
        goto LABEL_16;
      }

      v25 = v29;
      v30 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v46 = v25;
        v47 = 2114;
        v48 = identifiersCopy;
        _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_FAULT, "SOD: importObject: jsonError: %{public}@ identifiers=%{public}@", buf, 0x16u);
      }

      [(MSVSQLStatement *)self->_insertObjectStatement reset];
    }

    v27 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v27 = 0;
LABEL_17:

  return v27;
}

- (void)dealloc
{
  [(MSVSQLStatement *)self->_insertObjectStatement invalidate];
  [(MSVSQLStatement *)self->_insertPlaceholderObjectStatement invalidate];
  [(MSVSQLStatement *)self->_insertObjectRelationshipStatement invalidate];
  [(MSVSQLStatement *)self->_insertAssetURLStatement invalidate];
  [(MSVSQLStatement *)self->_insertHLSAssetURLStatement invalidate];
  [(MSVSQLStatement *)self->_removeRelationshipsStatement invalidate];
  [(MSVSQLStatement *)self->_updateMiniSINFStatement invalidate];
  [(MSVSQLStatement *)self->_updateAssetURLStatement invalidate];
  [(MSVSQLStatement *)self->_updateSINFStatement invalidate];
  [(MSVSQLStatement *)self->_existingAssetStatement invalidate];
  [(MSVSQLStatement *)self->_existingHLSAssetStatement invalidate];
  [(MSVSQLDatabaseTransaction *)self->_transaction commit];
  v3.receiver = self;
  v3.super_class = _MPServerObjectDatabaseImporter;
  [(_MPServerObjectDatabaseImporter *)&v3 dealloc];
}

@end
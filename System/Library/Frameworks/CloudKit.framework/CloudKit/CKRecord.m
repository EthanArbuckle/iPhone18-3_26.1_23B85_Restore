@interface CKRecord
+ (CKRecord)recordWithDuplicatedPackagesOfRecord:(id)a3 error:(id *)a4;
+ (id)decryptFullToken:(id)a3 shortSharingTokenData:(id)a4;
+ (id)encryptFullToken:(id)a3 shortSharingTokenData:(id)a4;
+ (id)fullTokenFromBaseToken:(id)a3 privateToken:(id)a4;
+ (id)shareURLWithShortToken:(id)a3 shareTitle:(id)a4 shareType:(id)a5 containerID:(id)a6 displayedHostname:(id)a7;
+ (void)initialize;
- (BOOL)canSkipRecordSaveForMergeables;
- (BOOL)containsAssetBackedMergeableDeltas;
- (BOOL)containsAssetValues;
- (BOOL)containsIndexedKeys;
- (BOOL)containsMergeableValues;
- (BOOL)containsMergeableValuesWithDeltasToSave;
- (BOOL)containsPackageValues;
- (BOOL)containsValueOfClasses:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (BOOL)hasChainPCS;
- (BOOL)hasEncryptedData;
- (BOOL)hasModifiedEncryptedData;
- (BOOL)hasModifiedPropertiesRequiringEncryption;
- (BOOL)hasPropertiesRequiringDecryption;
- (BOOL)hasPropertiesRequiringEncryption;
- (BOOL)isMoreRecentThanRecord:(id)a3;
- (BOOL)prepareMergeablesForUploadInContainer:(id)a3 useAssetsIfNecessary:(BOOL)a4 error:(id *)a5;
- (BOOL)trackChanges;
- (CKEncryptedData)mutableEncryptedPSK;
- (CKRecord)init;
- (CKRecord)initWithCoder:(id)a3;
- (CKRecord)initWithRecordTransport:(id)a3;
- (CKRecord)initWithRecordType:(CKRecordType)recordType;
- (CKRecord)initWithRecordType:(CKRecordType)recordType recordID:(CKRecordID *)recordID;
- (CKRecord)initWithRecordType:(CKRecordType)recordType zoneID:(CKRecordZoneID *)zoneID;
- (CKRecordType)recordType;
- (CKReference)parent;
- (CKReference)share;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (NSArray)allKeys;
- (NSArray)allPCSKeyIDs;
- (NSArray)allTokens;
- (NSArray)changedKeys;
- (NSArray)conflictLoserEtags;
- (NSArray)tombstonedPublicKeyIDs;
- (NSData)encryptedFullTokenData;
- (NSData)encryptedPublicSharingKey;
- (NSData)mutableEncryptedPublicSharingKeyData;
- (NSData)shortSharingTokenData;
- (NSData)shortSharingTokenHashData;
- (NSDictionary)originalValues;
- (NSDictionary)pluginFields;
- (NSDictionary)values;
- (NSSet)changedKeysSet;
- (NSString)baseToken;
- (NSString)debugDescription;
- (NSString)displayedHostname;
- (NSString)fullToken;
- (NSString)privateToken;
- (NSString)recordChangeTag;
- (NSString)shortToken;
- (NSURL)URL;
- (NSURL)uncachedURL;
- (_PCSIdentityData)signingPCSIdentity;
- (id)_allStrings;
- (id)_copyWithOptions:(int64_t)a3;
- (id)allValues;
- (id)conciseDescription;
- (id)copyWithOriginalValues;
- (id)copyWithZone:(_NSZone *)a3 recordID:(id)a4 userFields:(BOOL)a5 systemFields:(BOOL)a6;
- (id)decryptFullToken:(id)a3;
- (id)initInternalSkippingValidationWithRecordType:(id)a3 recordID:(id)a4;
- (id)objectForKey:(CKRecordFieldKey)key;
- (id)objectForKeyedSubscript:(CKRecordFieldKey)key;
- (id)shortSharingToken;
- (unint64_t)assetCount;
- (unint64_t)assetDiskSize;
- (unint64_t)size;
- (void)CKAssignToContainerWithID:(id)a3;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)copyStreamingAssetServerFieldsFromServerRecord:(id)a3;
- (void)countMergeableValueMetrics:(id)a3;
- (void)dealloc;
- (void)encodeSystemFieldsWithCoder:(NSCoder *)coder;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateKeysAndValuesOfClasses:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)preTiboEncodeWithCoder:(id)a3;
- (void)replaceRecordIDWith:(id)a3;
- (void)resetChangedKeys;
- (void)setAllPCSKeyIDs:(id)a3;
- (void)setBaseToken:(id)a3;
- (void)setChangedKeysSet:(id)a3;
- (void)setConflictLoserEtags:(id)a3;
- (void)setDisplayedHostname:(id)a3;
- (void)setExpirationAfterTimeInterval:(id)a3;
- (void)setMutableEncryptedPSK:(id)a3;
- (void)setMutableEncryptedPublicSharingKeyData:(id)a3;
- (void)setNilValueForKey:(id)a3;
- (void)setObject:(id)object forKey:(CKRecordFieldKey)key;
- (void)setObjectNoValidate:(id)a3 forKey:(id)a4;
- (void)setParent:(CKReference *)parent;
- (void)setParentReferenceFromRecord:(CKRecord *)parentRecord;
- (void)setParentReferenceFromRecordID:(CKRecordID *)parentRecordID;
- (void)setPluginFields:(id)a3;
- (void)setRecordChangeTag:(id)a3;
- (void)setRecordType:(id)a3;
- (void)setShare:(id)a3;
- (void)setSigningPCSIdentity:(_PCSIdentityData *)a3;
- (void)setStreamingAssetRequestOptions:(id)a3;
- (void)setTombstonedPublicKeyIDs:(id)a3;
- (void)setTrackChanges:(BOOL)a3;
- (void)updateMergeablesForSuccessfulSave;
- (void)updateWithSavedRecordXPCMetadata:(id)a3 shouldOnlySaveAssetContent:(BOOL)a4;
@end

@implementation CKRecord

+ (void)initialize
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v8[0] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v8, 1);
  sub_1886CEE50(a1, v3, v5, 0, 0);

  MethodImplementation = class_getMethodImplementation(a1, sel_initWithRecordType_recordID_);
  class_addMethod(a1, sel__initSkippingValidationWithRecordType_recordID_, MethodImplementation, "@@:@@");
  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  signingPCSIdentity = self->_signingPCSIdentity;
  if (signingPCSIdentity)
  {
    CFRelease(signingPCSIdentity);
    self->_signingPCSIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = CKRecord;
  [(CKRecord *)&v4 dealloc];
}

- (CKRecordType)recordType
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_recordType;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)recordChangeTag
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_etag;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)size
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_valueStore(self, a2, v2);
  objc_sync_enter(v4);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v7 = objc_msgSend_values(v4, v5, v6);
  v10 = objc_msgSend_allKeys(v7, v8, v9);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v89, v94, 16);
  obj = v4;
  if (v14)
  {
    v15 = *v90;
    v16 = 64;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v90 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v89 + 1) + 8 * i);
        v19 = objc_msgSend_values(v4, v12, v13);
        v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v18);

        v22 = sub_188583D6C(self, v21, v18);
        v16 += v22;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v89, v94, 16);
    }

    while (v14);
  }

  else
  {
    v16 = 64;
  }

  objc_sync_exit(v4);
  v25 = objc_msgSend_encryptedValueStore(self, v23, v24);
  objc_sync_enter(v25);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v28 = objc_msgSend_values(v25, v26, v27);
  v31 = objc_msgSend_allKeys(v28, v29, v30);

  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v85, v93, 16);
  if (v35)
  {
    v36 = *v86;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v86 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v85 + 1) + 8 * j);
        v39 = objc_msgSend_values(v25, v33, v34);
        v41 = objc_msgSend_objectForKeyedSubscript_(v39, v40, v38);

        v42 = sub_188583D6C(self, v41, v38);
        v16 += v42;
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v85, v93, 16);
    }

    while (v35);
  }

  objc_sync_exit(v25);
  v45 = objc_msgSend_recordID(self, v43, v44);
  v48 = objc_msgSend_size(v45, v46, v47);

  if (qword_1ED4B6198 != -1)
  {
    dispatch_once(&qword_1ED4B6198, &unk_1EFA2ED68);
  }

  v51 = qword_1ED4B6190;
  v52 = objc_msgSend_recordType(self, v49, v50);
  v55 = objc_msgSend_length(v52, v53, v54);
  v56 = v55 + 2;
  if (v55 >= 0x80)
  {
    do
    {
      ++v56;
      v57 = v55 >> 14;
      v55 >>= 7;
    }

    while (v57);
  }

  v60 = objc_msgSend_share(self, v58, v59);
  v63 = v60;
  v64 = v48 + v16 + v51 + v56;
  if (v60)
  {
    v65 = objc_msgSend_recordID(v60, v61, v62);
    v68 = objc_msgSend_size(v65, v66, v67);
    v69 = v68 + 2;
    if (v68 >= 0x80)
    {
      do
      {
        ++v69;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
    }

    v64 += v69;
  }

  v71 = objc_msgSend_parent(self, v61, v62);
  v74 = v71;
  if (v71)
  {
    v75 = objc_msgSend_recordID(v71, v72, v73);
    v78 = objc_msgSend_size(v75, v76, v77);
    v79 = v78 + 2;
    if (v78 >= 0x80)
    {
      do
      {
        ++v79;
        v80 = v78 >> 14;
        v78 >>= 7;
      }

      while (v80);
    }

    v64 += v79;
  }

  if (objc_msgSend_hasPropertiesRequiringEncryption(self, v72, v73))
  {
    v81 = v64 + 503;
  }

  else
  {
    v81 = v64;
  }

  v82 = *MEMORY[0x1E69E9840];
  return v81;
}

- (BOOL)hasPropertiesRequiringEncryption
{
  v25[4] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_chainPrivateKey(self, a2, v2);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v10 = objc_msgSend_mutableEncryptedPSK(self, v4, v5);
    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = objc_msgSend_valueStore(self, v8, v9);
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v25[2] = objc_opt_class();
      v25[3] = objc_opt_class();
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v25, 4);
      if (objc_msgSend_containsValueOfClasses_passingTest_(v11, v14, v13, &unk_1EFA2EE48))
      {
        v7 = 1;
      }

      else
      {
        v17 = objc_msgSend_encryptedValueStore(self, v15, v16);
        v20 = objc_msgSend_allKeys(v17, v18, v19);
        v7 = objc_msgSend_count(v20, v21, v22) != 0;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CKEncryptedData)mutableEncryptedPSK
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_mutableEncryptedPSK;
  objc_sync_exit(v2);

  return v3;
}

- (CKReference)share
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_share;
  objc_sync_exit(v2);

  return v3;
}

- (CKReference)parent
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_parent;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)conflictLoserEtags
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_conflictLoserEtags;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)privateToken
{
  v3 = objc_msgSend_mutableEncryptedPSK(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);
  v9 = objc_msgSend_CKBase64URLSafeString(v6, v7, v8);

  return v9;
}

- (NSData)shortSharingTokenHashData
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_shortSharingToken(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_UTF8String(v3, v4, v5, 0, 0, 0, 0);
    v9 = objc_msgSend_lengthOfBytesUsingEncoding_(v6, v8, 4);
    CC_SHA256(v7, v9, &v14);
    v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, &v14, 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)shortSharingToken
{
  v3 = objc_msgSend_shortSharingTokenData(self, a2, v2);
  v6 = objc_msgSend_CKBase64URLSafeString(v3, v4, v5);

  return v6;
}

- (NSData)encryptedFullTokenData
{
  v4 = objc_msgSend_fullToken(self, a2, v2);
  v7 = objc_msgSend_shortSharingTokenData(self, v5, v6);
  v9 = objc_msgSend_encryptFullToken_shortSharingTokenData_(CKRecord, v8, v4, v7);

  return v9;
}

- (NSString)fullToken
{
  v4 = objc_msgSend_baseToken(self, a2, v2);
  v7 = objc_msgSend_privateToken(self, v5, v6);
  v9 = objc_msgSend_fullTokenFromBaseToken_privateToken_(CKRecord, v8, v4, v7);

  return v9;
}

- (NSData)shortSharingTokenData
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_fullToken(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_UTF8String(v3, v4, v5, 0, 0, 0, 0);
    v9 = objc_msgSend_lengthOfBytesUsingEncoding_(v6, v8, 4);
    CC_SHA256(v7, v9, &v14);
    v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, &v14, 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)hasPropertiesRequiringDecryption
{
  v28[4] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_chainPrivateKey(self, a2, v2);
  if (objc_msgSend_needsDecryption(v4, v5, v6))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_msgSend_mutableEncryptedPSK(self, v7, v8);
    if (objc_msgSend_needsDecryption(v10, v11, v12))
    {
      v9 = 1;
    }

    else
    {
      v15 = objc_msgSend_valueStore(self, v13, v14);
      v28[0] = objc_opt_class();
      v28[1] = objc_opt_class();
      v28[2] = objc_opt_class();
      v28[3] = objc_opt_class();
      v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v28, 4);
      if (objc_msgSend_containsValueOfClasses_passingTest_(v15, v18, v17, &unk_1EFA2EE88))
      {
        v9 = 1;
      }

      else
      {
        v21 = objc_msgSend_encryptedValueStore(self, v19, v20);
        v27[0] = objc_opt_class();
        v27[1] = objc_opt_class();
        v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v27, 2);
        v9 = objc_msgSend_containsValueOfClasses_passingTest_(v21, v24, v23, &unk_1EFA2EEA8);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSArray)allKeys
{
  v4 = objc_msgSend_valueStore(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v10 = objc_msgSend_encryptedValueStore(self, v8, v9);
  v13 = objc_msgSend_allKeys(v10, v11, v12);
  v15 = objc_msgSend_arrayByAddingObjectsFromArray_(v7, v14, v13);

  return v15;
}

- (BOOL)containsAssetBackedMergeableDeltas
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v8, 1);
  LOBYTE(self) = objc_msgSend_containsValueOfClasses_passingTest_(self, v5, v4, &unk_1EFA2EF28);

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (unint64_t)assetCount
{
  v14[3] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v14, 3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1884466D0;
  v9[3] = &unk_1E70BE060;
  v9[4] = &v10;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(self, v5, v4, v9);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)assetDiskSize
{
  v14[3] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v14, 3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18844694C;
  v9[3] = &unk_1E70BE060;
  v9[4] = &v10;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(self, v5, v4, v9);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)trackChanges
{
  v2 = self;
  objc_sync_enter(v2);
  trackChanges = v2->_trackChanges;
  objc_sync_exit(v2);

  return trackChanges;
}

- (NSArray)tombstonedPublicKeyIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_tombstonedPublicKeyIDs;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)containsAssetValues
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_valueStore(self, a2, v2);
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v18, 3);
  if (objc_msgSend_containsValueOfClasses_passingTest_(v4, v7, v6, &unk_1EFA2EDE8))
  {
    v10 = 1;
  }

  else
  {
    v11 = objc_msgSend_encryptedValueStore(self, v8, v9);
    v17 = objc_opt_class();
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, &v17, 1);
    v10 = objc_msgSend_containsValueOfClasses_passingTest_(v11, v14, v13, &unk_1EFA2EE08);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSString)baseToken
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_baseToken;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)hasEncryptedData
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_chainPrivateKey(self, a2, v2);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v10 = objc_msgSend_mutableEncryptedPSK(self, v4, v5);
    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = objc_msgSend_valueStore(self, v8, v9);
      v25[0] = objc_opt_class();
      v7 = 1;
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v25, 1);
      if ((objc_msgSend_containsValueOfClasses_passingTest_(v11, v14, v13, &unk_1EFA2EEC8) & 1) == 0)
      {
        v17 = objc_msgSend_encryptedValueStore(self, v15, v16);
        v20 = objc_msgSend_allKeys(v17, v18, v19);
        v7 = objc_msgSend_count(v20, v21, v22) != 0;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)displayedHostname
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_displayedHostname;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)allPCSKeyIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_allPCSKeyIDs;
  objc_sync_exit(v2);

  return v3;
}

- (NSDictionary)pluginFields
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_pluginFields;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_description(self, v4, v5);
  objc_msgSend_appendString_(v3, v7, v6);

  objc_msgSend_appendString_(v3, v8, @"\n{\n");
  if (objc_msgSend_permission(self, v9, v10) == 2)
  {
    objc_msgSend_appendFormat_(v3, v11, @"\tREAD-ONLY\n");
  }

  if (objc_msgSend_isMergeableValueDeltaRecord(self, v11, v12))
  {
    objc_msgSend_appendFormat_(v3, v13, @"\tMERGEABLE DELTA PARTIAL RECORD\n");
  }

  v15 = objc_msgSend_creatorUserRecordID(self, v13, v14);
  objc_msgSend_appendFormat_(v3, v16, @"\tcreatorUserRecordID -> %@\n", v15);

  v19 = objc_msgSend_lastModifiedUserRecordID(self, v17, v18);
  objc_msgSend_appendFormat_(v3, v20, @"\tlastModifiedUserRecordID -> %@\n", v19);

  v23 = objc_msgSend_creationDate(self, v21, v22);
  objc_msgSend_appendFormat_(v3, v24, @"\tcreationDate -> %@\n", v23);

  v27 = objc_msgSend_modificationDate(self, v25, v26);
  objc_msgSend_appendFormat_(v3, v28, @"\tmodificationDate -> %@\n", v27);

  v33 = objc_msgSend_expirationDate(self, v29, v30);
  if (v33)
  {
    isExpired = objc_msgSend_isExpired(self, v31, v32);
    v36 = @" (expired)";
    if (!isExpired)
    {
      v36 = &stru_1EFA32970;
    }

    objc_msgSend_appendFormat_(v3, v35, @"\texpirationDate -> %@%@\n", v33, v36);
  }

  v37 = objc_msgSend_protectionData(self, v31, v32);
  v40 = v37;
  if (v37)
  {
    objc_msgSend_appendFormat_(v3, v38, @"\tprotectionData -> %@\n", v37);
  }

  v79 = v40;
  v41 = objc_msgSend_pcsKeysToRemove(self, v38, v39);

  if (v41)
  {
    v44 = objc_msgSend_pcsKeysToRemove(self, v42, v43);
    objc_msgSend_appendFormat_(v3, v45, @"\tpcsKeysToRemove -> %@\n", v44);
  }

  v46 = objc_msgSend_modifiedByDevice(self, v42, v43);
  if (objc_msgSend_length(v46, v47, v48))
  {
    objc_msgSend_appendFormat_(v3, v49, @"\tmodifiedByDevice -> %@\n", v46);
  }

  v51 = objc_msgSend_conflictLoserEtags(self, v49, v50);
  v54 = v51;
  if (v51)
  {
    objc_msgSend_appendFormat_(v3, v52, @"\tconflictLoserEtags -> %@\n", v51);
  }

  v55 = objc_msgSend_tombstonedPublicKeyIDs(self, v52, v53);
  v58 = v55;
  if (v55)
  {
    objc_msgSend_appendFormat_(v3, v56, @"\ttombstonedPublicKeyIDs -> %@\n", v55);
  }

  v61 = objc_msgSend_share(self, v56, v57);
  if (v61)
  {
    if (objc_msgSend_hasUpdatedShare(self, v59, v60))
    {
      objc_msgSend_appendFormat_(v3, v62, @"\tshare -> %@%@\n", v61, @" (updated)");
    }

    else
    {
      objc_msgSend_appendFormat_(v3, v62, @"\tshare -> %@%@\n", v61, &stru_1EFA32970);
    }
  }

  v65 = objc_msgSend_parent(self, v59, v60);
  if (v65)
  {
    if (objc_msgSend_hasUpdatedParent(self, v63, v64))
    {
      objc_msgSend_appendFormat_(v3, v66, @"\tparent-> %@%@\n", v65, @" (updated)");
    }

    else
    {
      objc_msgSend_appendFormat_(v3, v66, @"\tparent-> %@%@\n", v65, &stru_1EFA32970);
    }
  }

  v80 = v33;
  if (objc_msgSend_needsRollAndCounterSign(self, v63, v64))
  {
    objc_msgSend_appendFormat_(v3, v67, @"\tneedsRollAndCounterSign -> YES\n");
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188447A68;
  aBlock[3] = &unk_1E70BDFD0;
  v68 = v3;
  v82 = v68;
  v69 = _Block_copy(aBlock);
  v72 = objc_msgSend_valueStore(self, v70, v71);
  v69[2](v69, v72, 0);

  v75 = objc_msgSend_encryptedValueStore(self, v73, v74);
  (v69)[2](v69, v75, @"encrypted");

  objc_msgSend_appendString_(v68, v76, @"}");
  v77 = v68;

  return v68;
}

- (BOOL)hasChainPCS
{
  v6 = objc_msgSend_chainProtectionInfo(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_chainPrivateKey(self, v4, v5);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CKRecord)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"You must call [%@ initWithRecordType:]", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)initInternalSkippingValidationWithRecordType:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = CKRecord;
  v10 = [(CKRecord *)&v26 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    recordType = v10->_recordType;
    v10->_recordType = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    recordID = v10->_recordID;
    v10->_recordID = v15;

    v17 = [CKRecordValueStore alloc];
    v19 = objc_msgSend_initWithRecord_(v17, v18, v10);
    valueStore = v10->_valueStore;
    v10->_valueStore = v19;

    v21 = [CKEncryptedRecordValueStore alloc];
    v23 = objc_msgSend_initWithRecord_(v21, v22, v10);
    encryptedValueStore = v10->_encryptedValueStore;
    v10->_encryptedValueStore = v23;

    v10->_knownToServer = 0;
    v10->_trackChanges = 1;
    v10->_hasUpdatedExpirationTimeInterval = 0;
  }

  return v10;
}

- (CKRecord)initWithRecordType:(CKRecordType)recordType recordID:(CKRecordID *)recordID
{
  v6 = recordType;
  v7 = recordID;
  v29 = 0;
  v8 = _CKCheckArgument("recordType", v6, 1, 1, 0, &v29);
  v9 = v29;
  v10 = v9;
  if ((v8 & 1) == 0 || (v9, objc_msgSend_recordName(v7, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v28 = 0, v14 = _CKCheckArgument("recordID.recordName", v13, 0, 1, 0, &v28), v10 = v28, v13, (v14 & 1) == 0))
  {
    v18 = [CKException alloc];
    v21 = objc_msgSend_code(v10, v19, v20);
    v24 = objc_msgSend_localizedDescription(v10, v22, v23);
    v26 = objc_msgSend_initWithCode_format_(v18, v25, v21, @"%@", v24);
    v27 = v26;

    objc_exception_throw(v26);
  }

  inited = objc_msgSend_initInternalSkippingValidationWithRecordType_recordID_(self, v15, v6, v7);
  return inited;
}

- (CKRecord)initWithRecordType:(CKRecordType)recordType
{
  v4 = recordType;
  v5 = [CKRecordID alloc];
  v6 = CKCreateGUID();
  v8 = objc_msgSend_initWithRecordName_(v5, v7, v6);

  v10 = objc_msgSend_initWithRecordType_recordID_(self, v9, v4, v8);
  return v10;
}

- (CKRecord)initWithRecordType:(CKRecordType)recordType zoneID:(CKRecordZoneID *)zoneID
{
  v6 = zoneID;
  v7 = recordType;
  v8 = [CKRecordID alloc];
  v9 = CKCreateGUID();
  v11 = objc_msgSend_initWithRecordName_zoneID_(v8, v10, v9, v6);

  v13 = objc_msgSend_initWithRecordType_recordID_(self, v12, v7, v11);
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3 recordID:(id)a4 userFields:(BOOL)a5 systemFields:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a4;
  v10 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_recordType(self, v11, v12);
  inited = objc_msgSend_initInternalSkippingValidationWithRecordType_recordID_(v10, v14, v13, v9);

  if (v7)
  {
    v18 = objc_msgSend_valueStore(self, v16, v17);
    v21 = objc_msgSend_copy(v18, v19, v20);
    v22 = *(inited + 168);
    *(inited + 168) = v21;

    v25 = *(inited + 168);
    if (v25)
    {
      objc_storeWeak((v25 + 40), inited);
    }

    v26 = objc_msgSend_encryptedValueStore(self, v23, v24);
    v29 = objc_msgSend_copy(v26, v27, v28);
    v30 = *(inited + 176);
    *(inited + 176) = v29;

    v33 = *(inited + 176);
    if (v33)
    {
      objc_storeWeak((v33 + 40), inited);
    }

    v34 = objc_msgSend_pluginFields(self, v31, v32);
    objc_msgSend_setPluginFields_(inited, v35, v34);
  }

  if (v6)
  {
    v36 = objc_msgSend_creationDate(self, v16, v17);
    v39 = objc_msgSend_copy(v36, v37, v38);
    v40 = *(inited + 144);
    *(inited + 144) = v39;

    v43 = objc_msgSend_modificationDate(self, v41, v42);
    v46 = objc_msgSend_copy(v43, v44, v45);
    v47 = *(inited + 160);
    *(inited + 160) = v46;

    v50 = objc_msgSend_creatorUserRecordID(self, v48, v49);
    v53 = objc_msgSend_copy(v50, v51, v52);
    v54 = *(inited + 136);
    *(inited + 136) = v53;

    v57 = objc_msgSend_lastModifiedUserRecordID(self, v55, v56);
    v60 = objc_msgSend_copy(v57, v58, v59);
    v61 = *(inited + 152);
    *(inited + 152) = v60;

    v64 = objc_msgSend_modifiedByDevice(self, v62, v63);
    v65 = *(inited + 320);
    *(inited + 320) = v64;

    v68 = objc_msgSend_etag(self, v66, v67);
    v71 = objc_msgSend_copy(v68, v69, v70);
    v72 = *(inited + 16);
    *(inited + 16) = v71;

    v75 = objc_msgSend_conflictLoserEtags(self, v73, v74);
    v78 = objc_msgSend_CKDeepCopy(v75, v76, v77);
    v79 = *(inited + 120);
    *(inited + 120) = v78;

    *(inited + 34) = objc_msgSend_isKnownToServer(self, v80, v81);
    *(inited + 35) = objc_msgSend_wasCached(self, v82, v83);
    *(inited + 30) = objc_msgSend_serializeProtectionData(self, v84, v85);
    v88 = objc_msgSend_protectionData(self, v86, v87);
    v91 = objc_msgSend_copy(v88, v89, v90);
    v92 = *(inited + 328);
    *(inited + 328) = v91;

    v95 = objc_msgSend_previousProtectionEtag(self, v93, v94);
    v98 = objc_msgSend_copy(v95, v96, v97);
    v99 = *(inited + 208);
    *(inited + 208) = v98;

    v102 = objc_msgSend_protectionEtag(self, v100, v101);
    v105 = objc_msgSend_copy(v102, v103, v104);
    v106 = *(inited + 216);
    *(inited + 216) = v105;

    v109 = objc_msgSend_zoneProtectionEtag(self, v107, v108);
    v112 = objc_msgSend_copy(v109, v110, v111);
    v113 = *(inited + 224);
    *(inited + 224) = v112;

    v116 = objc_msgSend_shareEtag(self, v114, v115);
    v119 = objc_msgSend_copy(v116, v117, v118);
    v120 = *(inited + 232);
    *(inited + 232) = v119;

    v123 = objc_msgSend_zoneishKeyID(self, v121, v122);
    v126 = objc_msgSend_copy(v123, v124, v125);
    v127 = *(inited + 200);
    *(inited + 200) = v126;

    v130 = objc_msgSend_pcsKeyID(self, v128, v129);
    v133 = objc_msgSend_copy(v130, v131, v132);
    v134 = *(inited + 248);
    *(inited + 248) = v133;

    v137 = objc_msgSend_allPCSKeyIDs(self, v135, v136);
    v140 = objc_msgSend_CKDeepCopy(v137, v138, v139);
    v141 = *(inited + 96);
    *(inited + 96) = v140;

    *(inited + 37) = objc_msgSend_useLightweightPCS(self, v142, v143);
    *(inited + 38) = objc_msgSend_wantsPublicSharingKey(self, v144, v145);
    v148 = objc_msgSend_routingKey(self, v146, v147);
    v151 = objc_msgSend_copy(v148, v149, v150);
    v152 = *(inited + 336);
    *(inited + 336) = v151;

    v155 = objc_msgSend_baseToken(self, v153, v154);
    v158 = objc_msgSend_copy(v155, v156, v157);
    v159 = *(inited + 64);
    *(inited + 64) = v158;

    v162 = objc_msgSend_mutableEncryptedPSK(self, v160, v161);
    v165 = objc_msgSend_copy(v162, v163, v164);
    v166 = *(inited + 72);
    *(inited + 72) = v165;

    v169 = objc_msgSend_displayedHostname(self, v167, v168);
    v172 = objc_msgSend_copy(v169, v170, v171);
    v173 = *(inited + 80);
    *(inited + 80) = v172;

    v176 = objc_msgSend_mutableURL(self, v174, v175);
    v179 = objc_msgSend_copy(v176, v177, v178);
    v180 = *(inited + 304);
    *(inited + 304) = v179;

    v183 = objc_msgSend_share(self, v181, v182);
    v186 = objc_msgSend_copy(v183, v184, v185);
    v187 = *(inited + 48);
    *(inited + 48) = v186;

    v190 = objc_msgSend_previousShare(self, v188, v189);
    v193 = objc_msgSend_copy(v190, v191, v192);
    v194 = *(inited + 256);
    *(inited + 256) = v193;

    *(inited + 32) = objc_msgSend_hasUpdatedShare(self, v195, v196);
    v199 = objc_msgSend_parent(self, v197, v198);
    v202 = objc_msgSend_copy(v199, v200, v201);
    v203 = *(inited + 56);
    *(inited + 56) = v202;

    v206 = objc_msgSend_previousParent(self, v204, v205);
    v209 = objc_msgSend_copy(v206, v207, v208);
    v210 = *(inited + 264);
    *(inited + 264) = v209;

    *(inited + 33) = objc_msgSend_hasUpdatedParent(self, v211, v212);
    v215 = objc_msgSend_chainPrivateKey(self, v213, v214);
    v218 = objc_msgSend_copy(v215, v216, v217);
    v219 = *(inited + 272);
    *(inited + 272) = v218;

    v222 = objc_msgSend_chainProtectionInfo(self, v220, v221);
    v225 = objc_msgSend_copy(v222, v223, v224);
    v226 = *(inited + 280);
    *(inited + 280) = v225;

    v229 = objc_msgSend_chainParentPublicKeyID(self, v227, v228);
    v232 = objc_msgSend_copy(v229, v230, v231);
    v233 = *(inited + 288);
    *(inited + 288) = v232;

    *(inited + 36) = objc_msgSend_wantsChainPCS(self, v234, v235);
    v238 = objc_msgSend_tombstonedPublicKeyIDs(self, v236, v237);
    v241 = objc_msgSend_CKDeepCopy(v238, v239, v240);
    v242 = *(inited + 104);
    *(inited + 104) = v241;

    *(inited + 24) = objc_msgSend_trackChanges(self, v243, v244);
    v247 = objc_msgSend_expirationDate(self, v245, v246);
    v250 = objc_msgSend_copy(v247, v248, v249);
    v251 = *(inited + 192);
    *(inited + 192) = v250;

    *(inited + 28) = objc_msgSend_isExpired(self, v252, v253);
    *(inited + 27) = objc_msgSend_hasUpdatedExpirationTimeInterval(self, v254, v255);
    v258 = objc_msgSend_updatedExpirationTimeInterval(self, v256, v257);
    v261 = objc_msgSend_copy(v258, v259, v260);
    v262 = *(inited + 184);
    *(inited + 184) = v261;

    *(inited + 25) = objc_msgSend_needsRollAndCounterSign(self, v263, v264);
    v267 = objc_msgSend_pcsKeysToRemove(self, v265, v266);
    v270 = objc_msgSend_copy(v267, v268, v269);
    v271 = *(inited + 296);
    *(inited + 296) = v270;
  }

  return inited;
}

- (id)copyWithOriginalValues
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_copy(self, a2, v2);
  objc_msgSend_setTrackChanges_(v3, v4, 0);
  obj = objc_msgSend_valueStore(v3, v5, v6);
  objc_sync_enter(obj);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = objc_msgSend_valueStore(v3, v7, v8);
  v12 = objc_msgSend_originalValues(v9, v10, v11);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v68, v73, 16);
  if (v16)
  {
    v17 = *v69;
    do
    {
      v18 = 0;
      do
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v68 + 1) + 8 * v18);
        v20 = objc_msgSend_valueStore(v3, v14, v15);
        v23 = objc_msgSend_originalValues(v20, v21, v22);
        v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v19);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setObject_forKeyedSubscript_(v3, v26, 0, v19);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v3, v26, v25, v19);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v68, v73, 16);
    }

    while (v16);
  }

  objc_sync_exit(obj);
  obja = objc_msgSend_encryptedValueStore(v3, v27, v28);
  objc_sync_enter(obja);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v31 = objc_msgSend_encryptedValueStore(v3, v29, v30);
  v34 = objc_msgSend_originalValues(v31, v32, v33);

  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v64, v72, 16);
  if (v38)
  {
    v39 = *v65;
    do
    {
      v40 = 0;
      do
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(v34);
        }

        v41 = *(*(&v64 + 1) + 8 * v40);
        v42 = objc_msgSend_encryptedValueStore(v3, v36, v37);
        v45 = objc_msgSend_originalValues(v42, v43, v44);
        v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, v41);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = objc_msgSend_encryptedValues(v3, v48, v49);
          objc_msgSend_setObject_forKeyedSubscript_(v50, v51, 0, v41);
        }

        else
        {
          v50 = objc_msgSend_encryptedValueStore(v3, v48, v49);
          objc_msgSend_setRawValue_forKey_(v50, v52, v47, v41);
        }

        ++v40;
      }

      while (v38 != v40);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v64, v72, 16);
    }

    while (v38);
  }

  objc_sync_exit(obja);
  v55 = objc_msgSend_trackChanges(self, v53, v54);
  objc_msgSend_setTrackChanges_(v3, v56, v55);
  objc_msgSend_resetChangedKeys(v3, v57, v58);
  v59 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_copyWithOptions:(int64_t)a3
{
  v5 = objc_msgSend_recordID(self, a2, a3);
  v7 = objc_msgSend_copyWithZone_recordID_userFields_systemFields_(self, v6, 0, v5, (a3 >> 1) & 1, a3 & 1);

  return v7;
}

+ (CKRecord)recordWithDuplicatedPackagesOfRecord:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = objc_msgSend_copy(v5, v6, v7);
  objc_msgSend_setTrackChanges_(v8, v9, 0);
  v12 = objc_msgSend_valueStore(v5, v10, v11);
  v27[0] = objc_opt_class();
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v27, 1);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_188581960;
  v25[3] = &unk_1E70BDF60;
  v15 = v8;
  v26 = v15;
  v17 = objc_msgSend_containsValueOfClasses_passingTest_(v12, v16, v14, v25);

  if (v17)
  {
    v20 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v21 = objc_msgSend_trackChanges(v5, v18, v19);
    objc_msgSend_setTrackChanges_(v15, v22, v21);
    v20 = v15;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_recordType(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"recordType");

  v10 = objc_msgSend_recordID(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"recordID");

  v14 = objc_msgSend_properties(v3, v12, v13);

  return v14;
}

- (void)setRecordType:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  recordType = obj->_recordType;
  obj->_recordType = v4;

  objc_sync_exit(obj);
}

- (void)updateWithSavedRecordXPCMetadata:(id)a3 shouldOnlySaveAssetContent:(BOOL)a4
{
  v6 = a3;
  v9 = v6;
  if (!a4)
  {
    v10 = objc_msgSend_etag(v6, v7, v8);

    if (v10)
    {
      v13 = objc_msgSend_etag(v9, v11, v12);
      objc_msgSend_setEtag_(self, v14, v13);
    }

    v15 = objc_msgSend_creationDate(v9, v11, v12);

    if (v15)
    {
      v18 = objc_msgSend_creationDate(v9, v16, v17);
      objc_msgSend_setCreationDate_(self, v19, v18);
    }

    v20 = objc_msgSend_modificationDate(v9, v16, v17);

    if (v20)
    {
      v23 = objc_msgSend_modificationDate(v9, v21, v22);
      objc_msgSend_setModificationDate_(self, v24, v23);
    }

    v25 = objc_msgSend_signingPCSIdentityData(v9, v21, v22);

    if (v25)
    {
      v28 = objc_msgSend_signingPCSIdentityData(v9, v26, v27);
      v29 = PCSIdentityCreateFromRaw();

      if (v29)
      {
        objc_msgSend_setSigningPCSIdentity_(self, v26, v29);
        CFRelease(v29);
      }
    }

    v30 = objc_msgSend_serverRecord(v9, v26, v27);
    v33 = objc_msgSend_expirationDate(v9, v31, v32);
    objc_msgSend_setExpirationDate_(self, v34, v33);

    objc_msgSend_setHasUpdatedExpirationTimeInterval_(self, v35, 0);
    objc_msgSend_setUpdatedExpirationTimeInterval_(self, v36, 0);
    v39 = objc_msgSend_pluginFields(v30, v37, v38);
    objc_msgSend_setPluginFields_(self, v40, v39);

    v43 = objc_msgSend_creatorUserRecordID(v30, v41, v42);
    objc_msgSend_setCreatorUserRecordID_(self, v44, v43);

    v47 = objc_msgSend_lastModifiedUserRecordID(v30, v45, v46);
    objc_msgSend_setLastModifiedUserRecordID_(self, v48, v47);

    v51 = objc_msgSend_modifiedByDevice(v30, v49, v50);
    objc_msgSend_setModifiedByDevice_(self, v52, v51);

    v55 = objc_msgSend_routingKey(v30, v53, v54);
    objc_msgSend_setRoutingKey_(self, v56, v55);

    v59 = objc_msgSend_mutableEncryptedPSK(v30, v57, v58);
    objc_msgSend_setMutableEncryptedPSK_(self, v60, v59);

    v63 = objc_msgSend_displayedHostname(v30, v61, v62);
    objc_msgSend_setDisplayedHostname_(self, v64, v63);

    v67 = objc_msgSend_chainParentPublicKeyID(v30, v65, v66);
    objc_msgSend_setChainParentPublicKeyID_(self, v68, v67);

    v71 = objc_msgSend_chainProtectionInfo(v30, v69, v70);
    objc_msgSend_setChainProtectionInfo_(self, v72, v71);

    v75 = objc_msgSend_chainPrivateKey(v30, v73, v74);
    objc_msgSend_setChainPrivateKey_(self, v76, v75);

    v79 = objc_msgSend_share(v30, v77, v78);
    objc_msgSend_setShare_(self, v80, v79);

    objc_msgSend_updateMergeablesForSuccessfulSave(self, v81, v82);
    objc_msgSend_copyStreamingAssetServerFieldsFromServerRecord_(self, v83, v30);
    objc_msgSend_setKnownToServer_(self, v84, 1);
    objc_msgSend_resetChangedKeys(self, v85, v86);
  }

  v87 = objc_msgSend_protectionData(v9, v7, v8);
  objc_msgSend_setProtectionData_(self, v88, v87);

  v91 = objc_msgSend_pcsKeyID(v9, v89, v90);
  objc_msgSend_setPcsKeyID_(self, v92, v91);

  v95 = objc_msgSend_allPCSKeyIDs(v9, v93, v94);
  objc_msgSend_setAllPCSKeyIDs_(self, v96, v95);

  v99 = objc_msgSend_zoneishKeyID(v9, v97, v98);
  objc_msgSend_setZoneishKeyID_(self, v100, v99);
}

- (void)updateMergeablesForSuccessfulSave
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v7, 1);
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(self, v5, v4, &unk_1EFA2ED28);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)copyStreamingAssetServerFieldsFromServerRecord:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v51, v59, 16);
  if (v9)
  {
    v11 = v9;
    v48 = *v52;
    v12 = off_1E70BA000;
    v46 = self;
    v47 = v7;
    do
    {
      v13 = 0;
      do
      {
        v14 = v12;
        if (*v52 != v48)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v51 + 1) + 8 * v13);
        v16 = objc_msgSend_objectForKeyedSubscript_(v4, v10, v15);
        v19 = v16;
        if (v16)
        {
          v20 = v16;
        }

        else
        {
          v21 = objc_msgSend_encryptedValues(v4, v17, v18);
          v20 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v15);
        }

        v12 = v14;
        v23 = v14[248];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = objc_msgSend_objectForKeyedSubscript_(self, v24, v15);
          v26 = v14[248];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v40 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              v41 = v40;
              v44 = objc_msgSend_recordID(v4, v42, v43);
              *buf = 138543618;
              v56 = v15;
              v57 = 2112;
              v58 = v44;
              _os_log_impl(&dword_1883EA000, v41, OS_LOG_TYPE_INFO, "Trying to copy streaming asset info from %{public}@ on %@, but there is no local value", buf, 0x16u);

              v7 = v47;
            }

            goto LABEL_23;
          }

          objc_msgSend_copyServerFieldsFromStreamingAsset_(v25, v27, v20);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          v25 = objc_msgSend_objectForKeyedSubscript_(self, v28, v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v20;
            v25 = v25;
            v32 = objc_msgSend_firstObject(v29, v30, v31);
            v33 = v14[248];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_17;
            }

            v36 = objc_msgSend_firstObject(v25, v34, v35);
            v37 = v14[248];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v7 = v47;
            if (isKindOfClass)
            {
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 3221225472;
              v49[2] = sub_188582358;
              v49[3] = &unk_1E70BDFA8;
              v50 = v25;
              objc_msgSend_enumerateObjectsUsingBlock_(v29, v39, v49);
              v32 = v50;
LABEL_17:
            }

            self = v46;
LABEL_23:
            v12 = v14;
          }
        }

LABEL_25:
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v51, v59, 16);
    }

    while (v11);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setBaseToken:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ((CKObjectsAreBothNilOrEqual(v4->_baseToken, v10) & 1) == 0)
  {
    v7 = objc_msgSend_copy(v10, v5, v6);
    baseToken = v4->_baseToken;
    v4->_baseToken = v7;

    objc_msgSend_setMutableURL_(v4, v9, 0);
  }

  objc_sync_exit(v4);
}

- (void)setMutableEncryptedPSK:(id)a3
{
  v18 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_data(v18, v5, v6);
  v10 = objc_msgSend_data(v4->_mutableEncryptedPSK, v8, v9);
  isEqualToData = objc_msgSend_isEqualToData_(v7, v11, v10);

  if ((isEqualToData & 1) == 0)
  {
    v15 = objc_msgSend_copy(v18, v13, v14);
    mutableEncryptedPSK = v4->_mutableEncryptedPSK;
    v4->_mutableEncryptedPSK = v15;

    objc_msgSend_setMutableURL_(v4, v17, 0);
  }

  objc_sync_exit(v4);
}

- (void)setMutableEncryptedPublicSharingKeyData:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (objc_msgSend_length(v12, v5, v6))
  {
    v8 = [CKEncryptedData alloc];
    v10 = objc_msgSend_initWithData_(v8, v9, v12);
    objc_msgSend_setMutableEncryptedPSK_(v4, v11, v10);
  }

  else
  {
    objc_msgSend_setMutableEncryptedPSK_(v4, v7, 0);
  }

  objc_sync_exit(v4);
}

- (NSData)mutableEncryptedPublicSharingKeyData
{
  v3 = objc_msgSend_mutableEncryptedPSK(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);

  return v6;
}

+ (id)fullTokenFromBaseToken:(id)a3 privateToken:(id)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = v6;
  if (v6)
  {
    if (v5)
    {
      v22[0] = v5;
      v22[1] = v6;
      v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v22, 2);
      v11 = objc_msgSend_componentsJoinedByString_(v9, v10, &stru_1EFA32970);
    }

    else
    {
      v21 = 0;
      v20 = 16;
      v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, &v20, 3);
      v9 = objc_msgSend_CKBase64URLSafeString(v12, v13, v14);

      v23[0] = v9;
      v23[1] = v8;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v23, 2);
      v11 = objc_msgSend_componentsJoinedByString_(v16, v17, &stru_1EFA32970);
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSData)encryptedPublicSharingKey
{
  v3 = objc_msgSend_mutableEncryptedPSK(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);

  return v9;
}

+ (id)encryptFullToken:(id)a3 shortSharingTokenData:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v5, v7, v8) && objc_msgSend_length(v6, v9, v10) == 16)
  {
    v12 = objc_msgSend_dataUsingEncoding_(v5, v11, 4);
    v13 = PCSCloudKitShareTokenCopyEncryptedData();
    if (v13)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v20 = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "Successfully encrypted fullToken:%{public}@ with shortSharingTokenData:%{public}@", &v20, 0x16u);
      }

      v15 = v13;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v20 = 138543618;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_1883EA000, v17, OS_LOG_TYPE_ERROR, "Failed to encrypt fullToken:%{public}@ with shortSharingTokenData:%{public}@", &v20, 0x16u);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v20 = 138543618;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Warn: Invalid arguments - fullToken:%{public}@, shortSharingTokenData:%{public}@", &v20, 0x16u);
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)decryptFullToken:(id)a3 shortSharingTokenData:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v5, v7, v8) && objc_msgSend_length(v6, v9, v10) == 16)
  {
    v11 = PCSCloudKitShareTokenCopyDecryptedData();
    if (v11)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v18 = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Successfully decrypted fullToken:%{public}@ with shortSharingTokenData:%{public}@", &v18, 0x16u);
      }

      v13 = v11;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v15 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = v6;
        _os_log_error_impl(&dword_1883EA000, v15, OS_LOG_TYPE_ERROR, "Failed to decrypt fullToken:%{public}@ with shortSharingTokenData:%{public}@", &v18, 0x16u);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v18 = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "Warn: Invalid arguments - encryptedFullTokenData:%{public}@, shortSharingTokenData:%{public}@", &v18, 0x16u);
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)decryptFullToken:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_shortSharingTokenData(self, v5, v6);
  v9 = objc_msgSend_decryptFullToken_shortSharingTokenData_(CKRecord, v8, v4, v7);

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = objc_msgSend_bytes(v9, v11, v12);
  v16 = objc_msgSend_length(v9, v14, v15);
  v18 = objc_msgSend_initWithBytes_length_encoding_(v10, v17, v13, v16, 4);

  return v18;
}

- (NSString)shortToken
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_shortSharingToken(self, a2, v2);
  if (!v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = v18;
    v22 = objc_msgSend_recordID(self, v20, v21);
    *buf = 138412290;
    v34 = v22;
    _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "Couldn't get a short sharing token for %@", buf, 0xCu);

    goto LABEL_16;
  }

  v7 = objc_msgSend_routingKey(self, v4, v5);
  v10 = objc_msgSend_length(v7, v8, v9);

  if (v10 == 3)
  {
    v13 = objc_msgSend_routingKey(self, v11, v12);
    v32[0] = v13;
    v32[1] = v6;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v32, 2);
    v17 = objc_msgSend_componentsJoinedByString_(v15, v16, &stru_1EFA32970);

    goto LABEL_12;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v19 = v23;
    v28 = objc_msgSend_routingKey(self, v26, v27);
    v31 = objc_msgSend_recordID(self, v29, v30);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = v31;
    _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "Routing key is invalid: %{public}@ for %@", buf, 0x16u);

LABEL_16:
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)shareURLWithShortToken:(id)a3 shareTitle:(id)a4 shareType:(id)a5 containerID:(id)a6 displayedHostname:(id)a7
{
  v46[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v19 = a7;
  if (!v13)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, a1, @"CKRecord.m", 1496, @"ShareURL cannot be created without short token. Share: %@", a1);
  }

  v40 = v16;
  v41 = v15;
  v20 = CKSharingContainerSlugForContainerID(v16, v14, v15);
  v23 = objc_msgSend_CKMangledDocumentNameForURLFragment(v14, v21, v22);
  v46[0] = &stru_1EFA32970;
  v46[1] = v20;
  v46[2] = v13;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v46, 3);
  v27 = objc_msgSend_componentsJoinedByString_(v25, v26, @"/");
  v28 = objc_alloc_init(MEMORY[0x1E696AF20]);
  objc_msgSend_setScheme_(v28, v29, @"https");
  if (v19)
  {
    objc_msgSend_setHost_(v28, v30, v19);
  }

  else
  {
    objc_msgSend_setHost_(v28, v30, @"www.icloud.com");
  }

  objc_msgSend_setPercentEncodedPath_(v28, v31, v27);
  if (v23 && objc_msgSend_length(v23, v32, v33))
  {
    objc_msgSend_setPercentEncodedFragment_(v28, v32, v23);
  }

  v34 = objc_msgSend_URL(v28, v32, v33);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v35 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v43 = v34;
    v44 = 2112;
    v45 = v28;
    _os_log_debug_impl(&dword_1883EA000, v35, OS_LOG_TYPE_DEBUG, "Share URL: %@ (%@)", buf, 0x16u);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v34;
}

- (NSURL)uncachedURL
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableEncryptedPSK(self, a2, v2);
  v7 = objc_msgSend_data(v4, v5, v6);
  if (v7)
  {
    v10 = v7;
    v11 = objc_msgSend_routingKey(self, v8, v9);
    v14 = objc_msgSend_length(v11, v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_shortToken(self, v15, v16);
      v20 = objc_msgSend_CKSafeStringForURLPathComponent(v17, v18, v19);

      if (v20)
      {
        v21 = objc_opt_class();
        v23 = objc_msgSend_objectForKeyedSubscript_(self, v22, @"cloudkit.title");
        v25 = objc_msgSend_objectForKeyedSubscript_(self, v24, @"cloudkit.type");
        v28 = objc_msgSend_containerID(self, v26, v27);
        v31 = objc_msgSend_displayedHostname(self, v29, v30);
        v33 = objc_msgSend_shareURLWithShortToken_shareTitle_shareType_containerID_displayedHostname_(v21, v32, v20, v23, v25, v28, v31);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v35 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v38 = v35;
          v41 = objc_msgSend_recordID(self, v39, v40);
          v42 = 138412290;
          v43 = v41;
          _os_log_error_impl(&dword_1883EA000, v38, OS_LOG_TYPE_ERROR, "Failed to get the shortToken for %@", &v42, 0xCu);
        }

        v33 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v34 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v42) = 0;
    _os_log_error_impl(&dword_1883EA000, v34, OS_LOG_TYPE_ERROR, "You cannot get the URL of a share until it's been saved to the server", &v42, 2u);
  }

  v33 = 0;
LABEL_17:
  v36 = *MEMORY[0x1E69E9840];

  return v33;
}

- (NSURL)URL
{
  v2 = self;
  objc_sync_enter(v2);
  v7 = objc_msgSend_mutableURL(v2, v3, v4);
  if (!v7)
  {
    v7 = objc_msgSend_uncachedURL(v2, v5, v6);
    objc_msgSend_setMutableURL_(v2, v8, v7);
  }

  objc_sync_exit(v2);

  return v7;
}

- (void)setDisplayedHostname:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ((CKObjectsAreBothNilOrEqual(v4->_displayedHostname, v10) & 1) == 0)
  {
    v7 = objc_msgSend_copy(v10, v5, v6);
    displayedHostname = v4->_displayedHostname;
    v4->_displayedHostname = v7;

    objc_msgSend_setMutableURL_(v4, v9, 0);
  }

  objc_sync_exit(v4);
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v66 = a3;
  v6 = objc_msgSend_recordType(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(v66, v7, @"recordType", v6, 0);

  v10 = objc_msgSend_recordID(self, v8, v9);
  objc_msgSend_addProperty_value_shouldRedact_(v66, v11, @"recordID", v10, 0);

  v14 = objc_msgSend_recordChangeTag(self, v12, v13);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v66, v15, @"recordChangeTag", v14, 0);

  isMergeableValueDeltaRecord = objc_msgSend_isMergeableValueDeltaRecord(self, v16, v17);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v66, v19, @"isMergeableDeltaPartialRecord", isMergeableValueDeltaRecord, 0);
  v22 = objc_msgSend_needsRollAndCounterSign(self, v20, v21);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v66, v23, @"needsRollAndCounterSign", v22, 0);
  v26 = objc_msgSend_mutableEncryptedPSK(self, v24, v25);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v66, v27, @"mutableEncryptedPSK", v26, 0);

  v30 = objc_msgSend_routingKey(self, v28, v29);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v66, v31, @"routingKey", v30, 0);

  v36 = objc_msgSend_share(self, v32, v33);
  if (v36 || objc_msgSend_hasUpdatedShare(self, v34, v35))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v66, v34, @"share", v36, 0);
  }

  v40 = objc_msgSend_parent(self, v34, v37);
  if (v40 || objc_msgSend_hasUpdatedParent(self, v38, v39))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v66, v38, @"parent", v40, 0);
  }

  v42 = objc_msgSend_valueStore(self, v38, v41);
  objc_sync_enter(v42);
  v45 = objc_msgSend_values(v42, v43, v44);
  v48 = objc_msgSend_count(v45, v46, v47);

  if (v48)
  {
    v51 = objc_msgSend_values(v42, v49, v50);
    objc_msgSend_addProperty_value_shouldRedact_(v66, v52, @"values", v51, 1);
  }

  objc_sync_exit(v42);

  v55 = objc_msgSend_encryptedValueStore(self, v53, v54);
  objc_sync_enter(v55);
  v58 = objc_msgSend_values(v55, v56, v57);
  v61 = objc_msgSend_count(v58, v59, v60);

  if (v61)
  {
    v64 = objc_msgSend_values(v55, v62, v63);
    objc_msgSend_addProperty_value_shouldRedact_(v66, v65, @"encryptedValues", v64, 1);
  }

  objc_sync_exit(v55);
}

- (id)conciseDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_recordType(self, v4, v5);
  v9 = objc_msgSend_recordID(self, v7, v8);
  v12 = objc_msgSend_ckShortDescription(v9, v10, v11);
  if (objc_msgSend_isMergeableValueDeltaRecord(self, v13, v14))
  {
    v17 = @" isMergeableDeltaPartialRecord=1";
  }

  else
  {
    v17 = &stru_1EFA32970;
  }

  v20 = objc_msgSend_recordChangeTag(self, v15, v16);
  if (v20)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_msgSend_recordChangeTag(self, v18, v19);
    v24 = objc_msgSend_stringWithFormat_(v21, v23, @" etag=%@", v22);
    v26 = objc_msgSend_initWithFormat_(v3, v25, @"<CKRecord %@ %@%@%@>", v6, v12, v17, v24);
  }

  else
  {
    v26 = objc_msgSend_initWithFormat_(v3, v18, @"<CKRecord %@ %@%@%@>", v6, v12, v17, &stru_1EFA32970);
  }

  return v26;
}

- (BOOL)isMoreRecentThanRecord:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_creationDate(self, v5, v6);
  v10 = objc_msgSend_modificationDate(self, v8, v9);
  v13 = objc_msgSend_creationDate(v4, v11, v12);
  v16 = objc_msgSend_modificationDate(v4, v14, v15);
  v18 = v16;
  v19 = 1;
  if (v13)
  {
    if (v16)
    {
      v19 = 0;
      if (v7)
      {
        if (v10)
        {
          v20 = objc_msgSend_compare_(v7, v17, v13);
          v22 = objc_msgSend_compare_(v10, v21, v18);
          if (v20)
          {
            if (v20 == 1)
            {
              if (v22 == -1)
              {
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v23 = ck_log_facility_ck;
                if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
                {
                  v26 = 138412546;
                  v27 = self;
                  v28 = 2112;
                  v29 = v4;
                  _os_log_fault_impl(&dword_1883EA000, v23, OS_LOG_TYPE_FAULT, "Found a record with a later modification date, but an earlier creation date. self=%@ other=%@", &v26, 0x16u);
                }
              }

              v19 = 1;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = v22 == 1;
          }
        }
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (NSDictionary)values
{
  v3 = objc_msgSend_valueStore(self, a2, v2);
  objc_sync_enter(v3);
  v6 = objc_msgSend_values(v3, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);

  objc_sync_exit(v3);

  return v9;
}

- (NSDictionary)originalValues
{
  v3 = objc_msgSend_valueStore(self, a2, v2);
  objc_sync_enter(v3);
  v6 = objc_msgSend_originalValues(v3, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);

  objc_sync_exit(v3);

  return v9;
}

- (NSSet)changedKeysSet
{
  v3 = objc_msgSend_valueStore(self, a2, v2);
  objc_sync_enter(v3);
  v6 = objc_msgSend_changedKeysSet(v3, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);

  objc_sync_exit(v3);

  return v9;
}

- (void)setChangedKeysSet:(id)a3
{
  v11 = a3;
  v6 = objc_msgSend_valueStore(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_mutableCopy(v11, v7, v8);
  objc_msgSend_setChangedKeysSet_(v6, v10, v9);

  objc_sync_exit(v6);
}

- (void)setTrackChanges:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_trackChanges = a3;
  v6 = objc_msgSend_valueStore(obj, v4, v5);
  if (v6)
  {
    v6[8] = a3;
  }

  v9 = objc_msgSend_encryptedValueStore(obj, v7, v8);
  if (v9)
  {
    v9[8] = a3;
  }

  objc_sync_exit(obj);
}

- (NSArray)changedKeys
{
  v4 = objc_msgSend_valueStore(self, a2, v2);
  v7 = objc_msgSend_changedKeys(v4, v5, v6);
  v10 = objc_msgSend_encryptedValueStore(self, v8, v9);
  v13 = objc_msgSend_changedKeys(v10, v11, v12);
  v15 = objc_msgSend_arrayByAddingObjectsFromArray_(v7, v14, v13);

  return v15;
}

- (void)resetChangedKeys
{
  v4 = objc_msgSend_valueStore(self, a2, v2);
  objc_msgSend_resetChangedKeys(v4, v5, v6);

  v9 = objc_msgSend_encryptedValueStore(self, v7, v8);
  objc_msgSend_resetChangedKeys(v9, v10, v11);

  v14 = objc_msgSend_share(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  objc_msgSend_setPreviousShare_(self, v18, v17);

  objc_msgSend_setHasUpdatedShare_(self, v19, 0);
  v22 = objc_msgSend_parent(self, v20, v21);
  v25 = objc_msgSend_copy(v22, v23, v24);
  objc_msgSend_setPreviousParent_(self, v26, v25);

  objc_msgSend_setHasUpdatedParent_(self, v27, 0);
}

- (void)replaceRecordIDWith:(id)a3
{
  v62 = a3;
  if (!v62)
  {
    v54 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v54, v55, a2, self, @"CKRecord.m", 2008, @"Must not be nil");
  }

  v7 = objc_msgSend_recordID(self, v5, v6);
  v10 = objc_msgSend_recordName(v7, v8, v9);
  v13 = objc_msgSend_recordName(v62, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v14, v13);

  if ((isEqualToString & 1) == 0)
  {
    v56 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v56, v57, a2, self, @"CKRecord.m", 2009, @"Must have the same record name");
  }

  v18 = objc_msgSend_recordID(self, v16, v17);
  v21 = objc_msgSend_zoneID(v18, v19, v20);
  v24 = objc_msgSend_zoneName(v21, v22, v23);
  v27 = objc_msgSend_zoneID(v62, v25, v26);
  v30 = objc_msgSend_zoneName(v27, v28, v29);
  v32 = objc_msgSend_isEqualToString_(v24, v31, v30);

  if ((v32 & 1) == 0)
  {
    v58 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v33, v34);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, a2, self, @"CKRecord.m", 2010, @"Must use the same zone name");
  }

  v35 = objc_msgSend_recordID(self, v33, v34);
  v38 = objc_msgSend_zoneID(v35, v36, v37);
  v41 = objc_msgSend_ownerName(v38, v39, v40);
  v44 = objc_msgSend_zoneID(v62, v42, v43);
  v47 = objc_msgSend_ownerName(v44, v45, v46);
  v49 = objc_msgSend_isEqualToString_(v41, v48, v47);

  if ((v49 & 1) == 0)
  {
    v60 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v50, v51);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v61, a2, self, @"CKRecord.m", 2011, @"Must use the same owner name");
  }

  v52 = objc_msgSend_copy(v62, v50, v51);
  objc_msgSend_setRecordID_(self, v53, v52);
}

- (void)setAllPCSKeyIDs:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  allPCSKeyIDs = v4->_allPCSKeyIDs;
  v4->_allPCSKeyIDs = v7;

  objc_sync_exit(v4);
}

- (void)setTombstonedPublicKeyIDs:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  tombstonedPublicKeyIDs = v4->_tombstonedPublicKeyIDs;
  v4->_tombstonedPublicKeyIDs = v7;

  objc_sync_exit(v4);
}

- (void)setPluginFields:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v6 = objc_msgSend_CKMapValues_(v11, v5, &unk_1EFA2ED88);
  v9 = objc_msgSend_copy(v6, v7, v8);
  pluginFields = v4->_pluginFields;
  v4->_pluginFields = v9;

  objc_sync_exit(v4);
}

- (void)setConflictLoserEtags:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  conflictLoserEtags = v4->_conflictLoserEtags;
  v4->_conflictLoserEtags = v7;

  objc_sync_exit(v4);
}

- (void)setRecordChangeTag:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_copy(v9, v5, v6);
  etag = v4->_etag;
  v4->_etag = v7;

  objc_sync_exit(v4);
}

- (id)objectForKeyedSubscript:(CKRecordFieldKey)key
{
  v4 = key;
  v5 = sub_1884080E4();
  v7 = objc_msgSend_containsObject_(v5, v6, v4);

  if (v7)
  {
    v10 = NSSelectorFromString(v4);
    v12 = objc_msgSend_methodForSelector_(self, v11, v10);
    v13 = v12(self, v10);
  }

  else
  {
    v14 = objc_msgSend_valueStore(self, v8, v9);
    v13 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v4);
  }

  return v13;
}

- (id)objectForKey:(CKRecordFieldKey)key
{
  v4 = key;
  v7 = objc_msgSend_valueStore(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

  return v9;
}

- (void)setNilValueForKey:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_valueStore(self, v5, v6);
  objc_msgSend_setNilValueForKey_(v8, v7, v4);
}

- (void)setObjectNoValidate:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_valueStore(self, v8, v9);
  objc_msgSend_setObjectNoValidate_forKey_(v11, v10, v7, v6);
}

- (void)setObject:(id)object forKey:(CKRecordFieldKey)key
{
  v6 = key;
  v7 = object;
  v11 = objc_msgSend_valueStore(self, v8, v9);
  objc_msgSend_setObject_forKey_(v11, v10, v7, v6);
}

- (id)allValues
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6 = objc_msgSend_valueStore(self, v4, v5);
  objc_sync_enter(v6);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v41, v46, 16);
  if (v13)
  {
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = objc_msgSend_values(v6, v11, v12);
        v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v16);
        objc_msgSend_setObject_forKeyedSubscript_(v3, v20, v19, v16);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v41, v46, 16);
    }

    while (v13);
  }

  objc_sync_exit(v6);
  v23 = objc_msgSend_encryptedValueStore(self, v21, v22);
  objc_sync_enter(v23);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = objc_msgSend_allKeys(v23, v24, v25, 0);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v45, 16);
  if (v29)
  {
    v30 = *v38;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v37 + 1) + 8 * j);
        v33 = objc_msgSend_objectForKeyedSubscript_(v23, v28, v32);
        objc_msgSend_setObject_forKeyedSubscript_(v3, v34, v33, v32);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v37, v45, 16);
    }

    while (v29);
  }

  objc_sync_exit(v23);
  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_allStrings
{
  v4 = objc_msgSend_valueStore(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188585524;
  v11[3] = &unk_1E70BDFF8;
  v11[4] = self;
  v9 = objc_msgSend_CKCompactMap_(v7, v8, v11);

  return v9;
}

- (NSArray)allTokens
{
  if (qword_1ED4B61A8 != -1)
  {
    dispatch_once(&qword_1ED4B61A8, &unk_1EFA2EDA8);
  }

  v3 = objc_msgSend_expressionValueWithObject_context_(qword_1ED4B61A0, a2, self, 0);
  v6 = objc_msgSend_allObjects(v3, v4, v5);

  return v6;
}

- (BOOL)containsPackageValues
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_valueStore(self, a2, v2);
  v10[0] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v10, 1);
  v7 = objc_msgSend_containsValueOfClasses_passingTest_(v3, v6, v5, &unk_1EFA2EE28);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)containsIndexedKeys
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = objc_msgSend_valueStore(self, a2, v2, 0);
  v6 = objc_msgSend_allKeys(v3, v4, v5);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_length(v13, v8, v9))
        {
          v14 = objc_msgSend_length(v13, v8, v9);
          if (objc_msgSend_characterAtIndex_(v13, v15, v14 - 1) == 93)
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v22, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)hasModifiedPropertiesRequiringEncryption
{
  v25[4] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_chainPrivateKey(self, a2, v2);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v10 = objc_msgSend_mutableEncryptedPSK(self, v4, v5);
    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = objc_msgSend_valueStore(self, v8, v9);
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v25[2] = objc_opt_class();
      v25[3] = objc_opt_class();
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v25, 4);
      v7 = 1;
      if ((objc_msgSend_containsValueOfClasses_options_passingTest_(v11, v14, v13, 1, &unk_1EFA2EE68) & 1) == 0)
      {
        v17 = objc_msgSend_encryptedValueStore(self, v15, v16);
        v20 = objc_msgSend_changedKeys(v17, v18, v19);
        v7 = objc_msgSend_count(v20, v21, v22) != 0;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)hasModifiedEncryptedData
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_chainPrivateKey(self, a2, v2);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v10 = objc_msgSend_mutableEncryptedPSK(self, v4, v5);
    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = objc_msgSend_valueStore(self, v8, v9);
      v25[0] = objc_opt_class();
      v7 = 1;
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v25, 1);
      if ((objc_msgSend_containsValueOfClasses_options_passingTest_(v11, v14, v13, 1, &unk_1EFA2EEE8) & 1) == 0)
      {
        v17 = objc_msgSend_encryptedValueStore(self, v15, v16);
        v20 = objc_msgSend_changedKeys(v17, v18, v19);
        v7 = objc_msgSend_count(v20, v21, v22) != 0;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)CKAssignToContainerWithID:(id)a3
{
  v32 = a3;
  v7 = objc_msgSend_containerID(self, v5, v6);
  v8 = v32;
  v9 = v7;
  if (v32 && v7 && (isEqual = objc_msgSend_isEqual_(v7, v32, v32), v8 = v32, (isEqual & 1) == 0))
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v32, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKRecord.m", 2266, @"Cannot replace assigned container ID %@ with %@", v9, v32);

    objc_msgSend_setContainerID_(self, v32, v32);
  }

  else
  {
    objc_msgSend_setContainerID_(self, v8, v8);
  }

  v14 = objc_msgSend_valueStore(self, v12, v13);
  objc_sync_enter(v14);
  v17 = objc_msgSend_values(v14, v15, v16);
  objc_msgSend_CKAssignToContainerWithID_(v17, v18, v32);

  objc_sync_exit(v14);
  v21 = objc_msgSend_encryptedValueStore(self, v19, v20);
  objc_sync_enter(v21);
  v24 = objc_msgSend_values(v21, v22, v23);
  objc_msgSend_CKAssignToContainerWithID_(v24, v25, v32);

  objc_sync_exit(v21);
  v28 = objc_msgSend_pluginFields(self, v26, v27);
  objc_msgSend_CKAssignToContainerWithID_(v28, v29, v32);
}

- (void)setShare:(id)a3
{
  v48 = a3;
  if (v48)
  {
    if (objc_msgSend_referenceAction(v48, v5, v6))
    {
      v44 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CKRecord.m", 2292, @"Share references must be CKReferenceActionNone");
    }

    v9 = objc_msgSend_recordID(v48, v7, v8);
    v12 = objc_msgSend_zoneID(v9, v10, v11);
    v15 = objc_msgSend_zoneName(v12, v13, v14);
    v18 = objc_msgSend_recordID(self, v16, v17);
    v21 = objc_msgSend_zoneID(v18, v19, v20);
    v24 = objc_msgSend_zoneName(v21, v22, v23);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v25, v24);

    if ((isEqualToString & 1) == 0)
    {
      v46 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v27, v28);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CKRecord.m", 2295, @"Share must be in the same zone as the current record");
    }
  }

  v29 = self;
  objc_sync_enter(v29);
  if ((objc_msgSend_isEqual_(v48, v30, v29->_share) & 1) == 0)
  {
    if (objc_msgSend_trackChanges(v29, v31, v32))
    {
      v35 = objc_msgSend_previousShare(v29, v33, v34);
      if (objc_msgSend_hasUpdatedShare(v29, v36, v37) && (v35 == v48 || objc_msgSend_isEqual_(v48, v38, v35)))
      {
        objc_msgSend_setHasUpdatedShare_(v29, v38, 0);
      }

      else
      {
        objc_msgSend_setHasUpdatedShare_(v29, v38, 1);
      }
    }

    else
    {
      v35 = objc_msgSend_copy(v48, v33, v34);
      objc_msgSend_setPreviousShare_(v29, v39, v35);
    }

    v42 = objc_msgSend_copy(v48, v40, v41);
    share = v29->_share;
    v29->_share = v42;
  }

  objc_sync_exit(v29);
}

- (void)setParent:(CKReference *)parent
{
  v48 = parent;
  if (v48)
  {
    if (objc_msgSend_referenceAction(v48, v5, v6))
    {
      v44 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CKRecord.m", 2324, @"Parent references must be CKReferenceActionNone");
    }

    v9 = objc_msgSend_recordID(v48, v7, v8);
    v12 = objc_msgSend_zoneID(v9, v10, v11);
    v15 = objc_msgSend_zoneName(v12, v13, v14);
    v18 = objc_msgSend_recordID(self, v16, v17);
    v21 = objc_msgSend_zoneID(v18, v19, v20);
    v24 = objc_msgSend_zoneName(v21, v22, v23);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v25, v24);

    if ((isEqualToString & 1) == 0)
    {
      v46 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v27, v28);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CKRecord.m", 2327, @"Parent record must be in the same zone as the current record");
    }
  }

  v29 = self;
  objc_sync_enter(v29);
  if ((objc_msgSend_isEqual_(v48, v30, v29->_parent) & 1) == 0)
  {
    if (objc_msgSend_trackChanges(v29, v31, v32))
    {
      v35 = objc_msgSend_previousParent(v29, v33, v34);
      if (objc_msgSend_hasUpdatedParent(v29, v36, v37) && (v35 == v48 || objc_msgSend_isEqual_(v48, v38, v35)))
      {
        objc_msgSend_setHasUpdatedParent_(v29, v38, 0);
      }

      else
      {
        objc_msgSend_setHasUpdatedParent_(v29, v38, 1);
      }
    }

    else
    {
      v35 = objc_msgSend_copy(v48, v33, v34);
      objc_msgSend_setPreviousParent_(v29, v39, v35);
    }

    v42 = objc_msgSend_copy(v48, v40, v41);
    v43 = v29->_parent;
    v29->_parent = v42;
  }

  objc_sync_exit(v29);
}

- (void)setParentReferenceFromRecord:(CKRecord *)parentRecord
{
  if (parentRecord)
  {
    v4 = parentRecord;
    v5 = [CKReference alloc];
    v7 = objc_msgSend_initWithRecord_action_(v5, v6, v4, 0);
  }

  else
  {
    v7 = 0;
  }

  objc_msgSend_setParent_(self, a2, v7);
}

- (void)setParentReferenceFromRecordID:(CKRecordID *)parentRecordID
{
  if (parentRecordID)
  {
    v4 = parentRecordID;
    v5 = [CKReference alloc];
    v7 = objc_msgSend_initWithRecordID_action_(v5, v6, v4, 0);
  }

  else
  {
    v7 = 0;
  }

  objc_msgSend_setParent_(self, a2, v7);
}

- (_PCSIdentityData)signingPCSIdentity
{
  v2 = self;
  objc_sync_enter(v2);
  signingPCSIdentity = v2->_signingPCSIdentity;
  objc_sync_exit(v2);

  return signingPCSIdentity;
}

- (void)setSigningPCSIdentity:(_PCSIdentityData *)a3
{
  obj = self;
  objc_sync_enter(obj);
  signingPCSIdentity = obj->_signingPCSIdentity;
  if (signingPCSIdentity != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      v5 = obj;
      signingPCSIdentity = obj->_signingPCSIdentity;
    }

    else
    {
      v5 = obj;
    }

    v5->_signingPCSIdentity = a3;
    if (signingPCSIdentity)
    {
      CFRelease(signingPCSIdentity);
    }
  }

  objc_sync_exit(obj);
}

- (void)encodeSystemFieldsWithCoder:(NSCoder *)coder
{
  v6 = coder;
  if (byte_1EA90C538 == 1 && objc_msgSend_isMergeableValueDeltaRecord(self, v4, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *v191 = 0;
      _os_log_fault_impl(&dword_1883EA000, v7, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Tried to encode system fields for a record without system fields. You'll receive a record like this when fetching changes from the server if the only mergeable fields have changed. In this case, the record will not contain any system fields, so you should not encode it. Check to make sure recordChangeTag is non-nil before encoding system fields for this record.", v191, 2u);
    }
  }

  v8 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_recordType(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v6, v12, v11, @"RecordType");

  v15 = objc_msgSend_recordID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v6, v16, v15, @"RecordID");

  v19 = objc_msgSend_creationDate(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v6, v20, v19, @"RecordCtime");

  v23 = objc_msgSend_modificationDate(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(v6, v24, v23, @"RecordMtime");

  v27 = objc_msgSend_creatorUserRecordID(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(v6, v28, v27, @"CreatorUserRecordID");

  v31 = objc_msgSend_lastModifiedUserRecordID(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(v6, v32, v31, @"LastModifiedUserRecordID");

  v35 = objc_msgSend_modifiedByDevice(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(v6, v36, v35, @"ModifiedByDevice");

  v39 = objc_msgSend_etag(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(v6, v40, v39, @"ETag");

  v43 = objc_msgSend_conflictLoserEtags(self, v41, v42);
  objc_msgSend_encodeObject_forKey_(v6, v44, v43, @"ConflictLoserEtags");

  isKnownToServer = objc_msgSend_isKnownToServer(self, v45, v46);
  objc_msgSend_encodeBool_forKey_(v6, v48, isKnownToServer, @"KnownToServer");
  v51 = objc_msgSend_wasCached(self, v49, v50);
  objc_msgSend_encodeBool_forKey_(v6, v52, v51, @"WasCached");
  if ((byte_1EA90C538 & 1) != 0 || objc_msgSend_serializeProtectionData(self, v53, v54))
  {
    v55 = objc_msgSend_protectionData(self, v53, v54);
    objc_msgSend_encodeObject_forKey_(v6, v56, v55, @"ProtectionData");

    v59 = objc_msgSend_protectionEtag(self, v57, v58);
    objc_msgSend_encodeObject_forKey_(v6, v60, v59, @"ProtectionDataEtag");

    v63 = objc_msgSend_chainProtectionInfo(self, v61, v62);
    objc_msgSend_encodeObject_forKey_(v6, v64, v63, @"ChainProtectionData");

    v67 = objc_msgSend_chainPrivateKey(self, v65, v66);
    objc_msgSend_encodeObject_forKey_(v6, v68, v67, @"ChainPrivateKey");

    if (__sTestOverridesAvailable[0] == 1)
    {
      v69 = objc_msgSend_pcsKeysToRemove(self, v53, v54);
      objc_msgSend_encodeObject_forKey_(v6, v70, v69, @"PCSKeysToRemove");
    }
  }

  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend_applyPCSKeysToRemoveForTesting(self, v53, v54))
  {
    v71 = objc_msgSend_applyPCSKeysToRemoveForTesting(self, v53, v54);
    objc_msgSend_encodeBool_forKey_(v6, v72, v71, @"ApplyPCSKeysToRemoveForTesting");
  }

  v73 = objc_msgSend_wantsChainPCS(self, v53, v54);
  objc_msgSend_encodeBool_forKey_(v6, v74, v73, @"WantsChainPCSKey");
  v77 = objc_msgSend_chainParentPublicKeyID(self, v75, v76);
  objc_msgSend_encodeObject_forKey_(v6, v78, v77, @"ChainParentPublicKeyID");

  v81 = objc_msgSend_previousProtectionEtag(self, v79, v80);
  objc_msgSend_encodeObject_forKey_(v6, v82, v81, @"PreviousProtectionDataEtag");

  v85 = objc_msgSend_zoneProtectionEtag(self, v83, v84);
  objc_msgSend_encodeObject_forKey_(v6, v86, v85, @"ZoneProtectionDataEtag");

  v89 = objc_msgSend_shareEtag(self, v87, v88);
  objc_msgSend_encodeObject_forKey_(v6, v90, v89, @"ShareEtag");

  v93 = objc_msgSend_tombstonedPublicKeyIDs(self, v91, v92);
  objc_msgSend_encodeObject_forKey_(v6, v94, v93, @"TombstonedPublicKeyIDs");

  v97 = objc_msgSend_useLightweightPCS(self, v95, v96);
  objc_msgSend_encodeBool_forKey_(v6, v98, v97, @"UseLightweightPCS");
  v101 = objc_msgSend_share(self, v99, v100);
  objc_msgSend_encodeObject_forKey_(v6, v102, v101, @"ShareReference");

  v105 = objc_msgSend_previousShare(self, v103, v104);
  objc_msgSend_encodeObject_forKey_(v6, v106, v105, @"PreviousShareReference");

  hasUpdatedShare = objc_msgSend_hasUpdatedShare(self, v107, v108);
  objc_msgSend_encodeBool_forKey_(v6, v110, hasUpdatedShare, @"HasUpdatedShareReference");
  v113 = objc_msgSend_parent(self, v111, v112);
  objc_msgSend_encodeObject_forKey_(v6, v114, v113, @"ParentReference");

  v117 = objc_msgSend_previousParent(self, v115, v116);
  objc_msgSend_encodeObject_forKey_(v6, v118, v117, @"PreviousParentReference");

  hasUpdatedParent = objc_msgSend_hasUpdatedParent(self, v119, v120);
  objc_msgSend_encodeBool_forKey_(v6, v122, hasUpdatedParent, @"HasUpdatedParentReference");
  v125 = objc_msgSend_permission(self, v123, v124);
  objc_msgSend_encodeInteger_forKey_(v6, v126, v125, @"Permission");
  v129 = objc_msgSend_wantsPublicSharingKey(self, v127, v128);
  objc_msgSend_encodeBool_forKey_(v6, v130, v129, @"WantsPublicSharingKey");
  v133 = objc_msgSend_routingKey(self, v131, v132);
  objc_msgSend_encodeObject_forKey_(v6, v134, v133, @"RoutingKey");

  v137 = objc_msgSend_baseToken(self, v135, v136);
  objc_msgSend_encodeObject_forKey_(v6, v138, v137, @"BaseToken");

  v141 = objc_msgSend_displayedHostname(self, v139, v140);
  objc_msgSend_encodeObject_forKey_(v6, v142, v141, @"DisplayedHostname");

  v145 = objc_msgSend_mutableEncryptedPSK(self, v143, v144);
  objc_msgSend_encodeObject_forKey_(v6, v146, v145, @"MutableEncryptedPublicSharingKey");

  v149 = objc_msgSend_mutableURL(self, v147, v148);
  objc_msgSend_encodeObject_forKey_(v6, v150, v149, @"URL");

  v153 = objc_msgSend_previousProtectionEtagFromUnitTest(self, v151, v152);
  objc_msgSend_encodeObject_forKey_(v6, v154, v153, @"PreviousProtectionDataEtagFromUnitTest");

  v157 = objc_msgSend_pcsKeyID(self, v155, v156);
  objc_msgSend_encodeObject_forKey_(v6, v158, v157, @"PCSKeyID");

  v161 = objc_msgSend_allPCSKeyIDs(self, v159, v160);
  objc_msgSend_encodeObject_forKey_(v6, v162, v161, @"AllPCSKeyIDs");

  v165 = objc_msgSend_zoneishKeyID(self, v163, v164);
  objc_msgSend_encodeObject_forKey_(v6, v166, v165, @"ZoneishKeyID");

  v169 = objc_msgSend_expirationDate(self, v167, v168);
  objc_msgSend_encodeObject_forKey_(v6, v170, v169, @"ExpirationDate");

  isExpired = objc_msgSend_isExpired(self, v171, v172);
  objc_msgSend_encodeBool_forKey_(v6, v174, isExpired, @"Expired");
  hasUpdatedExpirationTimeInterval = objc_msgSend_hasUpdatedExpirationTimeInterval(self, v175, v176);
  objc_msgSend_encodeBool_forKey_(v6, v178, hasUpdatedExpirationTimeInterval, @"HasUpdatedExpiration");
  v181 = objc_msgSend_updatedExpirationTimeInterval(self, v179, v180);
  objc_msgSend_encodeObject_forKey_(v6, v182, v181, @"UpdatedExpiration");

  isMergeableValueDeltaRecord = objc_msgSend_isMergeableValueDeltaRecord(self, v183, v184);
  objc_msgSend_encodeBool_forKey_(v6, v186, isMergeableValueDeltaRecord, @"MergeableValueDeltaRecord");
  v189 = objc_msgSend_needsRollAndCounterSign(self, v187, v188);
  objc_msgSend_encodeBool_forKey_(v6, v190, v189, @"NeedsRollAndCounterSignKey");
  objc_autoreleasePoolPop(v8);
}

- (void)preTiboEncodeWithCoder:(id)a3
{
  v30 = a3;
  if ((__sTestOverridesAvailable[0] & 1) == 0)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKRecord.m", 2463, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKRecord.m", 2463);
  }

  v7 = objc_autoreleasePoolPush();
  objc_msgSend_encodeSystemFieldsWithCoder_(self, v8, v30);
  v11 = objc_msgSend_valueStore(self, v9, v10);
  objc_sync_enter(v11);
  v14 = objc_msgSend_values(v11, v12, v13);
  objc_msgSend_encodeObject_forKey_(v30, v15, v14, @"RecordValues");

  v18 = objc_msgSend_originalValues(v11, v16, v17);
  objc_msgSend_encodeObject_forKey_(v30, v19, v18, @"OriginalValues");

  v22 = objc_msgSend_changedKeysSet(v11, v20, v21);
  objc_msgSend_encodeObject_forKey_(v30, v23, v22, @"ChangedKeys");

  objc_sync_exit(v11);
  v26 = objc_msgSend_pluginFields(self, v24, v25);
  objc_msgSend_encodeObject_forKey_(v30, v27, v26, @"PluginFields");

  objc_autoreleasePoolPop(v7);
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = objc_autoreleasePoolPush();
  objc_msgSend_encodeSystemFieldsWithCoder_(self, v5, v18);
  v8 = objc_msgSend_valueStore(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v18, v9, v8, @"ValueStore");

  v12 = objc_msgSend_encryptedValueStore(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v18, v13, v12, @"EncryptedValueStore");

  v16 = objc_msgSend_pluginFields(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v18, v17, v16, @"PluginFields");

  objc_autoreleasePoolPop(v4);
}

- (CKRecord)initWithCoder:(id)a3
{
  v288[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v284.receiver = self;
  v284.super_class = CKRecord;
  v5 = [(CKRecord *)&v284 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_opt_class();
      objc_msgSend_setClass_forClassName_(v4, v8, v7, @"CKInternalEncryptedData");
    }

    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v10, v9, @"RecordType");
    recordType = v5->_recordType;
    v5->_recordType = v11;

    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"RecordID");
    recordID = v5->_recordID;
    v5->_recordID = v15;

    if (!v5->_recordType || !v5->_recordID)
    {
      objc_autoreleasePoolPop(v6);
      v270 = 0;
      goto LABEL_44;
    }

    context = v6;
    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"ValueStore");
    p_valueStore = &v5->_valueStore;
    valueStore = v5->_valueStore;
    v5->_valueStore = v19;

    if (v5->_valueStore)
    {
      objc_storeWeak(&v5->_valueStore->_record, v5);
    }

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v22, @"EncryptedValueStore");
    encryptedValueStore = v5->_encryptedValueStore;
    v5->_encryptedValueStore = v24;

    p_encryptedValueStore = &v5->_encryptedValueStore;
    v26 = v5->_encryptedValueStore;
    if (v26)
    {
      objc_storeWeak(&v26->super._record, v5);
    }

    if (!*p_valueStore)
    {
      v27 = [CKRecordValueStore alloc];
      v29 = objc_msgSend_initWithRecord_(v27, v28, v5);
      v30 = v5->_valueStore;
      v5->_valueStore = v29;
    }

    if (!*p_encryptedValueStore)
    {
      v31 = [CKEncryptedRecordValueStore alloc];
      v33 = objc_msgSend_initWithRecord_(v31, v32, v5);
      v34 = v5->_encryptedValueStore;
      v5->_encryptedValueStore = v33;
    }

    if (*p_valueStore)
    {
      (*p_valueStore)->_trackChanges = 0;
    }

    if (*p_encryptedValueStore)
    {
      (*p_encryptedValueStore)->super._trackChanges = 0;
    }

    v35 = CKAcceptableValueClasses();
    v288[0] = objc_opt_class();
    v288[1] = objc_opt_class();
    v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, v288, 2);
    v39 = objc_msgSend_setByAddingObjectsFromArray_(v35, v38, v37);
    v41 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v40, v39, @"RecordValues");
    v44 = objc_msgSend_mutableCopy(v41, v42, v43);

    v45 = CKAcceptableValueClasses();
    v287[0] = objc_opt_class();
    v287[1] = objc_opt_class();
    v287[2] = objc_opt_class();
    v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v46, v287, 3);
    v49 = objc_msgSend_setByAddingObjectsFromArray_(v45, v48, v47);
    v51 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v50, v49, @"OriginalValues");
    v279 = objc_msgSend_mutableCopy(v51, v52, v53);

    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v58 = objc_msgSend_setWithObjects_(v54, v57, v55, v56, 0);
    v277 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v59, v58, @"ChangedKeys");

    v278 = v44;
    if (objc_msgSend_count(v44, v60, v61) || objc_msgSend_count(v279, v62, v63))
    {
      v273 = v5;
      v274 = v4;
      v64 = objc_opt_new();
      v67 = objc_msgSend_allKeys(v44, v65, v66);
      objc_msgSend_addObjectsFromArray_(v64, v68, v67);

      v71 = objc_msgSend_allKeys(v279, v69, v70);
      objc_msgSend_addObjectsFromArray_(v64, v72, v71);

      v75 = objc_msgSend_allObjects(v277, v73, v74);
      objc_msgSend_addObjectsFromArray_(v64, v76, v75);

      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      v77 = v64;
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v280, v286, 16);
      if (v79)
      {
        v81 = v79;
        v82 = *v281;
        do
        {
          for (i = 0; i != v81; ++i)
          {
            if (*v281 != v82)
            {
              objc_enumerationMutation(v77);
            }

            v84 = *(*(&v280 + 1) + 8 * i);
            v85 = objc_msgSend_objectForKeyedSubscript_(v278, v80, v84);
            v87 = objc_msgSend_objectForKeyedSubscript_(v279, v86, v84);
            if ((sub_188585944(v85) & 1) != 0 || (v88 = sub_188585944(v87), v89 = p_valueStore, v88))
            {
              v89 = p_encryptedValueStore;
            }

            v90 = *v89;
            v93 = v90;
            if (v85)
            {
              v94 = objc_msgSend_values(v90, v91, v92);
              objc_msgSend_setObject_forKeyedSubscript_(v94, v95, v85, v84);
            }

            if (v87)
            {
              v96 = objc_msgSend_originalValues(v93, v91, v92);
              objc_msgSend_setObject_forKeyedSubscript_(v96, v97, v87, v84);
            }

            if (objc_msgSend_containsObject_(v277, v91, v84))
            {
              v100 = objc_msgSend_changedKeysSet(v93, v98, v99);
              objc_msgSend_addObject_(v100, v101, v84);
            }
          }

          v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v280, v286, 16);
        }

        while (v81);
      }

      v5 = v273;
      v4 = v274;
    }

    v102 = CKAcceptableValueClasses();
    v285[0] = objc_opt_class();
    v285[1] = objc_opt_class();
    v104 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v103, v285, 2);
    v106 = objc_msgSend_setByAddingObjectsFromArray_(v102, v105, v104);
    v108 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v107, v106, @"PluginFields");
    pluginFields = v5->_pluginFields;
    v5->_pluginFields = v108;

    v110 = objc_opt_class();
    v112 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v111, v110, @"RecordCtime");
    creationDate = v5->_creationDate;
    v5->_creationDate = v112;

    v114 = objc_opt_class();
    v116 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v115, v114, @"RecordMtime");
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v116;

    v118 = objc_opt_class();
    v120 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v119, v118, @"CreatorUserRecordID");
    creatorUserRecordID = v5->_creatorUserRecordID;
    v5->_creatorUserRecordID = v120;

    v122 = objc_opt_class();
    v124 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v123, v122, @"LastModifiedUserRecordID");
    lastModifiedUserRecordID = v5->_lastModifiedUserRecordID;
    v5->_lastModifiedUserRecordID = v124;

    v126 = objc_opt_class();
    v128 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v127, v126, @"ETag");
    etag = v5->_etag;
    v5->_etag = v128;

    v130 = MEMORY[0x1E695DFD8];
    v131 = objc_opt_class();
    v132 = objc_opt_class();
    v134 = objc_msgSend_setWithObjects_(v130, v133, v131, v132, 0);
    v136 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v135, v134, @"ConflictLoserEtags");
    conflictLoserEtags = v5->_conflictLoserEtags;
    v5->_conflictLoserEtags = v136;

    v5->_knownToServer = objc_msgSend_decodeBoolForKey_(v4, v138, @"KnownToServer");
    v139 = objc_opt_class();
    v141 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v140, v139, @"ModifiedByDevice");
    modifiedByDevice = v5->_modifiedByDevice;
    v5->_modifiedByDevice = v141;

    v5->_wasCached = objc_msgSend_decodeBoolForKey_(v4, v143, @"WasCached");
    v144 = objc_opt_class();
    v146 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v145, v144, @"ZoneishKeyID");
    zoneishKeyID = v5->_zoneishKeyID;
    v5->_zoneishKeyID = v146;

    v148 = objc_opt_class();
    v150 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v149, v148, @"ProtectionData");
    protectionData = v5->_protectionData;
    v5->_protectionData = v150;

    v152 = objc_opt_class();
    v154 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v153, v152, @"ProtectionDataEtag");
    protectionEtag = v5->_protectionEtag;
    v5->_protectionEtag = v154;

    v156 = objc_opt_class();
    v158 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v157, v156, @"PreviousProtectionDataEtag");
    previousProtectionEtag = v5->_previousProtectionEtag;
    v5->_previousProtectionEtag = v158;

    v160 = objc_opt_class();
    v162 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v161, v160, @"ZoneProtectionDataEtag");
    zoneProtectionEtag = v5->_zoneProtectionEtag;
    v5->_zoneProtectionEtag = v162;

    v164 = objc_opt_class();
    v166 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v165, v164, @"ShareEtag");
    shareEtag = v5->_shareEtag;
    v5->_shareEtag = v166;

    v168 = objc_opt_class();
    v170 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v169, v168, @"ShareReference");
    share = v5->_share;
    v5->_share = v170;

    v172 = objc_opt_class();
    v174 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v173, v172, @"PreviousShareReference");
    previousShare = v5->_previousShare;
    v5->_previousShare = v174;

    v5->_hasUpdatedShare = objc_msgSend_decodeBoolForKey_(v4, v176, @"HasUpdatedShareReference");
    v177 = objc_opt_class();
    v179 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v178, v177, @"ParentReference");
    parent = v5->_parent;
    v5->_parent = v179;

    v181 = objc_opt_class();
    v183 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v182, v181, @"PreviousParentReference");
    previousParent = v5->_previousParent;
    v5->_previousParent = v183;

    v5->_hasUpdatedParent = objc_msgSend_decodeBoolForKey_(v4, v185, @"HasUpdatedParentReference");
    v186 = objc_opt_class();
    v188 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v187, v186, @"ChainParentPublicKeyID");
    chainParentPublicKeyID = v5->_chainParentPublicKeyID;
    v5->_chainParentPublicKeyID = v188;

    v190 = MEMORY[0x1E695DFD8];
    v191 = objc_opt_class();
    v192 = objc_opt_class();
    v194 = objc_msgSend_setWithObjects_(v190, v193, v191, v192, 0);
    v196 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v195, v194, @"TombstonedPublicKeyIDs");
    tombstonedPublicKeyIDs = v5->_tombstonedPublicKeyIDs;
    v5->_tombstonedPublicKeyIDs = v196;

    v198 = objc_opt_class();
    v200 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v199, v198, @"ChainPrivateKey");
    chainPrivateKey = v5->_chainPrivateKey;
    v5->_chainPrivateKey = v200;

    v202 = objc_opt_class();
    v204 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v203, v202, @"MutableEncryptedPublicSharingKey");
    mutableEncryptedPSK = v5->_mutableEncryptedPSK;
    v5->_mutableEncryptedPSK = v204;

    v206 = objc_opt_class();
    v208 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v207, v206, @"ChainProtectionData");
    chainProtectionInfo = v5->_chainProtectionInfo;
    v5->_chainProtectionInfo = v208;

    v5->_wantsChainPCS = objc_msgSend_decodeBoolForKey_(v4, v210, @"WantsChainPCSKey");
    v5->_useLightweightPCS = objc_msgSend_decodeBoolForKey_(v4, v211, @"UseLightweightPCS");
    v5->_permission = objc_msgSend_decodeIntegerForKey_(v4, v212, @"Permission");
    v5->_wantsPublicSharingKey = objc_msgSend_decodeBoolForKey_(v4, v213, @"WantsPublicSharingKey");
    v214 = objc_opt_class();
    v216 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v215, v214, @"RoutingKey");
    routingKey = v5->_routingKey;
    v5->_routingKey = v216;

    v218 = objc_opt_class();
    v220 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v219, v218, @"BaseToken");
    baseToken = v5->_baseToken;
    v5->_baseToken = v220;

    v222 = objc_opt_class();
    v224 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v223, v222, @"DisplayedHostname");
    displayedHostname = v5->_displayedHostname;
    v5->_displayedHostname = v224;

    v226 = objc_opt_class();
    v228 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v227, v226, @"URL");
    mutableURL = v5->_mutableURL;
    v5->_mutableURL = v228;

    v230 = objc_opt_class();
    v232 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v231, v230, @"PreviousProtectionDataEtagFromUnitTest");
    previousProtectionEtagFromUnitTest = v5->_previousProtectionEtagFromUnitTest;
    v5->_previousProtectionEtagFromUnitTest = v232;

    v234 = objc_opt_class();
    v236 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v235, v234, @"PCSKeyID");
    pcsKeyID = v5->_pcsKeyID;
    v5->_pcsKeyID = v236;

    v238 = MEMORY[0x1E695DFD8];
    v239 = objc_opt_class();
    v240 = objc_opt_class();
    v242 = objc_msgSend_setWithObjects_(v238, v241, v239, v240, 0);
    v244 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v243, v242, @"AllPCSKeyIDs");
    allPCSKeyIDs = v5->_allPCSKeyIDs;
    v5->_allPCSKeyIDs = v244;

    v5->_trackChanges = 1;
    v246 = v5->_valueStore;
    if (v246)
    {
      v246->_trackChanges = 1;
    }

    if (*p_encryptedValueStore)
    {
      (*p_encryptedValueStore)->super._trackChanges = 1;
    }

    v247 = objc_opt_class();
    v249 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v248, v247, @"ExpirationDate");
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v249;

    v5->_expired = objc_msgSend_decodeBoolForKey_(v4, v251, @"Expired");
    v5->_hasUpdatedExpirationTimeInterval = objc_msgSend_decodeBoolForKey_(v4, v252, @"HasUpdatedExpiration");
    v253 = objc_opt_class();
    v255 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v254, v253, @"UpdatedExpiration");
    updatedExpirationTimeInterval = v5->_updatedExpirationTimeInterval;
    v5->_updatedExpirationTimeInterval = v255;

    v5->_isMergeableValueDeltaRecord = objc_msgSend_decodeBoolForKey_(v4, v257, @"MergeableValueDeltaRecord");
    v5->_needsRollAndCounterSign = objc_msgSend_decodeBoolForKey_(v4, v258, @"NeedsRollAndCounterSignKey");
    v259 = MEMORY[0x1E695DFD8];
    v260 = objc_opt_class();
    v261 = objc_opt_class();
    v262 = objc_opt_class();
    v263 = objc_opt_class();
    v265 = objc_msgSend_setWithObjects_(v259, v264, v260, v261, v262, v263, 0);
    v267 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v266, v265, @"PCSKeysToRemove");
    pcsKeysToRemove = v5->_pcsKeysToRemove;
    v5->_pcsKeysToRemove = v267;

    v5->_applyPCSKeysToRemoveForTesting = objc_msgSend_decodeBoolForKey_(v4, v269, @"ApplyPCSKeysToRemoveForTesting");
    objc_autoreleasePoolPop(context);
  }

  v270 = v5;
LABEL_44:

  v271 = *MEMORY[0x1E69E9840];
  return v270;
}

- (void)setStreamingAssetRequestOptions:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_valueStore(self, v5, v6);
  v15[0] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v15, 1);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188587F20;
  v13[3] = &unk_1E70BE088;
  v14 = v4;
  v10 = v4;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v7, v11, v9, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsMergeableValues
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v8, 1);
  LOBYTE(self) = objc_msgSend_containsValueOfClasses_passingTest_(self, v5, v4, &unk_1EFA2EF08);

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)canSkipRecordSaveForMergeables
{
  v49 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isKnownToServer(self, a2, v2) || (objc_msgSend_etag(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || (objc_msgSend_hasUpdatedExpirationTimeInterval(self, v7, v8) & 1) != 0 || (objc_msgSend_hasUpdatedShare(self, v9, v10) & 1) != 0 || (objc_msgSend_hasUpdatedParent(self, v11, v12) & 1) != 0 || (objc_msgSend_requiresRecordSaveForMergeableDeltas(self, v13, v14) & 1) != 0 || (objc_msgSend_changedKeys(self, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_count(v17, v18, v19), v17, !v20))
  {
    v41 = 0;
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = objc_msgSend_changedKeys(self, v21, v22, 0);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v44, v48, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v45;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          v31 = objc_msgSend_objectForKeyedSubscript_(self, v26, v30);
          v34 = v31;
          if (v31)
          {
            v35 = v31;
          }

          else
          {
            v36 = objc_msgSend_encryptedValues(self, v32, v33);
            v35 = objc_msgSend_objectForKeyedSubscript_(v36, v37, v30);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_25:
            v41 = 0;
            goto LABEL_26;
          }

          isValueIDKnownToServer = objc_msgSend_isValueIDKnownToServer(v35, v38, v39);

          if (!isValueIDKnownToServer)
          {
            goto LABEL_25;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v44, v48, 16);
        v41 = 1;
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v41 = 1;
    }

LABEL_26:
  }

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

- (BOOL)containsMergeableValuesWithDeltasToSave
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v8, 1);
  LOBYTE(self) = objc_msgSend_containsValueOfClasses_options_passingTest_(self, v5, v4, 1, &unk_1EFA2EF48);

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)prepareMergeablesForUploadInContainer:(id)a3 useAssetsIfNecessary:(BOOL)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v15, 1);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1885884EC;
  v13[3] = &unk_1E70BE0C8;
  v14 = a4;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(self, v10, v9, v13);

  if (a5)
  {
    *a5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)countMergeableValueMetrics:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v22[0] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v22, 1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1885889C4;
  v9[3] = &unk_1E70BE0F0;
  v9[4] = &v18;
  v9[5] = &v14;
  v9[6] = &v10;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(self, v7, v6, v9);

  v4[2](v4, v19[3], v15[3], v11[3]);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setExpirationAfterTimeInterval:(id)a3
{
  v6 = a3;
  objc_msgSend_setHasUpdatedExpirationTimeInterval_(self, v4, 1);
  objc_msgSend_setUpdatedExpirationTimeInterval_(self, v5, v6);
}

- (BOOL)containsValueOfClasses:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12 = objc_msgSend_valueStore(self, v10, v11);
  if (objc_msgSend_containsValueOfClasses_options_passingTest_(v12, v13, v8, a4, v9))
  {
    v16 = 1;
  }

  else
  {
    v17 = objc_msgSend_encryptedValueStore(self, v14, v15);
    v16 = objc_msgSend_containsValueOfClasses_options_passingTest_(v17, v18, v8, a4, v9);
  }

  return v16;
}

- (void)enumerateKeysAndValuesOfClasses:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v12 = objc_msgSend_valueStore(self, v10, v11);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_188588D94;
  v22 = &unk_1E70BE118;
  v13 = v9;
  v23 = v13;
  v24 = &v25;
  objc_msgSend_enumerateKeysAndValuesOfClasses_options_usingBlock_(v12, v14, v8, a4, &v19);

  if ((v26[3] & 1) == 0)
  {
    v17 = objc_msgSend_encryptedValueStore(self, v15, v16, v19, v20, v21, v22);
    objc_msgSend_enumerateKeysAndValuesOfClasses_options_usingBlock_(v17, v18, v8, a4, v13);
  }

  _Block_object_dispose(&v25, 8);
}

- (CKRecord)initWithRecordTransport:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_contents(v4, v5, v6) == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E696ACD0]);
    v10 = objc_msgSend_localSerialization(v4, v8, v9);
    v19 = 0;
    v12 = objc_msgSend_initForReadingFromData_error_(v7, v11, v10, &v19);
    v13 = v19;

    if (v12)
    {
      self = objc_msgSend_initWithCoder_(self, v14, v12);
      v15 = self;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v16 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_error_impl(&dword_1883EA000, v16, OS_LOG_TYPE_ERROR, "Unable to create an unarchiver from record transport %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

@end
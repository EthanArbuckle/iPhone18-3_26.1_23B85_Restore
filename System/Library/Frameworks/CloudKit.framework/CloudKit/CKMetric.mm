@interface CKMetric
- (CKMetric)initWithCoder:(id)a3;
- (CKMetric)initWithStartDate:(id)a3 duration:(double)a4 queueing:(double)a5 executing:(double)a6 bytesUploaded:(unint64_t)a7 bytesDownloaded:(unint64_t)a8 networkServiceType:(unint64_t)a9 connections:(unint64_t)a10 connectionsCreated:(unint64_t)a11 bytesFulfilledByPeers:(unint64_t)a12 bytesFulfilledLocally:(unint64_t)a13 bytesResumed:(unint64_t)a14 totalBytesByChunkProfile:(id)a15 chunkCountByChunkProfile:(id)a16 fileCountByChunkProfile:(id)a17 walrusEnabled:(BOOL)a18 zoneishKeysRolled:(unint64_t)a19 perRecordKeysRolled:(unint64_t)a20 zoneKeysRolled:(unint64_t)a21 shareKeysRolled:(unint64_t)a22 keyRollsSkippedBySizeCheck:(unint64_t)a23 identitiesRolledOnRecordSave:(unint64_t)a24 identitiesRolledOnZoneSave:(unint64_t)a25 failedIdentityRollAttempts:(unint64_t)a26 zoneKeysRemoved:(unint64_t)a27 zoneishKeysRemoved:(unint64_t)a28 recordKeysRemoved:(unint64_t)a29 keysNotRemoved:(unint64_t)a30 adopterCapabilityCheckValidationFailures:(unint64_t)a31 adopterCapabilityCheckValidationFailureTypes:(id)a32 adopterCapabilityCheckResult:(unint64_t)a33 requiredFeatureSetValidationFailures:(unint64_t)a34 requiredFeatureSetValidationFailureTypes:(id)a35;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKMetric

- (id)CKPropertiesDescription
{
  v44 = MEMORY[0x1E696AEC0];
  v43 = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_duration(self, v4, v5);
  v7 = v6;
  objc_msgSend_queueing(self, v8, v9);
  v11 = v10;
  objc_msgSend_executing(self, v12, v13);
  v15 = v14;
  v18 = objc_msgSend_bytesUploaded(self, v16, v17);
  v21 = objc_msgSend_bytesDownloaded(self, v19, v20);
  v24 = objc_msgSend_connections(self, v22, v23);
  v27 = objc_msgSend_connectionsCreated(self, v25, v26);
  v30 = objc_msgSend_totalBytesByChunkProfile(self, v28, v29);
  v31 = sub_1886BB190(self, v30);
  v34 = objc_msgSend_chunkCountByChunkProfile(self, v32, v33);
  v35 = sub_1886BB190(self, v34);
  v38 = objc_msgSend_fileCountByChunkProfile(self, v36, v37);
  v39 = sub_1886BB190(self, v38);
  v41 = objc_msgSend_stringWithFormat_(v44, v40, @"startDate=%@, duration=%0.3f, queueing=%0.3f, executing=%0.3f, bytesUploaded=%lu, bytesDownloaded=%lu, connections=%lu, connectionsCreated=%lu, totalBytesByChunkProfile=%@, chunkCountByChunkProfile=%@, fileCountByChunkProfile=%@", v43, v7, v11, v15, v18, v21, v24, v27, v31, v35, v39);

  return v41;
}

- (CKMetric)initWithStartDate:(id)a3 duration:(double)a4 queueing:(double)a5 executing:(double)a6 bytesUploaded:(unint64_t)a7 bytesDownloaded:(unint64_t)a8 networkServiceType:(unint64_t)a9 connections:(unint64_t)a10 connectionsCreated:(unint64_t)a11 bytesFulfilledByPeers:(unint64_t)a12 bytesFulfilledLocally:(unint64_t)a13 bytesResumed:(unint64_t)a14 totalBytesByChunkProfile:(id)a15 chunkCountByChunkProfile:(id)a16 fileCountByChunkProfile:(id)a17 walrusEnabled:(BOOL)a18 zoneishKeysRolled:(unint64_t)a19 perRecordKeysRolled:(unint64_t)a20 zoneKeysRolled:(unint64_t)a21 shareKeysRolled:(unint64_t)a22 keyRollsSkippedBySizeCheck:(unint64_t)a23 identitiesRolledOnRecordSave:(unint64_t)a24 identitiesRolledOnZoneSave:(unint64_t)a25 failedIdentityRollAttempts:(unint64_t)a26 zoneKeysRemoved:(unint64_t)a27 zoneishKeysRemoved:(unint64_t)a28 recordKeysRemoved:(unint64_t)a29 keysNotRemoved:(unint64_t)a30 adopterCapabilityCheckValidationFailures:(unint64_t)a31 adopterCapabilityCheckValidationFailureTypes:(id)a32 adopterCapabilityCheckResult:(unint64_t)a33 requiredFeatureSetValidationFailures:(unint64_t)a34 requiredFeatureSetValidationFailureTypes:(id)a35
{
  v40 = a3;
  v41 = a15;
  v42 = a16;
  v43 = a17;
  v44 = a32;
  v45 = a35;
  v68.receiver = self;
  v68.super_class = CKMetric;
  v48 = [(CKMetric *)&v68 init];
  if (v48)
  {
    v49 = objc_msgSend_copy(v40, v46, v47);
    startDate = v48->_startDate;
    v48->_startDate = v49;

    v48->_duration = a4;
    v48->_queueing = a5;
    v48->_executing = a6;
    v48->_bytesUploaded = a7;
    v48->_bytesDownloaded = a8;
    v48->_connectionsCreated = a11;
    v48->_bytesFulfilledByPeers = a12;
    v48->_networkServiceType = a9;
    v48->_connections = a10;
    v48->_bytesFulfilledLocally = a13;
    v48->_bytesResumed = a14;
    v53 = objc_msgSend_copy(v41, v51, v52);
    totalBytesByChunkProfile = v48->_totalBytesByChunkProfile;
    v48->_totalBytesByChunkProfile = v53;

    v57 = objc_msgSend_copy(v42, v55, v56);
    chunkCountByChunkProfile = v48->_chunkCountByChunkProfile;
    v48->_chunkCountByChunkProfile = v57;

    v61 = objc_msgSend_copy(v43, v59, v60);
    fileCountByChunkProfile = v48->_fileCountByChunkProfile;
    v48->_fileCountByChunkProfile = v61;

    v48->_walrusEnabled = a18;
    v48->_zoneishKeysRolled = a19;
    v48->_perRecordKeysRolled = a20;
    v48->_zoneKeysRolled = a21;
    v48->_shareKeysRolled = a22;
    v48->_keyRollsSkippedBySizeCheck = a23;
    v48->_identitiesRolledOnRecordSave = a24;
    v48->_identitiesRolledOnZoneSave = a25;
    v48->_failedIdentityRollAttempts = a26;
    v48->_zoneKeysRemoved = a27;
    v48->_zoneishKeysRemoved = a28;
    v48->_recordKeysRemoved = a29;
    v48->_keysNotRemoved = a30;
    v48->_adopterCapabilityCheckValidationFailures = a31;
    objc_storeStrong(&v48->_adopterCapabilityCheckValidationFailureTypes, a32);
    v48->_adopterCapabilityCheckResult = a33;
    v48->_requiredFeatureSetValidationFailures = a34;
    objc_storeStrong(&v48->_requiredFeatureSetValidationFailureTypes, a35);
  }

  return v48;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_startDate(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"StartDate");

  objc_msgSend_duration(self, v9, v10);
  objc_msgSend_encodeDouble_forKey_(v4, v11, @"Duration");
  objc_msgSend_queueing(self, v12, v13);
  objc_msgSend_encodeDouble_forKey_(v4, v14, @"Queuing");
  objc_msgSend_executing(self, v15, v16);
  objc_msgSend_encodeDouble_forKey_(v4, v17, @"Executing");
  v20 = objc_msgSend_bytesUploaded(self, v18, v19);
  objc_msgSend_encodeInteger_forKey_(v4, v21, v20, @"BytesUploaded");
  v24 = objc_msgSend_bytesDownloaded(self, v22, v23);
  objc_msgSend_encodeInteger_forKey_(v4, v25, v24, @"BytesDownloaded");
  v28 = objc_msgSend_connections(self, v26, v27);
  objc_msgSend_encodeInteger_forKey_(v4, v29, v28, @"Connections");
  v32 = objc_msgSend_connectionsCreated(self, v30, v31);
  objc_msgSend_encodeInteger_forKey_(v4, v33, v32, @"ConnectionsCreated");
  v36 = objc_msgSend_bytesFulfilledByPeers(self, v34, v35);
  objc_msgSend_encodeInt64_forKey_(v4, v37, v36, @"BytesFulfilledByPeers");
  v40 = objc_msgSend_bytesFulfilledLocally(self, v38, v39);
  objc_msgSend_encodeInt64_forKey_(v4, v41, v40, @"BytesFulfilledLocally");
  v44 = objc_msgSend_bytesResumed(self, v42, v43);
  objc_msgSend_encodeInt64_forKey_(v4, v45, v44, @"BytesResumed");
  v48 = objc_msgSend_totalBytesByChunkProfile(self, v46, v47);
  objc_msgSend_encodeObject_forKey_(v4, v49, v48, @"TotalBytesByChunkProfile");

  v52 = objc_msgSend_chunkCountByChunkProfile(self, v50, v51);
  objc_msgSend_encodeObject_forKey_(v4, v53, v52, @"ChunkCountByChunkProfile");

  v56 = objc_msgSend_fileCountByChunkProfile(self, v54, v55);
  objc_msgSend_encodeObject_forKey_(v4, v57, v56, @"FileCountByChunkProfile");

  v60 = objc_msgSend_zoneishKeysRolled(self, v58, v59);
  objc_msgSend_encodeInt64_forKey_(v4, v61, v60, @"ZoneishKeysRolled");
  v64 = objc_msgSend_perRecordKeysRolled(self, v62, v63);
  objc_msgSend_encodeInt64_forKey_(v4, v65, v64, @"PerRecordKeysRolled");
  v68 = objc_msgSend_zoneKeysRolled(self, v66, v67);
  objc_msgSend_encodeInt64_forKey_(v4, v69, v68, @"ZoneKeysRolled");
  v72 = objc_msgSend_shareKeysRolled(self, v70, v71);
  objc_msgSend_encodeInt64_forKey_(v4, v73, v72, @"ShareKeysRolled");
  v76 = objc_msgSend_keyRollsSkippedBySizeCheck(self, v74, v75);
  objc_msgSend_encodeInt64_forKey_(v4, v77, v76, @"KeyRollsSkippedBySizeCheck");
  v80 = objc_msgSend_identitiesRolledOnRecordSave(self, v78, v79);
  objc_msgSend_encodeInt64_forKey_(v4, v81, v80, @"IdentitiesRolledOnRecordSave");
  v84 = objc_msgSend_identitiesRolledOnZoneSave(self, v82, v83);
  objc_msgSend_encodeInt64_forKey_(v4, v85, v84, @"IdentitiesRolledOnZoneSave");
  v88 = objc_msgSend_failedIdentityRollAttempts(self, v86, v87);
  objc_msgSend_encodeInt64_forKey_(v4, v89, v88, @"FailedIdentityRollAttempts");
  v92 = objc_msgSend_zoneKeysRemoved(self, v90, v91);
  objc_msgSend_encodeInt64_forKey_(v4, v93, v92, @"ZoneKeysRemoved");
  v96 = objc_msgSend_zoneishKeysRemoved(self, v94, v95);
  objc_msgSend_encodeInt64_forKey_(v4, v97, v96, @"ZoneishKeysRemoved");
  v100 = objc_msgSend_recordKeysRemoved(self, v98, v99);
  objc_msgSend_encodeInt64_forKey_(v4, v101, v100, @"RecordKeysRemoved");
  v104 = objc_msgSend_keysNotRemoved(self, v102, v103);
  objc_msgSend_encodeInt64_forKey_(v4, v105, v104, @"KeysNotRemoved");
  v108 = objc_msgSend_walrusEnabled(self, v106, v107);
  objc_msgSend_encodeBool_forKey_(v4, v109, v108, @"WalrusEnabled");
  v112 = objc_msgSend_adopterCapabilityCheckValidationFailures(self, v110, v111);
  objc_msgSend_encodeInt64_forKey_(v4, v113, v112, @"AdopterCapabilityCheckValidationFailures");
  v116 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(self, v114, v115);
  objc_msgSend_encodeObject_forKey_(v4, v117, v116, @"AdopterCapabilityCheckValidationFailureTypes");

  v120 = objc_msgSend_adopterCapabilityCheckResult(self, v118, v119);
  objc_msgSend_encodeInt64_forKey_(v4, v121, v120, @"AdopterCapabilityCheckResult");
  v124 = objc_msgSend_requiredFeatureSetValidationFailures(self, v122, v123);
  objc_msgSend_encodeInt64_forKey_(v4, v125, v124, @"RequiredFeatureSetValidationFailures");
  v129 = objc_msgSend_requiredFeatureSetValidationFailureTypes(self, v126, v127);
  objc_msgSend_encodeObject_forKey_(v4, v128, v129, @"RequiredFeatureSetValidationFailureTypes");
}

- (CKMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v84.receiver = self;
  v84.super_class = CKMetric;
  v5 = [(CKMetric *)&v84 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"StartDate");
    startDate = v5->_startDate;
    v5->_startDate = v8;

    objc_msgSend_decodeDoubleForKey_(v4, v10, @"Duration");
    v5->_duration = v11;
    objc_msgSend_decodeDoubleForKey_(v4, v12, @"Queuing");
    v5->_queueing = v13;
    objc_msgSend_decodeDoubleForKey_(v4, v14, @"Executing");
    v5->_executing = v15;
    v5->_bytesUploaded = objc_msgSend_decodeIntegerForKey_(v4, v16, @"BytesUploaded");
    v5->_bytesDownloaded = objc_msgSend_decodeIntegerForKey_(v4, v17, @"BytesDownloaded");
    v5->_connections = objc_msgSend_decodeIntegerForKey_(v4, v18, @"Connections");
    v5->_connectionsCreated = objc_msgSend_decodeIntegerForKey_(v4, v19, @"ConnectionsCreated");
    v5->_bytesFulfilledByPeers = objc_msgSend_decodeInt64ForKey_(v4, v20, @"BytesFulfilledByPeers");
    v5->_bytesFulfilledLocally = objc_msgSend_decodeInt64ForKey_(v4, v21, @"BytesFulfilledLocally");
    v5->_bytesResumed = objc_msgSend_decodeInt64ForKey_(v4, v22, @"BytesResumed");
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v28 = objc_msgSend_setWithObjects_(v23, v27, v24, v25, v26, 0);
    v30 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v29, v28, @"TotalBytesByChunkProfile");
    v33 = objc_msgSend_mutableCopy(v30, v31, v32);
    totalBytesByChunkProfile = v5->_totalBytesByChunkProfile;
    v5->_totalBytesByChunkProfile = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v40 = objc_msgSend_setWithObjects_(v35, v39, v36, v37, v38, 0);
    v42 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v41, v40, @"ChunkCountByChunkProfile");
    v45 = objc_msgSend_mutableCopy(v42, v43, v44);
    chunkCountByChunkProfile = v5->_chunkCountByChunkProfile;
    v5->_chunkCountByChunkProfile = v45;

    v47 = MEMORY[0x1E695DFD8];
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v52 = objc_msgSend_setWithObjects_(v47, v51, v48, v49, v50, 0);
    v54 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v53, v52, @"FileCountByChunkProfile");
    v57 = objc_msgSend_mutableCopy(v54, v55, v56);
    fileCountByChunkProfile = v5->_fileCountByChunkProfile;
    v5->_fileCountByChunkProfile = v57;

    v5->_zoneishKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v59, @"ZoneishKeysRolled");
    v5->_perRecordKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v60, @"PerRecordKeysRolled");
    v5->_zoneKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v61, @"ZoneKeysRolled");
    v5->_shareKeysRolled = objc_msgSend_decodeInt64ForKey_(v4, v62, @"ShareKeysRolled");
    v5->_keyRollsSkippedBySizeCheck = objc_msgSend_decodeInt64ForKey_(v4, v63, @"KeyRollsSkippedBySizeCheck");
    v5->_identitiesRolledOnRecordSave = objc_msgSend_decodeInt64ForKey_(v4, v64, @"IdentitiesRolledOnRecordSave");
    v5->_identitiesRolledOnZoneSave = objc_msgSend_decodeInt64ForKey_(v4, v65, @"IdentitiesRolledOnZoneSave");
    v5->_failedIdentityRollAttempts = objc_msgSend_decodeInt64ForKey_(v4, v66, @"FailedIdentityRollAttempts");
    v5->_zoneKeysRemoved = objc_msgSend_decodeInt64ForKey_(v4, v67, @"ZoneKeysRemoved");
    v5->_zoneishKeysRemoved = objc_msgSend_decodeInt64ForKey_(v4, v68, @"ZoneishKeysRemoved");
    v5->_recordKeysRemoved = objc_msgSend_decodeInt64ForKey_(v4, v69, @"RecordKeysRemoved");
    v5->_keysNotRemoved = objc_msgSend_decodeInt64ForKey_(v4, v70, @"KeysNotRemoved");
    v5->_adopterCapabilityCheckValidationFailures = objc_msgSend_decodeInt64ForKey_(v4, v71, @"AdopterCapabilityCheckValidationFailures");
    v72 = objc_opt_class();
    v74 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v73, v72, @"AdopterCapabilityCheckValidationFailureTypes");
    adopterCapabilityCheckValidationFailureTypes = v5->_adopterCapabilityCheckValidationFailureTypes;
    v5->_adopterCapabilityCheckValidationFailureTypes = v74;

    v5->_adopterCapabilityCheckResult = objc_msgSend_decodeInt64ForKey_(v4, v76, @"AdopterCapabilityCheckResult");
    v5->_requiredFeatureSetValidationFailures = objc_msgSend_decodeInt64ForKey_(v4, v77, @"RequiredFeatureSetValidationFailures");
    v78 = objc_opt_class();
    v80 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v79, v78, @"RequiredFeatureSetValidationFailureTypes");
    requiredFeatureSetValidationFailureTypes = v5->_requiredFeatureSetValidationFailureTypes;
    v5->_requiredFeatureSetValidationFailureTypes = v80;

    v5->_walrusEnabled = objc_msgSend_decodeBoolForKey_(v4, v82, @"WalrusEnabled");
  }

  return v5;
}

@end
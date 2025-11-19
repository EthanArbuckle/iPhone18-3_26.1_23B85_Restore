@interface CKMergeableRecordValueDescription
- (CKMergeableRecordValueDescription)initWithMergeableRecordValue:(id)a3 shortDescription:(BOOL)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)CKDescribePropertiesUsing:(id)a3 includeDeltaContents:(BOOL)a4;
@end

@implementation CKMergeableRecordValueDescription

- (CKMergeableRecordValueDescription)initWithMergeableRecordValue:(id)a3 shortDescription:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKMergeableRecordValueDescription;
  v8 = [(CKMergeableRecordValueDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mergeableRecordValue, a3);
    v9->_shortDescription = a4;
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_shortDescription(self, v4, v5);
  objc_msgSend_CKDescribePropertiesUsing_includeDeltaContents_(self, v7, v8, v6 ^ 1u);
}

- (void)CKDescribePropertiesUsing:(id)a3 includeDeltaContents:(BOOL)a4
{
  v4 = a4;
  v120 = a3;
  v8 = objc_msgSend_mergeableRecordValue(self, v6, v7);
  v11 = objc_msgSend_valueID(v8, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(v120, v12, @"valueID", v11, 0);

  v15 = objc_msgSend_mergeableRecordValue(self, v13, v14);
  LOBYTE(v11) = objc_msgSend_isValueIDKnownToServer(v15, v16, v17);

  if ((v11 & 1) == 0)
  {
    v20 = MEMORY[0x1E696AD98];
    v21 = objc_msgSend_mergeableRecordValue(self, v18, v19);
    isValueIDKnownToServer = objc_msgSend_isValueIDKnownToServer(v21, v22, v23);
    v26 = objc_msgSend_numberWithBool_(v20, v25, isValueIDKnownToServer);
    objc_msgSend_addProperty_value_shouldRedact_(v120, v27, @"isValueIDKnownToServer", v26, 0);
  }

  v28 = objc_msgSend_mergeableRecordValue(self, v18, v19);
  v31 = objc_msgSend_lastKnownServerTimestampVector(v28, v29, v30);
  objc_msgSend_addProperty_value_shouldRedact_(v120, v32, @"serverTimestamp", v31, 0);

  v35 = objc_msgSend_mergeableRecordValue(self, v33, v34);
  v38 = objc_msgSend_deltasToSave(v35, v36, v37);
  v41 = objc_msgSend_count(v38, v39, v40);

  if (v41)
  {
    if (v4)
    {
      v44 = objc_msgSend_mergeableRecordValue(self, v42, v43);
      v47 = objc_msgSend_deltasToSave(v44, v45, v46);
      objc_msgSend_addProperty_value_shouldRedact_(v120, v48, @"deltasToSave", v47, 0);
    }

    else
    {
      v49 = MEMORY[0x1E696AD98];
      v44 = objc_msgSend_mergeableRecordValue(self, v42, v43);
      v47 = objc_msgSend_deltasToSave(v44, v50, v51);
      v54 = objc_msgSend_count(v47, v52, v53);
      v56 = objc_msgSend_numberWithUnsignedInteger_(v49, v55, v54);
      objc_msgSend_addProperty_value_shouldRedact_(v120, v57, @"deltasToSaveCount", v56, 0);
    }
  }

  v58 = objc_msgSend_mergeableRecordValue(self, v42, v43);
  v61 = objc_msgSend_unmergedDeltas(v58, v59, v60);
  v64 = objc_msgSend_count(v61, v62, v63);

  if (v64)
  {
    if (v4)
    {
      v67 = objc_msgSend_mergeableRecordValue(self, v65, v66);
      v70 = objc_msgSend_unmergedDeltas(v67, v68, v69);
      objc_msgSend_addProperty_value_shouldRedact_(v120, v71, @"unmergedDeltas", v70, 0);
    }

    else
    {
      v72 = MEMORY[0x1E696AD98];
      v67 = objc_msgSend_mergeableRecordValue(self, v65, v66);
      v70 = objc_msgSend_unmergedDeltas(v67, v73, v74);
      v77 = objc_msgSend_count(v70, v75, v76);
      v79 = objc_msgSend_numberWithUnsignedInteger_(v72, v78, v77);
      objc_msgSend_addProperty_value_shouldRedact_(v120, v80, @"unmergedDeltasCount", v79, 0);
    }
  }

  v81 = objc_msgSend_mergeableRecordValue(self, v65, v66);
  v84 = objc_msgSend_encryptMetadataTernary(v81, v82, v83);

  if (v84 != -1)
  {
    v87 = MEMORY[0x1E696AD98];
    v88 = objc_msgSend_mergeableRecordValue(self, v85, v86);
    v91 = objc_msgSend_encryptMetadata(v88, v89, v90);
    v93 = objc_msgSend_numberWithBool_(v87, v92, v91);
    objc_msgSend_addProperty_value_shouldRedact_(v120, v94, @"encryptMetadata", v93, 0);
  }

  v95 = objc_msgSend_mergeableRecordValue(self, v85, v86);
  v98 = objc_msgSend_pendingReplacementRequests(v95, v96, v97);
  v101 = objc_msgSend_count(v98, v99, v100);

  if (v101)
  {
    v104 = objc_msgSend_mergeableRecordValue(self, v102, v103);
    v107 = objc_msgSend_pendingReplacementRequests(v104, v105, v106);
    objc_msgSend_addProperty_value_shouldRedact_(v120, v108, @"replacementRequests", v107, 0);
  }

  v109 = MEMORY[0x1E696AD98];
  v110 = objc_msgSend_mergeableRecordValue(self, v102, v103);
  v113 = objc_msgSend_serverDeltaMetadatas(v110, v111, v112);
  v116 = objc_msgSend_count(v113, v114, v115);
  v118 = objc_msgSend_numberWithUnsignedInteger_(v109, v117, v116);
  objc_msgSend_addProperty_value_shouldRedact_(v120, v119, @"serverDeltasCount", v118, 0);
}

@end
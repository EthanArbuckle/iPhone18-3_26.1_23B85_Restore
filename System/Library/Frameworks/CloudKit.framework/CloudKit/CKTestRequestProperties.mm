@interface CKTestRequestProperties
- (CKTestRequestProperties)initWithCoder:(id)coder;
- (CKTestRequestProperties)initWithEquivalencyProperties:(id)properties;
- (NSArray)allRecordIDs;
- (NSArray)allRecordZoneIDs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKTestRequestProperties

- (CKTestRequestProperties)initWithEquivalencyProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = CKTestRequestProperties;
  v6 = [(CKTestRequestProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_equivalencyProperties, properties);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  equivalencyProperties = self->_equivalencyProperties;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_equivalencyProperties);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, equivalencyProperties, v6);

  modifyRecordIDs = self->_modifyRecordIDs;
  v9 = NSStringFromSelector(sel_modifyRecordIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, modifyRecordIDs, v9);

  deleteRecordIDs = self->_deleteRecordIDs;
  v12 = NSStringFromSelector(sel_deleteRecordIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, deleteRecordIDs, v12);

  fetchRecordIDs = self->_fetchRecordIDs;
  v15 = NSStringFromSelector(sel_fetchRecordIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, fetchRecordIDs, v15);

  modifyRecordZoneIDs = self->_modifyRecordZoneIDs;
  v18 = NSStringFromSelector(sel_modifyRecordZoneIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, modifyRecordZoneIDs, v18);

  deleteRecordZoneIDs = self->_deleteRecordZoneIDs;
  v21 = NSStringFromSelector(sel_deleteRecordZoneIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, deleteRecordZoneIDs, v21);

  fetchRecordZoneIDs = self->_fetchRecordZoneIDs;
  v24 = NSStringFromSelector(sel_fetchRecordZoneIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, fetchRecordZoneIDs, v24);

  modifyMergeableValueIDs = self->_modifyMergeableValueIDs;
  v27 = NSStringFromSelector(sel_modifyMergeableValueIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, modifyMergeableValueIDs, v27);

  deleteMergeableValueIDs = self->_deleteMergeableValueIDs;
  v30 = NSStringFromSelector(sel_deleteMergeableValueIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v31, deleteMergeableValueIDs, v30);

  fetchMergeableValueIDs = self->_fetchMergeableValueIDs;
  v33 = NSStringFromSelector(sel_fetchMergeableValueIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, fetchMergeableValueIDs, v33);

  modifySubscriptionRecordZoneIDs = self->_modifySubscriptionRecordZoneIDs;
  v36 = NSStringFromSelector(sel_modifySubscriptionRecordZoneIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v37, modifySubscriptionRecordZoneIDs, v36);

  databaseScope = self->_databaseScope;
  v40 = NSStringFromSelector(sel_databaseScope);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v39, databaseScope, v40);
}

- (CKTestRequestProperties)initWithCoder:(id)coder
{
  v115[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v105.receiver = self;
  v105.super_class = CKTestRequestProperties;
  v5 = [(CKTestRequestProperties *)&v105 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_equivalencyProperties);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7);
    equivalencyProperties = v5->_equivalencyProperties;
    v5->_equivalencyProperties = v9;

    v11 = MEMORY[0x1E695DFD8];
    v115[0] = objc_opt_class();
    v115[1] = objc_opt_class();
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v115, 2);
    v15 = objc_msgSend_setWithArray_(v11, v14, v13);
    v16 = NSStringFromSelector(sel_modifyRecordIDs);
    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v17, v15, v16);
    modifyRecordIDs = v5->_modifyRecordIDs;
    v5->_modifyRecordIDs = v18;

    v20 = MEMORY[0x1E695DFD8];
    v114[0] = objc_opt_class();
    v114[1] = objc_opt_class();
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v114, 2);
    v24 = objc_msgSend_setWithArray_(v20, v23, v22);
    v25 = NSStringFromSelector(sel_deleteRecordIDs);
    v27 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v26, v24, v25);
    deleteRecordIDs = v5->_deleteRecordIDs;
    v5->_deleteRecordIDs = v27;

    v29 = MEMORY[0x1E695DFD8];
    v113[0] = objc_opt_class();
    v113[1] = objc_opt_class();
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, v113, 2);
    v33 = objc_msgSend_setWithArray_(v29, v32, v31);
    v34 = NSStringFromSelector(sel_fetchRecordIDs);
    v36 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v35, v33, v34);
    fetchRecordIDs = v5->_fetchRecordIDs;
    v5->_fetchRecordIDs = v36;

    v38 = MEMORY[0x1E695DFD8];
    v112[0] = objc_opt_class();
    v112[1] = objc_opt_class();
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, v112, 2);
    v42 = objc_msgSend_setWithArray_(v38, v41, v40);
    v43 = NSStringFromSelector(sel_modifyRecordZoneIDs);
    v45 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v44, v42, v43);
    modifyRecordZoneIDs = v5->_modifyRecordZoneIDs;
    v5->_modifyRecordZoneIDs = v45;

    v47 = MEMORY[0x1E695DFD8];
    v111[0] = objc_opt_class();
    v111[1] = objc_opt_class();
    v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, v111, 2);
    v51 = objc_msgSend_setWithArray_(v47, v50, v49);
    v52 = NSStringFromSelector(sel_deleteRecordZoneIDs);
    v54 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v53, v51, v52);
    deleteRecordZoneIDs = v5->_deleteRecordZoneIDs;
    v5->_deleteRecordZoneIDs = v54;

    v56 = MEMORY[0x1E695DFD8];
    v110[0] = objc_opt_class();
    v110[1] = objc_opt_class();
    v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v57, v110, 2);
    v60 = objc_msgSend_setWithArray_(v56, v59, v58);
    v61 = NSStringFromSelector(sel_fetchRecordZoneIDs);
    v63 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v62, v60, v61);
    fetchRecordZoneIDs = v5->_fetchRecordZoneIDs;
    v5->_fetchRecordZoneIDs = v63;

    v65 = MEMORY[0x1E695DFD8];
    v109[0] = objc_opt_class();
    v109[1] = objc_opt_class();
    v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, v109, 2);
    v69 = objc_msgSend_setWithArray_(v65, v68, v67);
    v70 = NSStringFromSelector(sel_modifyMergeableValueIDs);
    v72 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v71, v69, v70);
    modifyMergeableValueIDs = v5->_modifyMergeableValueIDs;
    v5->_modifyMergeableValueIDs = v72;

    v74 = MEMORY[0x1E695DFD8];
    v108[0] = objc_opt_class();
    v108[1] = objc_opt_class();
    v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v75, v108, 2);
    v78 = objc_msgSend_setWithArray_(v74, v77, v76);
    v79 = NSStringFromSelector(sel_deleteMergeableValueIDs);
    v81 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v80, v78, v79);
    deleteMergeableValueIDs = v5->_deleteMergeableValueIDs;
    v5->_deleteMergeableValueIDs = v81;

    v83 = MEMORY[0x1E695DFD8];
    v107[0] = objc_opt_class();
    v107[1] = objc_opt_class();
    v85 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v84, v107, 2);
    v87 = objc_msgSend_setWithArray_(v83, v86, v85);
    v88 = NSStringFromSelector(sel_fetchMergeableValueIDs);
    v90 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v89, v87, v88);
    fetchMergeableValueIDs = v5->_fetchMergeableValueIDs;
    v5->_fetchMergeableValueIDs = v90;

    v92 = MEMORY[0x1E695DFD8];
    v106[0] = objc_opt_class();
    v106[1] = objc_opt_class();
    v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v93, v106, 2);
    v96 = objc_msgSend_setWithArray_(v92, v95, v94);
    v97 = NSStringFromSelector(sel_modifySubscriptionRecordZoneIDs);
    v99 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v98, v96, v97);
    modifySubscriptionRecordZoneIDs = v5->_modifySubscriptionRecordZoneIDs;
    v5->_modifySubscriptionRecordZoneIDs = v99;

    v101 = NSStringFromSelector(sel_databaseScope);
    v5->_databaseScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v102, v101);
  }

  v103 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSArray)allRecordIDs
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_modifyRecordIDs(self, v4, v5);
  v8 = v6;
  v9 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    objc_msgSend_addObjectsFromArray_(v3, v7, v6);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v7, MEMORY[0x1E695E0F0]);
  }

  v12 = objc_msgSend_deleteRecordIDs(self, v10, v11);
  v14 = v12;
  if (v12)
  {
    objc_msgSend_addObjectsFromArray_(v3, v13, v12);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v13, v9);
  }

  v17 = objc_msgSend_fetchRecordIDs(self, v15, v16);
  v19 = v17;
  if (v17)
  {
    objc_msgSend_addObjectsFromArray_(v3, v18, v17);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v18, v9);
  }

  v22 = objc_msgSend_modifyMergeableValueIDs(self, v20, v21);
  v24 = objc_msgSend_CKCompactMap_(v22, v23, &unk_1EFA30910);
  v26 = v24;
  if (v24)
  {
    objc_msgSend_addObjectsFromArray_(v3, v25, v24);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v25, v9);
  }

  v29 = objc_msgSend_deleteMergeableValueIDs(self, v27, v28);
  v31 = objc_msgSend_CKCompactMap_(v29, v30, &unk_1EFA30930);
  v33 = v31;
  if (v31)
  {
    objc_msgSend_addObjectsFromArray_(v3, v32, v31);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v32, v9);
  }

  v36 = objc_msgSend_fetchMergeableValueIDs(self, v34, v35);
  v38 = objc_msgSend_CKCompactMap_(v36, v37, &unk_1EFA30950);
  v40 = v38;
  if (v38)
  {
    objc_msgSend_addObjectsFromArray_(v3, v39, v38);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v39, v9);
  }

  return v3;
}

- (NSArray)allRecordZoneIDs
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_modifyRecordIDs(self, v4, v5);
  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_1EFA30970);
  v10 = v8;
  v11 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    objc_msgSend_addObjectsFromArray_(v3, v9, v8);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v9, MEMORY[0x1E695E0F0]);
  }

  v14 = objc_msgSend_deleteRecordIDs(self, v12, v13);
  v16 = objc_msgSend_CKCompactMap_(v14, v15, &unk_1EFA30990);
  v18 = v16;
  if (v16)
  {
    objc_msgSend_addObjectsFromArray_(v3, v17, v16);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v17, v11);
  }

  v21 = objc_msgSend_fetchRecordIDs(self, v19, v20);
  v23 = objc_msgSend_CKCompactMap_(v21, v22, &unk_1EFA309B0);
  v25 = v23;
  if (v23)
  {
    objc_msgSend_addObjectsFromArray_(v3, v24, v23);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v24, v11);
  }

  v28 = objc_msgSend_modifyRecordZoneIDs(self, v26, v27);
  v30 = v28;
  if (v28)
  {
    objc_msgSend_addObjectsFromArray_(v3, v29, v28);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v29, v11);
  }

  v33 = objc_msgSend_deleteRecordZoneIDs(self, v31, v32);
  v35 = v33;
  if (v33)
  {
    objc_msgSend_addObjectsFromArray_(v3, v34, v33);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v34, v11);
  }

  v38 = objc_msgSend_fetchRecordZoneIDs(self, v36, v37);
  v40 = v38;
  if (v38)
  {
    objc_msgSend_addObjectsFromArray_(v3, v39, v38);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v39, v11);
  }

  v43 = objc_msgSend_modifyMergeableValueIDs(self, v41, v42);
  v45 = objc_msgSend_CKCompactMap_(v43, v44, &unk_1EFA309D0);
  v47 = v45;
  if (v45)
  {
    objc_msgSend_addObjectsFromArray_(v3, v46, v45);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v46, v11);
  }

  v50 = objc_msgSend_deleteMergeableValueIDs(self, v48, v49);
  v52 = objc_msgSend_CKCompactMap_(v50, v51, &unk_1EFA309F0);
  v54 = v52;
  if (v52)
  {
    objc_msgSend_addObjectsFromArray_(v3, v53, v52);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v53, v11);
  }

  v57 = objc_msgSend_fetchMergeableValueIDs(self, v55, v56);
  v59 = objc_msgSend_CKCompactMap_(v57, v58, &unk_1EFA30A10);
  v61 = v59;
  if (v59)
  {
    objc_msgSend_addObjectsFromArray_(v3, v60, v59);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v60, v11);
  }

  v64 = objc_msgSend_modifySubscriptionRecordZoneIDs(self, v62, v63);
  v66 = v64;
  if (v64)
  {
    objc_msgSend_addObjectsFromArray_(v3, v65, v64);
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(v3, v65, v11);
  }

  return v3;
}

@end
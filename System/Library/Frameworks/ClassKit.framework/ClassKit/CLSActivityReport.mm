@interface CLSActivityReport
- (CLSActivityReport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)add:(id)add;
- (void)encodeWithCoder:(id)coder;
- (void)scalarMultiply:(double)multiply;
@end

@implementation CLSActivityReport

- (CLSActivityReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v56.receiver = self;
  v56.super_class = CLSActivityReport;
  v6 = [(CLSActivityReport *)&v56 init];
  if (v6)
  {
    v6->_contextType = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"contextType");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"contextTitle");
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &stru_284A08768;
    }

    v55 = v10;
    objc_storeStrong(&v6->_contextTitle, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"contextTopic");
    contextTopic = v6->_contextTopic;
    v6->_contextTopic = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"contextAppBundleIdentifier");
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &stru_284A08768;
    }

    objc_storeStrong(&v6->_contextAppBundleIdentifier, v18);
    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"contextID");
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = &stru_284A08768;
    }

    objc_storeStrong(&v6->_contextID, v22);
    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"contextStableObjectID");
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = &stru_284A08768;
    }

    contextStableObjectID = v6->_contextStableObjectID;
    v6->_contextStableObjectID = &v26->isa;
    v28 = v26;

    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v30, v29, @"time");
    time = v6->_time;
    v6->_time = v31;

    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v34, v33, @"progress");
    progress = v6->_progress;
    v6->_progress = v35;

    v37 = objc_opt_class();
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v38, v37, @"primaryReportItem");
    primaryReportItem = v6->_primaryReportItem;
    v6->_primaryReportItem = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v45 = objc_msgSend_setWithObjects_(v41, v44, v42, v43, 0);
    v47 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v46, v45, @"additionalReportItems");
    additionalReportItems = v6->_additionalReportItems;
    v6->_additionalReportItems = v47;

    v6->_handoutAttachmentType = objc_msgSend_decodeInt32ForKey_(coderCopy, v49, @"handoutAttachmentType");
    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v51, v50, @"handoutAuthorizedObjectID");
    handoutAuthorizedObjectID = v6->_handoutAuthorizedObjectID;
    v6->_handoutAuthorizedObjectID = v52;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  contextType = self->_contextType;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, contextType, @"contextType");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_contextTitle, @"contextTitle");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_contextTopic, @"contextTopic");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_contextAppBundleIdentifier, @"contextAppBundleIdentifier");
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_contextID, @"contextID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_contextStableObjectID, @"contextStableObjectID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_time, @"time");
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, self->_progress, @"progress");
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_primaryReportItem, @"primaryReportItem");
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, self->_additionalReportItems, @"additionalReportItems");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v15, self->_handoutAttachmentType, @"handoutAttachmentType");
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_handoutAuthorizedObjectID, @"handoutAuthorizedObjectID");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v54.receiver = self;
  v54.super_class = CLSActivityReport;
  v4 = [(CLSReportItem *)&v54 copyWithZone:zone];
  v7 = objc_msgSend_contextType(self, v5, v6);
  objc_msgSend_setContextType_(v4, v8, v7);
  v11 = objc_msgSend_contextTopic(self, v9, v10);
  objc_msgSend_setContextTopic_(v4, v12, v11);

  v15 = objc_msgSend_contextTitle(self, v13, v14);
  objc_msgSend_setContextTitle_(v4, v16, v15);

  v19 = objc_msgSend_contextAppBundleIdentifier(self, v17, v18);
  objc_msgSend_setContextAppBundleIdentifier_(v4, v20, v19);

  v23 = objc_msgSend_contextID(self, v21, v22);
  objc_msgSend_setContextID_(v4, v24, v23);

  v27 = objc_msgSend_contextStableObjectID(self, v25, v26);
  objc_msgSend_setContextStableObjectID_(v4, v28, v27);

  v31 = objc_msgSend_time(self, v29, v30);
  objc_msgSend_setTime_(v4, v32, v31);

  v35 = objc_msgSend_progress(self, v33, v34);
  objc_msgSend_setProgress_(v4, v36, v35);

  v39 = objc_msgSend_primaryReportItem(self, v37, v38);
  objc_msgSend_setPrimaryReportItem_(v4, v40, v39);

  v43 = objc_msgSend_additionalReportItems(self, v41, v42);
  objc_msgSend_setAdditionalReportItems_(v4, v44, v43);

  v47 = objc_msgSend_handoutAttachmentType(self, v45, v46);
  objc_msgSend_setHandoutAttachmentType_(v4, v48, v47);
  v51 = objc_msgSend_handoutAuthorizedObjectID(self, v49, v50);
  objc_msgSend_setHandoutAuthorizedObjectID_(v4, v52, v51);

  return v4;
}

- (int64_t)compare:(id)compare
{
  v4 = objc_msgSend_convertToItemCompatibleWithItem_copyIfSameType_(compare, a2, self, 0);
  primaryReportItem = self->_primaryReportItem;
  v8 = objc_msgSend_primaryReportItem(v4, v6, v7);
  v10 = objc_msgSend_compare_(primaryReportItem, v9, v8);

  return v10;
}

- (void)add:(id)add
{
  v84 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v7 = objc_msgSend_time(self, v5, v6);
  v10 = objc_msgSend_time(addCopy, v8, v9);
  objc_msgSend_add_(v7, v11, v10);

  v14 = objc_msgSend_progress(self, v12, v13);
  v17 = objc_msgSend_progress(addCopy, v15, v16);
  objc_msgSend_add_(v14, v18, v17);

  v21 = objc_msgSend_primaryReportItem(self, v19, v20);
  v24 = objc_msgSend_primaryReportItem(addCopy, v22, v23);
  objc_msgSend_add_(v21, v25, v24);

  v26 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v29 = objc_msgSend_additionalReportItems(self, v27, v28);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v78, v83, 16);
  if (v31)
  {
    v32 = v31;
    v33 = *v79;
    do
    {
      v34 = 0;
      do
      {
        if (*v79 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v78 + 1) + 8 * v34);
        v36 = objc_autoreleasePoolPush();
        v39 = objc_msgSend_copy(v35, v37, v38);
        v42 = objc_msgSend_identifier(v35, v40, v41);
        objc_msgSend_setObject_forKeyedSubscript_(v26, v43, v39, v42);

        objc_autoreleasePoolPop(v36);
        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v44, &v78, v83, 16);
    }

    while (v32);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = addCopy;
  v47 = objc_msgSend_additionalReportItems(addCopy, v45, v46);
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v74, v82, 16);
  if (v49)
  {
    v50 = v49;
    v51 = *v75;
    do
    {
      v52 = 0;
      do
      {
        if (*v75 != v51)
        {
          objc_enumerationMutation(v47);
        }

        v53 = *(*(&v74 + 1) + 8 * v52);
        v54 = objc_autoreleasePoolPush();
        v57 = objc_msgSend_identifier(v53, v55, v56);
        v59 = objc_msgSend_objectForKeyedSubscript_(v26, v58, v57);

        if (v59)
        {
          objc_msgSend_add_(v59, v60, v53);
        }

        else
        {
          v62 = objc_msgSend_copy(v53, v60, v61);
          v65 = objc_msgSend_identifier(v53, v63, v64);
          objc_msgSend_setObject_forKeyedSubscript_(v26, v66, v62, v65);
        }

        objc_autoreleasePoolPop(v54);
        ++v52;
      }

      while (v50 != v52);
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v67, &v74, v82, 16);
    }

    while (v50);
  }

  v70 = objc_msgSend_allValues(v26, v68, v69);
  objc_msgSend_setAdditionalReportItems_(self, v71, v70);

  v72 = *MEMORY[0x277D85DE8];
}

- (void)scalarMultiply:(double)multiply
{
  v6 = objc_msgSend_time(self, a2, v3);
  objc_msgSend_scalarMultiply_(v6, v7, v8, multiply);

  v11 = objc_msgSend_progress(self, v9, v10);
  objc_msgSend_scalarMultiply_(v11, v12, v13, multiply);

  v16 = objc_msgSend_primaryReportItem(self, v14, v15);
  objc_msgSend_scalarMultiply_(v16, v17, v18, multiply);

  v21 = objc_msgSend_additionalReportItems(self, v19, v20);
  v24 = objc_msgSend_multiply_withScalar_(CLSReportItem, v22, v21, multiply);

  objc_msgSend_setAdditionalReportItems_(self, v23, v24);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v6 = objc_msgSend_initWithFormat_(v3, v5, @"<%@ %p", v4, self);
  v9 = objc_msgSend_contextType(self, v7, v8);
  v10 = DefaultNameFromContextType(v9);
  objc_msgSend_appendFormat_(v6, v11, @" %@: %@", @"contextType", v10);

  v14 = objc_msgSend_contextTopic(self, v12, v13);
  objc_msgSend_appendFormat_(v6, v15, @" %@: %@", @"contextTopic", v14);

  v18 = objc_msgSend_contextTitle(self, v16, v17);
  objc_msgSend_appendFormat_(v6, v19, @" %@: %@", @"contextTitle", v18);

  v22 = objc_msgSend_contextAppBundleIdentifier(self, v20, v21);
  objc_msgSend_appendFormat_(v6, v23, @" %@: %@", @"contextAppBundleIdentifier", v22);

  v26 = objc_msgSend_contextID(self, v24, v25);
  objc_msgSend_appendFormat_(v6, v27, @" %@: %@", @"contextID", v26);

  v30 = objc_msgSend_contextStableObjectID(self, v28, v29);
  objc_msgSend_appendFormat_(v6, v31, @" %@: %@", @"contextStableObjectID", v30);

  v34 = objc_msgSend_time(self, v32, v33);
  objc_msgSend_appendFormat_(v6, v35, @" %@: %@", @"time", v34);

  v38 = objc_msgSend_progress(self, v36, v37);
  objc_msgSend_appendFormat_(v6, v39, @" %@: %@", @"progress", v38);

  v42 = objc_msgSend_primaryReportItem(self, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_primaryReportItem(self, v43, v44);
    objc_msgSend_appendFormat_(v6, v46, @" %@: %@", @"primaryReportItem", v45);
  }

  v47 = objc_msgSend_additionalReportItems(self, v43, v44);
  v50 = objc_msgSend_count(v47, v48, v49);

  if (v50)
  {
    v53 = objc_msgSend_additionalReportItems(self, v51, v52);
    objc_msgSend_appendFormat_(v6, v54, @" %@: %@", @"additionalReportItems", v53);
  }

  v55 = objc_msgSend_handoutAttachmentType(self, v51, v52);
  v57 = NSStringFromHandoutAttachmentType(v55, v56);
  objc_msgSend_appendFormat_(v6, v58, @" %@: %@", @"handoutAttachmentType", v57);

  v61 = objc_msgSend_handoutAuthorizedObjectID(self, v59, v60);
  objc_msgSend_appendFormat_(v6, v62, @" %@: %@", @"handoutAuthorizedObjectID", v61);

  objc_msgSend_appendString_(v6, v63, @">");

  return v6;
}

- (id)dictionaryRepresentation
{
  v91 = *MEMORY[0x277D85DE8];
  v89.receiver = self;
  v89.super_class = CLSActivityReport;
  dictionaryRepresentation = [(CLSReportItem *)&v89 dictionaryRepresentation];
  v6 = objc_msgSend_contextType(self, v4, v5);
  v7 = DefaultNameFromContextType(v6);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v8, v7, @"contextType");

  v11 = objc_msgSend_contextTopic(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v12, v11, @"contextTopic");

  v15 = objc_msgSend_contextTitle(self, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v16, v15, @"contextTitle");

  v19 = objc_msgSend_contextAppBundleIdentifier(self, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v20, v19, @"contextAppBundleIdentifier");

  v23 = objc_msgSend_contextID(self, v21, v22);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v24, v23, @"contextID");

  v27 = objc_msgSend_contextStableObjectID(self, v25, v26);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v28, v27, @"contextStableObjectID");

  v31 = objc_msgSend_time(self, v29, v30);
  v34 = objc_msgSend_dictionaryRepresentation(v31, v32, v33);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v35, v34, @"time");

  v38 = objc_msgSend_progress(self, v36, v37);
  v41 = objc_msgSend_dictionaryRepresentation(v38, v39, v40);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v42, v41, @"progress");

  v45 = objc_msgSend_handoutAuthorizedObjectID(self, v43, v44);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v46, v45, @"handoutAuthorizedObjectID");

  v49 = objc_msgSend_handoutAttachmentType(self, v47, v48);
  v51 = NSStringFromHandoutAttachmentType(v49, v50);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v52, v51, @"handoutAttachmentType");

  v55 = objc_msgSend_primaryReportItem(self, v53, v54);
  v58 = objc_msgSend_dictionaryRepresentation(v55, v56, v57);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v59, v58, @"primaryReportItem");

  v62 = objc_msgSend_additionalReportItems(self, v60, v61);
  v65 = objc_msgSend_count(v62, v63, v64);

  if (v65)
  {
    v66 = objc_opt_new();
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v69 = objc_msgSend_additionalReportItems(self, v67, v68, 0);
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v85, v90, 16);
    if (v71)
    {
      v72 = v71;
      v73 = *v86;
      do
      {
        for (i = 0; i != v72; ++i)
        {
          if (*v86 != v73)
          {
            objc_enumerationMutation(v69);
          }

          v75 = *(*(&v85 + 1) + 8 * i);
          v76 = objc_autoreleasePoolPush();
          v79 = objc_msgSend_dictionaryRepresentation(v75, v77, v78);
          objc_msgSend_addObject_(v66, v80, v79);

          objc_autoreleasePoolPop(v76);
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v81, &v85, v90, 16);
      }

      while (v72);
    }

    objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v82, v66, @"additionalReportItems");
  }

  v83 = *MEMORY[0x277D85DE8];

  return dictionaryRepresentation;
}

@end
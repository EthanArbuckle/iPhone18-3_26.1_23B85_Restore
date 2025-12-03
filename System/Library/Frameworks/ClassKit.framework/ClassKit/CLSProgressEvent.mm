@interface CLSProgressEvent
- (BOOL)validateObject:(id *)object;
- (CLSProgressEvent)initWithAttachmentID:(id)d classID:(id)iD handoutID:(id)handoutID eventType:(int64_t)type;
- (CLSProgressEvent)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithObject:(id)object;
- (void)setAppIdentifier:(id)identifier;
@end

@implementation CLSProgressEvent

- (CLSProgressEvent)initWithAttachmentID:(id)d classID:(id)iD handoutID:(id)handoutID eventType:(int64_t)type
{
  dCopy = d;
  iDCopy = iD;
  handoutIDCopy = handoutID;
  v17.receiver = self;
  v17.super_class = CLSProgressEvent;
  v14 = [(CLSInsightEvent *)&v17 initWithType:type];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_attachmentID, d);
    objc_storeStrong(&v15->_classID, iD);
    objc_storeStrong(&v15->_handoutID, handoutID);
  }

  return v15;
}

- (BOOL)validateObject:(id *)object
{
  v24.receiver = self;
  v24.super_class = CLSProgressEvent;
  v5 = [(CLSInsightEvent *)&v24 validateObject:?];
  if (v5)
  {
    if (objc_msgSend_length(self->_attachmentID, v6, v7))
    {
      if (objc_msgSend_length(self->_classID, v8, v9))
      {
        if (objc_msgSend_length(self->_handoutID, v10, v11))
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v12 = @"ERROR_DESCRIPTION_ATTACHMENT_EVENT_NO_HANDOUT_ID";
      }

      else
      {
        v12 = @"ERROR_DESCRIPTION_ATTACHMENT_EVENT_NO_CLASS_ID";
      }
    }

    else
    {
      v12 = @"ERROR_DESCRIPTION_ATTACHMENT_EVENT_NO_ATTACHMENT_ID";
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = MEMORY[0x277CCA8D8];
    v15 = objc_opt_class();
    v17 = objc_msgSend_bundleForClass_(v14, v16, v15);
    v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v18, v12, &stru_284A08768, @"ClassKit");
    v21 = objc_msgSend_stringWithFormat_(v13, v20, v19);

    objc_msgSend_cls_assignError_code_errorObject_description_(MEMORY[0x277CCA9B8], v22, object, 2, self, v21);
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CLSProgressEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = CLSProgressEvent;
  v5 = [(CLSInsightEvent *)&v53 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"activityID");
    activityID = v5->_activityID;
    v5->_activityID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"attachmentID");
    attachmentID = v5->_attachmentID;
    v5->_attachmentID = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"classID");
    classID = v5->_classID;
    v5->_classID = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"handoutID");
    handoutID = v5->_handoutID;
    v5->_handoutID = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"recipientPersonID");
    recipientPersonID = v5->_recipientPersonID;
    v5->_recipientPersonID = v24;

    v5->_handoutAttachmentType = objc_msgSend_decodeIntegerForKey_(coderCopy, v26, @"handoutAttachmentType");
    v5->_contextType = objc_msgSend_decodeIntegerForKey_(coderCopy, v27, @"contextType");
    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"objectIDPath");
    objectIDPath = v5->_objectIDPath;
    v5->_objectIDPath = v30;

    v32 = objc_opt_class();
    v34 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"handoutAuthorizedObjectID");
    handoutAuthorizedObjectID = v5->_handoutAuthorizedObjectID;
    v5->_handoutAuthorizedObjectID = v34;

    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"activityItemInfo");
    activityItemInfo = v5->_activityItemInfo;
    v5->_activityItemInfo = v38;

    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"rangeInfo");
    rangeInfo = v5->_rangeInfo;
    v5->_rangeInfo = v42;

    v44 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v45, v44, @"timeIntervalInfo");
    timeIntervalInfo = v5->_timeIntervalInfo;
    v5->_timeIntervalInfo = v46;

    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v49, v48, @"primaryActivityItemIdentifier");
    primaryActivityItemIdentifier = v5->_primaryActivityItemIdentifier;
    v5->_primaryActivityItemIdentifier = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = CLSProgressEvent;
  coderCopy = coder;
  [(CLSInsightEvent *)&v18 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_activityID, @"activityID", v18.receiver, v18.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_attachmentID, @"attachmentID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_classID, @"classID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_handoutID, @"handoutID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_recipientPersonID, @"recipientPersonID");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v10, self->_handoutAttachmentType, @"handoutAttachmentType");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, self->_contextType, @"contextType");
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, self->_objectIDPath, @"objectIDPath");
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_handoutAuthorizedObjectID, @"handoutAuthorizedObjectID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, self->_activityItemInfo, @"activityItemInfo");
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, self->_rangeInfo, @"rangeInfo");
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_timeIntervalInfo, @"timeIntervalInfo");
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, self->_primaryActivityItemIdentifier, @"primaryActivityItemIdentifier");
}

- (id)dictionaryRepresentation
{
  v30.receiver = self;
  v30.super_class = CLSProgressEvent;
  dictionaryRepresentation = [(CLSInsightEvent *)&v30 dictionaryRepresentation];
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v4, self->_activityID, @"activityID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v5, self->_attachmentID, @"attachmentID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v6, self->_classID, @"classID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v7, self->_handoutID, @"handoutID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v8, self->_recipientPersonID, @"recipientPersonID");
  v10 = NSStringFromHandoutAttachmentType(self->_handoutAttachmentType, v9);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v11, v10, @"handoutAttachmentType");

  v12 = DefaultNameFromContextType(self->_contextType);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v13, v12, @"contextType");

  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v14, self->_objectIDPath, @"objectIDPath");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v15, self->_handoutAuthorizedObjectID, @"handoutAuthorizedObjectID");
  v18 = objc_msgSend_dictionaryRepresentation(self->_activityItemInfo, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v19, v18, @"activityItemInfo");

  v22 = objc_msgSend_dictionaryRepresentation(self->_rangeInfo, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v23, v22, @"rangeInfo");

  v26 = objc_msgSend_dictionaryRepresentation(self->_timeIntervalInfo, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v27, v26, @"timeIntervalInfo");

  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v28, self->_primaryActivityItemIdentifier, @"primaryActivityItemIdentifier");

  return dictionaryRepresentation;
}

- (void)mergeWithObject:(id)object
{
  v23[13] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = CLSProgressEvent;
  [(CLSInsightEvent *)&v21 mergeWithObject:objectCopy];
  v23[0] = @"activityID";
  v23[1] = @"attachmentID";
  v23[2] = @"classID";
  v23[3] = @"handoutID";
  v23[4] = @"recipientPersonID";
  v23[5] = @"handoutAttachmentType";
  v23[6] = @"contextType";
  v23[7] = @"objectIDPath";
  v23[8] = @"handoutAuthorizedObjectID";
  v23[9] = @"activityItemInfo";
  v23[10] = @"rangeInfo";
  v23[11] = @"timeIntervalInfo";
  v23[12] = @"primaryActivityItemIdentifier";
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v23, 13);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v22, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = objc_msgSend_valueForKey_(objectCopy, v9, v13, v17);
        objc_msgSend_setValue_forKey_(self, v15, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v17, v22, 16);
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_appIdentifier(self, v5, v6);
  if (identifierCopy | v7)
  {
    v10 = v7;
    v11 = objc_msgSend_appIdentifier(self, v8, v9);
    v14 = v11;
    if (identifierCopy && v11)
    {
      v15 = objc_msgSend_appIdentifier(self, v12, v13);
      isEqualToString = objc_msgSend_isEqualToString_(v15, v16, identifierCopy);

      if (isEqualToString)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v20 = objc_msgSend_copy(identifierCopy, v18, v19);
    v21.receiver = self;
    v21.super_class = CLSProgressEvent;
    [(CLSObject *)&v21 setAppIdentifier:v20];
  }

LABEL_8:
}

- (id)description
{
  v26.receiver = self;
  v26.super_class = CLSProgressEvent;
  v3 = [(CLSInsightEvent *)&v26 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendFormat_(v6, v7, @" (%@: %@)", @"activityID", self->_activityID);
  objc_msgSend_appendFormat_(v6, v8, @" (%@: %@)", @"attachmentID", self->_attachmentID);
  objc_msgSend_appendFormat_(v6, v9, @" (%@: %@)", @"classID", self->_classID);
  objc_msgSend_appendFormat_(v6, v10, @" (%@: %@)", @"handoutID", self->_handoutID);
  objc_msgSend_appendFormat_(v6, v11, @" (%@: %@)", @"recipientPersonID", self->_recipientPersonID);
  v13 = NSStringFromHandoutAttachmentType(self->_handoutAttachmentType, v12);
  objc_msgSend_appendFormat_(v6, v14, @" (%@: %@)", @"handoutAttachmentType", v13);

  contextType = self->_contextType;
  if (contextType)
  {
    v17 = DefaultNameFromContextType(contextType);
    objc_msgSend_appendFormat_(v6, v18, @" (%@: %@)", @"contextType", v17);
  }

  objectIDPath = self->_objectIDPath;
  if (objectIDPath)
  {
    objc_msgSend_appendFormat_(v6, v15, @" (%@: %@)", @"objectIDPath", objectIDPath);
  }

  handoutAuthorizedObjectID = self->_handoutAuthorizedObjectID;
  if (handoutAuthorizedObjectID)
  {
    objc_msgSend_appendFormat_(v6, v15, @" (%@: %@)", @"handoutAuthorizedObjectID", handoutAuthorizedObjectID);
  }

  activityItemInfo = self->_activityItemInfo;
  if (activityItemInfo)
  {
    objc_msgSend_appendFormat_(v6, v15, @" (%@: %@)", @"activityItemInfo", activityItemInfo);
  }

  rangeInfo = self->_rangeInfo;
  if (rangeInfo)
  {
    objc_msgSend_appendFormat_(v6, v15, @" (%@: %@)", @"rangeInfo", rangeInfo);
  }

  timeIntervalInfo = self->_timeIntervalInfo;
  if (timeIntervalInfo)
  {
    objc_msgSend_appendFormat_(v6, v15, @" (%@: %@)", @"timeIntervalInfo", timeIntervalInfo);
  }

  primaryActivityItemIdentifier = self->_primaryActivityItemIdentifier;
  if (primaryActivityItemIdentifier)
  {
    objc_msgSend_appendFormat_(v6, v15, @" (%@: %@)", @"primaryActivityItemIdentifier", primaryActivityItemIdentifier);
  }

  return v6;
}

@end
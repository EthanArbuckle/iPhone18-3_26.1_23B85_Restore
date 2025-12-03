@interface CLSAttachmentEvent
- (BOOL)validateObject:(id *)object;
- (CLSAttachmentEvent)initWithAttachmentID:(id)d classID:(id)iD handoutID:(id)handoutID eventType:(int64_t)type;
- (CLSAttachmentEvent)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithObject:(id)object;
- (void)setAppIdentifier:(id)identifier;
@end

@implementation CLSAttachmentEvent

- (CLSAttachmentEvent)initWithAttachmentID:(id)d classID:(id)iD handoutID:(id)handoutID eventType:(int64_t)type
{
  dCopy = d;
  iDCopy = iD;
  handoutIDCopy = handoutID;
  v17.receiver = self;
  v17.super_class = CLSAttachmentEvent;
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
  v24.super_class = CLSAttachmentEvent;
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

- (CLSAttachmentEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CLSAttachmentEvent;
  v5 = [(CLSInsightEvent *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"attachmentID");
    attachmentID = v5->_attachmentID;
    v5->_attachmentID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"classID");
    classID = v5->_classID;
    v5->_classID = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"handoutID");
    handoutID = v5->_handoutID;
    v5->_handoutID = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"recipientPersonID");
    recipientPersonID = v5->_recipientPersonID;
    v5->_recipientPersonID = v20;

    v5->_handoutAttachmentType = objc_msgSend_decodeIntegerForKey_(coderCopy, v22, @"handoutAttachmentType");
    v5->_contextType = objc_msgSend_decodeIntegerForKey_(coderCopy, v23, @"contextType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CLSAttachmentEvent;
  coderCopy = coder;
  [(CLSInsightEvent *)&v11 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_attachmentID, @"attachmentID", v11.receiver, v11.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_classID, @"classID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_handoutID, @"handoutID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_recipientPersonID, @"recipientPersonID");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v9, self->_handoutAttachmentType, @"handoutAttachmentType");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v10, self->_contextType, @"contextType");
}

- (id)dictionaryRepresentation
{
  v14.receiver = self;
  v14.super_class = CLSAttachmentEvent;
  dictionaryRepresentation = [(CLSInsightEvent *)&v14 dictionaryRepresentation];
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v4, self->_attachmentID, @"attachmentID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v5, self->_classID, @"classID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v6, self->_handoutID, @"handoutID");
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v7, self->_recipientPersonID, @"recipientPersonID");
  v9 = NSStringFromHandoutAttachmentType(self->_handoutAttachmentType, v8);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v10, v9, @"handoutAttachmentType");

  v11 = DefaultNameFromContextType(self->_contextType);
  objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v12, v11, @"contextType");

  return dictionaryRepresentation;
}

- (void)mergeWithObject:(id)object
{
  v23[6] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = CLSAttachmentEvent;
  [(CLSInsightEvent *)&v21 mergeWithObject:objectCopy];
  v23[0] = @"attachmentID";
  v23[1] = @"classID";
  v23[2] = @"handoutID";
  v23[3] = @"recipientPersonID";
  v23[4] = @"handoutAttachmentType";
  v23[5] = @"contextType";
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v23, 6);
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
    v21.super_class = CLSAttachmentEvent;
    [(CLSObject *)&v21 setAppIdentifier:v20];
  }

LABEL_8:
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = CLSAttachmentEvent;
  v3 = [(CLSInsightEvent *)&v17 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendFormat_(v6, v7, @" (attachmentID: %@)", self->_attachmentID);
  objc_msgSend_appendFormat_(v6, v8, @" (classID: %@)", self->_classID);
  objc_msgSend_appendFormat_(v6, v9, @" (handoutID: %@)", self->_handoutID);
  objc_msgSend_appendFormat_(v6, v10, @" (recipientPersonID: %@)", self->_recipientPersonID);
  v12 = NSStringFromHandoutAttachmentType(self->_handoutAttachmentType, v11);
  objc_msgSend_appendFormat_(v6, v13, @" (attachmentType: %@)", v12);

  v14 = DefaultNameFromContextType(self->_contextType);
  objc_msgSend_appendFormat_(v6, v15, @" (contextType: %@)", v14);

  return v6;
}

@end
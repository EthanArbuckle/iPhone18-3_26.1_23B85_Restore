@interface CLSHandoutEvent
- (BOOL)validateObject:(id *)a3;
- (CLSHandoutEvent)initWithClassID:(id)a3 handoutID:(id)a4 eventType:(int64_t)a5;
- (CLSHandoutEvent)initWithCoder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithObject:(id)a3;
@end

@implementation CLSHandoutEvent

- (CLSHandoutEvent)initWithClassID:(id)a3 handoutID:(id)a4 eventType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CLSHandoutEvent;
  v11 = [(CLSInsightEvent *)&v14 initWithType:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_classID, a3);
    objc_storeStrong(&v12->_handoutID, a4);
  }

  return v12;
}

- (BOOL)validateObject:(id *)a3
{
  v22.receiver = self;
  v22.super_class = CLSHandoutEvent;
  v5 = [(CLSInsightEvent *)&v22 validateObject:?];
  if (v5)
  {
    if (objc_msgSend_length(self->_classID, v6, v7))
    {
      if (objc_msgSend_length(self->_handoutID, v8, v9))
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      v10 = @"ERROR_DESCRIPTION_HANDOUT_EVENT_NO_HANDOUT_ID";
    }

    else
    {
      v10 = @"ERROR_DESCRIPTION_HANDOUT_EVENT_NO_CLASS_ID";
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = MEMORY[0x277CCA8D8];
    v13 = objc_opt_class();
    v15 = objc_msgSend_bundleForClass_(v12, v14, v13);
    v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v16, v10, &stru_284A08768, @"ClassKit");
    v19 = objc_msgSend_stringWithFormat_(v11, v18, v17);

    objc_msgSend_cls_assignError_code_errorObject_description_(MEMORY[0x277CCA9B8], v20, a3, 2, self, v19);
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CLSHandoutEvent)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = CLSHandoutEvent;
  v5 = [(CLSInsightEvent *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"classID");
    classID = v5->_classID;
    v5->_classID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"handoutID");
    handoutID = v5->_handoutID;
    v5->_handoutID = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"dueDate");
    dueDate = v5->_dueDate;
    v5->_dueDate = v16;

    v18 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v38, 2);
    v22 = objc_msgSend_setWithArray_(v18, v21, v20);
    v24 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v23, v22, @"recipientIDs");
    recipientIDs = v5->_recipientIDs;
    v5->_recipientIDs = v24;

    v26 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v37, 2);
    v30 = objc_msgSend_setWithArray_(v26, v29, v28);
    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v31, v30, @"attachmentDetails");
    attachmentDetails = v5->_attachmentDetails;
    v5->_attachmentDetails = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSHandoutEvent;
  v4 = a3;
  [(CLSInsightEvent *)&v10 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_classID, @"classID", v10.receiver, v10.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_handoutID, @"handoutID");
  objc_msgSend_encodeObject_forKey_(v4, v7, self->_dueDate, @"dueDate");
  objc_msgSend_encodeObject_forKey_(v4, v8, self->_recipientIDs, @"recipientIDs");
  objc_msgSend_encodeObject_forKey_(v4, v9, self->_attachmentDetails, @"attachmentDetails");
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = CLSHandoutEvent;
  v3 = [(CLSInsightEvent *)&v11 dictionaryRepresentation];
  objc_msgSend_setObject_forKeyedSubscript_(v3, v4, self->_classID, @"classID");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v5, self->_handoutID, @"handoutID");
  dueDate = self->_dueDate;
  if (dueDate)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v6, dueDate, @"dueDate");
  }

  recipientIDs = self->_recipientIDs;
  if (recipientIDs)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v6, recipientIDs, @"recipientIDs");
  }

  attachmentDetails = self->_attachmentDetails;
  if (attachmentDetails)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v6, attachmentDetails, @"attachmentDetails");
  }

  return v3;
}

- (void)mergeWithObject:(id)a3
{
  v23[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CLSHandoutEvent;
  [(CLSInsightEvent *)&v21 mergeWithObject:v4];
  v23[0] = @"classID";
  v23[1] = @"handoutID";
  v23[2] = @"dueDate";
  v23[3] = @"recipientIDs";
  v23[4] = @"attachmentDetails";
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v23, 5);
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
        v14 = objc_msgSend_valueForKey_(v4, v9, v13, v17);
        objc_msgSend_setValue_forKey_(self, v15, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v17, v22, 16);
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = CLSHandoutEvent;
  v3 = [(CLSInsightEvent *)&v13 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendFormat_(v6, v7, @" (classID: %@)", self->_classID);
  objc_msgSend_appendFormat_(v6, v8, @" (handoutID: %@)", self->_handoutID);
  objc_msgSend_appendFormat_(v6, v9, @" (dueDate: %@)", self->_dueDate);
  objc_msgSend_appendFormat_(v6, v10, @" (recipientIDs: %@)", self->_recipientIDs);
  objc_msgSend_appendFormat_(v6, v11, @" (attachmentDetails: %@)", self->_attachmentDetails);

  return v6;
}

@end
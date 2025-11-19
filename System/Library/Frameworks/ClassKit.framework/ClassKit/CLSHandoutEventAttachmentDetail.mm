@interface CLSHandoutEventAttachmentDetail
- (BOOL)validateObject:(id *)a3;
- (CLSHandoutEventAttachmentDetail)init;
- (CLSHandoutEventAttachmentDetail)initWithAttachmentID:(id)a3 handoutAttachmentType:(int)a4 contextType:(int64_t)a5 appIdentifier:(id)a6;
- (CLSHandoutEventAttachmentDetail)initWithCoder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithObject:(id)a3;
@end

@implementation CLSHandoutEventAttachmentDetail

- (CLSHandoutEventAttachmentDetail)initWithAttachmentID:(id)a3 handoutAttachmentType:(int)a4 contextType:(int64_t)a5 appIdentifier:(id)a6
{
  v11 = a3;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = CLSHandoutEventAttachmentDetail;
  v13 = [(CLSObject *)&v17 _init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 14, a3);
    v14->_handoutAttachmentType = a4;
    v14->_contextType = a5;
    objc_msgSend_setAppIdentifier_(v14, v15, v12);
  }

  return v14;
}

- (CLSHandoutEventAttachmentDetail)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)validateObject:(id *)a3
{
  v19.receiver = self;
  v19.super_class = CLSHandoutEventAttachmentDetail;
  v5 = [(CLSObject *)&v19 validateObject:?];
  if (v5)
  {
    if (objc_msgSend_length(self->_attachmentID, v6, v7))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = MEMORY[0x277CCA8D8];
      v10 = objc_opt_class();
      v12 = objc_msgSend_bundleForClass_(v9, v11, v10);
      v14 = objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"ERROR_DESCRIPTION_HANDOUT_EVENT_DETAIL_NO_ATTACHMENT_ID", &stru_284A08768, @"ClassKit");
      v16 = objc_msgSend_stringWithFormat_(v8, v15, v14);

      objc_msgSend_cls_assignError_code_errorObject_description_(MEMORY[0x277CCA9B8], v17, a3, 2, self, v16);
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (CLSHandoutEventAttachmentDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLSHandoutEventAttachmentDetail;
  v5 = [(CLSObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"attachmentID");
    attachmentID = v5->_attachmentID;
    v5->_attachmentID = v8;

    v5->_handoutAttachmentType = objc_msgSend_decodeIntegerForKey_(v4, v10, @"handoutAttachmentType");
    v5->_contextType = objc_msgSend_decodeIntegerForKey_(v4, v11, @"contextType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSHandoutEventAttachmentDetail;
  v4 = a3;
  [(CLSObject *)&v8 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_attachmentID, @"attachmentID", v8.receiver, v8.super_class);
  objc_msgSend_encodeInteger_forKey_(v4, v6, self->_handoutAttachmentType, @"handoutAttachmentType");
  objc_msgSend_encodeInteger_forKey_(v4, v7, self->_contextType, @"contextType");
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = CLSHandoutEventAttachmentDetail;
  v3 = [(CLSObject *)&v11 dictionaryRepresentation];
  objc_msgSend_setObject_forKeyedSubscript_(v3, v4, self->_attachmentID, @"attachmentID");
  v6 = NSStringFromHandoutAttachmentType(self->_handoutAttachmentType, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"handoutAttachmentType");

  v8 = DefaultNameFromContextType(self->_contextType);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v9, v8, @"contextType");

  return v3;
}

- (void)mergeWithObject:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CLSHandoutEventAttachmentDetail;
  [(CLSObject *)&v21 mergeWithObject:v4];
  v23[0] = @"attachmentID";
  v23[1] = @"handoutAttachmentType";
  v23[2] = @"contextType";
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v23, 3);
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
  v22.receiver = self;
  v22.super_class = CLSHandoutEventAttachmentDetail;
  v3 = [(CLSObject *)&v22 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendFormat_(v6, v7, @" (attachmentID: %@)", self->_attachmentID);
  v9 = NSStringFromHandoutAttachmentType(self->_handoutAttachmentType, v8);
  objc_msgSend_appendFormat_(v6, v10, @" (handoutAttachmentType: %@)", v9);

  v11 = DefaultNameFromContextType(self->_contextType);
  objc_msgSend_appendFormat_(v6, v12, @" (contextType: %@)", v11);

  v15 = objc_msgSend_appIdentifier(self, v13, v14);

  if (v15)
  {
    v18 = objc_msgSend_appIdentifier(self, v16, v17);
    objc_msgSend_appendFormat_(v6, v19, @" (appIdentifier: %@)", v18);
  }

  v20 = objc_msgSend_copy(v6, v16, v17);

  return v20;
}

@end
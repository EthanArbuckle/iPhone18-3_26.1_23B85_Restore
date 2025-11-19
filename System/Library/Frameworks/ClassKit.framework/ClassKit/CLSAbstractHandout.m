@interface CLSAbstractHandout
- (CLSAbstractHandout)init;
- (CLSAbstractHandout)initWithCoder:(id)a3;
- (NSArray)assets;
- (NSDate)dateOfPublication;
- (NSDate)dueDate;
- (NSString)instructions;
- (NSString)title;
- (id)_init;
- (id)dictionaryRepresentation;
- (int64_t)version;
- (void)addAsset:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithObject:(id)a3;
- (void)removeAsset:(id)a3;
- (void)setDateOfPublication:(id)a3;
- (void)setDueDate:(id)a3;
- (void)setInstructions:(id)a3;
- (void)setTitle:(id)a3;
- (void)setVersion:(int64_t)a3;
@end

@implementation CLSAbstractHandout

- (CLSAbstractHandout)init
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

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CLSAbstractHandout;
  return [(CLSObject *)&v3 _init];
}

- (CLSAbstractHandout)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CLSAbstractHandout;
  v5 = [(CLSObject *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"instructions");
    instructions = v5->_instructions;
    v5->_instructions = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"title");
    title = v5->_title;
    v5->_title = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"dueDate");
    dueDate = v5->_dueDate;
    v5->_dueDate = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"dateOfPublication");
    dateOfPublication = v5->_dateOfPublication;
    v5->_dateOfPublication = v20;

    v5->_version = objc_msgSend_decodeIntegerForKey_(v4, v22, @"version");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSAbstractHandout;
  v4 = a3;
  [(CLSObject *)&v10 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_instructions, @"instructions", v10.receiver, v10.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_title, @"title");
  objc_msgSend_encodeObject_forKey_(v4, v7, self->_dueDate, @"dueDate");
  objc_msgSend_encodeObject_forKey_(v4, v8, self->_dateOfPublication, @"dateOfPublication");
  objc_msgSend_encodeInteger_forKey_(v4, v9, self->_version, @"version");
}

- (NSString)title
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_title;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  objc_msgSend_lock(self, v6, v7);
  v8 = v5;
  title = self->_title;
  v12 = v8;
  if (v8 | title && (!v8 || !title || (objc_msgSend_isEqualToString_(title, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_title, a3);
    objc_msgSend_setModified_(self, v11, 1);
  }

  objc_msgSend_unlock(self, v8, v9);
}

- (NSString)instructions
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_instructions;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setInstructions:(id)a3
{
  v5 = a3;
  objc_msgSend_lock(self, v6, v7);
  v8 = v5;
  instructions = self->_instructions;
  v12 = v8;
  if (v8 | instructions && (!v8 || !instructions || (objc_msgSend_isEqualToString_(instructions, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_instructions, a3);
    objc_msgSend_setModified_(self, v11, 1);
  }

  objc_msgSend_unlock(self, v8, v9);
}

- (NSDate)dueDate
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_dueDate;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setDueDate:(id)a3
{
  v5 = a3;
  objc_msgSend_lock(self, v6, v7);
  v8 = v5;
  dueDate = self->_dueDate;
  v12 = v8;
  if (v8 | dueDate && (!v8 || !dueDate || (objc_msgSend_isEqualToDate_(dueDate, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_dueDate, a3);
    objc_msgSend_setModified_(self, v11, 1);
  }

  objc_msgSend_unlock(self, v8, v9);
}

- (NSDate)dateOfPublication
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_dateOfPublication;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setDateOfPublication:(id)a3
{
  v5 = a3;
  objc_msgSend_lock(self, v6, v7);
  v8 = v5;
  dateOfPublication = self->_dateOfPublication;
  v12 = v8;
  if (v8 | dateOfPublication && (!v8 || !dateOfPublication || (objc_msgSend_isEqualToDate_(dateOfPublication, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_dateOfPublication, a3);
    objc_msgSend_setModified_(self, v11, 1);
  }

  objc_msgSend_unlock(self, v8, v9);
}

- (int64_t)version
{
  objc_msgSend_lock(self, a2, v2);
  version = self->_version;
  objc_msgSend_unlock(self, v5, v6);
  return version;
}

- (void)setVersion:(int64_t)a3
{
  objc_msgSend_lock(self, a2, a3);
  if (self->_version != a3)
  {
    self->_version = a3;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

- (id)dictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = CLSAbstractHandout;
  v3 = [(CLSObject *)&v12 dictionaryRepresentation];
  v5 = v3;
  instructions = self->_instructions;
  if (instructions)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v4, instructions, @"instructions");
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v5, v4, title, @"title");
  }

  dueDate = self->_dueDate;
  if (dueDate)
  {
    v9 = objc_msgSend_mediumStringFromDate_(CLSUtil, v4, dueDate);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v10, v9, @"dueDate");
  }

  objc_msgSend_setObject_forKeyedSubscript_(v5, v4, self->_dateOfPublication, @"dateOfPublication");

  return v5;
}

- (void)mergeWithObject:(id)a3
{
  v23[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CLSAbstractHandout;
  [(CLSObject *)&v21 mergeWithObject:v4];
  v23[0] = @"dateOfPublication";
  v23[1] = @"instructions";
  v23[2] = @"title";
  v23[3] = @"dueDate";
  v23[4] = @"version";
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

- (NSArray)assets
{
  v4 = objc_opt_class();

  return objc_msgSend_childrenOfClass_(self, v3, v4);
}

- (void)addAsset:(id)a3
{
  v30 = a3;
  if (objc_msgSend_type(v30, v5, v6) != 3)
    v29 = {;
    objc_exception_throw(v29);
  }

  objc_msgSend_addChild_changedPropertyName_(self, v7, v30, @"assets");
  v12 = objc_msgSend_parentObjectID(v30, v8, v9);
  v13 = v30;
  if (!v12)
  {
    v3 = objc_msgSend_objectID(self, v10, v11);
    v13 = v30;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v14 = objc_msgSend_parentObjectID(v13, v10, v11);
  if (!v14)
  {
    if (v12)
    {
LABEL_11:

LABEL_16:
      v28 = v30;
      goto LABEL_17;
    }

LABEL_10:

    goto LABEL_11;
  }

  v17 = v14;
  v18 = objc_msgSend_objectID(self, v15, v16);
  if (!v18)
  {

    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = v18;
  v22 = objc_msgSend_parentObjectID(v30, v19, v20);
  v25 = objc_msgSend_objectID(self, v23, v24);
  isEqualToString = objc_msgSend_isEqualToString_(v22, v26, v25);

  if (!v12)
  {

    v28 = v30;
    if ((isEqualToString & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v28 = v30;
  if (isEqualToString)
  {
LABEL_15:
    objc_msgSend_setParentEntityType_(v30, v10, 1);
    goto LABEL_16;
  }

LABEL_17:
}

- (void)removeAsset:(id)a3
{
  v8 = a3;
  if (objc_msgSend_type(v8, v4, v5) != 3)
    v7 = {;
    objc_exception_throw(v7);
  }

  objc_msgSend_removeChild_changedPropertyName_(self, v6, v8, @"assets");
}

@end
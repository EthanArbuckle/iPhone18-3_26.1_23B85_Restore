@interface CLSAbstractHandout
- (CLSAbstractHandout)init;
- (CLSAbstractHandout)initWithCoder:(id)coder;
- (NSArray)assets;
- (NSDate)dateOfPublication;
- (NSDate)dueDate;
- (NSString)instructions;
- (NSString)title;
- (id)_init;
- (id)dictionaryRepresentation;
- (int64_t)version;
- (void)addAsset:(id)asset;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithObject:(id)object;
- (void)removeAsset:(id)asset;
- (void)setDateOfPublication:(id)publication;
- (void)setDueDate:(id)date;
- (void)setInstructions:(id)instructions;
- (void)setTitle:(id)title;
- (void)setVersion:(int64_t)version;
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

- (CLSAbstractHandout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CLSAbstractHandout;
  v5 = [(CLSObject *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"instructions");
    instructions = v5->_instructions;
    v5->_instructions = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"title");
    title = v5->_title;
    v5->_title = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"dueDate");
    dueDate = v5->_dueDate;
    v5->_dueDate = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"dateOfPublication");
    dateOfPublication = v5->_dateOfPublication;
    v5->_dateOfPublication = v20;

    v5->_version = objc_msgSend_decodeIntegerForKey_(coderCopy, v22, @"version");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CLSAbstractHandout;
  coderCopy = coder;
  [(CLSObject *)&v10 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_instructions, @"instructions", v10.receiver, v10.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_title, @"title");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_dueDate, @"dueDate");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_dateOfPublication, @"dateOfPublication");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v9, self->_version, @"version");
}

- (NSString)title
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_title;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  objc_msgSend_lock(self, v6, v7);
  v8 = titleCopy;
  title = self->_title;
  v12 = v8;
  if (v8 | title && (!v8 || !title || (objc_msgSend_isEqualToString_(title, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_title, title);
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

- (void)setInstructions:(id)instructions
{
  instructionsCopy = instructions;
  objc_msgSend_lock(self, v6, v7);
  v8 = instructionsCopy;
  instructions = self->_instructions;
  v12 = v8;
  if (v8 | instructions && (!v8 || !instructions || (objc_msgSend_isEqualToString_(instructions, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_instructions, instructions);
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

- (void)setDueDate:(id)date
{
  dateCopy = date;
  objc_msgSend_lock(self, v6, v7);
  v8 = dateCopy;
  dueDate = self->_dueDate;
  v12 = v8;
  if (v8 | dueDate && (!v8 || !dueDate || (objc_msgSend_isEqualToDate_(dueDate, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_dueDate, date);
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

- (void)setDateOfPublication:(id)publication
{
  publicationCopy = publication;
  objc_msgSend_lock(self, v6, v7);
  v8 = publicationCopy;
  dateOfPublication = self->_dateOfPublication;
  v12 = v8;
  if (v8 | dateOfPublication && (!v8 || !dateOfPublication || (objc_msgSend_isEqualToDate_(dateOfPublication, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_dateOfPublication, publication);
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

- (void)setVersion:(int64_t)version
{
  objc_msgSend_lock(self, a2, version);
  if (self->_version != version)
  {
    self->_version = version;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

- (id)dictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = CLSAbstractHandout;
  dictionaryRepresentation = [(CLSObject *)&v12 dictionaryRepresentation];
  v5 = dictionaryRepresentation;
  instructions = self->_instructions;
  if (instructions)
  {
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryRepresentation, v4, instructions, @"instructions");
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

- (void)mergeWithObject:(id)object
{
  v23[5] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = CLSAbstractHandout;
  [(CLSObject *)&v21 mergeWithObject:objectCopy];
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
        v14 = objc_msgSend_valueForKey_(objectCopy, v9, v13, v17);
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

- (void)addAsset:(id)asset
{
  assetCopy = asset;
  if (objc_msgSend_type(assetCopy, v5, v6) != 3)
    v29 = {;
    objc_exception_throw(v29);
  }

  objc_msgSend_addChild_changedPropertyName_(self, v7, assetCopy, @"assets");
  v12 = objc_msgSend_parentObjectID(assetCopy, v8, v9);
  v13 = assetCopy;
  if (!v12)
  {
    v3 = objc_msgSend_objectID(self, v10, v11);
    v13 = assetCopy;
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
      v28 = assetCopy;
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
  v22 = objc_msgSend_parentObjectID(assetCopy, v19, v20);
  v25 = objc_msgSend_objectID(self, v23, v24);
  isEqualToString = objc_msgSend_isEqualToString_(v22, v26, v25);

  if (!v12)
  {

    v28 = assetCopy;
    if ((isEqualToString & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v28 = assetCopy;
  if (isEqualToString)
  {
LABEL_15:
    objc_msgSend_setParentEntityType_(assetCopy, v10, 1);
    goto LABEL_16;
  }

LABEL_17:
}

- (void)removeAsset:(id)asset
{
  assetCopy = asset;
  if (objc_msgSend_type(assetCopy, v4, v5) != 3)
    v7 = {;
    objc_exception_throw(v7);
  }

  objc_msgSend_removeChild_changedPropertyName_(self, v6, assetCopy, @"assets");
}

@end
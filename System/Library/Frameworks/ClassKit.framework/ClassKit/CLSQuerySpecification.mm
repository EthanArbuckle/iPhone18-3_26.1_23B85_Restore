@interface CLSQuerySpecification
+ (CLSQuerySpecification)querySpecificationWithObjectName:(id)name predicate:(id)predicate;
+ (CLSQuerySpecification)querySpecificationWithObjectType:(Class)type predicate:(id)predicate;
- (CLSQuerySpecification)init;
- (CLSQuerySpecification)initWithCoder:(id)coder;
- (CLSQuerySpecification)initWithObjectName:(id)name predicate:(id)predicate;
- (CLSQuerySpecification)initWithObjectType:(Class)type predicate:(id)predicate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSQuerySpecification

+ (CLSQuerySpecification)querySpecificationWithObjectType:(Class)type predicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [self alloc];
  v9 = objc_msgSend_initWithObjectType_predicate_(v7, v8, type, predicateCopy);

  return v9;
}

+ (CLSQuerySpecification)querySpecificationWithObjectName:(id)name predicate:(id)predicate
{
  predicateCopy = predicate;
  nameCopy = name;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithObjectName_predicate_(v8, v9, nameCopy, predicateCopy);

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  entityName = self->_entityName;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, entityName, @"entityName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_predicate, @"predicate");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_sortDescriptors, @"sortDescriptors");
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, self->_offset);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"offset");

  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, self->_limit);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v13, @"limit");

  v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v15, self->_observerOptions);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v17, @"observerOptions");
}

- (CLSQuerySpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = CLSQuerySpecification;
  v5 = [(CLSQuerySpecification *)&v38 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"entityName");
    entityName = v5->_entityName;
    v5->_entityName = v14;

    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v16, v11, @"predicate");
    predicate = v5->_predicate;
    v5->_predicate = v17;

    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v11, @"sortDescriptors");
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"offset");
    v5->_offset = objc_msgSend_unsignedIntegerValue(v24, v25, v26);

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"limit");
    v5->_limit = objc_msgSend_unsignedIntegerValue(v29, v30, v31);

    v32 = objc_opt_class();
    v34 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"observerOptions");
    v5->_observerOptions = objc_msgSend_unsignedIntegerValue(v34, v35, v36);
  }

  return v5;
}

- (CLSQuerySpecification)init
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

- (CLSQuerySpecification)initWithObjectType:(Class)type predicate:(id)predicate
{
  predicateCopy = predicate;
  v12.receiver = self;
  v12.super_class = CLSQuerySpecification;
  v8 = [(CLSQuerySpecification *)&v12 init];
  if (v8)
  {
    v9 = NSStringFromClass(type);
    entityName = v8->_entityName;
    v8->_entityName = v9;

    objc_storeStrong(&v8->_predicate, predicate);
    v8->_limit = 0;
    v8->_offset = 0;
  }

  return v8;
}

- (CLSQuerySpecification)initWithObjectName:(id)name predicate:(id)predicate
{
  nameCopy = name;
  predicateCopy = predicate;
  v12.receiver = self;
  v12.super_class = CLSQuerySpecification;
  v9 = [(CLSQuerySpecification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityName, name);
    objc_storeStrong(&v10->_predicate, predicate);
    v10->_limit = 0;
    v10->_offset = 0;
  }

  return v10;
}

@end
@interface CLSAuthTreeNode
- (CLSAuthTreeNode)initWithCoder:(id)a3;
- (CLSAuthTreeNode)initWithStatusID:(id)a3 identifier:(id)a4 status:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSAuthTreeNode

- (CLSAuthTreeNode)initWithStatusID:(id)a3 identifier:(id)a4 status:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CLSAuthTreeNode;
  v11 = [(CLSAuthTreeNode *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statusID, a3);
    objc_storeStrong(&v12->_identifier, a4);
    v12->_status = a5;
  }

  return v12;
}

- (CLSAuthTreeNode)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CLSAuthTreeNode;
  v5 = [(CLSAuthTreeNode *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"statusID");
    statusID = v5->_statusID;
    v5->_statusID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"status");
    v5->_status = objc_msgSend_integerValue(v16, v17, v18);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  statusID = self->_statusID;
  v5 = a3;
  objc_msgSend_encodeObject_forKey_(v5, v6, statusID, @"statusID");
  objc_msgSend_encodeObject_forKey_(v5, v7, self->_identifier, @"identifier");
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, self->_status);
  objc_msgSend_encodeObject_forKey_(v5, v9, v10, @"status");
}

@end
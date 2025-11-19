@interface CKSyncEngineStateSerialization
- (CKSyncEngineStateSerialization)init;
- (CKSyncEngineStateSerialization)initWithCoder:(id)a3;
- (CKSyncEngineStateSerialization)initWithData:(id)a3;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSyncEngineStateSerialization

- (CKSyncEngineStateSerialization)init
{
  v2 = [CKException alloc];
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x1E695D940], @"%s is unavailable", "[CKSyncEngineStateSerialization init]");
  objc_exception_throw(v4);
}

- (CKSyncEngineStateSerialization)initWithData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKSyncEngineStateSerialization;
  v7 = [(CKSyncEngineStateSerialization *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    data = v7->_data;
    v7->_data = v8;
  }

  return v7;
}

- (CKSyncEngineStateSerialization)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKSyncEngineStateSerialization;
  v5 = [(CKSyncEngineStateSerialization *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_data);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);
    data = v5->_data;
    v5->_data = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v4 = a3;
  v6 = NSStringFromSelector(sel_data);
  objc_msgSend_encodeObject_forKey_(v4, v5, data, v6);
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_data(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v7, @"data", v8, 0);
}

@end
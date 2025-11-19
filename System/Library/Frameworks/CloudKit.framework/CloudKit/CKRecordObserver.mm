@interface CKRecordObserver
- (CKRecordObserver)initWithContainer:(id)a3 recordType:(id)a4;
- (CKRecordObserver)initWithContainerInfo:(id)a3 recordType:(id)a4 provider:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)redactedDescription;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)invalidate;
- (void)registerWithBlock:(id)a3;
@end

@implementation CKRecordObserver

- (CKRecordObserver)initWithContainer:(id)a3 recordType:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_defaultContainer(CKContainer, v7, v8);
  }

  v13 = v10;
  v14 = objc_msgSend_setupInfo(v10, v11, v12);
  v17 = objc_msgSend_recordChangeProvider(v13, v15, v16);
  v19 = objc_msgSend_initWithContainerInfo_recordType_provider_(self, v18, v14, v9, v17);

  return v19;
}

- (CKRecordObserver)initWithContainerInfo:(id)a3 recordType:(id)a4 provider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKRecordObserver.m", 153, @"Invalid parameter not satisfying: %@", @"containerInfo");

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKRecordObserver.m", 154, @"Invalid parameter not satisfying: %@", @"provider");

LABEL_3:
  v29.receiver = self;
  v29.super_class = CKRecordObserver;
  v17 = [(CKRecordObserver *)&v29 init];
  if (v17)
  {
    v18 = objc_msgSend_copy(v9, v15, v16);
    containerInfo = v17->_containerInfo;
    v17->_containerInfo = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    recordType = v17->_recordType;
    v17->_recordType = v22;

    objc_storeStrong(&v17->_provider, a5);
  }

  return v17;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordType(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v8, @"recordType", v7, 0);

  v12 = objc_msgSend_containerInfo(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v11, @"container", v12, 0);
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_CKObjectDescriptionRedact_avoidShortDescription_(self, v4, 0, 1);
  v8 = objc_msgSend_description(v5, v6, v7);

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)redactedDescription
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_CKObjectDescriptionRedact_avoidShortDescription_(self, v4, 1, 1);
  v8 = objc_msgSend_description(v5, v6, v7);

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (void)registerWithBlock:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_provider(self, v5, v6);
  objc_msgSend_addRecordObserver_block_(v8, v7, self, v4);
}

- (void)invalidate
{
  v5 = objc_msgSend_provider(self, a2, v2);
  objc_msgSend_removeRecordObserver_(v5, v4, self);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKRecordObserver alloc];
  v7 = objc_msgSend_containerInfo(self, v5, v6);
  v10 = objc_msgSend_recordType(self, v8, v9);
  v13 = objc_msgSend_provider(self, v11, v12);
  v15 = objc_msgSend_initWithContainerInfo_recordType_provider_(v4, v14, v7, v10, v13);

  return v15;
}

@end
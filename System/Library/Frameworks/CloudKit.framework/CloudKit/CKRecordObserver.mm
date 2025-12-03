@interface CKRecordObserver
- (CKRecordObserver)initWithContainer:(id)container recordType:(id)type;
- (CKRecordObserver)initWithContainerInfo:(id)info recordType:(id)type provider:(id)provider;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)redactedDescription;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)invalidate;
- (void)registerWithBlock:(id)block;
@end

@implementation CKRecordObserver

- (CKRecordObserver)initWithContainer:(id)container recordType:(id)type
{
  containerCopy = container;
  typeCopy = type;
  if (containerCopy)
  {
    v10 = containerCopy;
  }

  else
  {
    v10 = objc_msgSend_defaultContainer(CKContainer, v7, v8);
  }

  v13 = v10;
  v14 = objc_msgSend_setupInfo(v10, v11, v12);
  v17 = objc_msgSend_recordChangeProvider(v13, v15, v16);
  v19 = objc_msgSend_initWithContainerInfo_recordType_provider_(self, v18, v14, typeCopy, v17);

  return v19;
}

- (CKRecordObserver)initWithContainerInfo:(id)info recordType:(id)type provider:(id)provider
{
  infoCopy = info;
  typeCopy = type;
  providerCopy = provider;
  v14 = providerCopy;
  if (infoCopy)
  {
    if (providerCopy)
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
    v18 = objc_msgSend_copy(infoCopy, v15, v16);
    containerInfo = v17->_containerInfo;
    v17->_containerInfo = v18;

    v22 = objc_msgSend_copy(typeCopy, v20, v21);
    recordType = v17->_recordType;
    v17->_recordType = v22;

    objc_storeStrong(&v17->_provider, provider);
  }

  return v17;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_recordType(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v8, @"recordType", v7, 0);

  v12 = objc_msgSend_containerInfo(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v11, @"container", v12, 0);
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

- (void)registerWithBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_provider(self, v5, v6);
  objc_msgSend_addRecordObserver_block_(v8, v7, self, blockCopy);
}

- (void)invalidate
{
  v5 = objc_msgSend_provider(self, a2, v2);
  objc_msgSend_removeRecordObserver_(v5, v4, self);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKRecordObserver alloc];
  v7 = objc_msgSend_containerInfo(self, v5, v6);
  v10 = objc_msgSend_recordType(self, v8, v9);
  v13 = objc_msgSend_provider(self, v11, v12);
  v15 = objc_msgSend_initWithContainerInfo_recordType_provider_(v4, v14, v7, v10, v13);

  return v15;
}

@end
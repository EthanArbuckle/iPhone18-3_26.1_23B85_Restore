@interface CKOperationMetrics
- (CKOperationMetrics)initWithCloudKitMetrics:(id)metrics MMCSMetrics:(id)sMetrics;
- (CKOperationMetrics)initWithCoder:(id)coder;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKOperationMetrics

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_cloudKitMetrics(self, v4, v5);

  if (v6)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_msgSend_cloudKitMetrics(self, v7, v8);
    v12 = objc_msgSend_stringWithFormat_(v9, v11, @"cloudKitMetrics=%@", v10);
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_MMCSMetrics(self, v7, v8);

  if (v14)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_msgSend_MMCSMetrics(self, v15, v16);
    v20 = objc_msgSend_stringWithFormat_(v17, v19, @"MMCSMetrics=%@", v18);
    objc_msgSend_addObject_(v3, v21, v20);
  }

  v22 = objc_msgSend_componentsJoinedByString_(v3, v15, @", ");

  return v22;
}

- (CKOperationMetrics)initWithCloudKitMetrics:(id)metrics MMCSMetrics:(id)sMetrics
{
  metricsCopy = metrics;
  sMetricsCopy = sMetrics;
  v18.receiver = self;
  v18.super_class = CKOperationMetrics;
  v10 = [(CKOperationMetrics *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(metricsCopy, v8, v9);
    cloudKitMetrics = v10->_cloudKitMetrics;
    v10->_cloudKitMetrics = v11;

    v15 = objc_msgSend_copy(sMetricsCopy, v13, v14);
    MMCSMetrics = v10->_MMCSMetrics;
    v10->_MMCSMetrics = v15;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_MMCSMetrics(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"MMCSMetrics");

  v12 = objc_msgSend_cloudKitMetrics(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v12, @"CloudKitMetrics");
}

- (CKOperationMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CKOperationMetrics;
  v5 = [(CKOperationMetrics *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"MMCSMetrics");
    MMCSMetrics = v5->_MMCSMetrics;
    v5->_MMCSMetrics = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"CloudKitMetrics");
    cloudKitMetrics = v5->_cloudKitMetrics;
    v5->_cloudKitMetrics = v12;
  }

  return v5;
}

@end
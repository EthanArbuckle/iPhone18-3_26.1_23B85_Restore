@interface CKOperationMMCSRequestOptions
- (CKOperationMMCSRequestOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKOperationMMCSRequestOptions

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_resumableContainerLimpMode(self, v5, v6);
  objc_msgSend_encodeBool_forKey_(v17, v8, v7, @"ResumableContainerLimpMode");
  v11 = objc_msgSend_chunkingLibraryCorruptionMode(self, v9, v10);
  objc_msgSend_encodeBool_forKey_(v17, v12, v11, @"ChunkingLibraryCorruptionMode");
  v15 = objc_msgSend_insufficientDiskSpaceMode(self, v13, v14);
  objc_msgSend_encodeBool_forKey_(v17, v16, v15, @"InsufficientDiskSpaceMode");
  objc_autoreleasePoolPop(v4);
}

- (CKOperationMMCSRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKOperationMMCSRequestOptions;
  v5 = [(CKOperationMMCSRequestOptions *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_resumableContainerLimpMode = objc_msgSend_decodeBoolForKey_(v4, v7, @"ResumableContainerLimpMode");
    v5->_chunkingLibraryCorruptionMode = objc_msgSend_decodeBoolForKey_(v4, v8, @"ChunkingLibraryCorruptionMode");
    v5->_insufficientDiskSpaceMode = objc_msgSend_decodeBoolForKey_(v4, v9, @"InsufficientDiskSpaceMode");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end
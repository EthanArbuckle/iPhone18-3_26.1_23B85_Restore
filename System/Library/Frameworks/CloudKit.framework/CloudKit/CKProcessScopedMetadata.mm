@interface CKProcessScopedMetadata
- (CKProcessScopedMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKProcessScopedMetadata

- (CKProcessScopedMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CKProcessScopedMetadata;
  v5 = [(CKProcessScopedMetadata *)&v14 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_clientSDKVersion);
    v5->_clientSDKVersion = objc_msgSend_decodeInt64ForKey_(coderCopy, v7, v6);

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_frameworkFingerprint);
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v8, v9);
    frameworkFingerprint = v5->_frameworkFingerprint;
    v5->_frameworkFingerprint = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_clientSDKVersion(self, v5, v6);
  v8 = NSStringFromSelector(sel_clientSDKVersion);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v9, v7, v8);

  v14 = objc_msgSend_frameworkFingerprint(self, v10, v11);
  v12 = NSStringFromSelector(sel_frameworkFingerprint);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v14, v12);
}

@end
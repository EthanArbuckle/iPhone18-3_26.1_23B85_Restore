@interface IDSOffGridEncryptionProperties
- (NSData)__im_encryptionKeyID;
@end

@implementation IDSOffGridEncryptionProperties

- (NSData)__im_encryptionKeyID
{
  v2 = [(IDSOffGridEncryptionProperties *)self encryptionKeyID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
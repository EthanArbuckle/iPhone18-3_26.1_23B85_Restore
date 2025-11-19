@interface ENEncryptedContentInfo
- (ENEncryptedContentInfo)init;
@end

@implementation ENEncryptedContentInfo

- (ENEncryptedContentInfo)init
{
  v5.receiver = self;
  v5.super_class = ENEncryptedContentInfo;
  v2 = [(ENEncryptedContentInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ENEncryptedContentInfo *)v2 setCipher:@"RC2"];
    [(ENEncryptedContentInfo *)v3 setKeyLength:64];
  }

  return v3;
}

@end
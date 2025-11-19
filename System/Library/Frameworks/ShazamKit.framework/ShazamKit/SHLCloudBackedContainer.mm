@interface SHLCloudBackedContainer
- (SHLCloudBackedContainer)initWithContainer:(id)a3 usingEncryption:(BOOL)a4;
@end

@implementation SHLCloudBackedContainer

- (SHLCloudBackedContainer)initWithContainer:(id)a3 usingEncryption:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SHLCloudBackedContainer;
  v8 = [(SHLCloudBackedContainer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_container, a3);
    v9->_encrypted = a4;
  }

  return v9;
}

@end
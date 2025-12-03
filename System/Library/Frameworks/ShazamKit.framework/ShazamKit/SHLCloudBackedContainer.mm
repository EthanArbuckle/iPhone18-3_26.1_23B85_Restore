@interface SHLCloudBackedContainer
- (SHLCloudBackedContainer)initWithContainer:(id)container usingEncryption:(BOOL)encryption;
@end

@implementation SHLCloudBackedContainer

- (SHLCloudBackedContainer)initWithContainer:(id)container usingEncryption:(BOOL)encryption
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = SHLCloudBackedContainer;
  v8 = [(SHLCloudBackedContainer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_container, container);
    v9->_encrypted = encryption;
  }

  return v9;
}

@end
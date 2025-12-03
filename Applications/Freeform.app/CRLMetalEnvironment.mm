@interface CRLMetalEnvironment
- (CRLMetalEnvironment)initWithDevice:(id)device commandQueue:(id)queue destinationColorSpace:(CGColorSpace *)space shaderManager:(id)manager;
- (void)dealloc;
@end

@implementation CRLMetalEnvironment

- (CRLMetalEnvironment)initWithDevice:(id)device commandQueue:(id)queue destinationColorSpace:(CGColorSpace *)space shaderManager:(id)manager
{
  deviceCopy = device;
  queueCopy = queue;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = CRLMetalEnvironment;
  v14 = [(CRLMetalEnvironment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_device, device);
    objc_storeStrong(&v15->_commandQueue, queue);
    v15->_destinationColorSpace = CGColorSpaceRetain(space);
    objc_storeStrong(&v15->_shaderManager, manager);
  }

  return v15;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_destinationColorSpace);
  v3.receiver = self;
  v3.super_class = CRLMetalEnvironment;
  [(CRLMetalEnvironment *)&v3 dealloc];
}

@end
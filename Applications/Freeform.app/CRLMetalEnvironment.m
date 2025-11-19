@interface CRLMetalEnvironment
- (CRLMetalEnvironment)initWithDevice:(id)a3 commandQueue:(id)a4 destinationColorSpace:(CGColorSpace *)a5 shaderManager:(id)a6;
- (void)dealloc;
@end

@implementation CRLMetalEnvironment

- (CRLMetalEnvironment)initWithDevice:(id)a3 commandQueue:(id)a4 destinationColorSpace:(CGColorSpace *)a5 shaderManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CRLMetalEnvironment;
  v14 = [(CRLMetalEnvironment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_device, a3);
    objc_storeStrong(&v15->_commandQueue, a4);
    v15->_destinationColorSpace = CGColorSpaceRetain(a5);
    objc_storeStrong(&v15->_shaderManager, a6);
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
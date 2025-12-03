@interface NTKCParmesanDebugFlowController
+ (id)debugViewControllerForFace:(id)face;
- (NTKCParmesanDebugFlowController)init;
@end

@implementation NTKCParmesanDebugFlowController

+ (id)debugViewControllerForFace:(id)face
{
  v4 = objc_allocWithZone(type metadata accessor for ParmesanDebugViewController());
  faceCopy = face;
  v6 = sub_23BF8FEE0();
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return initWithRootViewController_;
}

- (NTKCParmesanDebugFlowController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanDebugFlowController();
  return [(NTKCParmesanDebugFlowController *)&v3 init];
}

@end
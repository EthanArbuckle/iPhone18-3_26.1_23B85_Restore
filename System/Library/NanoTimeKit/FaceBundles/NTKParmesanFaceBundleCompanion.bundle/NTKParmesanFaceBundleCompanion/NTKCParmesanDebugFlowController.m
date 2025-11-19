@interface NTKCParmesanDebugFlowController
+ (id)debugViewControllerForFace:(id)a3;
- (NTKCParmesanDebugFlowController)init;
@end

@implementation NTKCParmesanDebugFlowController

+ (id)debugViewControllerForFace:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for ParmesanDebugViewController());
  v5 = a3;
  v6 = sub_23BF8FEE0();
  v7 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v7;
}

- (NTKCParmesanDebugFlowController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanDebugFlowController();
  return [(NTKCParmesanDebugFlowController *)&v3 init];
}

@end
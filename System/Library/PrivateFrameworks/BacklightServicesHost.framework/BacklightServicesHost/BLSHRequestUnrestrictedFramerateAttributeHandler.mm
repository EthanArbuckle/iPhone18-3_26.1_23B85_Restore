@interface BLSHRequestUnrestrictedFramerateAttributeHandler
+ (id)attributeClasses;
- (void)activateForSceneEnvironment:(id)a3;
- (void)deactivateForSceneEnvironment:(id)a3;
@end

@implementation BLSHRequestUnrestrictedFramerateAttributeHandler

+ (id)attributeClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)activateForSceneEnvironment:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

- (void)deactivateForSceneEnvironment:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

@end
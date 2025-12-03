@interface BLSHRequestUnrestrictedFramerateAttributeHandler
+ (id)attributeClasses;
- (void)activateForSceneEnvironment:(id)environment;
- (void)deactivateForSceneEnvironment:(id)environment;
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

- (void)activateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

- (void)deactivateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

@end
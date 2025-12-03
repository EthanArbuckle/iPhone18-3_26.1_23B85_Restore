@interface AXInvertColors_Fitness
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Fitness

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PhoneSceneDelegate" hasInstanceMethod:@"window" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PhoneSceneDelegate"];
}

@end
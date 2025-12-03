@interface AXInvertColors_PhotoBooth
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PhotoBooth

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PBController"];
}

@end
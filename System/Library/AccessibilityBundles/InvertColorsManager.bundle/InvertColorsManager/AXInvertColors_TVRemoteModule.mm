@interface AXInvertColors_TVRemoteModule
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_TVRemoteModule

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRMContentViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  [validationsCopy validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
}

@end
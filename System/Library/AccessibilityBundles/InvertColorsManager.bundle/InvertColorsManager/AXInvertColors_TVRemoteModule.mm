@interface AXInvertColors_TVRemoteModule
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_TVRemoteModule

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVRMContentViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  [v3 validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
}

@end
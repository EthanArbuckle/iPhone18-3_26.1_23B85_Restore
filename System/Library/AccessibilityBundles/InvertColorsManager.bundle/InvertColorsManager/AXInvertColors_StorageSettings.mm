@interface AXInvertColors_StorageSettings
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_StorageSettings

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageTipCell" hasInstanceVariable:@"_appIconView" withType:"UIImageView"];
  [validationsCopy validateClass:@"STStorageTipCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:specifier:" withFullSignature:{"q", "@", "@", 0}];
}

@end
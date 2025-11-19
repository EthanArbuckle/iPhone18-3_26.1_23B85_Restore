@interface AXInvertColors_StorageSettings
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_StorageSettings

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_appIconView" withType:"UIImageView"];
  [v3 validateClass:@"STStorageTipCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:specifier:" withFullSignature:{"q", "@", "@", 0}];
}

@end
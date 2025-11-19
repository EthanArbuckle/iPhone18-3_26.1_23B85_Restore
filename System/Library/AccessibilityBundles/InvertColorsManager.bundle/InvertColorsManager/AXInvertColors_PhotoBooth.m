@interface AXInvertColors_PhotoBooth
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_PhotoBooth

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PBController"];
}

@end
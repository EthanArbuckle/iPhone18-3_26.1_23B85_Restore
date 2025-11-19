@interface AXInvertColors_MarkupUI
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MarkupUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUImageContentViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MUImageContentViewController" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

@end
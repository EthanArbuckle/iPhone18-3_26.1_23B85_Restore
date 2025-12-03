@interface AXInvertColors_MarkupUI
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MarkupUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUImageContentViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MUImageContentViewController" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

@end
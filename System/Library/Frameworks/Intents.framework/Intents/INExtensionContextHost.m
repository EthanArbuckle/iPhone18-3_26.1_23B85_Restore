@interface INExtensionContextHost
+ (id)_allowedItemPayloadClasses;
@end

@implementation INExtensionContextHost

+ (id)_allowedItemPayloadClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

@end
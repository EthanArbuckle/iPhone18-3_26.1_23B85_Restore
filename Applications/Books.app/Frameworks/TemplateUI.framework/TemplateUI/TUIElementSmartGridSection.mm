@interface TUIElementSmartGridSection
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementSmartGridSection

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  [objectCopy setColumns:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 52, 0x7FFFFFFFFFFFFFFFLL, var0)}];
  v9 = [attributesCopy unsignedIntegerForAttribute:179 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];

  [objectCopy setRows:v9];
}

@end
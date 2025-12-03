@interface TUIElementConfigurationFont
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementConfigurationFont

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  v9 = [attributesCopy stringForAttribute:137 node:node.var0];
  v10 = [attributesCopy fontSpecForNode:node.var0];

  if (v9 && v10)
  {
    [builderCopy addConfigurationData:v10 withKey:v9];
  }
}

@end
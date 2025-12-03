@interface TUIElementConfigurationData
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementConfigurationData

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  v9 = [attributesCopy stringForAttribute:137 node:node.var0];
  v10 = [attributesCopy objectForAttribute:217 node:node.var0];

  if (v9 && v10)
  {
    [builderCopy addConfigurationData:v10 withKey:v9];
  }
}

@end
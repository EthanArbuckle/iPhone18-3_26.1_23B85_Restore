@interface TUIElementTextFragmentInstantiator
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextFragmentInstantiator

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  v8 = [attributes stringForAttribute:0 node:node.var0];
  if (v8)
  {
    [builderCopy appendString:v8];
  }
}

@end
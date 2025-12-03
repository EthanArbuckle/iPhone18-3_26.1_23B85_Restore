@interface TUIElementInclude
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementInclude

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  v8 = [attributes stringForAttribute:215 node:node.var0];
  if (v8)
  {
    v9 = [contextCopy baseURLForNode:node.var0];
    v10 = [NSURL URLWithString:v8 relativeToURL:v9];
  }

  else
  {
    v10 = 0;
  }

  [contextCopy includeTemplateWithURL:v10];
}

@end
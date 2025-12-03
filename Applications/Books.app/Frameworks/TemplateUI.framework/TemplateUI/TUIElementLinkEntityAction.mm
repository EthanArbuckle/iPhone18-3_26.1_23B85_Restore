@interface TUIElementLinkEntityAction
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementLinkEntityAction

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  contextCopy = context;
  var0 = node.var0;
  attributesCopy = attributes;
  v12 = [attributesCopy stringForAttribute:138 node:node.var0];
  v13 = [attributesCopy stringForAttribute:211 node:node.var0];
  v14 = [attributesCopy stringForAttribute:165 node:var0];

  if (v12)
  {
    v15 = [[TUILinkEntityAction alloc] initWithName:v12 trigger:v13 refId:v14];
    [builderCopy addLinkEntityAction:v15];
  }

  else
  {
    [contextCopy reportError:1016];
  }
}

@end
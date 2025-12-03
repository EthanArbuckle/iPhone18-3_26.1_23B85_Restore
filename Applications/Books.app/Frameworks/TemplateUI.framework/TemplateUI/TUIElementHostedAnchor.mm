@interface TUIElementHostedAnchor
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementHostedAnchor

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v12 = [attributesCopy stringForAttribute:214 node:node.var0];
  v13 = [attributesCopy stringForAttribute:104 node:node.var0];
  v14 = [attributesCopy stringForAttribute:156 node:var0];
  v15 = [TUIHostedBox presentationFromString:v14];

  v16 = [attributesCopy stringForAttribute:12 node:var0];
  v17 = [TUIHostedBox arrowDirectionFromString:v16];

  v18 = [attributesCopy stringForAttribute:67 node:var0];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v19 = [attributesCopy stringForAttribute:94 node:var0];
  v20 = [attributesCopy unsignedIntegerForAttribute:95 withDefault:0 node:var0];

  v21 = [[TUIHostingProperties alloc] initWithPresentation:v15 flags:0 arrowDirection:v17 groupIdentifier:v19 groupPriority:v20 designatedIdentifier:v18];
  if ([v12 length] && objc_msgSend(v13, "length"))
  {
    v22 = [[TUIHostingIdentifier alloc] initWithType:v12 identifier:v13];
  }

  else
  {
    v22 = 0;
  }

  [boxCopy setHostingIdentifier:v22];
  [boxCopy setHostingProperties:v21];

  if (!v22)
  {
    [contextCopy reportError:1001];
  }
}

@end
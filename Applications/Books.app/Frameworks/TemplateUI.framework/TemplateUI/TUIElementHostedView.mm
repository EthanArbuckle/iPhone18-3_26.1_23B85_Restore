@interface TUIElementHostedView
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementHostedView

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  var0 = node.var0;
  boxCopy = box;
  v12 = [attributesCopy stringForAttribute:214 node:node.var0];
  v27 = [attributesCopy stringForAttribute:104 node:var0];
  v13 = [attributesCopy stringForAttribute:156 node:var0];
  [TUIHostedBox presentationFromString:v13];

  v14 = [attributesCopy stringForAttribute:12 node:var0];
  v25 = [TUIHostedBox arrowDirectionFromString:v14];

  v15 = [attributesCopy stringForAttribute:67 node:var0];
  v16 = [attributesCopy stringForAttribute:94 node:var0];
  v17 = [attributesCopy unsignedIntegerForAttribute:95 withDefault:0 node:var0];
  v26 = [attributesCopy objectForAttribute:150 node:var0];
  if ([v12 length])
  {
    manager = [contextCopy manager];
    viewRegistry = [manager viewRegistry];
    v20 = [viewRegistry useHostedViewFactoryForType:v12];

    if (v20)
    {
      v21 = [contextCopy modelIdentifierWithNode:var0];
    }

    else
    {
      v21 = 0;
    }

    if ([v27 length])
    {
      v22 = [[TUIHostingIdentifier alloc] initWithType:v12 identifier:v27 parameters:v26 modelIdentifier:v21];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = [[TUIHostingProperties alloc] initWithPresentation:0 flags:0 arrowDirection:v25 groupIdentifier:v16 groupPriority:v17 designatedIdentifier:v15];
  [boxCopy setHostingIdentifier:v22];
  [boxCopy setHostingProperties:v23];
  v24 = [attributesCopy stringForAttribute:11 node:var0];
  [boxCopy setAnchorRefId:v24];

  [attributesCopy insetsForAttribute:112 node:var0];
  [boxCopy setInsets:?];

  if (!v22)
  {
    [contextCopy reportError:1001];
  }
}

@end
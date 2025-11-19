@interface TUIElementHostedView
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHostedView

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v28 = a5;
  v9 = a6;
  var0 = a4.var0;
  v11 = a3;
  v12 = [v28 stringForAttribute:214 node:a4.var0];
  v27 = [v28 stringForAttribute:104 node:var0];
  v13 = [v28 stringForAttribute:156 node:var0];
  [TUIHostedBox presentationFromString:v13];

  v14 = [v28 stringForAttribute:12 node:var0];
  v25 = [TUIHostedBox arrowDirectionFromString:v14];

  v15 = [v28 stringForAttribute:67 node:var0];
  v16 = [v28 stringForAttribute:94 node:var0];
  v17 = [v28 unsignedIntegerForAttribute:95 withDefault:0 node:var0];
  v26 = [v28 objectForAttribute:150 node:var0];
  if ([v12 length])
  {
    v18 = [v9 manager];
    v19 = [v18 viewRegistry];
    v20 = [v19 useHostedViewFactoryForType:v12];

    if (v20)
    {
      v21 = [v9 modelIdentifierWithNode:var0];
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
  [v11 setHostingIdentifier:v22];
  [v11 setHostingProperties:v23];
  v24 = [v28 stringForAttribute:11 node:var0];
  [v11 setAnchorRefId:v24];

  [v28 insetsForAttribute:112 node:var0];
  [v11 setInsets:?];

  if (!v22)
  {
    [v9 reportError:1001];
  }
}

@end
@interface TUIElementHostedAnchor
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHostedAnchor

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v23 = a6;
  var0 = a4.var0;
  v10 = a5;
  v11 = a3;
  v12 = [v10 stringForAttribute:214 node:a4.var0];
  v13 = [v10 stringForAttribute:104 node:a4.var0];
  v14 = [v10 stringForAttribute:156 node:var0];
  v15 = [TUIHostedBox presentationFromString:v14];

  v16 = [v10 stringForAttribute:12 node:var0];
  v17 = [TUIHostedBox arrowDirectionFromString:v16];

  v18 = [v10 stringForAttribute:67 node:var0];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v19 = [v10 stringForAttribute:94 node:var0];
  v20 = [v10 unsignedIntegerForAttribute:95 withDefault:0 node:var0];

  v21 = [[TUIHostingProperties alloc] initWithPresentation:v15 flags:0 arrowDirection:v17 groupIdentifier:v19 groupPriority:v20 designatedIdentifier:v18];
  if ([v12 length] && objc_msgSend(v13, "length"))
  {
    v22 = [[TUIHostingIdentifier alloc] initWithType:v12 identifier:v13];
  }

  else
  {
    v22 = 0;
  }

  [v11 setHostingIdentifier:v22];
  [v11 setHostingProperties:v21];

  if (!v22)
  {
    [v23 reportError:1001];
  }
}

@end
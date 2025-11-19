@interface TUIElementHostedAnchorDecorator
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHostedAnchorDecorator

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v31 = [v8 stringForAttribute:214 node:var0];
  v10 = [v8 stringForAttribute:104 node:var0];
  v11 = [v8 stringForAttribute:156 node:var0];
  v12 = [TUIHostedBox presentationFromString:v11];

  v13 = [v8 stringForAttribute:12 node:var0];
  v14 = [TUIHostedBox arrowDirectionFromString:v13];

  v15 = [v8 stringForAttribute:67 node:var0];
  v16 = [v8 stringForAttribute:94 node:var0];
  v17 = [v8 unsignedIntegerForAttribute:95 withDefault:0 node:var0];

  if (v12 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v12;
  }

  v19 = [[TUIHostingProperties alloc] initWithPresentation:v18 flags:0 arrowDirection:v14 groupIdentifier:v16 groupPriority:v17 designatedIdentifier:v15];
  if ([v31 length] && objc_msgSend(v10, "length"))
  {
    v20 = [[TUIHostingIdentifier alloc] initWithType:v31 identifier:v10];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v9 hostingIdentifiers];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &__NSArray0__struct;
  }

  v24 = v23;

  v25 = [v9 hostingProperities];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = &__NSArray0__struct;
  }

  v28 = v27;

  v29 = [v24 arrayByAddingObject:v20];
  [v9 setHostingIdentifiers:v29];

  v30 = [v28 arrayByAddingObject:v19];

  [v9 setHostingProperities:v30];
}

@end
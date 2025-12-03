@interface TUIElementHostedAnchorDecorator
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementHostedAnchorDecorator

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  builderCopy = builder;
  v31 = [attributesCopy stringForAttribute:214 node:var0];
  v10 = [attributesCopy stringForAttribute:104 node:var0];
  v11 = [attributesCopy stringForAttribute:156 node:var0];
  v12 = [TUIHostedBox presentationFromString:v11];

  v13 = [attributesCopy stringForAttribute:12 node:var0];
  v14 = [TUIHostedBox arrowDirectionFromString:v13];

  v15 = [attributesCopy stringForAttribute:67 node:var0];
  v16 = [attributesCopy stringForAttribute:94 node:var0];
  v17 = [attributesCopy unsignedIntegerForAttribute:95 withDefault:0 node:var0];

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

  hostingIdentifiers = [builderCopy hostingIdentifiers];
  v22 = hostingIdentifiers;
  if (hostingIdentifiers)
  {
    v23 = hostingIdentifiers;
  }

  else
  {
    v23 = &__NSArray0__struct;
  }

  v24 = v23;

  hostingProperities = [builderCopy hostingProperities];
  v26 = hostingProperities;
  if (hostingProperities)
  {
    v27 = hostingProperities;
  }

  else
  {
    v27 = &__NSArray0__struct;
  }

  v28 = v27;

  v29 = [v24 arrayByAddingObject:v20];
  [builderCopy setHostingIdentifiers:v29];

  v30 = [v28 arrayByAddingObject:v19];

  [builderCopy setHostingProperities:v30];
}

@end
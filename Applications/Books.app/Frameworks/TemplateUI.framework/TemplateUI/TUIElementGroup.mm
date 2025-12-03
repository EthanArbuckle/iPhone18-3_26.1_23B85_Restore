@interface TUIElementGroup
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementGroup

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  v7 = *&node.var0;
  objectCopy = object;
  attributesCopy = attributes;
  v9 = v7;
  v10 = [attributesCopy stringForAttribute:96 node:v7];
  [objectCopy setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v10)}];

  v11 = [attributesCopy stringForAttribute:218 node:v7];
  [objectCopy setValign:{+[TUIBox valignFromString:](TUIBox, "valignFromString:", v11)}];

  v12 = [attributesCopy objectForAttribute:104 node:v7];
  if (v12)
  {
    [objectCopy setIdentifier:v12];
  }

  else
  {
    v13 = [NSNumber numberWithUnsignedInt:v7];
    [objectCopy setIdentifier:v13];
  }

  [objectCopy setSpan:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 196, 1, v9)}];
}

@end
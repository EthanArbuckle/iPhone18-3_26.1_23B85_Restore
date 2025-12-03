@interface TUIElementTextSpanInstantiator
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementTextSpanInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  objectCopy = object;
  [objectCopy setStyle:0];
  v10 = [attributesCopy fontSpecForNode:node.var0];
  [objectCopy setFontSpec:v10];

  v11 = [attributesCopy colorForAttribute:51 node:node.var0];

  [objectCopy setColor:v11];
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  objectCopy = object;
  builderCopy = builder;
  blockCopy = block;
  if (([builderCopy options] & 2) != 0)
  {
    style = [objectCopy style];
    color = [objectCopy color];
    fontSpec = [objectCopy fontSpec];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_5F5BC;
    v15[3] = &unk_25EAA0;
    v17 = blockCopy;
    v16 = builderCopy;
    [v16 appendWithStyle:style color:color fontSpec:fontSpec block:v15];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, builderCopy, 0);
  }
}

@end
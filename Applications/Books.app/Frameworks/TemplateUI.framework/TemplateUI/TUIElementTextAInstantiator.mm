@interface TUIElementTextAInstantiator
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementTextAInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___TUIElementTextAInstantiator;
  attributesCopy = attributes;
  objc_msgSendSuper2(&v14, "configureObject:withNode:attributes:context:", objectCopy, node.var0, attributesCopy, context);
  v12 = [attributesCopy stringForAttribute:103 node:{node.var0, v14.receiver, v14.super_class}];

  if (v12)
  {
    v13 = [NSURL URLWithString:v12];
    [objectCopy setUrl:v13];
  }

  else
  {
    [objectCopy setUrl:0];
  }
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  blockCopy = block;
  v16 = [objectCopy url];
  if (v16 && (v17 = v16, v18 = [builderCopy options], v17, (v18 & 2) != 0))
  {
    v19 = [objectCopy url];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5F898;
    v21[3] = &unk_25F658;
    var0 = node.var0;
    v22 = objectCopy;
    v23 = builderCopy;
    v24 = contextCopy;
    v25 = blockCopy;
    selfCopy = self;
    [v23 appendHyperlinkWithURL:v19 block:v21];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = &OBJC_METACLASS___TUIElementTextAInstantiator;
    objc_msgSendSuper2(&v20, "instantiateChildrenOfNode:object:containingBuilder:context:block:", node.var0, objectCopy, builderCopy, contextCopy, blockCopy);
  }
}

@end
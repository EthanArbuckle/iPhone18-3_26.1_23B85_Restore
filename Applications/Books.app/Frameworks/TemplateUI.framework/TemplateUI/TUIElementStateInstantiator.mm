@interface TUIElementStateInstantiator
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementStateInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  objectCopy = object;
  v9 = [attributes stringForAttribute:137 node:node.var0];
  v10 = v9;
  if (v9)
  {
    v12 = v9;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [objectCopy setStates:v11];
  }
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  builderCopy = builder;
  contextCopy = context;
  blockCopy = block;
  states = [object states];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_13867C;
  v17[3] = &unk_262690;
  v19 = builderCopy;
  v20 = blockCopy;
  v18 = contextCopy;
  v14 = builderCopy;
  v15 = contextCopy;
  v16 = blockCopy;
  [v15 evaluateStates:states block:v17];
}

@end
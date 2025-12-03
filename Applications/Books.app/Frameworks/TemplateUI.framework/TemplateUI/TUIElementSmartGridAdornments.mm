@interface TUIElementSmartGridAdornments
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementSmartGridAdornments

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  builderCopy = builder;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5018;
  v12[3] = &unk_25DBF8;
  contextCopy = context;
  v14 = builderCopy;
  v10 = builderCopy;
  v11 = contextCopy;
  [v11 enumerateChildrenOfNode:node.var0 block:v12];
}

@end
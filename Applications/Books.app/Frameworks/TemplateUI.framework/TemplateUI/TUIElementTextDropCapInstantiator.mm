@interface TUIElementTextDropCapInstantiator
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementTextDropCapInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___TUIElementTextDropCapInstantiator;
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  objc_msgSendSuper2(&v12, "configureObject:withNode:attributes:context:", objectCopy, var0, attributesCopy, context);
  [objectCopy setCharCount:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 48, 0x7FFFFFFFFFFFFFFFLL, var0, v12.receiver, v12.super_class)}];
  [objectCopy setLines:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 123, 2, var0)}];
  [objectCopy setRaised:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 162, 0, var0)}];
  [attributesCopy floatForAttribute:147 node:var0];
  [objectCopy setPadding:?];
  v11 = [attributesCopy colorForAttribute:30 node:var0];

  [objectCopy setBackgroundColor:v11];
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  blockCopy = block;
  [objectCopy ensureParagraphBoundaryWithBuilder:builderCopy];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_5FDA4;
  v25 = &unk_25F658;
  var0 = node.var0;
  v26 = objectCopy;
  v27 = builderCopy;
  v28 = contextCopy;
  v29 = blockCopy;
  selfCopy = self;
  v16 = blockCopy;
  v17 = contextCopy;
  v18 = builderCopy;
  v19 = objectCopy;
  [v18 appendWithBlock:&v22];
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  [v19 setCharCount:{v21, v22, v23, v24, v25}];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  [objectCopy ensureParagraphBoundaryWithBuilder:builderCopy];
  v7 = objc_opt_respondsToSelector();
  charCount = [objectCopy charCount];
  if (charCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 1;
  }

  else
  {
    v9 = charCount;
  }

  if ((v7 & 1) != 0 && v9)
  {
    lines = [objectCopy lines];
    raised = [objectCopy raised];
    style = [objectCopy style];
    color = [objectCopy color];
    fontSpec = [objectCopy fontSpec];
    backgroundColor = [objectCopy backgroundColor];
    [objectCopy padding];
    [builderCopy configureDropCapWithCount:v9 lines:lines raised:raised style:style color:color fontSpec:fontSpec backgroundColor:backgroundColor padding:?];
  }
}

@end
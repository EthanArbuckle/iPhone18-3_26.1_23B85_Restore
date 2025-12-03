@interface TUIElementExpandable
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object builder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementExpandable

+ (id)supportedAttributes
{
  if (qword_2E6150 != -1)
  {
    sub_199BE8();
  }

  v3 = qword_2E6148;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6160 != -1)
  {
    sub_199BFC();
  }

  v3 = qword_2E6158;

  return v3;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  v8 = objc_alloc_init(_TUIElementExpandableBuilder);
  -[_TUIElementExpandableBuilder setBinding:](v8, "setBinding:", [attributesCopy bindingNameForAttribute:36 node:node.var0]);
  v9 = [attributesCopy stringForAttribute:152 node:node.var0];
  [(_TUIElementExpandableBuilder *)v8 setPointerRefId:v9];

  v10 = [attributesCopy pointerStyleForNode:node.var0];

  [(_TUIElementExpandableBuilder *)v8 setPointerStyle:v10];
  return v8;
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v10 = [builderCopy finalizeModelsWithParent:objectCopy box:objectCopy context:contextCopy];
  pointerRefId = [builderCopy pointerRefId];
  [objectCopy setPointerRefId:pointerRefId];

  pointerStyle = [builderCopy pointerStyle];
  [objectCopy setPointerStyle:pointerStyle];

  v13 = objc_opt_new();
  v29 = objectCopy;
  [objectCopy appendLayoutChildrenToArray:v13];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *v31;
    v27 = contextCopy;
    v28 = builderCopy;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        v23 = [v22 role] == 0;
        if (v23 & v19)
        {
          v26 = 1021;
          goto LABEL_14;
        }

        v24 = [v22 role] == &dword_0 + 2;
        if ((v24 & v18 & 1) != 0 || (v25 = [v22 role], ((v25 == &dword_4 + 1) & v17) != 0))
        {
          v26 = 1019;
LABEL_14:
          contextCopy = v27;
          [v27 reportError:v26];
          builderCopy = v28;
          goto LABEL_15;
        }

        v19 |= v23;
        v18 |= v24;
        v17 |= v25 == &dword_4 + 1;
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      contextCopy = v27;
      builderCopy = v28;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object builder:(id)builder context:(id)context block:(id)block
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  blockCopy = block;
  binding = [builderCopy binding];
  v15 = binding;
  if (TUINameIsValid(binding))
  {
    var0 = node.var0;
    v17 = [contextCopy viewStateForNode:node.var0 binding:v15];
    [objectCopy setViewState:v17];
    v18 = [contextCopy instantiateBinding:v15 withDynamicProvider:v17 childrenOfNode:var0];
    if (v18)
    {
      [builderCopy addModel:v18];
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

@end
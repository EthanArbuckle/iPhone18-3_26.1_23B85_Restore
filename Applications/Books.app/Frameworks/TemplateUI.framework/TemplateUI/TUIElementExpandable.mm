@interface TUIElementExpandable
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 builder:(id)a5 context:(id)a6 block:(id)a7;
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

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v7 = a5;
  v8 = objc_alloc_init(_TUIElementExpandableBuilder);
  -[_TUIElementExpandableBuilder setBinding:](v8, "setBinding:", [v7 bindingNameForAttribute:36 node:a3.var0]);
  v9 = [v7 stringForAttribute:152 node:a3.var0];
  [(_TUIElementExpandableBuilder *)v8 setPointerRefId:v9];

  v10 = [v7 pointerStyleForNode:a3.var0];

  [(_TUIElementExpandableBuilder *)v8 setPointerStyle:v10];
  return v8;
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 finalizeModelsWithParent:v7 box:v7 context:v9];
  v11 = [v8 pointerRefId];
  [v7 setPointerRefId:v11];

  v12 = [v8 pointerStyle];
  [v7 setPointerStyle:v12];

  v13 = objc_opt_new();
  v29 = v7;
  [v7 appendLayoutChildrenToArray:v13];
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
    v27 = v9;
    v28 = v8;
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
          v9 = v27;
          [v27 reportError:v26];
          v8 = v28;
          goto LABEL_15;
        }

        v19 |= v23;
        v18 |= v24;
        v17 |= v25 == &dword_4 + 1;
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v9 = v27;
      v8 = v28;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 builder:(id)a5 context:(id)a6 block:(id)a7
{
  v19 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v11 binding];
  v15 = v14;
  if (TUINameIsValid(v14))
  {
    var0 = a3.var0;
    v17 = [v12 viewStateForNode:a3.var0 binding:v15];
    [v19 setViewState:v17];
    v18 = [v12 instantiateBinding:v15 withDynamicProvider:v17 childrenOfNode:var0];
    if (v18)
    {
      [v11 addModel:v18];
    }
  }

  else
  {
    v13[2](v13, 0);
  }
}

@end
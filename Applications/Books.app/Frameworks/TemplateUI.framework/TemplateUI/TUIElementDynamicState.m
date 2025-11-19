@interface TUIElementDynamicState
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderProtocols;
+ (id)supportedAttributes;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementDynamicState

+ (id)supportedAttributes
{
  if (qword_2E60B0 != -1)
  {
    sub_199A4C();
  }

  v3 = qword_2E60A8;

  return v3;
}

+ (id)builderProtocols
{
  v4 = &OBJC_PROTOCOL___TUIBoxBuilding;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E60C0 != -1)
  {
    sub_199A60();
  }

  v3 = qword_2E60B8;

  return v3;
}

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v9 setBinding:{objc_msgSend(v8, "bindingNameForAttribute:node:", 36, var0)}];
  v10 = [v8 stringForAttribute:116 node:var0];
  [v9 setKind:v10];

  v11 = [v8 objectForAttribute:113 node:var0];
  [v9 setInstance:v11];

  v12 = [v8 objectForAttribute:150 node:var0];

  [v9 setParameters:v12];
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7
{
  v17 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [v11 kind];
  v13 = [v11 instance];
  v14 = [v11 parameters];
  v15 = [v10 dynamicStateForKind:v12 instance:v13 parameters:v14];

  LODWORD(v12) = [v11 binding];
  v16 = [v10 instantiateBinding:v12 withDynamicProvider:v15 childrenOfNode:a3.var0];

  if (v16)
  {
    [v17 addModel:v16];
  }
}

@end
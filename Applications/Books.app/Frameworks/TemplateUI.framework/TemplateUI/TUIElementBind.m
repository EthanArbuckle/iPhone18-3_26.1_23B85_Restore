@interface TUIElementBind
+ (id)attributesToIgnoreWhenResolving;
+ (id)supportedAttributes;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementBind

+ (id)supportedAttributes
{
  if (qword_2E6900 != -1)
  {
    sub_19C228();
  }

  v3 = qword_2E68F8;

  return v3;
}

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v9 setSelect:{objc_msgSend(v8, "enumeratorWithAttribute:node:", 185, var0)}];
  v10 = [v8 unsignedIntegerForAttribute:85 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  v11 = [v8 unsignedIntegerForAttribute:83 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  v12 = [v8 unsignedIntegerForAttribute:82 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  v13 = [v8 unsignedIntegerForAttribute:84 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  LODWORD(var0) = [v8 unconditionalValueForAttribute:70 node:var0];

  v14 = [TUIDynamicInstantiateOptions optionsWithFetchWindow:v10 fetchInitial:v11 fetchDelta:v12 fetchPadding:v13 uniqueID:var0];
  [v9 setOptions:v14];
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6910 != -1)
  {
    sub_19C23C();
  }

  v3 = qword_2E6908;

  return v3;
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7
{
  v14 = a5;
  v10 = a6;
  v11 = a4;
  LODWORD(a4) = [v11 select];
  v12 = [v11 options];

  v13 = [v10 instantiateEnumerator:a4 withChildrenOfNode:a3.var0 options:v12];

  if (v13)
  {
    [v14 addModel:v13];
  }
}

@end
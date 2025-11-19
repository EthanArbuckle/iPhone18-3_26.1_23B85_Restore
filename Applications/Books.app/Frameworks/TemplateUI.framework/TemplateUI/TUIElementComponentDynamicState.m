@interface TUIElementComponentDynamicState
+ (id)attributesToIgnoreWhenResolving;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementComponentDynamicState

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E63B8 != -1)
  {
    sub_19A9B8();
  }

  v3 = qword_2E63B0;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a6;
  v9 = a5;
  v10 = [v9 bindingNameForAttribute:137 node:var0];
  v14 = [v9 stringForAttribute:116 node:var0];
  v11 = [v9 objectForAttribute:113 node:var0];
  v12 = [v9 objectForAttribute:150 node:var0];

  v13 = [v8 dynamicStateForKind:v14 instance:v11 parameters:v12];
  [v8 defineComponentBindingWithName:v10 value:v13];
}

@end
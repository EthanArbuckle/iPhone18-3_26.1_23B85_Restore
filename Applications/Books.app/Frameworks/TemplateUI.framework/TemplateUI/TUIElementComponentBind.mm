@interface TUIElementComponentBind
+ (id)attributesToIgnoreWhenResolving;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementComponentBind

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E63A8 != -1)
  {
    sub_19A9A4();
  }

  v3 = qword_2E63A0;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a6;
  v9 = a5;
  v10 = [v9 bindingNameForAttribute:137 node:var0];
  v11 = [v9 objectForAttribute:217 node:var0];

  [v8 defineComponentBindingWithName:v10 value:v11];
}

@end
@interface TUIElementStruct
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementStruct

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6290 != -1)
  {
    sub_199DF8();
  }

  v3 = qword_2E6288;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [v8 constantNameForAttribute:137 node:a3.var0];
  v11 = [v8 closureForNode:a3.var0];
  v12 = [v8 structForAttribute:32 node:a3.var0];
  v13 = [[_TUIElementStructBuilder alloc] initWithName:v10 closure:v11 basedOn:v12 context:v9];

  return v13;
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v8 = a4;
  v6 = a5;
  v7 = [v8 finalizeStruct];
  [v6 defineStruct:v7 withName:{objc_msgSend(v8, "name")}];
}

@end
@interface TUIElementStructStruct
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementStructStruct

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E62A0 != -1)
  {
    sub_199E0C();
  }

  v3 = qword_2E6298;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a6;
  var0 = a3.var0;
  LOWORD(a3.var0) = [v8 propertyNameForAttribute:137 node:a3.var0];
  v11 = [v8 closureForNode:var0];
  v12 = [v8 structForAttribute:32 node:var0];
  v13 = [[_TUIElementStructStructBuilder alloc] initWithName:LOWORD(a3.var0) closure:v11 basedOn:v12 context:v9];

  return v13;
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 finalizeStruct];
  [v6 setStructValue:v7 forKey:{objc_msgSend(v8, "name")}];
}

@end
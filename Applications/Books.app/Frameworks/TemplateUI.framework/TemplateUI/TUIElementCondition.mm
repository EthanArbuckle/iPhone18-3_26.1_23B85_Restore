@interface TUIElementCondition
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementCondition

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v10 = a6;
  v8 = a5;
  v9 = [v8 letDefinitionWithNameAttribute:137 valueAttribute:45 node:var0];
  LODWORD(var0) = [v8 closureForNode:var0];

  [v10 defineLet:v9 closure:var0];
}

@end
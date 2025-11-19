@interface TUIElementButtonStatesInstantiator
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementButtonStatesInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v11 = a3;
  v8 = [a5 stringForAttribute:137 node:a4.var0];
  if (v8)
  {
    v9 = +[NSCharacterSet whitespaceCharacterSet];
    v10 = [v8 componentsSeparatedByCharactersInSet:v9];
    [v11 setStates:v10];
  }
}

@end
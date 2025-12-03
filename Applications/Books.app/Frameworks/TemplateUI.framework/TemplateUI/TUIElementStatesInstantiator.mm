@interface TUIElementStatesInstantiator
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementStatesInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  objectCopy = object;
  v8 = [attributes stringForAttribute:137 node:node.var0];
  if (v8)
  {
    v9 = +[NSCharacterSet whitespaceCharacterSet];
    v10 = [v8 componentsSeparatedByCharactersInSet:v9];
    [objectCopy setStates:v10];
  }
}

@end
@interface _TUIElementStructStructBuilder
- (_TUIElementStructStructBuilder)initWithName:(id)name closure:(id)closure basedOn:(id)on context:(id)context;
@end

@implementation _TUIElementStructStructBuilder

- (_TUIElementStructStructBuilder)initWithName:(id)name closure:(id)closure basedOn:(id)on context:(id)context
{
  v8.receiver = self;
  v8.super_class = _TUIElementStructStructBuilder;
  result = [(TUIStructBuilder *)&v8 initWithClosure:closure.var0 basedOn:on context:context];
  if (result)
  {
    result->_name.index = name.var0;
  }

  return result;
}

@end
@interface _TUIElementStructBuilder
- (_TUIElementStructBuilder)initWithName:(id)name closure:(id)closure basedOn:(id)on context:(id)context;
@end

@implementation _TUIElementStructBuilder

- (_TUIElementStructBuilder)initWithName:(id)name closure:(id)closure basedOn:(id)on context:(id)context
{
  v8.receiver = self;
  v8.super_class = _TUIElementStructBuilder;
  result = [(TUIStructBuilder *)&v8 initWithClosure:closure.var0 basedOn:on context:context];
  if (result)
  {
    result->_name = name;
  }

  return result;
}

@end
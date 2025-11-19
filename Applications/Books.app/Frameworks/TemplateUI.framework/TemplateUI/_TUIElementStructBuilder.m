@interface _TUIElementStructBuilder
- (_TUIElementStructBuilder)initWithName:(id)a3 closure:(id)a4 basedOn:(id)a5 context:(id)a6;
@end

@implementation _TUIElementStructBuilder

- (_TUIElementStructBuilder)initWithName:(id)a3 closure:(id)a4 basedOn:(id)a5 context:(id)a6
{
  v8.receiver = self;
  v8.super_class = _TUIElementStructBuilder;
  result = [(TUIStructBuilder *)&v8 initWithClosure:a4.var0 basedOn:a5 context:a6];
  if (result)
  {
    result->_name = a3;
  }

  return result;
}

@end
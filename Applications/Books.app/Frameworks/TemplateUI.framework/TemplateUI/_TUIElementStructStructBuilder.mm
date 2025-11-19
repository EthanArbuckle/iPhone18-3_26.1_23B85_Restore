@interface _TUIElementStructStructBuilder
- (_TUIElementStructStructBuilder)initWithName:(id)a3 closure:(id)a4 basedOn:(id)a5 context:(id)a6;
@end

@implementation _TUIElementStructStructBuilder

- (_TUIElementStructStructBuilder)initWithName:(id)a3 closure:(id)a4 basedOn:(id)a5 context:(id)a6
{
  v8.receiver = self;
  v8.super_class = _TUIElementStructStructBuilder;
  result = [(TUIStructBuilder *)&v8 initWithClosure:a4.var0 basedOn:a5 context:a6];
  if (result)
  {
    result->_name.index = a3.var0;
  }

  return result;
}

@end
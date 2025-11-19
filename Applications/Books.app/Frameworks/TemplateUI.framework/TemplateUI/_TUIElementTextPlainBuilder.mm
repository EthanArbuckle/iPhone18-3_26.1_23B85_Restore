@interface _TUIElementTextPlainBuilder
- (NSString)text;
- (_NSRange)appendWithBlock:(id)a3;
- (_TUIElementTextPlainBuilder)init;
- (void)appendHyperlinkWithURL:(id)a3 block:(id)a4;
- (void)appendWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5 block:(id)a6;
@end

@implementation _TUIElementTextPlainBuilder

- (_TUIElementTextPlainBuilder)init
{
  v6.receiver = self;
  v6.super_class = _TUIElementTextPlainBuilder;
  v2 = [(_TUIElementTextPlainBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    string = v2->_string;
    v2->_string = v3;
  }

  return v2;
}

- (NSString)text
{
  v2 = [(NSMutableString *)self->_string copy];

  return v2;
}

- (void)appendHyperlinkWithURL:(id)a3 block:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)appendWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5 block:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6);
  }
}

- (_NSRange)appendWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableString *)self->_string length];
  if (v4)
  {
    v4[2](v4);
  }

  v6 = ([(NSMutableString *)self->_string length]- v5);

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

@end
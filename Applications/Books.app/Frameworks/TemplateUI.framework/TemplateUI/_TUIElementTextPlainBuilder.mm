@interface _TUIElementTextPlainBuilder
- (NSString)text;
- (_NSRange)appendWithBlock:(id)block;
- (_TUIElementTextPlainBuilder)init;
- (void)appendHyperlinkWithURL:(id)l block:(id)block;
- (void)appendWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec block:(id)block;
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

- (void)appendHyperlinkWithURL:(id)l block:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)appendWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec block:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (_NSRange)appendWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableString *)self->_string length];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v6 = ([(NSMutableString *)self->_string length]- v5);

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

@end
@interface _RequestRewriter
- (_RequestRewriter)initWithExpander:(id)expander;
@end

@implementation _RequestRewriter

- (_RequestRewriter)initWithExpander:(id)expander
{
  expanderCopy = expander;
  v10.receiver = self;
  v10.super_class = _RequestRewriter;
  v6 = [(_RequestRewriter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expander, expander);
    v8 = v7;
  }

  return v7;
}

@end
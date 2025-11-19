@interface _TUIStyleReferenceElement
- (_TUIStyleReferenceElement)initWithStyleReference:(id)a3;
@end

@implementation _TUIStyleReferenceElement

- (_TUIStyleReferenceElement)initWithStyleReference:(id)a3
{
  v5.receiver = self;
  v5.super_class = _TUIStyleReferenceElement;
  result = [(_TUIStyleReferenceElement *)&v5 init];
  if (result)
  {
    result->_styleReference = a3;
  }

  return result;
}

@end
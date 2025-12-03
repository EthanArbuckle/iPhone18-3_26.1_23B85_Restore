@interface _TUIStyleReferenceElement
- (_TUIStyleReferenceElement)initWithStyleReference:(id)reference;
@end

@implementation _TUIStyleReferenceElement

- (_TUIStyleReferenceElement)initWithStyleReference:(id)reference
{
  v5.receiver = self;
  v5.super_class = _TUIStyleReferenceElement;
  result = [(_TUIStyleReferenceElement *)&v5 init];
  if (result)
  {
    result->_styleReference = reference;
  }

  return result;
}

@end
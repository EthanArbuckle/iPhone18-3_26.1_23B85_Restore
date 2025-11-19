@interface _MKDeferredSelectionAccessoryPresentation
- (_MKDeferredSelectionAccessoryPresentation)initWithReason:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation _MKDeferredSelectionAccessoryPresentation

- (_MKDeferredSelectionAccessoryPresentation)initWithReason:(unint64_t)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _MKDeferredSelectionAccessoryPresentation;
  result = [(_MKDeferredSelectionAccessoryPresentation *)&v7 init];
  if (result)
  {
    result->_reason = a3;
    result->_animated = a4;
  }

  return result;
}

@end
@interface _MKDeferredSelectionAccessoryPresentation
- (_MKDeferredSelectionAccessoryPresentation)initWithReason:(unint64_t)reason animated:(BOOL)animated;
@end

@implementation _MKDeferredSelectionAccessoryPresentation

- (_MKDeferredSelectionAccessoryPresentation)initWithReason:(unint64_t)reason animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = _MKDeferredSelectionAccessoryPresentation;
  result = [(_MKDeferredSelectionAccessoryPresentation *)&v7 init];
  if (result)
  {
    result->_reason = reason;
    result->_animated = animated;
  }

  return result;
}

@end
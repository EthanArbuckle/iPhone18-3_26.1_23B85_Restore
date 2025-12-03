@interface _SCNExportOperation
- (CGSize)size;
- (SEL)didEndSelector;
- (void)dealloc;
- (void)setDidEndSelector:(SEL)selector;
@end

@implementation _SCNExportOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _SCNExportOperation;
  [(_SCNExportOperation *)&v3 dealloc];
}

- (SEL)didEndSelector
{
  if (self->_didEndSelector)
  {
    return self->_didEndSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setDidEndSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_didEndSelector = selectorCopy;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
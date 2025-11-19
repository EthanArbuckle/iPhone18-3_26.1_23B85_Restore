@interface EMKEmojiOverlayElement
- (_NSRange)rowRange;
@end

@implementation EMKEmojiOverlayElement

- (_NSRange)rowRange
{
  p_rowRange = &self->_rowRange;
  location = self->_rowRange.location;
  length = p_rowRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end
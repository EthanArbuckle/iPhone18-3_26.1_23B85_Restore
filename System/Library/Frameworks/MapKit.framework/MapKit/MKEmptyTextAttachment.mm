@interface MKEmptyTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)result glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (MKEmptyTextAttachment)initWithWidth:(double)width;
@end

@implementation MKEmptyTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)result glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  width = self->_width;
  v7 = 0.0;
  v8 = 0.0;
  result.size.width = width;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (MKEmptyTextAttachment)initWithWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = MKEmptyTextAttachment;
  result = [(MKEmptyTextAttachment *)&v5 initWithData:0 ofType:0];
  if (result)
  {
    result->_width = width;
  }

  return result;
}

@end
@interface MKEmptyTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)result glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (MKEmptyTextAttachment)initWithWidth:(double)a3;
@end

@implementation MKEmptyTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)result glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  width = self->_width;
  v7 = 0.0;
  v8 = 0.0;
  result.size.width = width;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (MKEmptyTextAttachment)initWithWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = MKEmptyTextAttachment;
  result = [(MKEmptyTextAttachment *)&v5 initWithData:0 ofType:0];
  if (result)
  {
    result->_width = a3;
  }

  return result;
}

@end
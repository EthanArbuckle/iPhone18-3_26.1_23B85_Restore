@interface MKImageTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (MKImageTextAttachment)initWithImage:(id)image verticalOffset:(double)offset;
- (void)setVerticalOffset:(double)offset;
@end

@implementation MKImageTextAttachment

- (void)setVerticalOffset:(double)offset
{
  if (self->_verticalOffset != offset)
  {
    self->_verticalOffset = offset;
  }
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  v7 = [(MKImageTextAttachment *)self image:container];
  [v7 size];
  v9 = v8;
  v11 = v10;

  [(MKImageTextAttachment *)self maxHeight];
  if (v12 > 0.0)
  {
    [(MKImageTextAttachment *)self maxHeight];
    if (v13 < v11)
    {
      [(MKImageTextAttachment *)self maxHeight];
      v9 = v9 / v11 * v14;
      v11 = v14;
    }
  }

  verticalOffset = self->_verticalOffset;
  v16 = 0.0;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = verticalOffset;
  result.origin.x = v16;
  return result;
}

- (MKImageTextAttachment)initWithImage:(id)image verticalOffset:(double)offset
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = MKImageTextAttachment;
  v7 = [(MKImageTextAttachment *)&v10 initWithData:0 ofType:0];
  v8 = v7;
  if (v7)
  {
    v7->_verticalOffset = offset;
    [(MKImageTextAttachment *)v7 setImage:imageCopy];
  }

  return v8;
}

@end
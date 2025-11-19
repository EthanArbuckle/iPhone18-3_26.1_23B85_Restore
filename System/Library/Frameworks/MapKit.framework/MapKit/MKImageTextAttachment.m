@interface MKImageTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (MKImageTextAttachment)initWithImage:(id)a3 verticalOffset:(double)a4;
- (void)setVerticalOffset:(double)a3;
@end

@implementation MKImageTextAttachment

- (void)setVerticalOffset:(double)a3
{
  if (self->_verticalOffset != a3)
  {
    self->_verticalOffset = a3;
  }
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  v7 = [(MKImageTextAttachment *)self image:a3];
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

- (MKImageTextAttachment)initWithImage:(id)a3 verticalOffset:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MKImageTextAttachment;
  v7 = [(MKImageTextAttachment *)&v10 initWithData:0 ofType:0];
  v8 = v7;
  if (v7)
  {
    v7->_verticalOffset = a4;
    [(MKImageTextAttachment *)v7 setImage:v6];
  }

  return v8;
}

@end
@interface _TUISymbolImage
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (UIEdgeInsets)alignmentInsets;
- (UIEdgeInsets)contentInsets;
- (_TUISymbolImage)initWithImage:(id)image;
- (_TUISymbolImage)initWithImage:(id)image contentInsets:(UIEdgeInsets)insets isMulticolor:(BOOL)multicolor;
- (_TUISymbolImage)initWithOther:(id)other;
- (_TUISymbolImage)symbolImageWithBaselineOffsetFromBottom:(double)bottom;
- (_TUISymbolImage)symbolImageWithContentInsets:(UIEdgeInsets)insets alignmentInsets:(UIEdgeInsets)alignmentInsets;
- (_TUISymbolImage)symbolImageWithoutBaseline;
- (id)newImageWithoutContentInsets;
@end

@implementation _TUISymbolImage

- (_TUISymbolImage)initWithImage:(id)image contentInsets:(UIEdgeInsets)insets isMulticolor:(BOOL)multicolor
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v22.receiver = self;
  v22.super_class = _TUISymbolImage;
  v13 = [(_TUISymbolImage *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_image, image);
    v14->_contentInsets.top = top;
    v14->_contentInsets.left = left;
    v14->_contentInsets.bottom = bottom;
    v14->_contentInsets.right = right;
    [imageCopy alignmentRectInsets];
    v14->_alignmentInsets.top = v15;
    v14->_alignmentInsets.left = v16;
    v14->_alignmentInsets.bottom = v17;
    v14->_alignmentInsets.right = v18;
    hasBaseline = [imageCopy hasBaseline];
    v14->_hasBaseline = hasBaseline;
    v20 = 0.0;
    if (hasBaseline)
    {
      [imageCopy baselineOffsetFromBottom];
    }

    v14->_baselineOffsetFromBottom = v20;
    v14->_isMulticolor = multicolor;
  }

  return v14;
}

- (_TUISymbolImage)initWithImage:(id)image
{
  imageCopy = image;
  [imageCopy contentInsets];
  v5 = [(_TUISymbolImage *)self initWithImage:imageCopy contentInsets:0 isMulticolor:?];

  return v5;
}

- (_TUISymbolImage)initWithOther:(id)other
{
  otherCopy = other;
  v10.receiver = self;
  v10.super_class = _TUISymbolImage;
  v5 = [(_TUISymbolImage *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_image, otherCopy[1]);
    v7 = *(otherCopy + 3);
    *&v6->_contentInsets.top = *(otherCopy + 2);
    *&v6->_contentInsets.bottom = v7;
    v8 = *(otherCopy + 5);
    *&v6->_alignmentInsets.top = *(otherCopy + 4);
    *&v6->_alignmentInsets.bottom = v8;
    v6->_hasBaseline = *(otherCopy + 16);
    *&v6->_baselineOffsetFromBottom = otherCopy[3];
    v6->_isMulticolor = *(otherCopy + 17);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, equalCopy[2]), vceqq_f64(*&self->_contentInsets.bottom, equalCopy[3])))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_alignmentInsets.top, equalCopy[4]), vceqq_f64(*&self->_alignmentInsets.bottom, equalCopy[5])))) & 1) != 0 && self->_hasBaseline == LOBYTE(equalCopy[1].f64[0]) && self->_baselineOffsetFromBottom == equalCopy[1].f64[1] && ((image = self->_image, image == *&equalCopy->f64[1]) || [(UIImage *)image isEqual:?]) && self->_isMulticolor == BYTE1(equalCopy[1].f64[0]);

  return v7;
}

- (id)newImageWithoutContentInsets
{
  v3 = [UIImage alloc];
  cGImage = [(UIImage *)self->_image CGImage];
  [(UIImage *)self->_image scale];
  v5 = [v3 tui_initWithCGImage:cGImage scale:?];

  if (self->_hasBaseline)
  {
    v6 = [v5 imageWithBaselineOffsetFromBottom:self->_baselineOffsetFromBottom - self->_contentInsets.bottom];

    return v6;
  }

  return v5;
}

- (CGSize)size
{
  [(UIImage *)self->_image size];
  v4 = v3;
  v6 = v5;
  [(UIImage *)self->_image contentInsets];
  v11 = v6 - (v9 + v10);
  v12 = v4 - (v7 + v8) + self->_contentInsets.left + self->_contentInsets.right;
  v13 = v11 + self->_contentInsets.top + self->_contentInsets.bottom;
  result.height = v13;
  result.width = v12;
  return result;
}

- (_TUISymbolImage)symbolImageWithContentInsets:(UIEdgeInsets)insets alignmentInsets:(UIEdgeInsets)alignmentInsets
{
  bottom = alignmentInsets.bottom;
  right = alignmentInsets.right;
  top = alignmentInsets.top;
  left = alignmentInsets.left;
  v18 = insets.bottom;
  v19 = insets.right;
  v17 = insets.left;
  v16 = insets.top;
  selfCopy = self;
  v5.f64[0] = v16;
  v6.f64[0] = v18;
  v7 = selfCopy;
  v5.f64[1] = v17;
  v6.f64[1] = v19;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, *&selfCopy->_contentInsets.top), vceqq_f64(v6, *&selfCopy->_contentInsets.bottom)))) & 1) == 0 || (v8.f64[0] = top, v8.f64[1] = left, v9.f64[0] = bottom, v9.f64[1] = right, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *&selfCopy->_alignmentInsets.top), vceqq_f64(v9, *&selfCopy->_alignmentInsets.bottom)))) & 1) == 0))
  {
    v10 = [[_TUISymbolImage alloc] initWithOther:selfCopy];

    v10->_contentInsets.top = v16;
    v10->_contentInsets.left = v17;
    v10->_contentInsets.bottom = v18;
    v10->_contentInsets.right = v19;
    v10->_alignmentInsets.top = top;
    v10->_alignmentInsets.left = left;
    v7 = v10;
    v10->_alignmentInsets.bottom = bottom;
    v10->_alignmentInsets.right = right;
  }

  return v7;
}

- (_TUISymbolImage)symbolImageWithoutBaseline
{
  selfCopy = self;
  if (selfCopy->_hasBaseline)
  {
    v3 = [[_TUISymbolImage alloc] initWithOther:selfCopy];

    v3->_hasBaseline = 0;
    v3->_baselineOffsetFromBottom = 0.0;
    selfCopy = v3;
  }

  return selfCopy;
}

- (_TUISymbolImage)symbolImageWithBaselineOffsetFromBottom:(double)bottom
{
  selfCopy = self;
  v5 = selfCopy;
  if (!selfCopy->_hasBaseline || selfCopy->_baselineOffsetFromBottom != bottom)
  {
    v6 = [[_TUISymbolImage alloc] initWithOther:selfCopy];

    v6->_hasBaseline = 1;
    v6->_baselineOffsetFromBottom = bottom;
    v5 = v6;
  }

  return v5;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)alignmentInsets
{
  top = self->_alignmentInsets.top;
  left = self->_alignmentInsets.left;
  bottom = self->_alignmentInsets.bottom;
  right = self->_alignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
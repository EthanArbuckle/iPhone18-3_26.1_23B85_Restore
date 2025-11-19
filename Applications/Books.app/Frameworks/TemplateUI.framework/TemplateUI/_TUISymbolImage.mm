@interface _TUISymbolImage
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (UIEdgeInsets)alignmentInsets;
- (UIEdgeInsets)contentInsets;
- (_TUISymbolImage)initWithImage:(id)a3;
- (_TUISymbolImage)initWithImage:(id)a3 contentInsets:(UIEdgeInsets)a4 isMulticolor:(BOOL)a5;
- (_TUISymbolImage)initWithOther:(id)a3;
- (_TUISymbolImage)symbolImageWithBaselineOffsetFromBottom:(double)a3;
- (_TUISymbolImage)symbolImageWithContentInsets:(UIEdgeInsets)a3 alignmentInsets:(UIEdgeInsets)a4;
- (_TUISymbolImage)symbolImageWithoutBaseline;
- (id)newImageWithoutContentInsets;
@end

@implementation _TUISymbolImage

- (_TUISymbolImage)initWithImage:(id)a3 contentInsets:(UIEdgeInsets)a4 isMulticolor:(BOOL)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v12 = a3;
  v22.receiver = self;
  v22.super_class = _TUISymbolImage;
  v13 = [(_TUISymbolImage *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_image, a3);
    v14->_contentInsets.top = top;
    v14->_contentInsets.left = left;
    v14->_contentInsets.bottom = bottom;
    v14->_contentInsets.right = right;
    [v12 alignmentRectInsets];
    v14->_alignmentInsets.top = v15;
    v14->_alignmentInsets.left = v16;
    v14->_alignmentInsets.bottom = v17;
    v14->_alignmentInsets.right = v18;
    v19 = [v12 hasBaseline];
    v14->_hasBaseline = v19;
    v20 = 0.0;
    if (v19)
    {
      [v12 baselineOffsetFromBottom];
    }

    v14->_baselineOffsetFromBottom = v20;
    v14->_isMulticolor = a5;
  }

  return v14;
}

- (_TUISymbolImage)initWithImage:(id)a3
{
  v4 = a3;
  [v4 contentInsets];
  v5 = [(_TUISymbolImage *)self initWithImage:v4 contentInsets:0 isMulticolor:?];

  return v5;
}

- (_TUISymbolImage)initWithOther:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _TUISymbolImage;
  v5 = [(_TUISymbolImage *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_image, v4[1]);
    v7 = *(v4 + 3);
    *&v6->_contentInsets.top = *(v4 + 2);
    *&v6->_contentInsets.bottom = v7;
    v8 = *(v4 + 5);
    *&v6->_alignmentInsets.top = *(v4 + 4);
    *&v6->_alignmentInsets.bottom = v8;
    v6->_hasBaseline = *(v4 + 16);
    *&v6->_baselineOffsetFromBottom = v4[3];
    v6->_isMulticolor = *(v4 + 17);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v4[2]), vceqq_f64(*&self->_contentInsets.bottom, v4[3])))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_alignmentInsets.top, v4[4]), vceqq_f64(*&self->_alignmentInsets.bottom, v4[5])))) & 1) != 0 && self->_hasBaseline == LOBYTE(v4[1].f64[0]) && self->_baselineOffsetFromBottom == v4[1].f64[1] && ((image = self->_image, image == *&v4->f64[1]) || [(UIImage *)image isEqual:?]) && self->_isMulticolor == BYTE1(v4[1].f64[0]);

  return v7;
}

- (id)newImageWithoutContentInsets
{
  v3 = [UIImage alloc];
  v4 = [(UIImage *)self->_image CGImage];
  [(UIImage *)self->_image scale];
  v5 = [v3 tui_initWithCGImage:v4 scale:?];

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

- (_TUISymbolImage)symbolImageWithContentInsets:(UIEdgeInsets)a3 alignmentInsets:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  right = a4.right;
  top = a4.top;
  left = a4.left;
  v18 = a3.bottom;
  v19 = a3.right;
  v17 = a3.left;
  v16 = a3.top;
  v4 = self;
  v5.f64[0] = v16;
  v6.f64[0] = v18;
  v7 = v4;
  v5.f64[1] = v17;
  v6.f64[1] = v19;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, *&v4->_contentInsets.top), vceqq_f64(v6, *&v4->_contentInsets.bottom)))) & 1) == 0 || (v8.f64[0] = top, v8.f64[1] = left, v9.f64[0] = bottom, v9.f64[1] = right, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *&v4->_alignmentInsets.top), vceqq_f64(v9, *&v4->_alignmentInsets.bottom)))) & 1) == 0))
  {
    v10 = [[_TUISymbolImage alloc] initWithOther:v4];

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
  v2 = self;
  if (v2->_hasBaseline)
  {
    v3 = [[_TUISymbolImage alloc] initWithOther:v2];

    v3->_hasBaseline = 0;
    v3->_baselineOffsetFromBottom = 0.0;
    v2 = v3;
  }

  return v2;
}

- (_TUISymbolImage)symbolImageWithBaselineOffsetFromBottom:(double)a3
{
  v4 = self;
  v5 = v4;
  if (!v4->_hasBaseline || v4->_baselineOffsetFromBottom != a3)
  {
    v6 = [[_TUISymbolImage alloc] initWithOther:v4];

    v6->_hasBaseline = 1;
    v6->_baselineOffsetFromBottom = a3;
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
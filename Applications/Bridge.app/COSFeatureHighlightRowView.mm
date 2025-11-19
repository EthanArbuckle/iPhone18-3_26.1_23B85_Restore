@interface COSFeatureHighlightRowView
- (CGSize)_sizeThatFits:(CGSize)a3 doLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSFeatureHighlightRowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation COSFeatureHighlightRowView

- (COSFeatureHighlightRowView)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = COSFeatureHighlightRowView;
  v3 = [(COSFeatureHighlightRowView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    imageView = v3->_imageView;
    v3->_imageView = v4;

    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    title = v3->_title;
    v3->_title = v10;

    [(UILabel *)v3->_title setNumberOfLines:0];
    v12 = v3->_title;
    v13 = UIFontSystemFontDesignAlternate;
    v14 = [UIFont systemFontOfSize:UIFontSystemFontDesignAlternate weight:15.0 design:UIFontWeightMedium];
    [(UILabel *)v12 setFont:v14];

    v15 = v3->_title;
    v16 = BPSTextColor();
    [(UILabel *)v15 setTextColor:v16];

    v17 = v3->_title;
    v18 = +[UIColor clearColor];
    [(UILabel *)v17 setBackgroundColor:v18];

    [(UILabel *)v3->_title setTextAlignment:4];
    v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    body = v3->_body;
    v3->_body = v19;

    [(UILabel *)v3->_body setNumberOfLines:0];
    v21 = v3->_body;
    v22 = [UIFont systemFontOfSize:v13 weight:15.0 design:UIFontWeightRegular];
    [(UILabel *)v21 setFont:v22];

    v23 = v3->_body;
    v24 = +[UIColor systemGrayColor];
    [(UILabel *)v23 setTextColor:v24];

    v25 = v3->_body;
    v26 = +[UIColor clearColor];
    [(UILabel *)v25 setBackgroundColor:v26];

    [(UILabel *)v3->_body setTextAlignment:4];
    [(COSFeatureHighlightRowView *)v3 addSubview:v3->_imageView];
    [(COSFeatureHighlightRowView *)v3 addSubview:v3->_title];
    [(COSFeatureHighlightRowView *)v3 addSubview:v3->_body];
  }

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = COSFeatureHighlightRowView;
  [(COSFeatureHighlightRowView *)&v5 layoutSubviews];
  [(COSFeatureHighlightRowView *)self bounds];
  [(COSFeatureHighlightRowView *)self _sizeThatFits:1 doLayout:v3, v4];
}

- (CGSize)_sizeThatFits:(CGSize)a3 doLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = PSLocaleLanguageDirection();
  [(UIImageView *)self->_imageView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v10 = v9;
  v12 = v11;
  *&v9 = (height - v11) * 0.5;
  v13 = floorf(*&v9);
  __asm { FMOV            V2.2D, #13.0 }

  v40 = 0.0;
  if (_ZF)
  {
    v19 = width - v10;
  }

  else
  {
    v19 = 0.0;
  }

  BPSScreenValueGetRelevantValue();
  v21 = v20;
  v38 = v19;
  v39 = v13;
  v43.origin.x = v19;
  v43.origin.y = v13;
  v43.size.width = v10;
  v43.size.height = v12;
  v22 = v21 + CGRectGetWidth(v43);
  v41 = width;
  v23 = width - v22;
  [(UILabel *)self->_title sizeThatFits:width - v22, 0.0];
  v25 = v24;
  [(UILabel *)self->_body sizeThatFits:v23, 0.0];
  v27 = v26;
  __asm { FMOV            V1.2D, #3.0 }

  BPSScreenValueGetRelevantValue();
  v30 = v29;
  v37 = v27;
  v31 = v25 + v27 + v29;
  *&v29 = (height - v31) * 0.5;
  v32 = floorf(*&v29);
  v44.origin.x = v22;
  v44.origin.y = v32;
  v44.size.width = v23;
  v44.size.height = v25;
  MaxY = CGRectGetMaxY(v44);
  if (v8 != 2)
  {
    v40 = v22;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v45.origin.x = 0.0;
  v45.origin.y = v32;
  v45.size.width = v23;
  v45.size.height = v25;
  MaxY = CGRectGetMaxY(v45);
  v22 = 0.0;
  if (v4)
  {
LABEL_8:
    v34 = v30 + MaxY;
    [(UIImageView *)self->_imageView setFrame:v38, v39, v10, v12];
    [(UILabel *)self->_title setFrame:v40, v32, v23, v25];
    [(UILabel *)self->_body setFrame:v22, v34, v23, v37];
  }

LABEL_9:
  if (v31 >= v12)
  {
    v35 = v31;
  }

  else
  {
    v35 = v12;
  }

  v36 = v41;
  result.height = v35;
  result.width = v36;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(COSFeatureHighlightRowView *)self _sizeThatFits:0 doLayout:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end
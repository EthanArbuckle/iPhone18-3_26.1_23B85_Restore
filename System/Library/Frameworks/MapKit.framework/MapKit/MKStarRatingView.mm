@interface MKStarRatingView
+ (id)colorForRating:(double)rating;
+ (id)ratingAsAttributedString:(double)string baseFont:(id)font style:(int64_t)style theme:(id)theme;
+ (id)ratingShortAsAttributedString:(double)string baseFont:(id)font theme:(id)theme;
+ (id)textAttachmentimageNamed:(id)named font:(id)font;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MKStarRatingView)initWithCoder:(id)coder;
- (MKStarRatingView)initWithFrame:(CGRect)frame;
- (MKStarRatingView)initWithStyle:(int64_t)style;
- (UIEdgeInsets)alignmentRectInsets;
- (id)imageWithName:(id)name andColor:(id)color;
- (void)_commonInit;
- (void)_layoutStarViewsCreatingIfNeeded:(BOOL)needed;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNumberOfRatingLevels:(unint64_t)levels;
- (void)setRating:(double)rating;
@end

@implementation MKStarRatingView

- (void)setRating:(double)rating
{
  if (self->_rating != rating)
  {
    self->_rating = rating;
    [(MKStarRatingView *)self _layoutStarViewsCreatingIfNeeded:0];

    [(MKStarRatingView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(MKStarRatingView *)self _layoutStarViewsCreatingIfNeeded:0];

    [(MKStarRatingView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setNumberOfRatingLevels:(unint64_t)levels
{
  if (self->_numLevels != levels)
  {
    self->_numLevels = levels;
    [(MKStarRatingView *)self _layoutStarViewsCreatingIfNeeded:1];

    [(MKStarRatingView *)self invalidateIntrinsicContentSize];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MKStarRatingView;
  [(MKStarRatingView *)&v3 didMoveToWindow];
  [(MKStarRatingView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(MKStarRatingView *)self _layoutStarViewsCreatingIfNeeded:0];
  v3.receiver = self;
  v3.super_class = MKStarRatingView;
  [(MKStarRatingView *)&v3 layoutSubviews];
}

- (void)_layoutStarViewsCreatingIfNeeded:(BOOL)needed
{
  if (needed)
  {
    [(NSMutableArray *)self->_ratingViews makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_ratingViews removeAllObjects];
  }

  v5 = *MEMORY[0x1E695EFF8];
  rect = *(MEMORY[0x1E695EFF8] + 8);
  [(UIImage *)self->_fullStarImage size];
  v7 = v6;
  v9 = v8;
  [(UIView *)self _mapkit_currentScreenScale];
  v11 = v10;
  rating = self->_rating;
  if ([(MKStarRatingView *)self numberOfRatingLevels])
  {
    v13 = 0;
    v14 = round(rating + rating) * 0.5;
    do
    {
      if (v14 >= 1.0 || ((fullStarImage = self->_halfStarImage) == 0 ? (v16 = v14 == 0.5) : (v16 = 0), v16))
      {
        if (!self->_highlighted || (fullStarImage = self->_fullStarHighlightedImage) == 0)
        {
          fullStarImage = self->_fullStarImage;
        }
      }

      else
      {
        if (fullStarImage)
        {
          v17 = v14 == 0.5;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          if (self->_highlighted && self->_halfStarHighlightedImage)
          {
            fullStarImage = self->_halfStarHighlightedImage;
          }
        }

        else if (!self->_highlighted || (fullStarImage = self->_emptyStarHighlightedImage) == 0)
        {
          fullStarImage = self->_emptyStarImage;
        }
      }

      v18 = fullStarImage;
      if (v13 >= [(NSMutableArray *)self->_ratingViews count])
      {
        v20 = 0;
      }

      else
      {
        v19 = [(NSMutableArray *)self->_ratingViews objectAtIndexedSubscript:v13];
        v20 = v19;
        if (!needed && v19)
        {
          goto LABEL_26;
        }
      }

      v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);

      v20 = v21;
LABEL_26:
      [v20 setImage:v18];
      superview = [v20 superview];

      if (!superview)
      {
        [(MKStarRatingView *)self addSubview:v20];
        if ([(NSMutableArray *)self->_ratingViews indexOfObject:v20]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableArray *)self->_ratingViews addObject:v20];
        }
      }

      v24.origin.x = v11 * v5;
      v24.origin.y = rect * v11;
      v24.size.width = v7 * v11;
      v24.size.height = v9 * v11;
      v25 = CGRectIntegral(v24);
      [v20 setFrame:{v25.origin.x / v11, v25.origin.y / v11, v25.size.width / v11, v25.size.height / v11}];
      v26.origin.x = v5;
      v26.origin.y = rect;
      v26.size.width = v7;
      v26.size.height = v9;
      v5 = v5 + CGRectGetWidth(v26) + self->_padding;
      v14 = v14 + -1.0;

      ++v13;
    }

    while (v13 < [(MKStarRatingView *)self numberOfRatingLevels]);
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.5;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = self->_fullStarImage;
  [(UIImage *)v3 size];
  [(UIImage *)v3 size];

  UIRoundToViewScale();
  v5 = v4;
  UIRoundToViewScale();
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(MKStarRatingView *)self frame];

  [(MKStarRatingView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)imageWithName:(id)name andColor:(id)color
{
  nameCopy = name;
  colorCopy = color;
  v7 = nameCopy;
  v8 = v7;
  if (colorCopy)
  {
    v8 = [v7 stringByAppendingFormat:@"_%lu", objc_msgSend(colorCopy, "hash")];
  }

  v9 = [0 objectForKeyedSubscript:v8];
  if (!v9)
  {
    if (colorCopy && ([MEMORY[0x1E69DCAB8] _mapkit_imageNamed:v7], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "_flatImageWithColor:", colorCopy), v9 = objc_claimAutoreleasedReturnValue(), v10, v9) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_mapkit_imageNamed:", v7), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [0 setObject:v9 forKeyedSubscript:v8];
    }
  }

  return v9;
}

- (void)_commonInit
{
  array = [MEMORY[0x1E695DF70] array];
  ratingViews = self->_ratingViews;
  self->_ratingViews = array;

  self->_numReviews = 0x7FFFFFFFFFFFFFFFLL;
  self->_starStyle = 0;
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    CATransform3DMakeScale(&v7, -1.0, 1.0, 1.0);
    layer = [(MKStarRatingView *)self layer];
    v6 = v7;
    [layer setTransform:&v6];
  }
}

- (MKStarRatingView)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = MKStarRatingView;
  v4 = [(MKStarRatingView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKStarRatingView *)v4 _commonInit];
  [(MKStarRatingView *)v4 setNumberOfRatingLevels:5];
  [(MKStarRatingView *)v4 setStarStyle:style];
  return v4;
}

- (MKStarRatingView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MKStarRatingView;
  v3 = [(MKStarRatingView *)&v5 initWithCoder:coder];
  [(MKStarRatingView *)v3 _commonInit];
  [(MKStarRatingView *)v3 setStarStyle:0];
  return v3;
}

- (MKStarRatingView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MKStarRatingView;
  v3 = [(MKStarRatingView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MKStarRatingView *)v3 _commonInit];
  [(MKStarRatingView *)v3 setStarStyle:0];
  return v3;
}

+ (id)ratingAsAttributedString:(double)string baseFont:(id)font style:(int64_t)style theme:(id)theme
{
  v49[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  themeCopy = theme;
  if (!fontCopy)
  {
    v12 = +[MKFontManager sharedManager];
    fontCopy = [v12 subtitleFont];
  }

  if (style == 3)
  {
    v13 = [self ratingShortAsAttributedString:fontCopy baseFont:themeCopy theme:string];
    goto LABEL_32;
  }

  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  if (style != 1)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.588235319 blue:0.0 alpha:1.0];
  tertiaryLabelColor = v15;
  if (!v15)
  {
LABEL_9:
    v18 = [self colorForRating:string];
    if (!v18)
    {
      v18 = tertiaryLabelColor;
      tertiaryLabelColor = v18;
    }

    v17 = v18;
    goto LABEL_12;
  }

  v17 = v15;
LABEL_12:
  v19 = fontCopy;
  v20 = v19;
  v13 = 0;
  if (!v19 || !v17 || !tertiaryLabelColor)
  {
    goto LABEL_31;
  }

  v40 = IsRightToLeft;
  v42 = fontCopy;
  v43 = themeCopy;
  v22 = *MEMORY[0x1E69DB650];
  v48[0] = *MEMORY[0x1E69DB648];
  v21 = v48[0];
  v48[1] = v22;
  v49[0] = v19;
  v49[1] = v17;
  v39 = v17;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v46[0] = v21;
  v46[1] = v22;
  v47[0] = v20;
  v47[1] = tertiaryLabelColor;
  v41 = tertiaryLabelColor;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v24 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v25 = round(string + string) * 0.5;
  v26 = 5;
  styleCopy = style;
  do
  {
    if (v25 >= 1.0)
    {
      v27 = MEMORY[0x1E696AAB0];
      v28 = [self fullStarTextAttachmentWithFont:v20];
      goto LABEL_20;
    }

    if (v25 == 0.5)
    {
      v27 = MEMORY[0x1E696AAB0];
      v28 = [self halfStarTextAttachmentWithFont:v20];
LABEL_20:
      v29 = v28;
      v30 = [v27 attributedStringWithAttachment:v28];
      v31 = [v30 mutableCopy];

      [v31 addAttributes:v23 range:{0, objc_msgSend(v31, "length")}];
      [v24 appendAttributedString:v31];
      goto LABEL_21;
    }

    if (style == 1)
    {
      v32 = [self emptyStarTextAttachmentWithFont:v20];
      v33 = v23;
    }

    else
    {
      v32 = [self fullStarTextAttachmentWithFont:v20];
      v33 = v44;
    }

    v34 = MEMORY[0x1E696AAB0];
    v31 = v33;
    v35 = [v34 attributedStringWithAttachment:v32];
    v36 = [v35 mutableCopy];

    [v36 addAttributes:v31 range:{0, objc_msgSend(v36, "length")}];
    [v24 appendAttributedString:v36];

    style = styleCopy;
LABEL_21:

    v25 = v25 + -1.0;
    --v26;
  }

  while (v26);
  if (v40)
  {
    v37 = &unk_1F1612378;
  }

  else
  {
    v37 = &unk_1F1612390;
  }

  [v24 addAttribute:*MEMORY[0x1E69DB778] value:v37 range:{0, objc_msgSend(v24, "length")}];
  v13 = [v24 copy];

  fontCopy = v42;
  themeCopy = v43;
  tertiaryLabelColor = v41;
  v17 = v39;
LABEL_31:

LABEL_32:

  return v13;
}

+ (id)ratingShortAsAttributedString:(double)string baseFont:(id)font theme:(id)theme
{
  v27[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  v8 = [self colorForRating:string];
  v9 = [self fullStarTextAttachmentWithFont:fontCopy];
  v10 = [fontCopy _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  v12 = *MEMORY[0x1E69DB650];
  v26[0] = *MEMORY[0x1E69DB648];
  v11 = v26[0];
  v26[1] = v12;
  v27[0] = fontCopy;
  v27[1] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v24[0] = v11;
  v24[1] = v12;
  v25[0] = v10;
  v25[1] = v8;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
  v16 = [v15 mutableCopy];

  [v16 addAttributes:v13 range:{0, objc_msgSend(v16, "length")}];
  v17 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v17 appendAttributedString:v16];
  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:0];
  [v17 appendAttributedString:v18];

  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f", *&string];

  v21 = [v19 initWithString:v20 attributes:v14];
  [v17 appendAttributedString:v21];

  v22 = [v17 copy];

  return v22;
}

+ (id)textAttachmentimageNamed:(id)named font:(id)font
{
  v5 = MEMORY[0x1E69DCAB8];
  fontCopy = font;
  v7 = [v5 systemImageNamed:named];
  v8 = MEMORY[0x1E69DCAD8];
  [fontCopy pointSize];
  v10 = v9;

  v11 = [v8 configurationWithPointSize:2 weight:1 scale:v10];
  v12 = [v7 imageWithSymbolConfiguration:v11];

  v13 = [v12 imageWithRenderingMode:2];

  v14 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v14 setImage:v13];

  return v14;
}

+ (id)colorForRating:(double)rating
{
  v5 = vcvtpd_s64_f64(rating);
  if (v5 > 4)
  {
    v6 = 0.450980395;
  }

  else
  {
    v6 = dbl_1A30F7E68[v5];
  }

  v7 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:v6 blue:0.0 alpha:{1.0, v3}];

  return v7;
}

@end
@interface ASCArtworkView
- (ASCArtworkView)initWithCoder:(id)a3;
- (ASCArtworkView)initWithFrame:(CGRect)a3;
- (BOOL)isHighlighted;
- (CGRect)contentRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIImage)image;
- (double)cornerRadiusForContentRect:(CGRect)a3;
- (id)cornerCurveForContentRect:(CGRect)a3;
- (id)description;
- (unint64_t)cornerMaskForContentRect:(CGRect)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setDataChanged;
- (void)setDecoration:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setPreferredSize:(CGSize)a3;
- (void)setScreenshotDisplayConfiguration:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
@end

@implementation ASCArtworkView

- (ASCArtworkView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = ASCArtworkView;
  v3 = [(ASCArtworkView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    objc_opt_self();
    *(v3 + 456) = *MEMORY[0x277CBF3A8];
    objc_storeStrong(v3 + 51, @"none");
    v4 = +[ASCScreenshotDisplayConfiguration defaultConfiguration];
    v5 = *(v3 + 52);
    *(v3 + 52) = v4;

    v6 = +[ASCSemanticColor artworkPlaceholder];
    v7 = *(v3 + 53);
    *(v3 + 53) = v6;

    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    v14 = *(v3 + 55);
    *(v3 + 55) = v13;

    v15 = [[ASCBorderView alloc] initWithFrame:v9, v10, v11, v12];
    v16 = *(v3 + 56);
    *(v3 + 56) = v15;

    [v3 setLayoutMargins:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v3 setInsetsLayoutMarginsFromSafeArea:0];
    [v3 setUserInteractionEnabled:0];
    [v3 setAccessibilityIgnoresInvertColors:1];
    [*(v3 + 55) setClipsToBounds:1];
    v17 = +[ASCSemanticColor artworkSymbolTint];
    [*(v3 + 55) setTintColor:v17];

    [v3 addSubview:*(v3 + 55)];
    [*(v3 + 56) setWidth:1.0];
    v18 = +[ASCSemanticColor artworkBorder];
    [*(v3 + 56) setColor:v18];

    [v3 addSubview:*(v3 + 56)];
    [v3 setDataChanged];
  }

  return v3;
}

- (ASCArtworkView)initWithCoder:(id)a3
{
  [(ASCArtworkView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setPreferredSize:(CGSize)a3
{
  if (self->_preferredSize.width != a3.width || self->_preferredSize.height != a3.height)
  {
    v13 = v3;
    self->_preferredSize = a3;
    if (a3.width >= a3.height)
    {
      a3.width = a3.height;
    }

    v11 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:-1 scale:{ceil(a3.width * 0.5), v6, v5, v4, v13, v7}];
    v12 = [(ASCArtworkView *)self imageView];
    [v12 setPreferredSymbolConfiguration:v11];

    [(ASCArtworkView *)self invalidateIntrinsicContentSize];

    [(ASCArtworkView *)self setNeedsLayout];
  }
}

- (void)setDecoration:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_decoration isEqualToString:?])
  {
    v4 = [v6 copy];
    decoration = self->_decoration;
    self->_decoration = v4;

    [(ASCArtworkView *)self setDataChanged];
  }
}

- (void)setScreenshotDisplayConfiguration:(id)a3
{
  v4 = a3;
  screenshotDisplayConfiguration = self->_screenshotDisplayConfiguration;
  v9 = v4;
  if (!v4 || !screenshotDisplayConfiguration)
  {
    if (screenshotDisplayConfiguration == v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(ASCScreenshotDisplayConfiguration *)screenshotDisplayConfiguration isEqual:v4];
  v4 = v9;
  if (!v6)
  {
LABEL_6:
    v7 = [(ASCScreenshotDisplayConfiguration *)v4 copy];
    v8 = self->_screenshotDisplayConfiguration;
    self->_screenshotDisplayConfiguration = v7;

    [(ASCArtworkView *)self setDataChanged];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (UIImage)image
{
  v2 = [(ASCArtworkView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if ([v4 _isSymbolImage])
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(ASCArtworkView *)self imageView];
  [v6 setContentMode:v5];

  v7 = [(ASCArtworkView *)self imageView];
  [v7 setImage:v4];

  [(ASCArtworkView *)self setDataChanged];
}

- (void)setPlaceholderColor:(id)a3
{
  v7 = a3;
  v5 = self->_placeholderColor;
  if (!v7 || !v5)
  {

    if (v5 == v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(UIColor *)v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_placeholderColor, a3);
    [(ASCArtworkView *)self setDataChanged];
  }

LABEL_7:
}

- (BOOL)isHighlighted
{
  v2 = [(ASCArtworkView *)self imageView];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCArtworkView *)self imageView];
  [v4 setHighlighted:v3];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = ASCArtworkView;
  [(ASCArtworkView *)&v7 setSemanticContentAttribute:?];
  v5 = [(ASCArtworkView *)self imageView];
  [v5 setSemanticContentAttribute:a3];

  v6 = [(ASCArtworkView *)self borderView];
  [v6 setSemanticContentAttribute:a3];
}

- (void)setDataChanged
{
  HasBorder = ASCArtworkDecorationHasBorder(self->_decoration);
  v4 = [(ASCArtworkView *)self image];
  if (v4)
  {
    v5 = [(ASCArtworkView *)self image];
    v6 = [v5 _isSymbolImage] | HasBorder ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(ASCArtworkView *)self borderView];
  [v7 setHidden:v6 & 1];

  v8 = [(ASCArtworkView *)self placeholderColor];
  if (v8)
  {
    v9 = [(ASCArtworkView *)self image];
    if (v9)
    {
      v10 = [(ASCArtworkView *)self image];
      v11 = [v10 _isSymbolImage];

      v12 = v11 ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if ((HasBorder | ASCArtworkDecorationIsPrerendered(self->_decoration)) & 1) == 0 || (v12)
  {
    v13 = [(ASCArtworkView *)self imageView];
    [v13 setBackgroundColor:0];
  }

  else
  {
    v13 = [(ASCArtworkView *)self placeholderColor];
    v14 = [(ASCArtworkView *)self imageView];
    [v14 setBackgroundColor:v13];
  }

  [(ASCArtworkView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(ASCArtworkView *)self sizeThatFits:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCArtworkView;
  [(ASCArtworkView *)&v4 invalidateIntrinsicContentSize];
  if ([(ASCArtworkView *)self translatesAutoresizingMaskIntoConstraints])
  {
    v3 = [(ASCArtworkView *)self superview];
    [v3 invalidateIntrinsicContentSize];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCArtworkView *)self image];
  if (v6)
  {

    goto LABEL_3;
  }

  v13 = [(ASCArtworkView *)self decoration];
  if ([v13 isEqualToString:@"none"])
  {

LABEL_19:
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_21;
  }

  v14 = [(ASCArtworkView *)self placeholderColor];

  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_3:
  [(ASCArtworkView *)self preferredSize];
  v8 = v7;
  v10 = v9;
  if (width != *MEMORY[0x277D76C78] || height != *(MEMORY[0x277D76C78] + 8))
  {
    objc_opt_self();
    if (v8 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v8 = width;
      v10 = height;
    }

    else
    {
      if (width < v8)
      {
        v8 = width;
      }

      if (height < v10)
      {
        v10 = height;
      }
    }
  }

LABEL_21:
  v15 = v8;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ASCArtworkView *)self layoutMargins];
  v9 = x + v8;
  v11 = y + v10;
  v13 = width - (v8 + v12);
  v15 = height - (v10 + v14);
  v35.origin.x = v9;
  v35.origin.y = v11;
  v35.size.width = v13;
  v35.size.height = v15;
  if (!CGRectIsEmpty(v35))
  {
    v16 = [(ASCArtworkView *)self image];

    if (v16)
    {
      v17 = [(ASCArtworkView *)self image];
      [v17 size];
      v19 = v18;
      v21 = v20;

      if (v19 >= 2.22044605e-16 && v21 >= 2.22044605e-16)
      {
        v36.origin.x = v9;
        v36.origin.y = v11;
        v36.size.width = v13;
        v36.size.height = v15;
        v22 = CGRectGetWidth(v36) / v19;
        v37.origin.x = v9;
        v37.origin.y = v11;
        v37.size.width = v13;
        v37.size.height = v15;
        v23 = CGRectGetHeight(v37) / v21;
        v24 = *(MEMORY[0x277CBF3A0] + 8);
        rect = *MEMORY[0x277CBF3A0];
        if (v22 >= v23)
        {
          v25 = floor(v19 * v23);
          v39.origin.x = v9;
          v39.origin.y = v11;
          v39.size.width = v13;
          v39.size.height = v15;
          v26 = CGRectGetHeight(v39);
        }

        else
        {
          v38.origin.x = v9;
          v38.origin.y = v11;
          v38.size.width = v13;
          v38.size.height = v15;
          v25 = CGRectGetWidth(v38);
          v26 = floor(v21 * v22);
        }

        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MidX = CGRectGetMidX(v40);
        v41.origin.x = rect;
        v41.origin.y = v24;
        v41.size.width = v25;
        v41.size.height = v26;
        v28 = floor(MidX - CGRectGetWidth(v41) * 0.5);
        v42.origin.x = v9;
        v42.origin.y = v11;
        v42.size.width = v13;
        v42.size.height = v15;
        MidY = CGRectGetMidY(v42);
        v43.origin.x = v28;
        v43.origin.y = v24;
        v43.size.width = v25;
        v43.size.height = v26;
        v11 = floor(MidY - CGRectGetHeight(v43) * 0.5);
        v15 = v26;
        v13 = v25;
        v9 = v28;
      }
    }
  }

  v30 = v9;
  v31 = v11;
  v32 = v13;
  v33 = v15;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (double)cornerRadiusForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ASCArtworkView *)self decoration];
  if ([v8 isEqualToString:@"none"])
  {
    goto LABEL_5;
  }

  v9 = [(ASCArtworkView *)self decoration];
  if ([v9 isEqualToString:@"circlePrerendered"])
  {
    v10 = [(ASCArtworkView *)self image];
    if (v10)
    {

LABEL_5:
      return 0.0;
    }
  }

  v12 = [(ASCArtworkView *)self decoration];
  if ([v12 isEqualToString:@"roundedRectPrerendered"])
  {
    v13 = [(ASCArtworkView *)self image];

    v11 = 0.0;
    if (v13)
    {
      return v11;
    }
  }

  else
  {
  }

  v14 = [(ASCArtworkView *)self decoration];
  if ([v14 isEqualToString:@"maskToCircle"])
  {

    goto LABEL_13;
  }

  v15 = [(ASCArtworkView *)self decoration];
  v16 = [v15 isEqualToString:@"circlePrerendered"];

  if (v16)
  {
LABEL_13:
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v17 = CGRectGetWidth(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v18 = CGRectGetHeight(v44);
    if (v17 < v18)
    {
      v18 = v17;
    }

    return v18 * 0.5;
  }

  v19 = [(ASCArtworkView *)self decoration];
  if ([v19 isEqualToString:@"roundedRect"])
  {
    goto LABEL_19;
  }

  v20 = [(ASCArtworkView *)self decoration];
  if ([v20 isEqualToString:@"roundedRectPrerendered"])
  {

LABEL_19:
LABEL_20:
    v21 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
    [v21 continuousCornerRadius];
    v23 = v22;
    [v21 size];
    v25 = v24;
    v27 = v26;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v28 = CGRectGetWidth(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    if (v28 <= CGRectGetWidth(v46))
    {
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v29 = CGRectGetHeight(v48) / v27;
    }

    else
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v29 = CGRectGetWidth(v47) / v25;
    }

    v11 = v23 * v29;

    return v11;
  }

  v31 = [(ASCArtworkView *)self decoration];
  v32 = [v31 isEqualToString:@"iap"];

  if (v32)
  {
    goto LABEL_20;
  }

  v33 = [(ASCArtworkView *)self decoration];
  v34 = [v33 isEqualToString:@"pill"];

  if (v34)
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v18 = CGRectGetHeight(v49);
    return v18 * 0.5;
  }

  v35 = [(ASCArtworkView *)self decoration];
  v36 = [v35 isEqualToString:@"tvRect"];

  if (v36)
  {
    v18 = floor(width * 0.095 + width * 0.095);
    return v18 * 0.5;
  }

  v37 = [(ASCArtworkView *)self decoration];
  v38 = [v37 isEqualToString:@"screenshot"];

  if (!v38)
  {
    v42 = [(ASCArtworkView *)self decoration];
    ASCUnknownEnumCase(@"ASCArtworkDecoration", v42);
  }

  v39 = [(ASCArtworkView *)self screenshotDisplayConfiguration];
  [v39 cornerRadiusForSize:{width, height}];
  v41 = v40;

  return v41;
}

- (id)cornerCurveForContentRect:(CGRect)a3
{
  v4 = [(ASCArtworkView *)self decoration:a3.origin.x];
  v5 = [v4 isEqualToString:@"maskToCircle"];

  if (v5)
  {
    v6 = MEMORY[0x277CDA130];
  }

  else
  {
    v7 = [(ASCArtworkView *)self decoration];
    v8 = [v7 isEqualToString:@"screenshot"];

    if (v8)
    {
      v9 = [(ASCArtworkView *)self screenshotDisplayConfiguration];
      v10 = [v9 cornerCurve];

      goto LABEL_7;
    }

    v6 = MEMORY[0x277CDA138];
  }

  v10 = *v6;
LABEL_7:

  return v10;
}

- (unint64_t)cornerMaskForContentRect:(CGRect)a3
{
  v4 = [(ASCArtworkView *)self decoration:a3.origin.x];
  v5 = [v4 isEqualToString:@"iap"];

  if (v5)
  {
    return 2;
  }

  v7 = [(ASCArtworkView *)self decoration];
  v8 = [v7 isEqualToString:@"screenshot"];

  if (!v8)
  {
    return 15;
  }

  v9 = [(ASCArtworkView *)self screenshotDisplayConfiguration];
  v10 = [v9 maskedCorners];

  return v10;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = ASCArtworkView;
  [(ASCArtworkView *)&v26 layoutSubviews];
  [(ASCArtworkView *)self bounds];
  [(ASCArtworkView *)self contentRectForBounds:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ASCArtworkView *)self cornerRadiusForContentRect:?];
  v12 = v11;
  v13 = [(ASCArtworkView *)self cornerCurveForContentRect:v4, v6, v8, v10];
  v14 = [(ASCArtworkView *)self cornerMaskForContentRect:v4, v6, v8, v10];
  v15 = [(ASCArtworkView *)self imageView];
  [v15 setFrame:{v4, v6, v8, v10}];

  v16 = [(ASCArtworkView *)self imageView];
  v17 = [v16 layer];
  [v17 setCornerRadius:v12];

  v18 = [(ASCArtworkView *)self imageView];
  v19 = [v18 layer];
  [v19 setCornerCurve:v13];

  v20 = [(ASCArtworkView *)self imageView];
  v21 = [v20 layer];
  [v21 setMaskedCorners:v14];

  v22 = [(ASCArtworkView *)self borderView];
  [v22 setFrame:{v4, v6, v8, v10}];

  v23 = [(ASCArtworkView *)self borderView];
  [v23 setCornerRadius:v12];

  v24 = [(ASCArtworkView *)self borderView];
  [v24 setCornerCurve:v13];

  v25 = [(ASCArtworkView *)self borderView];
  [v25 setCornerMask:v14];
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  [(ASCArtworkView *)self preferredSize];
  v6 = v5;
  [(ASCArtworkView *)self preferredSize];
  v8 = [v4 stringWithFormat:@"{%f, %f}", v6, v7];
  [(ASCDescriber *)v3 addObject:v8 withName:@"preferredSize"];

  v9 = [(ASCArtworkView *)self decoration];
  [(ASCDescriber *)v3 addObject:v9 withName:@"decoration"];

  v10 = [(ASCArtworkView *)self image];
  [(ASCDescriber *)v3 addObject:v10 withName:@"image"];

  v11 = [(ASCArtworkView *)self placeholderColor];
  [(ASCDescriber *)v3 addObject:v11 withName:@"placeholderColor"];

  v12 = [(ASCDescriber *)v3 finalizeDescription];

  return v12;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
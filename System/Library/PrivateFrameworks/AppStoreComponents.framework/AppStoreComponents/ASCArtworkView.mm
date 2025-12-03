@interface ASCArtworkView
- (ASCArtworkView)initWithCoder:(id)coder;
- (ASCArtworkView)initWithFrame:(CGRect)frame;
- (BOOL)isHighlighted;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImage)image;
- (double)cornerRadiusForContentRect:(CGRect)rect;
- (id)cornerCurveForContentRect:(CGRect)rect;
- (id)description;
- (unint64_t)cornerMaskForContentRect:(CGRect)rect;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setDataChanged;
- (void)setDecoration:(id)decoration;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setPlaceholderColor:(id)color;
- (void)setPreferredSize:(CGSize)size;
- (void)setScreenshotDisplayConfiguration:(id)configuration;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation ASCArtworkView

- (ASCArtworkView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = ASCArtworkView;
  v3 = [(ASCArtworkView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (ASCArtworkView)initWithCoder:(id)coder
{
  [(ASCArtworkView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setPreferredSize:(CGSize)size
{
  if (self->_preferredSize.width != size.width || self->_preferredSize.height != size.height)
  {
    v13 = v3;
    self->_preferredSize = size;
    if (size.width >= size.height)
    {
      size.width = size.height;
    }

    v11 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:-1 scale:{ceil(size.width * 0.5), v6, v5, v4, v13, v7}];
    imageView = [(ASCArtworkView *)self imageView];
    [imageView setPreferredSymbolConfiguration:v11];

    [(ASCArtworkView *)self invalidateIntrinsicContentSize];

    [(ASCArtworkView *)self setNeedsLayout];
  }
}

- (void)setDecoration:(id)decoration
{
  decorationCopy = decoration;
  if (![(NSString *)self->_decoration isEqualToString:?])
  {
    v4 = [decorationCopy copy];
    decoration = self->_decoration;
    self->_decoration = v4;

    [(ASCArtworkView *)self setDataChanged];
  }
}

- (void)setScreenshotDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  screenshotDisplayConfiguration = self->_screenshotDisplayConfiguration;
  v9 = configurationCopy;
  if (!configurationCopy || !screenshotDisplayConfiguration)
  {
    if (screenshotDisplayConfiguration == configurationCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(ASCScreenshotDisplayConfiguration *)screenshotDisplayConfiguration isEqual:configurationCopy];
  configurationCopy = v9;
  if (!v6)
  {
LABEL_6:
    v7 = [(ASCScreenshotDisplayConfiguration *)configurationCopy copy];
    v8 = self->_screenshotDisplayConfiguration;
    self->_screenshotDisplayConfiguration = v7;

    [(ASCArtworkView *)self setDataChanged];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (UIImage)image
{
  imageView = [(ASCArtworkView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if ([imageCopy _isSymbolImage])
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  imageView = [(ASCArtworkView *)self imageView];
  [imageView setContentMode:v5];

  imageView2 = [(ASCArtworkView *)self imageView];
  [imageView2 setImage:imageCopy];

  [(ASCArtworkView *)self setDataChanged];
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  v5 = self->_placeholderColor;
  if (!colorCopy || !v5)
  {

    if (v5 == colorCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(UIColor *)v5 isEqual:colorCopy];

  if ((v6 & 1) == 0)
  {
LABEL_6:
    objc_storeStrong(&self->_placeholderColor, color);
    [(ASCArtworkView *)self setDataChanged];
  }

LABEL_7:
}

- (BOOL)isHighlighted
{
  imageView = [(ASCArtworkView *)self imageView];
  isHighlighted = [imageView isHighlighted];

  return isHighlighted;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  imageView = [(ASCArtworkView *)self imageView];
  [imageView setHighlighted:highlightedCopy];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v7.receiver = self;
  v7.super_class = ASCArtworkView;
  [(ASCArtworkView *)&v7 setSemanticContentAttribute:?];
  imageView = [(ASCArtworkView *)self imageView];
  [imageView setSemanticContentAttribute:attribute];

  borderView = [(ASCArtworkView *)self borderView];
  [borderView setSemanticContentAttribute:attribute];
}

- (void)setDataChanged
{
  HasBorder = ASCArtworkDecorationHasBorder(self->_decoration);
  image = [(ASCArtworkView *)self image];
  if (image)
  {
    image2 = [(ASCArtworkView *)self image];
    v6 = [image2 _isSymbolImage] | HasBorder ^ 1;
  }

  else
  {
    v6 = 1;
  }

  borderView = [(ASCArtworkView *)self borderView];
  [borderView setHidden:v6 & 1];

  placeholderColor = [(ASCArtworkView *)self placeholderColor];
  if (placeholderColor)
  {
    image3 = [(ASCArtworkView *)self image];
    if (image3)
    {
      image4 = [(ASCArtworkView *)self image];
      _isSymbolImage = [image4 _isSymbolImage];

      v12 = _isSymbolImage ^ 1;
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
    imageView = [(ASCArtworkView *)self imageView];
    [imageView setBackgroundColor:0];
  }

  else
  {
    imageView = [(ASCArtworkView *)self placeholderColor];
    imageView2 = [(ASCArtworkView *)self imageView];
    [imageView2 setBackgroundColor:imageView];
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
    superview = [(ASCArtworkView *)self superview];
    [superview invalidateIntrinsicContentSize];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  image = [(ASCArtworkView *)self image];
  if (image)
  {

    goto LABEL_3;
  }

  decoration = [(ASCArtworkView *)self decoration];
  if ([decoration isEqualToString:@"none"])
  {

LABEL_19:
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_21;
  }

  placeholderColor = [(ASCArtworkView *)self placeholderColor];

  if (!placeholderColor)
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

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
    image = [(ASCArtworkView *)self image];

    if (image)
    {
      image2 = [(ASCArtworkView *)self image];
      [image2 size];
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

- (double)cornerRadiusForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  decoration = [(ASCArtworkView *)self decoration];
  if ([decoration isEqualToString:@"none"])
  {
    goto LABEL_5;
  }

  decoration2 = [(ASCArtworkView *)self decoration];
  if ([decoration2 isEqualToString:@"circlePrerendered"])
  {
    image = [(ASCArtworkView *)self image];
    if (image)
    {

LABEL_5:
      return 0.0;
    }
  }

  decoration3 = [(ASCArtworkView *)self decoration];
  if ([decoration3 isEqualToString:@"roundedRectPrerendered"])
  {
    image2 = [(ASCArtworkView *)self image];

    v11 = 0.0;
    if (image2)
    {
      return v11;
    }
  }

  else
  {
  }

  decoration4 = [(ASCArtworkView *)self decoration];
  if ([decoration4 isEqualToString:@"maskToCircle"])
  {

    goto LABEL_13;
  }

  decoration5 = [(ASCArtworkView *)self decoration];
  v16 = [decoration5 isEqualToString:@"circlePrerendered"];

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

  decoration6 = [(ASCArtworkView *)self decoration];
  if ([decoration6 isEqualToString:@"roundedRect"])
  {
    goto LABEL_19;
  }

  decoration7 = [(ASCArtworkView *)self decoration];
  if ([decoration7 isEqualToString:@"roundedRectPrerendered"])
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

  decoration8 = [(ASCArtworkView *)self decoration];
  v32 = [decoration8 isEqualToString:@"iap"];

  if (v32)
  {
    goto LABEL_20;
  }

  decoration9 = [(ASCArtworkView *)self decoration];
  v34 = [decoration9 isEqualToString:@"pill"];

  if (v34)
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v18 = CGRectGetHeight(v49);
    return v18 * 0.5;
  }

  decoration10 = [(ASCArtworkView *)self decoration];
  v36 = [decoration10 isEqualToString:@"tvRect"];

  if (v36)
  {
    v18 = floor(width * 0.095 + width * 0.095);
    return v18 * 0.5;
  }

  decoration11 = [(ASCArtworkView *)self decoration];
  v38 = [decoration11 isEqualToString:@"screenshot"];

  if (!v38)
  {
    decoration12 = [(ASCArtworkView *)self decoration];
    ASCUnknownEnumCase(@"ASCArtworkDecoration", decoration12);
  }

  screenshotDisplayConfiguration = [(ASCArtworkView *)self screenshotDisplayConfiguration];
  [screenshotDisplayConfiguration cornerRadiusForSize:{width, height}];
  v41 = v40;

  return v41;
}

- (id)cornerCurveForContentRect:(CGRect)rect
{
  v4 = [(ASCArtworkView *)self decoration:rect.origin.x];
  v5 = [v4 isEqualToString:@"maskToCircle"];

  if (v5)
  {
    v6 = MEMORY[0x277CDA130];
  }

  else
  {
    decoration = [(ASCArtworkView *)self decoration];
    v8 = [decoration isEqualToString:@"screenshot"];

    if (v8)
    {
      screenshotDisplayConfiguration = [(ASCArtworkView *)self screenshotDisplayConfiguration];
      cornerCurve = [screenshotDisplayConfiguration cornerCurve];

      goto LABEL_7;
    }

    v6 = MEMORY[0x277CDA138];
  }

  cornerCurve = *v6;
LABEL_7:

  return cornerCurve;
}

- (unint64_t)cornerMaskForContentRect:(CGRect)rect
{
  v4 = [(ASCArtworkView *)self decoration:rect.origin.x];
  v5 = [v4 isEqualToString:@"iap"];

  if (v5)
  {
    return 2;
  }

  decoration = [(ASCArtworkView *)self decoration];
  v8 = [decoration isEqualToString:@"screenshot"];

  if (!v8)
  {
    return 15;
  }

  screenshotDisplayConfiguration = [(ASCArtworkView *)self screenshotDisplayConfiguration];
  maskedCorners = [screenshotDisplayConfiguration maskedCorners];

  return maskedCorners;
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
  imageView = [(ASCArtworkView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];

  imageView2 = [(ASCArtworkView *)self imageView];
  layer = [imageView2 layer];
  [layer setCornerRadius:v12];

  imageView3 = [(ASCArtworkView *)self imageView];
  layer2 = [imageView3 layer];
  [layer2 setCornerCurve:v13];

  imageView4 = [(ASCArtworkView *)self imageView];
  layer3 = [imageView4 layer];
  [layer3 setMaskedCorners:v14];

  borderView = [(ASCArtworkView *)self borderView];
  [borderView setFrame:{v4, v6, v8, v10}];

  borderView2 = [(ASCArtworkView *)self borderView];
  [borderView2 setCornerRadius:v12];

  borderView3 = [(ASCArtworkView *)self borderView];
  [borderView3 setCornerCurve:v13];

  borderView4 = [(ASCArtworkView *)self borderView];
  [borderView4 setCornerMask:v14];
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

  decoration = [(ASCArtworkView *)self decoration];
  [(ASCDescriber *)v3 addObject:decoration withName:@"decoration"];

  image = [(ASCArtworkView *)self image];
  [(ASCDescriber *)v3 addObject:image withName:@"image"];

  placeholderColor = [(ASCArtworkView *)self placeholderColor];
  [(ASCDescriber *)v3 addObject:placeholderColor withName:@"placeholderColor"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
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
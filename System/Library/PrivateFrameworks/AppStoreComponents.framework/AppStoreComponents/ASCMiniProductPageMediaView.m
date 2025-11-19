@interface ASCMiniProductPageMediaView
- (ASCMiniProductPageMediaView)initWithCoder:(id)a3;
- (ASCMiniProductPageMediaView)initWithFrame:(CGRect)a3;
- (BOOL)shouldPeekNextScreenshot;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredScreenshotSize;
- (CGSize)screenshotSizeForBoundingSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)firstScreenshotVerticalFraction;
- (double)widthOfScreenshotCount:(unint64_t)a3;
- (id)preferredScreenshotDisplayConfiguration;
- (unint64_t)actualScreenshotCount;
- (unint64_t)preferredScreenshotCount;
- (void)layoutSubviews;
- (void)setImage:(id)a3 atIndex:(int64_t)a4;
- (void)setPlaceholderColor:(id)a3;
- (void)setScreenshots:(id)a3 andTrailers:(id)a4;
- (void)setShowsPlaceholderContent:(BOOL)a3;
- (void)updateImageViews;
@end

@implementation ASCMiniProductPageMediaView

- (ASCMiniProductPageMediaView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ASCMiniProductPageMediaView;
  v3 = [(ASCMiniProductPageMediaView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    imageViews = v3->_imageViews;
    v3->_imageViews = v4;

    [(ASCMiniProductPageMediaView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v3;
}

- (ASCMiniProductPageMediaView)initWithCoder:(id)a3
{
  [(ASCMiniProductPageMediaView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setImage:(id)a3 atIndex:(int64_t)a4
{
  v10 = a3;
  v6 = [(ASCMiniProductPageMediaView *)self imageViews];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = [(ASCMiniProductPageMediaView *)self imageViews];
    v9 = [v8 objectAtIndexedSubscript:a4];
    [v9 setImage:v10];
  }
}

- (void)setScreenshots:(id)a3 andTrailers:(id)a4
{
  v8 = a3;
  v6 = a4;
  screenshots = self->_screenshots;
  if (!v8 || !screenshots)
  {
    if (screenshots == v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (![(ASCScreenshots *)screenshots isEqual:v8])
  {
LABEL_6:
    [(ASCMiniProductPageMediaView *)self setScreenshots:v8];
    [(ASCMiniProductPageMediaView *)self updateImageViews];
    [(ASCMiniProductPageMediaView *)self invalidateIntrinsicContentSize];
    [(ASCMiniProductPageMediaView *)self setNeedsLayout];
  }

LABEL_7:
}

- (void)setShowsPlaceholderContent:(BOOL)a3
{
  if (self->_showsPlaceholderContent != a3)
  {
    self->_showsPlaceholderContent = a3;
    [(ASCMiniProductPageMediaView *)self updateImageViews];
    [(ASCMiniProductPageMediaView *)self invalidateIntrinsicContentSize];

    [(ASCMiniProductPageMediaView *)self setNeedsLayout];
  }
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
    [(ASCMiniProductPageMediaView *)self updateImageViews];
    [(ASCMiniProductPageMediaView *)self invalidateIntrinsicContentSize];
    [(ASCMiniProductPageMediaView *)self setNeedsLayout];
  }

LABEL_7:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(ASCMiniProductPageMediaView *)self screenshotSizeForBoundingSize:a3.width, a3.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(ASCMiniProductPageMediaView *)self bounds];

  [(ASCMiniProductPageMediaView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = ASCMiniProductPageMediaView;
  [(ASCMiniProductPageMediaView *)&v31 layoutSubviews];
  [(ASCMiniProductPageMediaView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ASCMiniProductPageMediaView *)self preferredScreenshotSize];
  v12 = v11;
  v14 = v13;
  v15 = [(ASCMiniProductPageMediaView *)self actualScreenshotCount];
  v16 = v4;
  if (v15 < [(ASCMiniProductPageMediaView *)self preferredScreenshotCount])
  {
    [(ASCMiniProductPageMediaView *)self widthOfScreenshotCount:[(ASCMiniProductPageMediaView *)self actualScreenshotCount]];
    v18 = v17;
    [(ASCMiniProductPageMediaView *)self bounds];
    v16 = (v19 - v18) * 0.5;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [(ASCMiniProductPageMediaView *)self imageViews];
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        [__ASCLayoutProxy rectWithLayoutDirectionForRect:self inTraitEnvironment:v16 relativeTo:v6, v12, v14, v4, v6, v8, v10];
        [v25 setFrame:?];
        [(ASCMiniProductPageMediaView *)self screenshotSpacing];
        v16 = v12 + v16 + v26;
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }
}

- (unint64_t)preferredScreenshotCount
{
  v3 = [(ASCMiniProductPageMediaView *)self screenshots];
  v4 = [v3 artwork];
  v5 = [v4 firstObject];

  if (v5)
  {
    if ([v5 isPortrait])
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  else if ([(ASCMiniProductPageMediaView *)self showsPlaceholderContent])
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)actualScreenshotCount
{
  v3 = [(ASCMiniProductPageMediaView *)self screenshots];
  if (v3)
  {

    goto LABEL_7;
  }

  if (![(ASCMiniProductPageMediaView *)self showsPlaceholderContent])
  {
LABEL_7:
    v5 = [(ASCMiniProductPageMediaView *)self screenshots];
    v6 = [v5 artwork];
    v7 = [v6 count];

    result = [(ASCMiniProductPageMediaView *)self preferredScreenshotCount];
    if (v7 < result)
    {
      return v7;
    }

    return result;
  }

  return [(ASCMiniProductPageMediaView *)self preferredScreenshotCount];
}

- (BOOL)shouldPeekNextScreenshot
{
  v9 = self;
  v2 = [(ASCMiniProductPageMediaView *)self screenshots];
  v3 = [v2 artwork];
  v4 = [v3 firstObject];

  v5 = [(ASCMiniProductPageMediaView *)v9 screenshots];
  v6 = [v5 artwork];
  v7 = [v6 count];
  v8 = [(ASCMiniProductPageMediaView *)v9 actualScreenshotCount];

  LOBYTE(v9) = 0;
  if (v7 > v8 && v4)
  {
    LODWORD(v9) = [v4 isPortrait] ^ 1;
  }

  return v9;
}

- (CGSize)preferredScreenshotSize
{
  [(ASCMiniProductPageMediaView *)self bounds];

  [(ASCMiniProductPageMediaView *)self screenshotSizeForBoundingSize:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)screenshotSizeForBoundingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(ASCMiniProductPageMediaView *)self firstScreenshotVerticalFraction];
  v7 = v6;
  v8 = [(ASCMiniProductPageMediaView *)self preferredScreenshotCount];
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  if ((height != v10 || width != v9) && v7 > 2.22044605e-16 && v8 != 0)
  {
    v14 = v8;
    [(ASCMiniProductPageMediaView *)self screenshotSpacing];
    v16 = (width - v15 * (v14 - 1)) / v14;
    v17 = v7 * v16;
    v9 = ceil(v16);
    v10 = ceil(v17);
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (double)firstScreenshotVerticalFraction
{
  v3 = [(ASCMiniProductPageMediaView *)self screenshots];
  v4 = [v3 artwork];
  v5 = [v4 firstObject];

  if (v5)
  {
    [v5 height];
    v7 = v6;
    [v5 width];
    v9 = v7 / v8;
  }

  else
  {
    v10 = [(ASCMiniProductPageMediaView *)self window];
    v11 = [v10 windowScene];
    v12 = [v11 screen];

    if (v12)
    {
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v17 = [MEMORY[0x277D75418] currentDevice];
      v18 = [v17 userInterfaceIdiom];

      if (v18)
      {
        if (v14 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v14;
        }

        if (v14 >= v16)
        {
          v20 = v14;
        }

        else
        {
          v20 = v16;
        }
      }

      else
      {
        if (v14 >= v16)
        {
          v19 = v14;
        }

        else
        {
          v19 = v16;
        }

        if (v14 >= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v14;
        }
      }

      v9 = v19 / v20;
    }

    else
    {
      v9 = 0.0;
    }
  }

  return v9;
}

- (id)preferredScreenshotDisplayConfiguration
{
  v3 = [(ASCMiniProductPageMediaView *)self screenshots];

  if (v3)
  {
    v4 = [(ASCMiniProductPageMediaView *)self screenshots];
    v5 = [v4 mediaPlatform];
    v6 = [v5 deviceCornerRadiusFactor];

    v7 = [[ASCScreenshotDisplayConfiguration alloc] initWithDeviceCornerRadiusFactor:v6];
  }

  else
  {
    v7 = +[ASCScreenshotDisplayConfiguration defaultConfiguration];
  }

  return v7;
}

- (double)widthOfScreenshotCount:(unint64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  [(ASCMiniProductPageMediaView *)self preferredScreenshotSize];
  v6 = v5 * a3;
  [(ASCMiniProductPageMediaView *)self screenshotSpacing];
  return v6 + v7 * (a3 - 1);
}

- (void)updateImageViews
{
  v3 = [(ASCMiniProductPageMediaView *)self shouldPeekNextScreenshot];
  v4 = [(ASCMiniProductPageMediaView *)self actualScreenshotCount]+ v3;
  v38 = [(ASCMiniProductPageMediaView *)self preferredScreenshotDisplayConfiguration];
  v5 = [(ASCMiniProductPageMediaView *)self imageViews];
  v6 = [v5 count];

  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [(ASCMiniProductPageMediaView *)self screenshots];

      if (!v9)
      {
        v10 = [(ASCMiniProductPageMediaView *)self imageViews];
        v11 = [v10 objectAtIndexedSubscript:v8];
        [v11 setImage:0];
      }

      v12 = [(ASCMiniProductPageMediaView *)self imageViews];
      v13 = [v12 objectAtIndexedSubscript:v8];
      [v13 setScreenshotDisplayConfiguration:v38];

      v14 = [(ASCMiniProductPageMediaView *)self placeholderColor];
      v15 = [(ASCMiniProductPageMediaView *)self imageViews];
      v16 = [v15 objectAtIndexedSubscript:v8];
      [v16 setPlaceholderColor:v14];

      ++v8;
      v17 = [(ASCMiniProductPageMediaView *)self imageViews];
      v18 = [v17 count];

      if (v18 >= v4)
      {
        v19 = v4;
      }

      else
      {
        v19 = v18;
      }
    }

    while (v19 > v8);
  }

  v20 = [(ASCMiniProductPageMediaView *)self imageViews];
  v21 = [v20 count];

  if (v21 != v4)
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
    v26 = *MEMORY[0x277D76560];
    do
    {
      v27 = [(ASCMiniProductPageMediaView *)self imageViews];
      v28 = [v27 count];

      if (v28 >= v4)
      {
        v34 = [(ASCMiniProductPageMediaView *)self imageViews];
        v29 = [v34 lastObject];

        if (v29)
        {
          v35 = [(ASCMiniProductPageMediaView *)self imageViews];
          [v35 removeLastObject];

          [(ASCArtworkView *)v29 removeFromSuperview];
        }
      }

      else
      {
        v29 = [[ASCArtworkView alloc] initWithFrame:v22, v23, v24, v25];
        [(ASCArtworkView *)v29 setScreenshotDisplayConfiguration:v38];
        [(ASCArtworkView *)v29 setDecoration:@"screenshot"];
        v30 = [(ASCMiniProductPageMediaView *)self placeholderColor];
        [(ASCArtworkView *)v29 setPlaceholderColor:v30];

        [(ASCArtworkView *)v29 setUserInteractionEnabled:0];
        [(ASCArtworkView *)v29 setIsAccessibilityElement:1];
        [(ASCArtworkView *)v29 setAccessibilityTraits:v26];
        v32 = ASCLocalizedString(@"AX_ARTWORK", v31);
        [(ASCArtworkView *)v29 setAccessibilityLabel:v32];

        v33 = [(ASCMiniProductPageMediaView *)self imageViews];
        [v33 addObject:v29];

        [(ASCMiniProductPageMediaView *)self addSubview:v29];
      }

      v36 = [(ASCMiniProductPageMediaView *)self imageViews];
      v37 = [v36 count];
    }

    while (v37 != v4);
  }
}

@end
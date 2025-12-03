@interface ASCMiniProductPageMediaView
- (ASCMiniProductPageMediaView)initWithCoder:(id)coder;
- (ASCMiniProductPageMediaView)initWithFrame:(CGRect)frame;
- (BOOL)shouldPeekNextScreenshot;
- (CGSize)intrinsicContentSize;
- (CGSize)preferredScreenshotSize;
- (CGSize)screenshotSizeForBoundingSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)firstScreenshotVerticalFraction;
- (double)widthOfScreenshotCount:(unint64_t)count;
- (id)preferredScreenshotDisplayConfiguration;
- (unint64_t)actualScreenshotCount;
- (unint64_t)preferredScreenshotCount;
- (void)layoutSubviews;
- (void)setImage:(id)image atIndex:(int64_t)index;
- (void)setPlaceholderColor:(id)color;
- (void)setScreenshots:(id)screenshots andTrailers:(id)trailers;
- (void)setShowsPlaceholderContent:(BOOL)content;
- (void)updateImageViews;
@end

@implementation ASCMiniProductPageMediaView

- (ASCMiniProductPageMediaView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ASCMiniProductPageMediaView;
  v3 = [(ASCMiniProductPageMediaView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    imageViews = v3->_imageViews;
    v3->_imageViews = v4;

    [(ASCMiniProductPageMediaView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v3;
}

- (ASCMiniProductPageMediaView)initWithCoder:(id)coder
{
  [(ASCMiniProductPageMediaView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setImage:(id)image atIndex:(int64_t)index
{
  imageCopy = image;
  imageViews = [(ASCMiniProductPageMediaView *)self imageViews];
  v7 = [imageViews count];

  if (v7 > index)
  {
    imageViews2 = [(ASCMiniProductPageMediaView *)self imageViews];
    v9 = [imageViews2 objectAtIndexedSubscript:index];
    [v9 setImage:imageCopy];
  }
}

- (void)setScreenshots:(id)screenshots andTrailers:(id)trailers
{
  screenshotsCopy = screenshots;
  trailersCopy = trailers;
  screenshots = self->_screenshots;
  if (!screenshotsCopy || !screenshots)
  {
    if (screenshots == screenshotsCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (![(ASCScreenshots *)screenshots isEqual:screenshotsCopy])
  {
LABEL_6:
    [(ASCMiniProductPageMediaView *)self setScreenshots:screenshotsCopy];
    [(ASCMiniProductPageMediaView *)self updateImageViews];
    [(ASCMiniProductPageMediaView *)self invalidateIntrinsicContentSize];
    [(ASCMiniProductPageMediaView *)self setNeedsLayout];
  }

LABEL_7:
}

- (void)setShowsPlaceholderContent:(BOOL)content
{
  if (self->_showsPlaceholderContent != content)
  {
    self->_showsPlaceholderContent = content;
    [(ASCMiniProductPageMediaView *)self updateImageViews];
    [(ASCMiniProductPageMediaView *)self invalidateIntrinsicContentSize];

    [(ASCMiniProductPageMediaView *)self setNeedsLayout];
  }
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
    [(ASCMiniProductPageMediaView *)self updateImageViews];
    [(ASCMiniProductPageMediaView *)self invalidateIntrinsicContentSize];
    [(ASCMiniProductPageMediaView *)self setNeedsLayout];
  }

LABEL_7:
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(ASCMiniProductPageMediaView *)self screenshotSizeForBoundingSize:fits.width, fits.height];
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
  actualScreenshotCount = [(ASCMiniProductPageMediaView *)self actualScreenshotCount];
  v16 = v4;
  if (actualScreenshotCount < [(ASCMiniProductPageMediaView *)self preferredScreenshotCount])
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
  imageViews = [(ASCMiniProductPageMediaView *)self imageViews];
  v21 = [imageViews countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(imageViews);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        [__ASCLayoutProxy rectWithLayoutDirectionForRect:self inTraitEnvironment:v16 relativeTo:v6, v12, v14, v4, v6, v8, v10];
        [v25 setFrame:?];
        [(ASCMiniProductPageMediaView *)self screenshotSpacing];
        v16 = v12 + v16 + v26;
        ++v24;
      }

      while (v22 != v24);
      v22 = [imageViews countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }
}

- (unint64_t)preferredScreenshotCount
{
  screenshots = [(ASCMiniProductPageMediaView *)self screenshots];
  artwork = [screenshots artwork];
  firstObject = [artwork firstObject];

  if (firstObject)
  {
    if ([firstObject isPortrait])
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
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
  screenshots = [(ASCMiniProductPageMediaView *)self screenshots];
  if (screenshots)
  {

    goto LABEL_7;
  }

  if (![(ASCMiniProductPageMediaView *)self showsPlaceholderContent])
  {
LABEL_7:
    screenshots2 = [(ASCMiniProductPageMediaView *)self screenshots];
    artwork = [screenshots2 artwork];
    v7 = [artwork count];

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
  selfCopy = self;
  screenshots = [(ASCMiniProductPageMediaView *)self screenshots];
  artwork = [screenshots artwork];
  firstObject = [artwork firstObject];

  screenshots2 = [(ASCMiniProductPageMediaView *)selfCopy screenshots];
  artwork2 = [screenshots2 artwork];
  v7 = [artwork2 count];
  actualScreenshotCount = [(ASCMiniProductPageMediaView *)selfCopy actualScreenshotCount];

  LOBYTE(selfCopy) = 0;
  if (v7 > actualScreenshotCount && firstObject)
  {
    LODWORD(selfCopy) = [firstObject isPortrait] ^ 1;
  }

  return selfCopy;
}

- (CGSize)preferredScreenshotSize
{
  [(ASCMiniProductPageMediaView *)self bounds];

  [(ASCMiniProductPageMediaView *)self screenshotSizeForBoundingSize:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)screenshotSizeForBoundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(ASCMiniProductPageMediaView *)self firstScreenshotVerticalFraction];
  v7 = v6;
  preferredScreenshotCount = [(ASCMiniProductPageMediaView *)self preferredScreenshotCount];
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  if ((height != v10 || width != v9) && v7 > 2.22044605e-16 && preferredScreenshotCount != 0)
  {
    v14 = preferredScreenshotCount;
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
  screenshots = [(ASCMiniProductPageMediaView *)self screenshots];
  artwork = [screenshots artwork];
  firstObject = [artwork firstObject];

  if (firstObject)
  {
    [firstObject height];
    v7 = v6;
    [firstObject width];
    v9 = v7 / v8;
  }

  else
  {
    window = [(ASCMiniProductPageMediaView *)self window];
    windowScene = [window windowScene];
    screen = [windowScene screen];

    if (screen)
    {
      [screen bounds];
      v14 = v13;
      v16 = v15;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
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
  screenshots = [(ASCMiniProductPageMediaView *)self screenshots];

  if (screenshots)
  {
    screenshots2 = [(ASCMiniProductPageMediaView *)self screenshots];
    mediaPlatform = [screenshots2 mediaPlatform];
    deviceCornerRadiusFactor = [mediaPlatform deviceCornerRadiusFactor];

    v7 = [[ASCScreenshotDisplayConfiguration alloc] initWithDeviceCornerRadiusFactor:deviceCornerRadiusFactor];
  }

  else
  {
    v7 = +[ASCScreenshotDisplayConfiguration defaultConfiguration];
  }

  return v7;
}

- (double)widthOfScreenshotCount:(unint64_t)count
{
  if (!count)
  {
    return 0.0;
  }

  [(ASCMiniProductPageMediaView *)self preferredScreenshotSize];
  v6 = v5 * count;
  [(ASCMiniProductPageMediaView *)self screenshotSpacing];
  return v6 + v7 * (count - 1);
}

- (void)updateImageViews
{
  shouldPeekNextScreenshot = [(ASCMiniProductPageMediaView *)self shouldPeekNextScreenshot];
  v4 = [(ASCMiniProductPageMediaView *)self actualScreenshotCount]+ shouldPeekNextScreenshot;
  preferredScreenshotDisplayConfiguration = [(ASCMiniProductPageMediaView *)self preferredScreenshotDisplayConfiguration];
  imageViews = [(ASCMiniProductPageMediaView *)self imageViews];
  v6 = [imageViews count];

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
      screenshots = [(ASCMiniProductPageMediaView *)self screenshots];

      if (!screenshots)
      {
        imageViews2 = [(ASCMiniProductPageMediaView *)self imageViews];
        v11 = [imageViews2 objectAtIndexedSubscript:v8];
        [v11 setImage:0];
      }

      imageViews3 = [(ASCMiniProductPageMediaView *)self imageViews];
      v13 = [imageViews3 objectAtIndexedSubscript:v8];
      [v13 setScreenshotDisplayConfiguration:preferredScreenshotDisplayConfiguration];

      placeholderColor = [(ASCMiniProductPageMediaView *)self placeholderColor];
      imageViews4 = [(ASCMiniProductPageMediaView *)self imageViews];
      v16 = [imageViews4 objectAtIndexedSubscript:v8];
      [v16 setPlaceholderColor:placeholderColor];

      ++v8;
      imageViews5 = [(ASCMiniProductPageMediaView *)self imageViews];
      v18 = [imageViews5 count];

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

  imageViews6 = [(ASCMiniProductPageMediaView *)self imageViews];
  v21 = [imageViews6 count];

  if (v21 != v4)
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
    v26 = *MEMORY[0x277D76560];
    do
    {
      imageViews7 = [(ASCMiniProductPageMediaView *)self imageViews];
      v28 = [imageViews7 count];

      if (v28 >= v4)
      {
        imageViews8 = [(ASCMiniProductPageMediaView *)self imageViews];
        lastObject = [imageViews8 lastObject];

        if (lastObject)
        {
          imageViews9 = [(ASCMiniProductPageMediaView *)self imageViews];
          [imageViews9 removeLastObject];

          [(ASCArtworkView *)lastObject removeFromSuperview];
        }
      }

      else
      {
        lastObject = [[ASCArtworkView alloc] initWithFrame:v22, v23, v24, v25];
        [(ASCArtworkView *)lastObject setScreenshotDisplayConfiguration:preferredScreenshotDisplayConfiguration];
        [(ASCArtworkView *)lastObject setDecoration:@"screenshot"];
        placeholderColor2 = [(ASCMiniProductPageMediaView *)self placeholderColor];
        [(ASCArtworkView *)lastObject setPlaceholderColor:placeholderColor2];

        [(ASCArtworkView *)lastObject setUserInteractionEnabled:0];
        [(ASCArtworkView *)lastObject setIsAccessibilityElement:1];
        [(ASCArtworkView *)lastObject setAccessibilityTraits:v26];
        v32 = ASCLocalizedString(@"AX_ARTWORK", v31);
        [(ASCArtworkView *)lastObject setAccessibilityLabel:v32];

        imageViews10 = [(ASCMiniProductPageMediaView *)self imageViews];
        [imageViews10 addObject:lastObject];

        [(ASCMiniProductPageMediaView *)self addSubview:lastObject];
      }

      imageViews11 = [(ASCMiniProductPageMediaView *)self imageViews];
      v37 = [imageViews11 count];
    }

    while (v37 != v4);
  }
}

@end
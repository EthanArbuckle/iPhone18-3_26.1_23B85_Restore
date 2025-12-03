@interface PDFRenderingProperties
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (PDFRenderingProperties)init;
- (PDFView)pdfView;
- (UIColor)pageBackgroundColor;
- (double)adjustedPageCornerRadiusForPageSize:(CGSize)size magnification:(double)magnification;
- (double)pageCornerRadius;
- (id)resolvedColor:(id)color;
- (void)_notifyPropertyChanged:(int64_t)changed;
- (void)dealloc;
- (void)setAllowsDarkMode:(BOOL)mode;
- (void)setDeviceColorSpace:(CGColorSpace *)space;
- (void)setDisplayBox:(int64_t)box;
- (void)setEnablePageShadows:(BOOL)shadows;
- (void)setGreekingThreshold:(double)threshold;
- (void)setInterpolationQuality:(int64_t)quality;
- (void)setLineWidthThreshold:(double)threshold;
- (void)setPageColor:(id)color;
- (void)setShouldAntiAlias:(BOOL)alias;
- (void)setTraitCollection:(id)collection;
@end

@implementation PDFRenderingProperties

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___PDFRenderingProperties;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  v5 = [keyCopy isEqualToString:{@"darkMode", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [v4 setByAddingObjectsFromArray:&unk_1F4183F10];

    v4 = v6;
  }

  return v4;
}

- (PDFRenderingProperties)init
{
  v5.receiver = self;
  v5.super_class = PDFRenderingProperties;
  v2 = [(PDFRenderingProperties *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_pdfView, 0);
    v3->_displayBox = 1;
    v3->_shouldAntiAlias = 1;
    v3->_greekingThreshold = 0.0;
    v3->_interpolationQuality = 2;
    v3->_lineWidthThreshold = 0.75;
    *&v3->_enableRoundPageCorners = 256;
    v3->_enableTileEdgeColoring = GetDefaultsWriteColorWidgetBackgrounds();
    v3->_enableAccessibilityDrawing = GetDefaultsWriteDrawAccessibility();
    *&v3->_enableTileUpdates = 257;
    v3->_isUsingPDFExtensionView = 0;
    v3->_deviceColorSpace = 0;
  }

  return v3;
}

- (void)dealloc
{
  deviceColorSpace = self->_deviceColorSpace;
  if (deviceColorSpace)
  {
    CGColorSpaceRelease(deviceColorSpace);
  }

  v4.receiver = self;
  v4.super_class = PDFRenderingProperties;
  [(PDFRenderingProperties *)&v4 dealloc];
}

- (PDFView)pdfView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (void)setDisplayBox:(int64_t)box
{
  if (box < 5)
  {
    if (self->_displayBox != box)
    {
      self->_displayBox = box;

      [(PDFRenderingProperties *)self _notifyPropertyChanged:0];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setDisplayBox: %ld out of bounds", box}];
  }
}

- (void)setShouldAntiAlias:(BOOL)alias
{
  if (self->_shouldAntiAlias != alias)
  {
    self->_shouldAntiAlias = alias;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:1];
  }
}

- (void)setGreekingThreshold:(double)threshold
{
  if (self->_greekingThreshold != threshold)
  {
    self->_greekingThreshold = threshold;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:2];
  }
}

- (void)setInterpolationQuality:(int64_t)quality
{
  if (quality < 3)
  {
    if (self->_interpolationQuality != quality)
    {
      self->_interpolationQuality = quality;
      [(PDFRenderingProperties *)self _notifyPropertyChanged:4];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:@"setInterpolationQuality: illegal value passed in"];
  }
}

- (void)setLineWidthThreshold:(double)threshold
{
  if (self->_lineWidthThreshold != threshold)
  {
    self->_lineWidthThreshold = threshold;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:3];
  }
}

- (void)setPageColor:(id)color
{
  colorCopy = color;
  p_pageColor = &self->_pageColor;
  if (self->_pageColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(p_pageColor, color);
    p_pageColor = [(PDFRenderingProperties *)self _notifyPropertyChanged:5];
    colorCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_pageColor, colorCopy);
}

- (void)setAllowsDarkMode:(BOOL)mode
{
  if (self->_allowsDarkMode != mode)
  {
    self->_allowsDarkMode = mode;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:7];
  }
}

- (UIColor)pageBackgroundColor
{
  pageColor = [(PDFRenderingProperties *)self pageColor];

  if (pageColor)
  {
    pageColor2 = [(PDFRenderingProperties *)self pageColor];
  }

  else if ([(PDFRenderingProperties *)self isDarkMode])
  {
    darkModePageBackgroundColor = self->_darkModePageBackgroundColor;
    if (!darkModePageBackgroundColor)
    {
      darkModePageBackgroundColor = self->_pageBackgroundColor;
    }

    pageColor2 = darkModePageBackgroundColor;
  }

  else
  {
    pageColor2 = [MEMORY[0x1E69DC888] whiteColor];
  }

  return pageColor2;
}

- (void)setEnablePageShadows:(BOOL)shadows
{
  if (self->_enablePageShadows != shadows)
  {
    self->_enablePageShadows = shadows;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:6];
  }
}

- (double)pageCornerRadius
{
  v2 = 0.0;
  if (self->_enableRoundPageCorners && [objc_opt_class() isSolariumEnabled])
  {
    if ([(UITraitCollection *)self->_traitCollection horizontalSizeClass]== UIUserInterfaceSizeClassRegular)
    {
      return 16.0;
    }

    else
    {
      return 10.0;
    }
  }

  return v2;
}

- (double)adjustedPageCornerRadiusForPageSize:(CGSize)size magnification:(double)magnification
{
  height = size.height;
  width = size.width;
  [(PDFRenderingProperties *)self pageCornerRadius];
  result = v7 / magnification;
  v9 = fmin(width, height) * magnification;
  if (v9 < 80.0)
  {
    return (1.0 - (80.0 - v9) / 80.0) * result;
  }

  return result;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_traitCollection != collectionCopy)
  {
    v9 = collectionCopy;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v7 = [systemBackgroundColor resolvedColorWithTraitCollection:v9];
    pageBackgroundColor = self->_pageBackgroundColor;
    self->_pageBackgroundColor = v7;

    self->_darkMode = [(UITraitCollection *)v9 userInterfaceStyle]== UIUserInterfaceStyleDark;
    objc_storeStrong(&self->_traitCollection, collection);
    [(PDFRenderingProperties *)self _notifyPropertyChanged:7];
    collectionCopy = v9;
  }
}

- (id)resolvedColor:(id)color
{
  colorCopy = color;
  traitCollection = [(PDFRenderingProperties *)self traitCollection];
  v6 = [colorCopy resolvedColorWithTraitCollection:traitCollection];

  return v6;
}

- (void)setDeviceColorSpace:(CGColorSpace *)space
{
  deviceColorSpace = self->_deviceColorSpace;
  if (deviceColorSpace)
  {
    CGColorSpaceRelease(deviceColorSpace);
  }

  self->_deviceColorSpace = space;
  if (space)
  {

    CGColorSpaceRetain(space);
  }
}

- (void)_notifyPropertyChanged:(int64_t)changed
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"PDFRenderingPropertyKey";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:changed];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFRenderingPropertiesChanged" object:self userInfo:v5];
}

@end
@interface PDFRenderingProperties
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (PDFRenderingProperties)init;
- (PDFView)pdfView;
- (UIColor)pageBackgroundColor;
- (double)adjustedPageCornerRadiusForPageSize:(CGSize)a3 magnification:(double)a4;
- (double)pageCornerRadius;
- (id)resolvedColor:(id)a3;
- (void)_notifyPropertyChanged:(int64_t)a3;
- (void)dealloc;
- (void)setAllowsDarkMode:(BOOL)a3;
- (void)setDeviceColorSpace:(CGColorSpace *)a3;
- (void)setDisplayBox:(int64_t)a3;
- (void)setEnablePageShadows:(BOOL)a3;
- (void)setGreekingThreshold:(double)a3;
- (void)setInterpolationQuality:(int64_t)a3;
- (void)setLineWidthThreshold:(double)a3;
- (void)setPageColor:(id)a3;
- (void)setShouldAntiAlias:(BOOL)a3;
- (void)setTraitCollection:(id)a3;
@end

@implementation PDFRenderingProperties

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PDFRenderingProperties;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, v3);
  v5 = [v3 isEqualToString:{@"darkMode", v8.receiver, v8.super_class}];

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

- (void)setDisplayBox:(int64_t)a3
{
  if (a3 < 5)
  {
    if (self->_displayBox != a3)
    {
      self->_displayBox = a3;

      [(PDFRenderingProperties *)self _notifyPropertyChanged:0];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setDisplayBox: %ld out of bounds", a3}];
  }
}

- (void)setShouldAntiAlias:(BOOL)a3
{
  if (self->_shouldAntiAlias != a3)
  {
    self->_shouldAntiAlias = a3;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:1];
  }
}

- (void)setGreekingThreshold:(double)a3
{
  if (self->_greekingThreshold != a3)
  {
    self->_greekingThreshold = a3;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:2];
  }
}

- (void)setInterpolationQuality:(int64_t)a3
{
  if (a3 < 3)
  {
    if (self->_interpolationQuality != a3)
    {
      self->_interpolationQuality = a3;
      [(PDFRenderingProperties *)self _notifyPropertyChanged:4];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:@"setInterpolationQuality: illegal value passed in"];
  }
}

- (void)setLineWidthThreshold:(double)a3
{
  if (self->_lineWidthThreshold != a3)
  {
    self->_lineWidthThreshold = a3;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:3];
  }
}

- (void)setPageColor:(id)a3
{
  v5 = a3;
  p_pageColor = &self->_pageColor;
  if (self->_pageColor != v5)
  {
    v7 = v5;
    objc_storeStrong(p_pageColor, a3);
    p_pageColor = [(PDFRenderingProperties *)self _notifyPropertyChanged:5];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_pageColor, v5);
}

- (void)setAllowsDarkMode:(BOOL)a3
{
  if (self->_allowsDarkMode != a3)
  {
    self->_allowsDarkMode = a3;
    [(PDFRenderingProperties *)self _notifyPropertyChanged:7];
  }
}

- (UIColor)pageBackgroundColor
{
  v3 = [(PDFRenderingProperties *)self pageColor];

  if (v3)
  {
    v4 = [(PDFRenderingProperties *)self pageColor];
  }

  else if ([(PDFRenderingProperties *)self isDarkMode])
  {
    darkModePageBackgroundColor = self->_darkModePageBackgroundColor;
    if (!darkModePageBackgroundColor)
    {
      darkModePageBackgroundColor = self->_pageBackgroundColor;
    }

    v4 = darkModePageBackgroundColor;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
  }

  return v4;
}

- (void)setEnablePageShadows:(BOOL)a3
{
  if (self->_enablePageShadows != a3)
  {
    self->_enablePageShadows = a3;
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

- (double)adjustedPageCornerRadiusForPageSize:(CGSize)a3 magnification:(double)a4
{
  height = a3.height;
  width = a3.width;
  [(PDFRenderingProperties *)self pageCornerRadius];
  result = v7 / a4;
  v9 = fmin(width, height) * a4;
  if (v9 < 80.0)
  {
    return (1.0 - (80.0 - v9) / 80.0) * result;
  }

  return result;
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  if (self->_traitCollection != v5)
  {
    v9 = v5;
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v7 = [v6 resolvedColorWithTraitCollection:v9];
    pageBackgroundColor = self->_pageBackgroundColor;
    self->_pageBackgroundColor = v7;

    self->_darkMode = [(UITraitCollection *)v9 userInterfaceStyle]== UIUserInterfaceStyleDark;
    objc_storeStrong(&self->_traitCollection, a3);
    [(PDFRenderingProperties *)self _notifyPropertyChanged:7];
    v5 = v9;
  }
}

- (id)resolvedColor:(id)a3
{
  v4 = a3;
  v5 = [(PDFRenderingProperties *)self traitCollection];
  v6 = [v4 resolvedColorWithTraitCollection:v5];

  return v6;
}

- (void)setDeviceColorSpace:(CGColorSpace *)a3
{
  deviceColorSpace = self->_deviceColorSpace;
  if (deviceColorSpace)
  {
    CGColorSpaceRelease(deviceColorSpace);
  }

  self->_deviceColorSpace = a3;
  if (a3)
  {

    CGColorSpaceRetain(a3);
  }
}

- (void)_notifyPropertyChanged:(int64_t)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"PDFRenderingPropertyKey";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"PDFRenderingPropertiesChanged" object:self userInfo:v5];
}

@end
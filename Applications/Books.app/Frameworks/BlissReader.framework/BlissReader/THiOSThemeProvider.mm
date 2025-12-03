@interface THiOSThemeProvider
- (CGColor)backgroundColor;
- (CGColor)textColor;
- (void)dealloc;
- (void)updateWithTheme:(id)theme traitCollection:(id)collection;
@end

@implementation THiOSThemeProvider

- (void)updateWithTheme:(id)theme traitCollection:(id)collection
{
  -[THiOSThemeProvider setThemeIdentifier:](self, "setThemeIdentifier:", [theme themeIdentifier]);
  themeIdentifier = [theme themeIdentifier];
  if ([themeIdentifier isEqualToString:kIMThemeIdentifierGrayPageTheme])
  {
    v8 = &dword_0 + 1;
  }

  else
  {
    themeIdentifier2 = [theme themeIdentifier];
    v8 = [themeIdentifier2 isEqualToString:kIMThemeIdentifierNightPageTheme];
  }

  [(THiOSThemeProvider *)self setForceThemeColors:v8];
  -[THiOSThemeProvider setShouldInvertContent:](self, "setShouldInvertContent:", [theme shouldInvertContent]);
  -[THiOSThemeProvider setUiBackgroundColor:](self, "setUiBackgroundColor:", [theme backgroundColorForTraitCollection:collection]);
  -[THiOSThemeProvider setUiTextColor:](self, "setUiTextColor:", [objc_msgSend(theme "contentTextColor")]);
  -[THiOSThemeProvider setAnnotationPageTheme:](self, "setAnnotationPageTheme:", [theme annotationPageTheme]);
  -[THiOSThemeProvider setAnnotationBlendMode:](self, "setAnnotationBlendMode:", [theme annotationBlendMode]);
  userInterfaceStyle = [theme userInterfaceStyle];

  [(THiOSThemeProvider *)self setUserInterfaceStyle:userInterfaceStyle];
}

- (void)dealloc
{
  self->_themeIdentifier = 0;

  self->_uiBackgroundColor = 0;
  self->_uiTextColor = 0;
  v3.receiver = self;
  v3.super_class = THiOSThemeProvider;
  [(THThemeProvider *)&v3 dealloc];
}

- (CGColor)backgroundColor
{
  uiBackgroundColor = [(THiOSThemeProvider *)self uiBackgroundColor];

  return [(UIColor *)uiBackgroundColor CGColor];
}

- (CGColor)textColor
{
  uiTextColor = [(THiOSThemeProvider *)self uiTextColor];

  return [(UIColor *)uiTextColor CGColor];
}

@end
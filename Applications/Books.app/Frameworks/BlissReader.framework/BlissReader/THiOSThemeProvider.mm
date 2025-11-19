@interface THiOSThemeProvider
- (CGColor)backgroundColor;
- (CGColor)textColor;
- (void)dealloc;
- (void)updateWithTheme:(id)a3 traitCollection:(id)a4;
@end

@implementation THiOSThemeProvider

- (void)updateWithTheme:(id)a3 traitCollection:(id)a4
{
  -[THiOSThemeProvider setThemeIdentifier:](self, "setThemeIdentifier:", [a3 themeIdentifier]);
  v7 = [a3 themeIdentifier];
  if ([v7 isEqualToString:kIMThemeIdentifierGrayPageTheme])
  {
    v8 = &dword_0 + 1;
  }

  else
  {
    v9 = [a3 themeIdentifier];
    v8 = [v9 isEqualToString:kIMThemeIdentifierNightPageTheme];
  }

  [(THiOSThemeProvider *)self setForceThemeColors:v8];
  -[THiOSThemeProvider setShouldInvertContent:](self, "setShouldInvertContent:", [a3 shouldInvertContent]);
  -[THiOSThemeProvider setUiBackgroundColor:](self, "setUiBackgroundColor:", [a3 backgroundColorForTraitCollection:a4]);
  -[THiOSThemeProvider setUiTextColor:](self, "setUiTextColor:", [objc_msgSend(a3 "contentTextColor")]);
  -[THiOSThemeProvider setAnnotationPageTheme:](self, "setAnnotationPageTheme:", [a3 annotationPageTheme]);
  -[THiOSThemeProvider setAnnotationBlendMode:](self, "setAnnotationBlendMode:", [a3 annotationBlendMode]);
  v10 = [a3 userInterfaceStyle];

  [(THiOSThemeProvider *)self setUserInterfaceStyle:v10];
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
  v2 = [(THiOSThemeProvider *)self uiBackgroundColor];

  return [(UIColor *)v2 CGColor];
}

- (CGColor)textColor
{
  v2 = [(THiOSThemeProvider *)self uiTextColor];

  return [(UIColor *)v2 CGColor];
}

@end
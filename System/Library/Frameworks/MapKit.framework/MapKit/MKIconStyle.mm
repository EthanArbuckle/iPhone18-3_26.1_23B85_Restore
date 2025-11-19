@interface MKIconStyle
- (BOOL)_elevationForIcons;
- (MKIconStyle)initWithStyleAttributes:(id)a3 isHybridMap:(BOOL)a4;
- (UIColor)backgroundColor;
- (UIImage)image;
- (id)iconForModifiers:(id)a3;
- (void)_setColorAndImages;
- (void)registerImage:(id)a3 darkMode:(BOOL)a4;
@end

@implementation MKIconStyle

- (BOOL)_elevationForIcons
{
  v3 = [MEMORY[0x1E69A2398] sharedPlatform];
  if ([v3 supportsAdvancedMap])
  {
    v4 = !self->_isHybridMap;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerImage:(id)a3 darkMode:(BOOL)a4
{
  v6 = MEMORY[0x1E69DCAB8];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 image];
  [v7 contentScale];
  v11 = v10;

  v12 = [v8 initWithCGImage:v9 scale:0 orientation:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__MKIconStyle_registerImage_darkMode___block_invoke;
  v14[3] = &__block_descriptor_33_e27_v16__0___UIMutableTraits__8l;
  v15 = a4;
  v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:v14];
  [(UIImageAsset *)self->_combinedImageAsset registerImage:v12 withTraitCollection:v13];
}

void __38__MKIconStyle_registerImage_darkMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DCEB0];
  v6 = a2;
  v4 = [v3 mainScreen];
  [v4 scale];
  [v6 setDisplayScale:?];

  if (*(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v6 setUserInterfaceStyle:v5];
}

- (id)iconForModifiers:(id)a3
{
  v4 = a3;
  v5 = +[MKIconManager iconManager];
  styleAttributes = self->_styleAttributes;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  *&v8 = v8;
  v9 = [v5 imageForStyleAttributes:styleAttributes withStylesheetName:@"default" contentScale:8 sizeGroup:v4 modifiers:v8];

  return v9;
}

- (void)_setColorAndImages
{
  v17 = objc_alloc_init(MEMORY[0x1E69DF438]);
  [v17 setGlyphOnly:1];
  [v17 setElevated:{-[MKIconStyle _elevationForIcons](self, "_elevationForIcons")}];
  v3 = +[MKSystemController sharedInstance];
  v4 = [v3 isGlassEnabled];

  [v17 setNewInterfaceEnabled:v4];
  v5 = objc_alloc_init(MEMORY[0x1E69DF438]);
  [v5 setGlyphOnly:1];
  [v5 setElevated:{-[MKIconStyle _elevationForIcons](self, "_elevationForIcons")}];
  [v5 setNightMode:1];
  [v5 setNewInterfaceEnabled:v4];
  v6 = [MEMORY[0x1E69A1DB0] styleAttributesForMapFeatureAttributes:self->_styleAttributes elevatedGround:{-[MKIconStyle _elevationForIcons](self, "_elevationForIcons")}];
  styleAttributes = self->_styleAttributes;
  self->_styleAttributes = v6;

  v8 = [(MKIconStyle *)self iconForModifiers:v17];
  v9 = [(MKIconStyle *)self iconForModifiers:v5];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
    combinedImageAsset = self->_combinedImageAsset;
    self->_combinedImageAsset = v11;

    [(MKIconStyle *)self registerImage:v8 darkMode:0];
    [(MKIconStyle *)self registerImage:v10 darkMode:1];
    v13 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v8, "fillColor")}];
    backgroundColorLight = self->_backgroundColorLight;
    self->_backgroundColorLight = v13;

    v15 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v10, "fillColor")}];
    backgroundColorDark = self->_backgroundColorDark;
    self->_backgroundColorDark = v15;
  }
}

- (UIImage)image
{
  combinedImageAsset = self->_combinedImageAsset;
  if (combinedImageAsset)
  {
    v3 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    v4 = [(UIImageAsset *)combinedImageAsset imageWithTraitCollection:v3];
  }

  else
  {
    v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"mappin"];
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v4 = [v3 imageWithTintColor:v5 renderingMode:1];
  }

  return v4;
}

- (UIColor)backgroundColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__MKIconStyle_backgroundColor__block_invoke;
  v4[3] = &unk_1E76CCCD0;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __30__MKIconStyle_backgroundColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    v5 = *(v4 + 24);
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DC888] systemMidGrayColor];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_7:

  return v6;
}

- (MKIconStyle)initWithStyleAttributes:(id)a3 isHybridMap:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MKIconStyle;
  v8 = [(MKIconStyle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_styleAttributes, a3);
    v9->_isHybridMap = a4;
    [(MKIconStyle *)v9 _setColorAndImages];
  }

  return v9;
}

@end
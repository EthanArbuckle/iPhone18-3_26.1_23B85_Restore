@interface MKMarkerStyle
+ (id)defaultSelectedMarkerStyleForScale:(double)scale;
+ (id)defaultUnselectedMarkerStyleForScale:(double)scale;
+ (id)markerStyleForConfiguration:(id)configuration;
+ (id)poiMarkerStyleForConfiguration:(id)configuration;
- (CGPoint)_anchorPointFromIcon:(id)icon;
- (CGPoint)anchorPoint;
- (CGRect)_convertRect:(CGRect)rect scale:(double)scale;
- (CGRect)balloonRect;
- (CGRect)contentRect;
- (CGRect)dotRect;
- (MKMarkerStyle)initWithBalloonIcon:(id)icon configuration:(id)configuration;
- (id)debugDescription;
@end

@implementation MKMarkerStyle

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)dotRect
{
  x = self->_dotRect.origin.x;
  y = self->_dotRect.origin.y;
  width = self->_dotRect.size.width;
  height = self->_dotRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)balloonRect
{
  x = self->_balloonRect.origin.x;
  y = self->_balloonRect.origin.y;
  width = self->_balloonRect.size.width;
  height = self->_balloonRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MKMarkerStyleConfiguration *)self->_configuration debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p configuration: %@>", v5, self, v6];

  return v7;
}

- (CGPoint)_anchorPointFromIcon:(id)icon
{
  iconCopy = icon;
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth([iconCopy balloonImage]);
  Height = CGImageGetHeight([iconCopy balloonImage]);
  if (Width)
  {
    v8 = Height;
    if (Height)
    {
      [iconCopy anchorPoint];
      v4 = v9 / Width;
      [iconCopy anchorPoint];
      v5 = v10 / v8;
    }
  }

  v11 = v4;
  v12 = v5;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)_convertRect:(CGRect)rect scale:(double)scale
{
  v4 = rect.origin.x / scale;
  v5 = rect.origin.y / scale;
  v6 = rect.size.width / scale;
  v7 = rect.size.height / scale;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (MKMarkerStyle)initWithBalloonIcon:(id)icon configuration:(id)configuration
{
  iconCopy = icon;
  configurationCopy = configuration;
  v59.receiver = self;
  v59.super_class = MKMarkerStyle;
  v8 = [(MKMarkerStyle *)&v59 init];
  if (v8)
  {
    balloonImage = [iconCopy balloonImage];
    dotImage = [iconCopy dotImage];
    [configurationCopy scale];
    v11 = [(MKMarkerStyle *)v8 _imageWithCGImage:balloonImage scale:?];
    balloonImage = v8->_balloonImage;
    v8->_balloonImage = v11;

    [configurationCopy scale];
    v13 = [(MKMarkerStyle *)v8 _imageWithCGImage:dotImage scale:?];
    dotImage = v8->_dotImage;
    v8->_dotImage = v13;

    [iconCopy contentRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [configurationCopy scale];
    [(MKMarkerStyle *)v8 _convertRect:v16 scale:v18, v20, v22, v23];
    v8->_contentRect.origin.x = v24;
    v8->_contentRect.origin.y = v25;
    v8->_contentRect.size.width = v26;
    v8->_contentRect.size.height = v27;
    [(MKMarkerStyle *)v8 _anchorPointFromIcon:iconCopy];
    v8->_anchorPoint.x = v28;
    v8->_anchorPoint.y = v29;
    v30 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(iconCopy, "defaultGlyphColor")}];
    defaultGlyphColor = v8->_defaultGlyphColor;
    v8->_defaultGlyphColor = v30;

    [iconCopy balloonRect];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [configurationCopy scale];
    [(MKMarkerStyle *)v8 _convertRect:v33 scale:v35, v37, v39, v40];
    v8->_balloonRect = v60;
    MaxY = CGRectGetMaxY(v60);
    [iconCopy anchorPoint];
    v43 = v42;
    [configurationCopy scale];
    v8->_balloonYOffset = MaxY - v43 / v44;
    [iconCopy dotRect];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [configurationCopy scale];
    [(MKMarkerStyle *)v8 _convertRect:v46 scale:v48, v50, v52, v53];
    v8->_dotRect.origin.x = v54;
    v8->_dotRect.origin.y = v55;
    v8->_dotRect.size.width = v56;
    v8->_dotRect.size.height = v57;
    objc_storeStrong(&v8->_configuration, configuration);
  }

  return v8;
}

+ (id)poiMarkerStyleForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [MKIconManager poiBalloonIconForConfiguration:configurationCopy];
  v6 = [[self alloc] initWithBalloonIcon:v5 configuration:configurationCopy];

  return v6;
}

+ (id)markerStyleForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[MKMarkerStyleCache sharedCache];
  v6 = [v5 cachedStyleForConfiguration:configurationCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [MKIconManager markerBalloonIconForConfiguration:configurationCopy];
    v9 = [[self alloc] initWithBalloonIcon:v8 configuration:configurationCopy];
    v10 = +[MKMarkerStyleCache sharedCache];
    [v10 cacheStyle:v9 forConfiguration:configurationCopy];

    v7 = v9;
  }

  return v7;
}

+ (id)defaultUnselectedMarkerStyleForScale:(double)scale
{
  v5 = objc_alloc_init(MKMarkerStyleConfiguration);
  [(MKMarkerStyleConfiguration *)v5 setScale:scale];
  v6 = [self markerStyleForConfiguration:v5];

  return v6;
}

+ (id)defaultSelectedMarkerStyleForScale:(double)scale
{
  v5 = objc_alloc_init(MKMarkerStyleConfiguration);
  [(MKMarkerStyleConfiguration *)v5 setScale:scale];
  [(MKMarkerStyleConfiguration *)v5 setSelected:1];
  v6 = [self markerStyleForConfiguration:v5];

  return v6;
}

@end
@interface MKMarkerStyle
+ (id)defaultSelectedMarkerStyleForScale:(double)a3;
+ (id)defaultUnselectedMarkerStyleForScale:(double)a3;
+ (id)markerStyleForConfiguration:(id)a3;
+ (id)poiMarkerStyleForConfiguration:(id)a3;
- (CGPoint)_anchorPointFromIcon:(id)a3;
- (CGPoint)anchorPoint;
- (CGRect)_convertRect:(CGRect)a3 scale:(double)a4;
- (CGRect)balloonRect;
- (CGRect)contentRect;
- (CGRect)dotRect;
- (MKMarkerStyle)initWithBalloonIcon:(id)a3 configuration:(id)a4;
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

- (CGPoint)_anchorPointFromIcon:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth([v3 balloonImage]);
  Height = CGImageGetHeight([v3 balloonImage]);
  if (Width)
  {
    v8 = Height;
    if (Height)
    {
      [v3 anchorPoint];
      v4 = v9 / Width;
      [v3 anchorPoint];
      v5 = v10 / v8;
    }
  }

  v11 = v4;
  v12 = v5;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)_convertRect:(CGRect)a3 scale:(double)a4
{
  v4 = a3.origin.x / a4;
  v5 = a3.origin.y / a4;
  v6 = a3.size.width / a4;
  v7 = a3.size.height / a4;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (MKMarkerStyle)initWithBalloonIcon:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v59.receiver = self;
  v59.super_class = MKMarkerStyle;
  v8 = [(MKMarkerStyle *)&v59 init];
  if (v8)
  {
    v9 = [v6 balloonImage];
    v10 = [v6 dotImage];
    [v7 scale];
    v11 = [(MKMarkerStyle *)v8 _imageWithCGImage:v9 scale:?];
    balloonImage = v8->_balloonImage;
    v8->_balloonImage = v11;

    [v7 scale];
    v13 = [(MKMarkerStyle *)v8 _imageWithCGImage:v10 scale:?];
    dotImage = v8->_dotImage;
    v8->_dotImage = v13;

    [v6 contentRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v7 scale];
    [(MKMarkerStyle *)v8 _convertRect:v16 scale:v18, v20, v22, v23];
    v8->_contentRect.origin.x = v24;
    v8->_contentRect.origin.y = v25;
    v8->_contentRect.size.width = v26;
    v8->_contentRect.size.height = v27;
    [(MKMarkerStyle *)v8 _anchorPointFromIcon:v6];
    v8->_anchorPoint.x = v28;
    v8->_anchorPoint.y = v29;
    v30 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v6, "defaultGlyphColor")}];
    defaultGlyphColor = v8->_defaultGlyphColor;
    v8->_defaultGlyphColor = v30;

    [v6 balloonRect];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [v7 scale];
    [(MKMarkerStyle *)v8 _convertRect:v33 scale:v35, v37, v39, v40];
    v8->_balloonRect = v60;
    MaxY = CGRectGetMaxY(v60);
    [v6 anchorPoint];
    v43 = v42;
    [v7 scale];
    v8->_balloonYOffset = MaxY - v43 / v44;
    [v6 dotRect];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [v7 scale];
    [(MKMarkerStyle *)v8 _convertRect:v46 scale:v48, v50, v52, v53];
    v8->_dotRect.origin.x = v54;
    v8->_dotRect.origin.y = v55;
    v8->_dotRect.size.width = v56;
    v8->_dotRect.size.height = v57;
    objc_storeStrong(&v8->_configuration, a4);
  }

  return v8;
}

+ (id)poiMarkerStyleForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [MKIconManager poiBalloonIconForConfiguration:v4];
  v6 = [[a1 alloc] initWithBalloonIcon:v5 configuration:v4];

  return v6;
}

+ (id)markerStyleForConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[MKMarkerStyleCache sharedCache];
  v6 = [v5 cachedStyleForConfiguration:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [MKIconManager markerBalloonIconForConfiguration:v4];
    v9 = [[a1 alloc] initWithBalloonIcon:v8 configuration:v4];
    v10 = +[MKMarkerStyleCache sharedCache];
    [v10 cacheStyle:v9 forConfiguration:v4];

    v7 = v9;
  }

  return v7;
}

+ (id)defaultUnselectedMarkerStyleForScale:(double)a3
{
  v5 = objc_alloc_init(MKMarkerStyleConfiguration);
  [(MKMarkerStyleConfiguration *)v5 setScale:a3];
  v6 = [a1 markerStyleForConfiguration:v5];

  return v6;
}

+ (id)defaultSelectedMarkerStyleForScale:(double)a3
{
  v5 = objc_alloc_init(MKMarkerStyleConfiguration);
  [(MKMarkerStyleConfiguration *)v5 setScale:a3];
  [(MKMarkerStyleConfiguration *)v5 setSelected:1];
  v6 = [a1 markerStyleForConfiguration:v5];

  return v6;
}

@end
@interface GuidanceManeuverView
- (BOOL)_maneuverIsDrawnByDrawRect;
- (BOOL)_maneuverTypeRequiresDrawingPaths:(int)paths;
- (CGAffineTransform)transformForDrawingPathsWithFrame:(SEL)frame relativeToReferenceSize:(CGRect)size;
- (CGSize)intrinsicContentSize;
- (GuidanceManeuverView)initWithFrame:(CGRect)frame textureProvider:(id)provider;
- (UIImage)imageRepresentation;
- (id)_imageWithManeuverType:(int)type inRect:(CGRect)rect;
- (id)accessibilityIdentifier;
- (int)displayManeuver;
- (void)_drawArrival;
- (void)_drawDefaultPaths;
- (void)_drawManeuverImage;
- (void)_drawProceedToRoute;
- (void)_invalidateDrawingPaths;
- (void)_updateDrawingPaths;
- (void)_updateDrawingPathsForArrival;
- (void)_updateDrawingPathsForProceedToRoute;
- (void)_updateDrawingPathsFromJunction;
- (void)_updateManeuverArtworkImageIfNeeded;
- (void)_updateManeuverImage;
- (void)drawArrow:(id)arrow stroke:(id)stroke;
- (void)drawArrow:(id)arrow stroke:(id)stroke withVisibleWidth:(double)width intersectionFillPath:(id)path intersectionStrokePath:(id)strokePath referenceSize:(CGSize)size;
- (void)drawIntersectionFill:(id)fill;
- (void)drawIntersectionStroke:(id)stroke forFill:(id)fill;
- (void)drawRect:(CGRect)rect;
- (void)setAccentColor:(id)color;
- (void)setArrowColor:(id)color;
- (void)setArrowMetrics:(id *)metrics;
- (void)setFraming:(unsigned int)framing;
- (void)setJunctionArrowMetrics:(id *)metrics;
- (void)setManeuverArtwork:(id)artwork;
@end

@implementation GuidanceManeuverView

- (CGSize)intrinsicContentSize
{
  superview = [(MKArtworkImageView *)self->_maneuverArtworkImageView superview];

  if (superview == self)
  {
    v7 = 20.0;
    v8 = 20.0;
    if (![(GuidanceManeuverView *)self usesCompactImages])
    {
      [(MKArtworkImageView *)self->_maneuverArtworkImageView intrinsicContentSize];
      goto LABEL_6;
    }
  }

  else
  {
    maneuverImage = self->_maneuverImage;
    if (maneuverImage)
    {
      [(UIImage *)maneuverImage size];
LABEL_6:
      v7 = v5;
      v8 = v6;
      goto LABEL_21;
    }

    maneuverArtwork = [(GuidanceManeuverView *)self maneuverArtwork];
    artworkDataSource = [maneuverArtwork artworkDataSource];
    if (artworkDataSource)
    {

LABEL_20:
      [(GuidanceManeuverView *)self arrowMetrics];
      v7 = v45;
      v8 = v46;
      goto LABEL_21;
    }

    maneuverArtwork2 = [(GuidanceManeuverView *)self maneuverArtwork];
    v12 = -[GuidanceManeuverView _maneuverTypeRequiresDrawingPaths:](self, "_maneuverTypeRequiresDrawingPaths:", [maneuverArtwork2 maneuver]);

    if ((v12 & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = sub_100072FE8(self->_arrowPath, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
    v17 = sub_100072FE8(self->_arrowStrokePath, v13, v14, v15, v16);
    v21 = sub_100072FE8(self->_intersectionFillPath, v17, v18, v19, v20);
    v25 = sub_100072FE8(self->_intersectionStrokePath, v21, v22, v23, v24);
    v27 = v26;
    v7 = v28;
    v8 = v29;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    arrivalCircles = self->_arrivalCircles;
    if (!arrivalCircles)
    {
      arrivalCircles = &__NSArray0__struct;
    }

    v31 = arrivalCircles;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v42;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v42 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v25 = sub_100072FE8(*(*(&v41 + 1) + 8 * i), v25, v27, v7, v8);
          v27 = v36;
          v7 = v37;
          v8 = v38;
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v33);
    }
  }

LABEL_21:
  v39 = v7;
  v40 = v8;
  result.height = v40;
  result.width = v39;
  return result;
}

- (void)_updateManeuverImage
{
  maneuverImage = self->_maneuverImage;
  self->_maneuverImage = 0;

  [(GuidanceManeuverView *)self _updateManeuverArtworkImageIfNeeded];
  artworkDataSource = [(GuidanceManeuverArtwork *)self->_maneuverArtwork artworkDataSource];

  if (!artworkDataSource)
  {
    [(GuidanceManeuverView *)self arrowMetrics];
    y = CGPointZero.y;
    maneuverArtwork = [(GuidanceManeuverView *)self maneuverArtwork];
    v7 = -[GuidanceManeuverView _imageWithManeuverType:inRect:](self, "_imageWithManeuverType:inRect:", [maneuverArtwork maneuver], CGPointZero.x, y, v9, v10);
    v8 = self->_maneuverImage;
    self->_maneuverImage = v7;
  }
}

- (void)_updateManeuverArtworkImageIfNeeded
{
  artworkDataSource = [(GuidanceManeuverArtwork *)self->_maneuverArtwork artworkDataSource];
  if (artworkDataSource)
  {
    if ([(GuidanceManeuverView *)self usesCompactImages])
    {
      v4 = 20.0;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 20.0;
    }

    else
    {
      [(GuidanceManeuverView *)self bounds];
      v5 = v9;
      v6 = v10;
      v4 = v11;
      v7 = v12;
    }

    v34.origin.x = v5;
    v34.origin.y = v6;
    v34.size.width = v4;
    v34.size.height = v7;
    Width = CGRectGetWidth(v34);
    v35.origin.x = v5;
    v35.origin.y = v6;
    v35.size.width = v4;
    v35.size.height = v7;
    Height = CGRectGetHeight(v35);
    if (Width <= 2.22044605e-16 || Height <= 2.22044605e-16)
    {
      [(GuidanceManeuverView *)self layoutIfNeeded];
      [(GuidanceManeuverView *)self frame];
      Width = CGRectGetWidth(v36);
      [(GuidanceManeuverView *)self frame];
      Height = CGRectGetHeight(v37);
    }

    if (!self->_maneuverArtworkImageView)
    {
      v16 = [[MKArtworkImageView alloc] initWithFrame:{0.0, 0.0, Width, Height}];
      maneuverArtworkImageView = self->_maneuverArtworkImageView;
      self->_maneuverArtworkImageView = v16;

      [(MKArtworkImageView *)self->_maneuverArtworkImageView setContentMode:1];
      arrowColor = [(GuidanceManeuverView *)self arrowColor];
      [(MKArtworkImageView *)self->_maneuverArtworkImageView setTintColor:arrowColor];

      [(MKArtworkImageView *)self->_maneuverArtworkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v19 = [[MKSizedTransitArtwork alloc] initWithArtwork:artworkDataSource shieldSize:8 artworkCache:0];
    [(MKArtworkImageView *)self->_maneuverArtworkImageView setImageSource:v19];
    superview = [(MKArtworkImageView *)self->_maneuverArtworkImageView superview];

    if (superview != self)
    {
      [(GuidanceManeuverView *)self addSubview:self->_maneuverArtworkImageView];
      widthAnchor = [(MKArtworkImageView *)self->_maneuverArtworkImageView widthAnchor];
      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      v38.size.width = Width;
      v38.size.height = Height;
      v31 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v38)];
      v33[0] = v31;
      heightAnchor = [(MKArtworkImageView *)self->_maneuverArtworkImageView heightAnchor];
      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      v39.size.width = Width;
      v39.size.height = Height;
      v29 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v39)];
      v33[1] = v29;
      centerXAnchor = [(MKArtworkImageView *)self->_maneuverArtworkImageView centerXAnchor];
      centerXAnchor2 = [(GuidanceManeuverView *)self centerXAnchor];
      v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v33[2] = v23;
      centerYAnchor = [(MKArtworkImageView *)self->_maneuverArtworkImageView centerYAnchor];
      [(GuidanceManeuverView *)self centerYAnchor];
      v26 = v25 = artworkDataSource;
      v27 = [centerYAnchor constraintEqualToAnchor:v26];
      v33[3] = v27;
      v28 = [NSArray arrayWithObjects:v33 count:4];
      [NSLayoutConstraint activateConstraints:v28];

      artworkDataSource = v25;
      [(GuidanceManeuverView *)self invalidateIntrinsicContentSize];
    }
  }

  else
  {
    superview2 = [(MKArtworkImageView *)self->_maneuverArtworkImageView superview];

    if (superview2 == self)
    {
      [(MKArtworkImageView *)self->_maneuverArtworkImageView removeFromSuperview];
    }
  }
}

- (int)displayManeuver
{
  if (![(GuidanceManeuverView *)self disallowManeuversWithoutArt]|| (result = [(GuidanceManeuverView *)self _maneuverIsDrawnByDrawRect]) != 0)
  {
    maneuverArtwork = self->_maneuverArtwork;

    return [(GuidanceManeuverArtwork *)maneuverArtwork maneuver];
  }

  return result;
}

- (BOOL)_maneuverIsDrawnByDrawRect
{
  junction = [(GuidanceManeuverArtwork *)self->_maneuverArtwork junction];

  if (junction)
  {
    return 1;
  }

  artworkDataSource = [(GuidanceManeuverArtwork *)self->_maneuverArtwork artworkDataSource];

  if (artworkDataSource)
  {
    return 1;
  }

  maneuver = [(GuidanceManeuverArtwork *)self->_maneuverArtwork maneuver];
  result = 1;
  if (maneuver > 0x27 || ((1 << maneuver) & 0x8E7EF718FELL) == 0)
  {
    v8 = maneuver - 60;
    v9 = v8 > 0x1C;
    v10 = (1 << v8) & 0x17F0007F;
    if (v9 || v10 == 0)
    {
      return 0;
    }
  }

  return result;
}

- (void)_invalidateDrawingPaths
{
  [(GuidanceManeuverView *)self setNeedsDisplay];

  [(GuidanceManeuverView *)self _updateDrawingPaths];
}

- (void)_updateDrawingPaths
{
  arrowPath = self->_arrowPath;
  self->_arrowPath = 0;

  arrowStrokePath = self->_arrowStrokePath;
  self->_arrowStrokePath = 0;

  intersectionFillPath = self->_intersectionFillPath;
  self->_intersectionFillPath = 0;

  intersectionStrokePath = self->_intersectionStrokePath;
  self->_intersectionStrokePath = 0;

  arrivalCircles = self->_arrivalCircles;
  self->_arrivalCircles = 0;

  maneuverImage = self->_maneuverImage;
  self->_maneuverImage = 0;

  [(MKArtworkImageView *)self->_maneuverArtworkImageView setImageSource:0];
  [(GuidanceManeuverView *)self _updateManeuverImage];
  if (!self->_maneuverImage)
  {
    imageSource = [(MKArtworkImageView *)self->_maneuverArtworkImageView imageSource];

    if (!imageSource)
    {
      [(GuidanceManeuverView *)self arrowMetrics];
      displayManeuver = [(GuidanceManeuverView *)self displayManeuver];
      if ([(GuidanceManeuverView *)self _maneuverTypeRequiresDrawingPaths:displayManeuver])
      {
        maneuverArtwork = [(GuidanceManeuverView *)self maneuverArtwork];
        junction = [maneuverArtwork junction];
        if (!junction)
        {
LABEL_7:

          goto LABEL_8;
        }

        v13 = junction;
        maneuverArtwork2 = [(GuidanceManeuverView *)self maneuverArtwork];
        junction2 = [maneuverArtwork2 junction];
        if ([junction2 rightOrLeftTurnWillSnapToNinetyDegrees])
        {

          goto LABEL_7;
        }

        if ([(GuidanceManeuverView *)self usesCompactImages])
        {
          maneuverArtwork3 = [(GuidanceManeuverView *)self maneuverArtwork];
          isRoundaboutManeuver = [maneuverArtwork3 isRoundaboutManeuver];

          if ((isRoundaboutManeuver & 1) == 0)
          {
LABEL_8:
            v16 = +[UIBezierPath bezierPath];
            v17 = self->_arrowPath;
            self->_arrowPath = v16;

            if (displayManeuver > 84)
            {
              if (displayManeuver == 88 || displayManeuver == 86)
              {
LABEL_21:
                maneuverArtwork4 = [(GuidanceManeuverView *)self maneuverArtwork];
                [maneuverArtwork4 drivingSide];
                [(GuidanceManeuverView *)self arrowMetrics];
                MKArrowAppendUTurnToPathInRect();
              }

              else if (displayManeuver == 85)
              {
LABEL_20:
                [(GuidanceManeuverView *)self _updateDrawingPathsForProceedToRoute];
              }
            }

            else
            {
              switch(displayManeuver)
              {
                case 1:
                case 27:
                case 60:
                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendLeftTurnToPathInRect();
                  goto LABEL_30;
                case 2:
                case 28:
                case 61:
                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendRightTurnToPathInRect();
                  goto LABEL_30;
                case 3:
                case 5:
                case 6:
                case 7:
                case 12:
                case 23:
                case 64:
                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendStraightArrowToPathInRect();
                  goto LABEL_30;
                case 4:
                case 25:
                case 26:
                case 35:
                  goto LABEL_21;
                case 11:
                  maneuverArtwork5 = [(GuidanceManeuverView *)self maneuverArtwork];
                  drivingSide = [maneuverArtwork5 drivingSide];

                  if (!drivingSide)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_22;
                case 16:
                case 18:
                case 33:
                case 34:
                case 39:
                  [(GuidanceManeuverView *)self _updateDrawingPathsForArrival];
                  goto LABEL_30;
                case 17:
                  goto LABEL_20;
                case 20:
                case 62:
                case 65:
LABEL_22:
                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendMergeLeftToPathInRect();
                  break;
                case 21:
                case 63:
                case 66:
LABEL_24:
                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendMergeRightToPathInRect();
                  break;
                case 29:
                  v25 = +[UIBezierPath bezierPath];
                  v26 = self->_intersectionFillPath;
                  self->_intersectionFillPath = v25;

                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendExitRoadLeftToPathInRect();
                  break;
                case 30:
                  v21 = +[UIBezierPath bezierPath];
                  v22 = self->_intersectionFillPath;
                  self->_intersectionFillPath = v21;

                  [(GuidanceManeuverView *)self arrowMetrics];
                  MKArrowAppendExitRoadRightToPathInRect();
                  break;
                default:
                  goto LABEL_30;
              }
            }

            goto LABEL_30;
          }
        }

        else
        {
        }

        [(GuidanceManeuverView *)self _updateDrawingPathsFromJunction];
      }

LABEL_30:
      [(GuidanceManeuverView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)_updateDrawingPathsForProceedToRoute
{
  v21 = 0;
  v22 = 0;
  [(GuidanceManeuverView *)self arrowMetrics];
  [(GuidanceManeuverView *)self arrowMetrics];
  MKArrowCreateBezierPathsForProceedToRouteWithSize();
  v3 = v22;
  v4 = v21;
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeRotation(&v20, -1.57079633);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v15 = v20;
        [v10 applyTransform:&v15];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = v20;
  [(UIBezierPath *)v4 applyTransform:&v15];
  arrowPath = self->_arrowPath;
  self->_arrowPath = v4;
  v12 = v4;

  arrivalCircles = self->_arrivalCircles;
  self->_arrivalCircles = v5;
  v14 = v5;
}

- (UIImage)imageRepresentation
{
  [(GuidanceManeuverView *)self bounds];
  v8.width = v3;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [(GuidanceManeuverView *)self bounds];
  [(GuidanceManeuverView *)self drawRect:?];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

- (void)setJunctionArrowMetrics:(id *)metrics
{
  memcpy(__dst, metrics, sizeof(__dst));
  memcpy(v5, &self->_junctionArrowMetrics, sizeof(v5));
  if ((MKGuidanceManeuverArrowMetricsEqualToArrowMetrics() & 1) == 0)
  {
    memcpy(&self->_junctionArrowMetrics, metrics, sizeof(self->_junctionArrowMetrics));
    [(GuidanceManeuverView *)self _invalidateDrawingPaths];
  }
}

- (void)setArrowMetrics:(id *)metrics
{
  memcpy(__dst, metrics, sizeof(__dst));
  memcpy(v5, &self->_arrowMetrics, sizeof(v5));
  if ((MKGuidanceManeuverArrowMetricsEqualToArrowMetrics() & 1) == 0)
  {
    memcpy(&self->_arrowMetrics, metrics, sizeof(self->_arrowMetrics));
    [(GuidanceManeuverView *)self _invalidateDrawingPaths];
  }
}

- (void)setFraming:(unsigned int)framing
{
  if (self->_framing != framing)
  {
    self->_framing = framing;
    [(GuidanceManeuverView *)self setNeedsDisplay];
  }
}

- (void)setAccentColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = +[UIColor secondaryLabelColor];
  }

  if (colorCopy != self->_accentColor)
  {
    v5 = colorCopy;
    objc_storeStrong(&self->_accentColor, colorCopy);
    [(GuidanceManeuverView *)self setNeedsDisplay];
    colorCopy = v5;
  }
}

- (void)setArrowColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = +[UIColor labelColor];
  }

  if (colorCopy != self->_arrowColor)
  {
    v5 = colorCopy;
    objc_storeStrong(&self->_arrowColor, colorCopy);
    [(MKArtworkImageView *)self->_maneuverArtworkImageView setTintColor:self->_arrowColor];
    [(GuidanceManeuverView *)self _updateManeuverImage];
    [(GuidanceManeuverView *)self setNeedsDisplay];
    colorCopy = v5;
  }
}

- (void)setManeuverArtwork:(id)artwork
{
  artworkCopy = artwork;
  maneuverArtwork = self->_maneuverArtwork;
  if (maneuverArtwork != artworkCopy)
  {
    v8 = artworkCopy;
    v7 = [(GuidanceManeuverArtwork *)maneuverArtwork isEqual:artworkCopy];
    artworkCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maneuverArtwork, artwork);
      [(GuidanceManeuverView *)self _invalidateDrawingPaths];
      artworkCopy = v8;
    }
  }
}

- (id)_imageWithManeuverType:(int)type inRect:(CGRect)rect
{
  if ((type - 80) < 5 || type == 22)
  {
    v6 = [(GuidanceManeuverView *)self maneuverArtwork:rect.origin.x];
    [v6 drivingSide];
    [(GuidanceManeuverView *)self arrowMetrics];
    _screen = [(GuidanceManeuverView *)self _screen];
    [_screen scale];
    arrowColor = [(GuidanceManeuverView *)self arrowColor];
    v10 = MKManeuverArrowImage();

    [v10 setAccessibilityIdentifier:@"ManeuverImage"];
    objc_storeStrong(&self->_maneuverImage, v10);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_drawProceedToRoute
{
  v3 = self->_arrivalCircles;
  v4 = self->_arrowPath;
  [(UIBezierPath *)v4 pathBounds];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v3;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v40 + 1) + 8 * v17) pathBounds];
        v49.origin.x = v18;
        v49.origin.y = v19;
        v49.size.width = v20;
        v49.size.height = v21;
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v46 = CGRectUnion(v45, v49);
        x = v46.origin.x;
        y = v46.origin.y;
        width = v46.size.width;
        height = v46.size.height;
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v15);
  }

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v48 = CGRectIntegral(v47);
  v22 = v48.origin.x;
  v23 = v48.origin.y;
  v24 = v48.size.width;
  v25 = v48.size.height;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  [(GuidanceManeuverView *)self arrowMetrics];
  [(GuidanceManeuverView *)self transformForDrawingPathsWithFrame:v22 relativeToReferenceSize:v23, v24, v25, v35, v36];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v32 = v37;
  v33 = v38;
  v28[2] = sub_1009837E4;
  v28[3] = &unk_101630460;
  v34 = v39;
  v29 = v13;
  selfCopy = self;
  v31 = v4;
  v26 = v4;
  v27 = v13;
  sub_1009838A0(v28);
}

- (void)_drawArrival
{
  v3 = self->_arrivalCircles;
  v4 = self->_arrowPath;
  [(UIBezierPath *)v4 pathBounds];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v3;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v40 + 1) + 8 * v17) pathBounds];
        v49.origin.x = v18;
        v49.origin.y = v19;
        v49.size.width = v20;
        v49.size.height = v21;
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v46 = CGRectUnion(v45, v49);
        x = v46.origin.x;
        y = v46.origin.y;
        width = v46.size.width;
        height = v46.size.height;
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v15);
  }

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v48 = CGRectIntegral(v47);
  v22 = v48.origin.x;
  v23 = v48.origin.y;
  v24 = v48.size.width;
  v25 = v48.size.height;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  [(GuidanceManeuverView *)self arrowMetrics];
  [(GuidanceManeuverView *)self transformForDrawingPathsWithFrame:v22 relativeToReferenceSize:v23, v24, v25, v35, v36];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v32 = v37;
  v33 = v38;
  v28[2] = sub_100983C5C;
  v28[3] = &unk_101630460;
  v34 = v39;
  v29 = v13;
  selfCopy = self;
  v31 = v4;
  v26 = v4;
  v27 = v13;
  sub_1009838A0(v28);
}

- (void)_drawDefaultPaths
{
  arrowPath = self->_arrowPath;
  if (arrowPath)
  {
    arrowStrokePath = self->_arrowStrokePath;
    visibleWidth = self->_visibleWidth;
    intersectionFillPath = self->_intersectionFillPath;
    intersectionStrokePath = self->_intersectionStrokePath;
    [(GuidanceManeuverView *)self arrowMetrics];
    [(GuidanceManeuverView *)self drawArrow:arrowPath stroke:arrowStrokePath withVisibleWidth:intersectionFillPath intersectionFillPath:intersectionStrokePath intersectionStrokePath:visibleWidth referenceSize:v8, v9];
  }
}

- (void)_drawManeuverImage
{
  maneuverImage = self->_maneuverImage;
  if (maneuverImage)
  {
    [(GuidanceManeuverView *)self bounds];
    MKCGRectFittingImageWithinSize();

    [(UIImage *)maneuverImage drawInRect:?];
  }
}

- (void)drawRect:(CGRect)rect
{
  if (![(GuidanceManeuverView *)self _maneuverIsDrawnByDrawRect:rect.origin.x])
  {
    return;
  }

  if (self->_maneuverImage)
  {

    [(GuidanceManeuverView *)self _drawManeuverImage];
    return;
  }

  maneuverArtwork = [(GuidanceManeuverView *)self maneuverArtwork];
  maneuver = [maneuverArtwork maneuver];

  if (maneuver <= 0x27)
  {
    if (((1 << maneuver) & 0x8600050000) != 0)
    {

      [(GuidanceManeuverView *)self _drawArrival];
      return;
    }

    if (maneuver == 17)
    {
      goto LABEL_14;
    }
  }

  if (maneuver == 85)
  {
LABEL_14:

    [(GuidanceManeuverView *)self _drawProceedToRoute];
  }

  else
  {

    [(GuidanceManeuverView *)self _drawDefaultPaths];
  }
}

- (void)_updateDrawingPathsFromJunction
{
  memset(__src, 0, sizeof(__src));
  [(GuidanceManeuverView *)self junctionArrowMetrics];
  maneuverArtwork = [(GuidanceManeuverView *)self maneuverArtwork];
  junction = [maneuverArtwork junction];
  v20 = 0;
  v19 = 0;
  v18 = 0;
  maneuverArtwork2 = [(GuidanceManeuverView *)self maneuverArtwork];
  drivingSide = [maneuverArtwork2 drivingSide];
  memcpy(__dst, __src, sizeof(__dst));
  [junction getArrowPath:&v20 arrowStrokePath:&v19 intersectionBackgroundPath:&v18 strokePath:0 withSize:__dst metrics:drivingSide drivingSide:*(__src + 1) visualCenter:{*&__src[1], 0}];
  v7 = v20;
  v8 = v19;
  v9 = v18;

  arrowPath = self->_arrowPath;
  self->_arrowPath = v7;
  v11 = v7;

  arrowStrokePath = self->_arrowStrokePath;
  self->_arrowStrokePath = v8;
  v13 = v8;

  intersectionFillPath = self->_intersectionFillPath;
  self->_intersectionFillPath = v9;
  v15 = v9;

  intersectionStrokePath = self->_intersectionStrokePath;
  self->_intersectionStrokePath = 0;
}

- (void)_updateDrawingPathsForArrival
{
  maneuverArtwork = [(GuidanceManeuverView *)self maneuverArtwork];
  maneuver = [maneuverArtwork maneuver];

  v31 = 0;
  v32 = 0;
  [(GuidanceManeuverView *)self arrowMetrics];
  [(GuidanceManeuverView *)self arrowMetrics];
  MKArrowCreateBezierPathsForArrivalWithSize();
  v5 = 0;
  v6 = 0;
  v7 = *&CGAffineTransformIdentity.a;
  v8 = *&CGAffineTransformIdentity.c;
  *&v30.a = *&CGAffineTransformIdentity.a;
  *&v30.c = v8;
  v9 = *&CGAffineTransformIdentity.tx;
  *&v30.tx = v9;
  if (maneuver == 33)
  {
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v10 = -1.57079633;
  }

  else
  {
    if (maneuver != 34)
    {
      goto LABEL_6;
    }

    v21 = v9;
    v22 = v8;
    v23 = v7;
    v10 = 1.57079633;
  }

  CGAffineTransformMakeRotation(&v30, v10);
  v8 = v22;
  v7 = v23;
  v9 = v21;
LABEL_6:
  t1 = v30;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v5;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          t1 = v30;
          [v16 applyTransform:{&t1, v21, v22, v23, v24}];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v13);
    }

    t1 = v30;
    [(UIBezierPath *)v6 applyTransform:&t1];
  }

  arrowPath = self->_arrowPath;
  self->_arrowPath = v6;
  v18 = v6;

  arrivalCircles = self->_arrivalCircles;
  self->_arrivalCircles = v5;
  v20 = v5;
}

- (BOOL)_maneuverTypeRequiresDrawingPaths:(int)paths
{
  if ((paths - 80) > 7)
  {
    return paths != 22;
  }

  result = 0;
  if (((1 << (paths - 80)) & 0x9F) == 0)
  {
    return paths != 22;
  }

  return result;
}

- (void)drawArrow:(id)arrow stroke:(id)stroke withVisibleWidth:(double)width intersectionFillPath:(id)path intersectionStrokePath:(id)strokePath referenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  arrowCopy = arrow;
  strokeCopy = stroke;
  pathCopy = path;
  strokePathCopy = strokePath;
  [arrowCopy pathBounds];
  v56 = CGRectIntegral(v55);
  x = v56.origin.x;
  y = v56.origin.y;
  v21 = v56.size.height;
  if (width <= 0.0)
  {
    width = v56.size.width;
  }

  [pathCopy pathBounds];
  if (pathCopy)
  {
    v59.origin.x = v22;
    v59.origin.y = v23;
    v59.size.width = v24;
    v59.size.height = v25;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = v21;
    v58 = CGRectUnion(v57, v59);
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    v21 = v58.size.height;
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  [(GuidanceManeuverView *)self transformForDrawingPathsWithFrame:x relativeToReferenceSize:y, width, v21, width, height];
  if (pathCopy)
  {
    v26 = [UIBezierPath bezierPathWithRect:x, y, width, v21];
    [v26 appendPath:arrowCopy];
    [v26 setUsesEvenOddFillRule:1];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v49 = v52;
    v45[2] = sub_1009847D0;
    v45[3] = &unk_101630460;
    v50 = v53;
    v51 = v54;
    v27 = v26;
    v46 = v27;
    selfCopy = self;
    v28 = pathCopy;
    v48 = v28;
    sub_1009838A0(v45);
    if (strokePathCopy)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10098482C;
      v37[3] = &unk_101630488;
      v42 = v52;
      v43 = v53;
      v44 = v54;
      v38 = v27;
      selfCopy2 = self;
      v40 = strokePathCopy;
      v41 = v28;
      sub_1009838A0(v37);
    }
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v34 = v52;
  v31[2] = sub_100984888;
  v31[3] = &unk_101630460;
  v35 = v53;
  v36 = v54;
  v31[4] = self;
  v32 = arrowCopy;
  v33 = strokeCopy;
  v29 = strokeCopy;
  v30 = arrowCopy;
  sub_1009838A0(v31);
}

- (CGAffineTransform)transformForDrawingPathsWithFrame:(SEL)frame relativeToReferenceSize:(CGRect)size
{
  height = size.size.height;
  width = size.size.width;
  y = size.origin.y;
  x = size.origin.x;
  [(GuidanceManeuverView *)self bounds:size.origin.x];
  v9 = 1.0;
  v22 = CGRectInset(v21, 1.0, 1.0);
  v10 = v22.origin.x;
  v11 = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;
  if (width > v22.size.width || height > v22.size.height)
  {
    v9 = fmin(v22.size.width / width, v22.size.height / height);
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeScale(retstr, v9, v9);
  v15 = *&retstr->c;
  *&v19.a = *&retstr->a;
  *&v19.c = v15;
  *&v19.tx = *&retstr->tx;
  CGAffineTransformInvert(&v20, &v19);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  v24 = CGRectApplyAffineTransform(v23, &v20);
  v24.origin.y = v24.origin.y - y + (v24.size.height - height) * 0.5;
  *&v24.size.height = *&retstr->c;
  *&v19.a = *&retstr->a;
  *&v19.c = *&v24.size.height;
  *&v19.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v20, &v19, v24.origin.x - x + (v24.size.width - width) * 0.5, v24.origin.y);
  v17 = *&v20.c;
  *&retstr->a = *&v20.a;
  *&retstr->c = v17;
  *&retstr->tx = *&v20.tx;
  return result;
}

- (void)drawArrow:(id)arrow stroke:(id)stroke
{
  arrowCopy = arrow;
  strokeCopy = stroke;
  if (!strokeCopy)
  {
    strokeCopy = arrowCopy;
  }

  if (![(GuidanceManeuverView *)self framing])
  {
    accentColor = [(GuidanceManeuverView *)self accentColor];
    [accentColor setStroke];

    [strokeCopy setLineWidth:2.0];
    [strokeCopy strokeWithBlendMode:0 alpha:1.0];
  }

  arrowColor = [(GuidanceManeuverView *)self arrowColor];
  [arrowColor setFill];

  [arrowCopy fill];
}

- (void)drawIntersectionStroke:(id)stroke forFill:(id)fill
{
  fillCopy = fill;
  strokeCopy = stroke;
  arrowColor = [(GuidanceManeuverView *)self arrowColor];
  [arrowColor setStroke];

  [(GuidanceManeuverView *)self arrowMetrics];
  [strokeCopy setLineWidth:v9];
  [strokeCopy setLineCapStyle:0];
  [strokeCopy setLineJoinStyle:1];
  [fillCopy addClip];

  [strokeCopy stroke];
}

- (void)drawIntersectionFill:(id)fill
{
  fillCopy = fill;
  accentColor = [(GuidanceManeuverView *)self accentColor];
  [accentColor setFill];

  [fillCopy fillWithBlendMode:0 alpha:1.0];
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (GuidanceManeuverView)initWithFrame:(CGRect)frame textureProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = GuidanceManeuverView;
  height = [(GuidanceManeuverView *)&v19 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    height->_disallowManeuversWithoutArt = 1;
    MKDefaultGuidanceManeuverMetrics();
    memcpy(&v12->_arrowMetrics, v18, sizeof(v12->_arrowMetrics));
    MKDefaultJunctionManeuverMetrics();
    memcpy(&v12->_junctionArrowMetrics, v18, sizeof(v12->_junctionArrowMetrics));
    v13 = +[UIColor labelColor];
    [(GuidanceManeuverView *)v12 setArrowColor:v13];

    v14 = +[UIColor secondaryLabelColor];
    [(GuidanceManeuverView *)v12 setAccentColor:v14];

    [(GuidanceManeuverView *)v12 setClearsContextBeforeDrawing:1];
    v15 = +[UIColor clearColor];
    [(GuidanceManeuverView *)v12 setBackgroundColor:v15];

    [(GuidanceManeuverView *)v12 setOpaque:0];
    layer = [(GuidanceManeuverView *)v12 layer];
    [layer setNeedsDisplayOnBoundsChange:1];

    [(GuidanceManeuverView *)v12 setShieldIdiom:0];
    objc_storeStrong(&v12->_textureProvider, provider);
  }

  return v12;
}

@end
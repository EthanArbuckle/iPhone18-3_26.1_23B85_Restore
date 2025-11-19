@interface MKScaleView
+ (MKScaleView)scaleViewWithMapView:(MKMapView *)mapView;
- (CGSize)intrinsicContentSize;
- (MKMapView)mapView;
- (MKScaleView)initWithFrame:(CGRect)a3;
- (MKScaleView)initWithMapView:(id)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (id)_formattedStringForFloat:(double)a3;
- (id)_scaleViewFormattedStringForFloat:(double)a3;
- (id)_scaleViewFormattedStringForInteger:(int64_t)a3;
- (id)_setupOutlineView;
- (id)_setupSegmentView:(BOOL)a3;
- (void)_calculateSegments;
- (void)_localizedDistanceStringsWithMeters:(unsigned int)a3 imperial:(double)a4 useFeet:(BOOL)a5 inMetric:(BOOL)a6 displaysYardsForShortDistances:(BOOL)a7 strings:(id)a8;
- (void)_setControlSize:(unint64_t)a3;
- (void)_traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)_updateStrings;
- (void)_updateVisibility;
- (void)dealloc;
- (void)layoutSubviews;
- (void)memoryWarning:(id)a3;
- (void)setDistanceInMeters:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLegendAlignment:(MKScaleViewAlignment)legendAlignment;
- (void)setMapView:(MKMapView *)mapView;
- (void)setScaleVisibility:(MKFeatureVisibility)scaleVisibility;
- (void)setUseLightText:(BOOL)a3;
- (void)updateLocale:(id)a3;
- (void)updateMetrics;
@end

@implementation MKScaleView

- (void)updateMetrics
{
  self->_segmentThickness = 4.0;
  self->_segmentBorderWidth = 1.0;
  self->_legendMarginLeft = 6.0;
  self->_legendMarginBottom = 6.0;
  self->_legendUnitsSpacing = 1.0;
  self->_fontSize = 11.0;
  self->_unitsFrameHeight = 20.0;
  if ([(MKScaleView *)self _controlSize]== 2)
  {
    self->_segmentThickness = self->_segmentThickness * 1.25;
    self->_segmentBorderWidth = self->_segmentBorderWidth * 1.25;
    self->_legendMarginLeft = self->_legendMarginLeft * 1.25;
    self->_legendMarginBottom = self->_legendMarginBottom * 1.25;
    self->_legendUnitsSpacing = self->_legendUnitsSpacing * 1.25;
    self->_fontSize = self->_fontSize * 1.25;
    self->_unitsFrameHeight = self->_unitsFrameHeight * 1.25;
  }

  [(_MKScaleUnitsView *)self->_unitsView setFontSize:self->_fontSize];
  legendMarginLeft = self->_legendMarginLeft;
  unitsView = self->_unitsView;

  [(_MKScaleUnitsView *)unitsView setLegendMarginLeft:legendMarginLeft];
}

- (void)_updateStrings
{
  v3 = _MKLocalizedStringFromThisBundle(@"Scale distance feet");
  feetAbbreviation = self->_feetAbbreviation;
  self->_feetAbbreviation = v3;

  v5 = _MKLocalizedStringFromThisBundle(@"Scale distance yards");
  yardAbbreviation = self->_yardAbbreviation;
  self->_yardAbbreviation = v5;

  v7 = _MKLocalizedStringFromThisBundle(@"Scale distance miles");
  milesAbbreviation = self->_milesAbbreviation;
  self->_milesAbbreviation = v7;

  v9 = _MKLocalizedStringFromThisBundle(@"Scale distance meters");
  metersAbbreviation = self->_metersAbbreviation;
  self->_metersAbbreviation = v9;

  v11 = _MKLocalizedStringFromThisBundle(@"Scale distance kilometers");
  kilometersAbbreviation = self->_kilometersAbbreviation;
  self->_kilometersAbbreviation = v11;
}

- (id)_setupOutlineView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = [v4 layer];
  [v5 setBackgroundColor:0];

  v6 = [v4 layer];
  [v6 setBorderWidth:1.0];

  segmentBorderWidth = self->_segmentBorderWidth;
  v8 = [v4 layer];
  [v8 setBorderWidth:segmentBorderWidth];

  v9 = *MEMORY[0x1E69796E8];
  v10 = [v4 layer];
  [v10 setCornerCurve:v9];

  v11 = [v4 layer];
  [v11 setMaskedCorners:15];

  return v4;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)_updateVisibility
{
  v3 = [(MKScaleView *)self mapView];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = [v3 mapType];
  if (([v4 _showsNightMode] & 1) == 0 && (v5 - 1) >= 4 && v5 != 107)
  {
    if (![(MKScaleView *)self useLightText])
    {
      goto LABEL_8;
    }

    v6 = 0;
    goto LABEL_7;
  }

  if (![(MKScaleView *)self useLightText])
  {
    v6 = 1;
LABEL_7:
    [(MKScaleView *)self setUseLightText:v6];
  }

LABEL_8:
  scaleVisibility = self->_scaleVisibility;
  if (scaleVisibility == 2 || !scaleVisibility && [v4 _isZooming] && objc_msgSend(v4, "_shouldDisplayScaleForCurrentRegion"))
  {
    [v4 bounds];
    v8 = 1;
    [v4 _distanceFromPoint:v4 toPoint:1 fromView:1.0 withPrecision:{1.0, CGRectGetMaxX(v14) + -1.0, 1.0}];
    [(MKScaleView *)self setDistanceInMeters:?];
    goto LABEL_14;
  }

LABEL_13:
  v8 = 0;
LABEL_14:
  if (self->_isVisible != v8)
  {
    self->_isVisible = v8;
    v9 = 0.7;
    if (v8)
    {
      v9 = 0.1;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__MKScaleView__updateVisibility__block_invoke;
    v12[3] = &unk_1E76CA760;
    v13 = v8;
    v12[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__MKScaleView__updateVisibility__block_invoke_2;
    v10[3] = &unk_1E76CCF40;
    v10[4] = self;
    v11 = v8;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v12 options:v10 animations:v9 completion:0.0];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  legendMarginLeft = self->_legendMarginLeft;
  legendMarginBottom = self->_legendMarginBottom;
  v4 = 0.0;
  v5 = legendMarginLeft;
  result.right = v5;
  result.bottom = legendMarginBottom;
  result.left = legendMarginLeft;
  result.top = v4;
  return result;
}

- (void)layoutSubviews
{
  v87 = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = MKScaleView;
  [(MKScaleView *)&v84 layoutSubviews];
  v3 = [(MKScaleView *)self effectiveUserInterfaceLayoutDirection]== 1;
  v4 = self->_legendAlignment == 1;
  v71 = v3 ^ v4;
  [(_MKScaleUnitsView *)self->_unitsView setRTL:?];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  *&v83.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v83.m33 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  *&v83.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v83.m43 = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  *&v83.m11 = *MEMORY[0x1E69792E8];
  *&v83.m13 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  *&v83.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v83.m23 = v8;
  if (v3 != v4)
  {
    CATransform3DMakeScale(&v83, -1.0, 1.0, 1.0);
  }

  v82 = v83;
  v9 = [(UIView *)self->_contentView layer];
  v81 = v82;
  [v9 setTransform:&v81];

  v80 = v83;
  v10 = [(_MKScaleUnitsView *)self->_unitsView layer];
  v81 = v80;
  [v10 setTransform:&v81];

  [(MKScaleView *)self _calculateSegments];
  [(MKScaleView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  unitsFrameHeight = self->_unitsFrameHeight;
  [(MKScaleView *)self bounds];
  [(_MKScaleUnitsView *)self->_unitsView setFrame:v12, CGRectGetMaxY(v88) - unitsFrameHeight - self->_legendMarginBottom - self->_segmentThickness - self->_legendUnitsSpacing, v16, unitsFrameHeight];
  v89.origin.x = v12;
  v89.origin.y = v14;
  v89.size.width = v16;
  v89.size.height = v18;
  v70 = 640;
  v20 = CGRectGetMinX(v89) + self->_legendMarginLeft;
  v90.origin.x = v12;
  v90.origin.y = v14;
  v90.size.width = v16;
  v90.size.height = v18;
  v21 = CGRectGetMaxY(v90) - self->_legendMarginBottom;
  segmentLengthInPixels = self->_segmentLengthInPixels;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0;
  segmentThickness = self->_segmentThickness;
  v27 = v20;
  while (1)
  {
    v28 = self->_segmentThickness;
    v29 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v25, v70];
    if (![(_MKScaleUnitsView *)self->_unitsView canDisplaySegment:v25])
    {
      break;
    }

    [v29 setFrame:{v27, v21, segmentLengthInPixels, v28}];
    if ([v29 isHidden])
    {
      [v23 addObject:v29];
    }

    ++v25;
    v27 = segmentLengthInPixels + v27;

    if (v25 == 3)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  [(UIVisualEffectView *)self->_blurredSegment setFrame:v20, v21, segmentLengthInPixels * v25, segmentThickness];
  blurredSegment = self->_blurredSegment;
  if (v25)
  {
    [v23 addObject:blurredSegment];
    if (v25 > 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [v24 addObject:blurredSegment];
  }

  for (i = v25; i != 3; ++i)
  {
    v32 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:i];
    if (([v32 isHidden] & 1) == 0)
    {
      [v24 addObject:v32];
    }
  }

LABEL_18:
  v91.size.height = self->_segmentThickness;
  v91.size.width = v27 - v20;
  v91.origin.x = v20;
  v91.origin.y = v21;
  v92 = CGRectInset(v91, -self->_segmentBorderWidth, -self->_segmentBorderWidth);
  x = v92.origin.x;
  y = v92.origin.y;
  width = v92.size.width;
  height = v92.size.height;
  v93 = CGRectInset(v92, -self->_segmentBorderWidth, -self->_segmentBorderWidth);
  v37 = v93.origin.x;
  v38 = v93.origin.y;
  v39 = v93.size.width;
  v40 = v93.size.height;
  [(UIView *)self->_displayedOutline setFrame:x, y, width, height];
  [(UIView *)self->_displayedWhiteOutline setFrame:v37, v38, v39, v40];
  v41 = [(MKScaleView *)self mapView];
  v42 = [v41 mapType];
  if ((v42 - 1) < 4 || v42 == 107 || (v43 = [(MKScaleView *)self mapType], v43 - 1 < 4) || v43 == 107)
  {

    [v23 addObject:self->_displayedWhiteOutline];
    v41 = [(UIView *)self->_displayedWhiteOutline layer];
    [v41 setCornerRadius:v40 * 0.5];
  }

  oldNumberOfSegments = self->_oldNumberOfSegments;
  if (!oldNumberOfSegments)
  {
    self->_oldNumberOfSegments = v25;
    oldNumberOfSegments = v25;
  }

  if (v25 != oldNumberOfSegments)
  {
    [v23 addObject:self->_displayedOutline];
    self->_oldNumberOfSegments = v25;
  }

  if (v25)
  {
    v45 = self->_segmentThickness * 0.5;
    if (v25 == 1)
    {
      v46 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:0];
      [v46 _setCornerRadius:1 continuous:15 maskedCorners:v45];
    }

    else
    {
      for (j = 0; j != v25; ++j)
      {
        if (v25 - 1 == j)
        {
          v48 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v25 - 1];
          v49 = v48;
          v50 = v45;
          v51 = 1;
          v52 = 10;
        }

        else
        {
          segments = self->_segments;
          if (j)
          {
            v48 = [(NSMutableArray *)segments objectAtIndexedSubscript:j];
            v49 = v48;
            v50 = 0.0;
            v51 = 0;
            v52 = 0;
          }

          else
          {
            v48 = [(NSMutableArray *)segments objectAtIndexedSubscript:0];
            v49 = v48;
            v50 = v45;
            v51 = 1;
            v52 = 5;
          }
        }

        [v48 _setCornerRadius:v51 continuous:v52 maskedCorners:v50];
      }
    }
  }

  v54 = [(UIView *)self->_displayedOutline layer];
  [v54 setCornerRadius:height * 0.5];

  v55 = [(UIView *)self->_displayedWhiteOutline layer];
  [v55 setCornerRadius:v40 * 0.5];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v56 = v23;
  v57 = [v56 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v77;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v77 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v76 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v61 setHidden:0];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v58);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v62 = v24;
  v63 = [v62 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v73;
    do
    {
      for (m = 0; m != v64; ++m)
      {
        if (*v73 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v72 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v67 setHidden:1];
        }
      }

      v64 = [v62 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v64);
  }

  v68 = 0.0;
  if (self->_legendAlignment == 2)
  {
    [(MKScaleView *)self bounds];
    if (v71)
    {
      v68 = -((v69 - width) * 0.5 - *(&self->super.super.super.isa + v70));
    }

    else
    {
      v68 = (v69 - width) * 0.5 - *(&self->super.super.super.isa + v70);
    }
  }

  [(UIView *)self->_contentView frame];
  [(UIView *)self->_contentView setFrame:v68];
}

- (void)_calculateSegments
{
  if (self->_distanceInMeters > 0.0)
  {
    [(MKScaleView *)self bounds];
    if (v3 > 0.0)
    {
      [(MKScaleView *)self bounds];
      v5 = v4;
      v6 = [(MKScaleView *)self mapView];
      v7 = v6;
      if (v6)
      {
        [v6 bounds];
        v9 = v8;
      }

      else
      {
        v10 = [(MKScaleView *)self superview];
        [v10 bounds];
        v9 = v11;
      }

      v12 = self->_distanceInMeters * (v5 / v9);
      if (self->_useMetric || (v12 = v12 * 0.000621371192, v12 >= 0.25))
      {
        v13 = 0;
      }

      else
      {
        v12 = v12 * 5280.0;
        v13 = 1;
      }

      v14 = -3;
LABEL_12:
      v15 = __exp10(v14);
      v16 = 0;
      while (1)
      {
        v17 = v15 * self->_magicNumbers[v16];
        self->_resultSegmentLength = v17;
        v18 = v12 / v17;
        if (v18 >= 2.0 && v18 < 5.0)
        {
          break;
        }

        if (++v16 == 3)
        {
          if (++v14 != 7)
          {
            goto LABEL_12;
          }

          break;
        }
      }

      UIRoundToViewScale();
      self->_segmentLengthInPixels = v20;
      resultSegmentLength = self->_resultSegmentLength;
      self->_resultSegmentLengthInMeters = resultSegmentLength;
      if (!self->_useMetric)
      {
        if (v13)
        {
          resultSegmentLength = resultSegmentLength / 5280.0;
        }

        self->_resultSegmentLengthInMeters = resultSegmentLength * 1609.344;
      }

      [(_MKScaleUnitsView *)self->_unitsView setSegmentLengthInPixels:self->_segmentLengthInPixels];
      v22 = [MEMORY[0x1E695DF70] array];
      [(MKScaleView *)self _localizedDistanceStringsWithMeters:self->_resultSegmentLengthInMeters imperial:v13 useFeet:self->_useMetric inMetric:self->_useYardsForShortDistances displaysYardsForShortDistances:v22 strings:self->_resultSegmentLength];
      [(_MKScaleUnitsView *)self->_unitsView setUnits:v22];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(MKScaleView *)self isHidden])
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__MKScaleView_intrinsicContentSize__block_invoke;
    block[3] = &unk_1E76CDB38;
    block[4] = self;
    if (intrinsicContentSize_onceToken != -1)
    {
      dispatch_once(&intrinsicContentSize_onceToken, block);
    }

    v5 = [(MKScaleView *)self _controlSize];
    v6 = &intrinsicContentSize_largeIntrinsicContentSize_1;
    if (v5 != 2)
    {
      v6 = &intrinsicContentSize_intrinsicSize_1;
    }

    v4 = *v6;
    v7 = &intrinsicContentSize_largeIntrinsicContentSize_0;
    if (v5 != 2)
    {
      v7 = &intrinsicContentSize_intrinsicSize_0;
    }

    v3 = *v7;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_localizedDistanceStringsWithMeters:(unsigned int)a3 imperial:(double)a4 useFeet:(BOOL)a5 inMetric:(BOOL)a6 displaysYardsForShortDistances:(BOOL)a7 strings:(id)a8
{
  v8 = a7;
  v9 = a6;
  v14 = a3;
  v17 = a8;
  [v17 removeAllObjects];
  if (v9)
  {
    if (a3 < 0x1F5)
    {
      v15 = [(MKScaleView *)self _scaleViewFormattedStringForInteger:a3];
      v16 = &OBJC_IVAR___MKScaleView__metersAbbreviation;
    }

    else
    {
      v15 = [(MKScaleView *)self _scaleViewFormattedStringForFloat:v14 / 1000.0];
      v16 = &OBJC_IVAR___MKScaleView__kilometersAbbreviation;
    }
  }

  else if ((a4 <= 0.95 || a4 > 1.05 || a5) && (a4 < 0.1 || a5))
  {
    if (v8)
    {
      v15 = [(MKScaleView *)self _scaleViewFormattedStringForInteger:llround(v14 * 1.0936133)];
      v16 = &OBJC_IVAR___MKScaleView__yardAbbreviation;
    }

    else
    {
      v15 = [(MKScaleView *)self _scaleViewFormattedStringForInteger:llround(a4)];
      v16 = &OBJC_IVAR___MKScaleView__feetAbbreviation;
    }
  }

  else
  {
    v15 = [(MKScaleView *)self _scaleViewFormattedStringForFloat:a4];
    v16 = &OBJC_IVAR___MKScaleView__milesAbbreviation;
  }

  [v17 addObject:v15];

  [v17 addObject:*(&self->super.super.super.isa + *v16)];
}

- (id)_scaleViewFormattedStringForInteger:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [(NSMutableDictionary *)self->_formattedNumberCache objectForKey:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:a3];
    [(NSMutableDictionary *)self->_formattedNumberCache setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

- (id)_scaleViewFormattedStringForFloat:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [(NSMutableDictionary *)self->_formattedNumberCache objectForKey:v5];
  if (!v6)
  {
    v6 = [(MKScaleView *)self _formattedStringForFloat:a3];
    [(NSMutableDictionary *)self->_formattedNumberCache setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

- (id)_formattedStringForFloat:(double)a3
{
  floatNumberFormatter = self->_floatNumberFormatter;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [(NSNumberFormatter *)floatNumberFormatter stringFromNumber:v4];

  return v5;
}

- (void)setUseLightText:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  useLightText = self->_useLightText;
  if (!useLightText || [(NSNumber *)useLightText BOOLValue]!= a3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v7 = self->_useLightText;
    self->_useLightText = v6;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = self->_segments;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v31 + 1) + 8 * i) removeFromSuperview];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    [(UIVisualEffectView *)self->_blurredSegment removeFromSuperview];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    segments = self->_segments;
    self->_segments = v13;

    v15 = [MEMORY[0x1E69DC730] effectWithStyle:1200];
    v16 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v15];
    blurredSegment = self->_blurredSegment;
    self->_blurredSegment = v16;

    v18 = 1;
    [(UIVisualEffectView *)self->_blurredSegment setHidden:1];
    [(UIVisualEffectView *)self->_blurredSegment _setCornerRadius:self->_segmentThickness * 0.5];
    [(UIView *)self->_contentView addSubview:self->_blurredSegment];
    v19 = 4;
    do
    {
      v20 = [(MKScaleView *)self _setupSegmentView:v18 & 1, v31];
      [v20 _setGroupName:@"com.apple.MapKit.Scale.Segments"];
      [(NSMutableArray *)self->_segments addObject:v20];
      [(UIView *)self->_contentView addSubview:v20];
      [v20 setHidden:1];
      v18 ^= 1u;

      --v19;
    }

    while (v19);
    v21 = [(MKScaleView *)self mapView];
    v22 = [v21 mapType];
    v23 = 0;
    v24 = &OBJC_IVAR___MKScaleView__borderColorSatellite;
    if ((v22 - 1) >= 4 && v22 != 107)
    {
      v25 = [(MKScaleView *)self mapType];
      v26 = v25 - 1;
      v27 = &OBJC_IVAR___MKScaleView__borderColorRegular;
      if (v25 == 107)
      {
        v27 = &OBJC_IVAR___MKScaleView__borderColorSatellite;
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      if (v26 >= 4)
      {
        v24 = v27;
      }

      else
      {
        v24 = &OBJC_IVAR___MKScaleView__borderColorSatellite;
      }

      if (v26 >= 4)
      {
        v23 = v28;
      }

      else
      {
        v23 = 0;
      }
    }

    v29 = [*(&self->super.super.super.isa + *v24) CGColor];
    v30 = [(UIView *)self->_displayedOutline layer];
    [v30 setBorderColor:v29];

    [(UIView *)self->_displayedWhiteOutline setHidden:v23];
    [(MKScaleView *)self setNeedsLayout];
    [(_MKScaleUnitsView *)self->_unitsView setUseLightText:v3];
    [(_MKScaleUnitsView *)self->_unitsView setNeedsLayout];
  }
}

- (void)_setControlSize:(unint64_t)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(MKScaleView *)self updateMetrics];
    [(MKScaleView *)self invalidateIntrinsicContentSize];
    v5 = [(MKScaleView *)self mapView];
    [v5 _updateScalePosition];
  }
}

- (id)_setupSegmentView:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:1200];
  v5 = [MEMORY[0x1E69DD248] effectForBlurEffect:v4 style:4];
  v6 = objc_alloc_init(MEMORY[0x1E69DD298]);
  v7 = v6;
  if (v3)
  {
    [v6 setEffect:v5];
    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = [v7 contentView];
    [v9 setBackgroundColor:v8];
  }

  return v7;
}

- (void)setDistanceInMeters:(double)a3
{
  if (self->_distanceInMeters != a3)
  {
    self->_distanceInMeters = a3;
    v4 = self->_layoutCounter + 1;
    self->_layoutCounter = v4;
    if ((-1431655765 * v4 + 715827882) <= 0x55555554)
    {
      [(MKScaleView *)self setNeedsLayout];
      self->_layoutCounter = 0;
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MKScaleView;
  [(MKScaleView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MKScaleView *)self setNeedsLayout];
}

- (void)memoryWarning:(id)a3
{
  [(_MKScaleUnitsView *)self->_unitsView clearCaches:a3];
  formattedNumberCache = self->_formattedNumberCache;

  [(NSMutableDictionary *)formattedNumberCache removeAllObjects];
}

- (void)updateLocale:(id)a3
{
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 currentLocale];
  self->_useMetric = [v6 _navigation_distanceUsesMetricSystem];
  self->_useYardsForShortDistances = [v6 _navigation_useYardsForShortDistances];
  [(MKScaleView *)self _updateStrings];
  [(MKScaleView *)self memoryWarning:v5];
}

- (void)_traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v9 = a4;
  if (![(MKScaleView *)self usedInternallyByMapView])
  {
    v5 = [(MKScaleView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];
    v7 = [v9 userInterfaceStyle];

    if (v6 != v7)
    {
      v8 = [(MKScaleView *)self traitCollection];
      -[MKScaleView setUseLightText:](self, "setUseLightText:", [v8 userInterfaceStyle] == 2);
    }
  }
}

uint64_t __32__MKScaleView__updateVisibility__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    [*(a1 + 32) setHidden:0];
    [*(a1 + 32) invalidateIntrinsicContentSize];
    [*(a1 + 32) setNeedsLayout];
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 32);

  return [v3 setAlpha:v2];
}

uint64_t __32__MKScaleView__updateVisibility__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setHidden:(*(result + 40) & 1) == 0];
    [*(v2 + 32) invalidateIntrinsicContentSize];
    v3 = *(v2 + 32);

    return [v3 setNeedsLayout];
  }

  return result;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [(MKMapView *)WeakRetained _stopPostingScaleUpdateNotifications];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MKScaleView;
  [(MKScaleView *)&v5 dealloc];
}

- (void)setScaleVisibility:(MKFeatureVisibility)scaleVisibility
{
  if (self->_scaleVisibility != scaleVisibility)
  {
    self->_scaleVisibility = scaleVisibility;
    [(MKScaleView *)self _updateVisibility];
  }
}

- (void)setMapView:(MKMapView *)mapView
{
  obj = mapView;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_mapView);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_mapView);
      [(MKMapView *)v6 _stopPostingScaleUpdateNotifications];

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = objc_loadWeakRetained(&self->_mapView);
      [v7 removeObserver:self name:0 object:v8];
    }

    v9 = objc_storeWeak(&self->_mapView, obj);

    if (obj)
    {
      v10 = objc_loadWeakRetained(&self->_mapView);
      if (v10)
      {
        ++v10[165];
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = objc_loadWeakRetained(&self->_mapView);
      [v11 addObserver:self selector:sel_shouldUpdateScaleNotification_ name:@"MKMapViewShouldUpdateScaleNotification" object:v12];

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = objc_loadWeakRetained(&self->_mapView);
      [v13 addObserver:self selector:sel_shouldUpdateScaleNotification_ name:@"MKMapViewDidChangeMapTypeNotification" object:v14];
    }

    [(MKScaleView *)self _updateVisibility];
  }
}

- (void)setLegendAlignment:(MKScaleViewAlignment)legendAlignment
{
  if (self->_legendAlignment != legendAlignment)
  {
    self->_legendAlignment = legendAlignment;
    [(MKScaleView *)self setNeedsLayout];
  }
}

- (MKScaleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v40[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = MKScaleView;
  v5 = [(MKScaleView *)&v39 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    v5->_isVisible = 1;
    v5->_controlSize = 1;
    [(MKScaleView *)v5 updateMetrics];
    [(MKScaleView *)v6 updateLocale:0];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = MNLocaleDidChangeNotification();
    [v7 addObserver:v6 selector:sel_updateLocale_ name:v8 object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel_memoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

    *v6->_magicNumbers = xmmword_1A30F71E0;
    v6->_magicNumbers[2] = 5.0;
    v10 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.730000019];
    borderColorRegular = v6->_borderColorRegular;
    v6->_borderColorRegular = v10;

    v12 = [objc_alloc(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
    borderColorSatellite = v6->_borderColorSatellite;
    v6->_borderColorSatellite = v12;

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(MKScaleView *)v6 setBackgroundColor:v14];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    segments = v6->_segments;
    v6->_segments = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, width, height}];
    contentView = v6->_contentView;
    v6->_contentView = v17;

    [(MKScaleView *)v6 addSubview:v6->_contentView];
    v19 = objc_alloc_init(_MKScaleUnitsView);
    unitsView = v6->_unitsView;
    v6->_unitsView = v19;

    [(_MKScaleUnitsView *)v6->_unitsView setFontSize:v6->_fontSize];
    [(_MKScaleUnitsView *)v6->_unitsView setLegendMarginLeft:v6->_legendMarginLeft];
    [(UIView *)v6->_contentView addSubview:v6->_unitsView];
    v21 = [(MKScaleView *)v6 _setupOutlineView];
    displayedOutline = v6->_displayedOutline;
    v6->_displayedOutline = v21;

    [(UIView *)v6->_contentView addSubview:v6->_displayedOutline];
    v23 = [(MKScaleView *)v6 _setupOutlineView];
    displayedWhiteOutline = v6->_displayedWhiteOutline;
    v6->_displayedWhiteOutline = v23;

    v25 = [MEMORY[0x1E69DC888] whiteColor];
    v26 = [v25 CGColor];
    v27 = [(UIView *)v6->_displayedWhiteOutline layer];
    [v27 setBorderColor:v26];

    [(UIView *)v6->_contentView addSubview:v6->_displayedWhiteOutline];
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    formattedNumberCache = v6->_formattedNumberCache;
    v6->_formattedNumberCache = v28;

    [(MKScaleView *)v6 setUseLightText:0];
    [(MKScaleView *)v6 _updateStrings];
    v30 = [MEMORY[0x1E69DC938] currentDevice];
    v6->_grQuality = [v30 _graphicsQuality];

    v6->_layoutCounter = -1;
    v31 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    floatNumberFormatter = v6->_floatNumberFormatter;
    v6->_floatNumberFormatter = v31;

    v33 = v6->_floatNumberFormatter;
    v34 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSNumberFormatter *)v33 setLocale:v34];

    [(NSNumberFormatter *)v6->_floatNumberFormatter setNumberStyle:1];
    [(NSNumberFormatter *)v6->_floatNumberFormatter setRoundingMode:6];
    [(NSNumberFormatter *)v6->_floatNumberFormatter setUsesSignificantDigits:0];
    [(NSNumberFormatter *)v6->_floatNumberFormatter setMaximumSignificantDigits:3];
    [(NSNumberFormatter *)v6->_floatNumberFormatter setMaximumFractionDigits:3];
    [(_MKScaleUnitsView *)v6->_unitsView setFloatNumberFormatter:v6->_floatNumberFormatter];
    v40[0] = objc_opt_class();
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v36 = [(MKScaleView *)v6 registerForTraitChanges:v35 withAction:sel__traitEnvironment_didChangeTraitCollection_];

    v37 = +[MKUsageCounter sharedCounter];
    [v37 count:3];
  }

  return v6;
}

double __35__MKScaleView_intrinsicContentSize__block_invoke(uint64_t a1)
{
  intrinsicContentSize_intrinsicSize_0 = 0x4065400000000000;
  intrinsicContentSize_intrinsicSize_1 = 0x4034000000000000;
  v2 = _MKLinkedOnOrAfterReleaseSet(2824);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v3 + 640) + *(v3 + 640);
    *&intrinsicContentSize_intrinsicSize_0 = *&intrinsicContentSize_intrinsicSize_0 - v4;
    v5 = *(v3 + 648);
    *&intrinsicContentSize_intrinsicSize_1 = *&intrinsicContentSize_intrinsicSize_1 - v5;
  }

  else
  {
    v5 = *(v3 + 648);
    v4 = *(v3 + 640) + *(v3 + 640);
  }

  *&intrinsicContentSize_largeIntrinsicContentSize_0 = 212.5 - v4;
  result = 25.0 - v5;
  *&intrinsicContentSize_largeIntrinsicContentSize_1 = 25.0 - v5;
  return result;
}

- (MKScaleView)initWithMapView:(id)a3
{
  v4 = a3;
  v5 = [(MKScaleView *)self initWithFrame:0.0, 0.0, 170.0, 20.0];
  v6 = v5;
  if (v5)
  {
    [(MKScaleView *)v5 setAlpha:0.0];
    [(MKScaleView *)v6 setHidden:1];
    v6->_isVisible = 0;
    [(MKScaleView *)v6 setMapView:v4];
  }

  return v6;
}

+ (MKScaleView)scaleViewWithMapView:(MKMapView *)mapView
{
  v4 = mapView;
  v5 = [[a1 alloc] initWithMapView:v4];

  return v5;
}

@end
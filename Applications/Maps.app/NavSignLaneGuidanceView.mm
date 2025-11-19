@interface NavSignLaneGuidanceView
+ (_NSRange)_visibleLaneRangeForNumberOfLanes:(unint64_t)a3 maxNumberOfVisibleLanes:(unint64_t)a4 highlightedLaneRange:(_NSRange)a5;
+ (int64_t)maxNumberVisibleLanesForSignWidth:(double)a3;
- (BOOL)highlightedLanesNotInVisibleRange;
- (NavSignLaneGuidanceView)initWithLaneStyle:(unint64_t)a3;
- (UIEdgeInsets)edgeInsets;
- (_NSRange)highlightedLaneRange;
- (_NSRange)visibleLaneRange;
- (double)availableLaneWidth;
- (double)availableWidthForLanes;
- (id)_laneViewForLane:(id)a3;
- (id)_newGradientLayerWithFrame:(CGRect)a3 forLeftEdge:(BOOL)a4;
- (id)accessibilityIdentifier;
- (id)duplicateLaneGuidanceView;
- (unint64_t)_rightmostVisibleLaneIndex;
- (void)_debugHighlightLaneView:(id)a3;
- (void)_resetLanes;
- (void)_setupConstraints;
- (void)_updateLaneContentMargins;
- (void)_updateMaxLanesForSignWidth:(double)a3;
- (void)layoutSubviews;
- (void)setDebugHighlightLanes:(BOOL)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setInvalidArrowColor:(id)a3;
- (void)setLanes:(id)a3;
- (void)setShouldTransformWithVerticalScale:(BOOL)a3;
- (void)setVerticalScale:(double)a3;
@end

@implementation NavSignLaneGuidanceView

- (_NSRange)visibleLaneRange
{
  p_visibleLaneRange = &self->_visibleLaneRange;
  location = self->_visibleLaneRange.location;
  length = p_visibleLaneRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_laneViewForLane:(id)a3
{
  v4 = a3;
  v5 = [[GuidanceLaneView alloc] initWithLaneInfo:v4 maneuverHasPreferredLane:self->_maneuverHasPreferredLane drawingBiasDirection:self->_laneArrowBiasDirection laneStyle:self->_laneStyle];

  [(GuidanceLaneView *)v5 setInvalidArrowColor:self->_invalidArrowColor];
  [(GuidanceLaneView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [(GuidanceLaneView *)v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1144750080;
  [(GuidanceLaneView *)v5 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [(GuidanceLaneView *)v5 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1144733696;
  [(GuidanceLaneView *)v5 setContentHuggingPriority:1 forAxis:v9];

  return v5;
}

- (void)_debugHighlightLaneView:(id)a3
{
  v11 = a3;
  if (![(NavSignLaneGuidanceView *)self debugHighlightLanes])
  {
    goto LABEL_4;
  }

  v4 = [v11 laneInfo];
  v5 = [v4 isPreferredLaneForManeuver];

  if (!v5)
  {
    v8 = [v11 laneInfo];
    v9 = [v8 isLaneForManeuver];

    if (v9)
    {
      v6 = +[UIColor yellowColor];
      goto LABEL_7;
    }

LABEL_4:
    v7 = +[UIColor clearColor];
    [v11 setBackgroundColor:v7];
    goto LABEL_8;
  }

  v6 = +[UIColor redColor];
LABEL_7:
  v7 = v6;
  v10 = [v6 colorWithAlphaComponent:0.5];
  [v11 setBackgroundColor:v10];

LABEL_8:
}

- (void)_resetLanes
{
  v3 = sub_100D6E0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableArray *)self->_laneViews count];
    v5 = NSStringFromRange(self->_visibleLaneRange);
    [(NavSignLaneGuidanceView *)self frame];
    v6 = NSStringFromCGRect(v84);
    *buf = 134349826;
    v76 = self;
    v77 = 2048;
    v78 = v4;
    v79 = 2112;
    v80 = v5;
    v81 = 2112;
    v82 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] _resetLanes: will reset lanes, current - lanes.count: %lu, _visibleLaneRange: %@, frame: %@", buf, 0x2Au);
  }

  leftEdgeLaneGradientLayer = self->_leftEdgeLaneGradientLayer;
  self->_leftEdgeLaneGradientLayer = 0;

  rightEdgeLaneGradientLayer = self->_rightEdgeLaneGradientLayer;
  self->_rightEdgeLaneGradientLayer = 0;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = self->_laneViews;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v71;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v71 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v70 + 1) + 8 * i) removeFromSuperview];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_laneViews removeAllObjects];
  v68 = self->_lanes;
  v14 = [(NSArray *)v68 count];
  v15 = [(NavSignLaneGuidanceView *)self highlightedLaneRange];
  p_visibleLaneRange = &self->_visibleLaneRange;
  self->_visibleLaneRange.location = [NavSignLaneGuidanceView _visibleLaneRangeForNumberOfLanes:v14 maxNumberOfVisibleLanes:self->_maxNumberOfVisibleLanes highlightedLaneRange:v15, v17];
  self->_visibleLaneRange.length = v18;
  if (v14 && v18)
  {
    v19 = [(NavSignLaneGuidanceView *)self _leftmostVisibleLaneIndex];
    v20 = [(NavSignLaneGuidanceView *)self _rightmostVisibleLaneIndex];
    length = self->_visibleLaneRange.length;
    v22 = +[NSMutableArray array];
    v23 = 0.5 / length;
    v62 = v14 - 1;
    v69 = -(v19 + (length >> 1));
    v66 = -v14;
    v67 = length;
    v63 = -v20;
    v64 = v22;
    v65 = -v19;
    v24 = -1;
    v25 = &OBJC_IVAR___CarZoomButtonView__panButton;
    v26 = 1.0 / length;
    while (1)
    {
      v27 = v69 + v24;
      v28 = [(NSArray *)v68 objectAtIndexedSubscript:v24 + 1];
      v29 = [(NavSignLaneGuidanceView *)self _laneViewForLane:v28];

      [(NSMutableArray *)self->_laneViews addObject:v29];
      [(NavSignLaneGuidanceView *)self addSubview:v29];
      if (v67)
      {
        if (v27 == -1)
        {
          v32 = [(NavSignLaneGuidanceView *)v29 centerXAnchor];
          v33 = [(NavSignLaneGuidanceView *)self centerXAnchor];
          v34 = [v32 constraintEqualToAnchor:v33];
LABEL_21:
          v36 = v34;
          [v22 addObject:v34];
        }
      }

      else
      {
        if (v27 == -1)
        {
          v30 = [(NavSignLaneGuidanceView *)self centerXAnchor];
          v31 = v29;
          goto LABEL_20;
        }

        if (v69 + v24 == -2)
        {
          v30 = [(NavSignLaneGuidanceView *)v29 centerXAnchor];
          v31 = self;
LABEL_20:
          v35 = [(NavSignLaneGuidanceView *)v31 centerXAnchor];
          v32 = [v30 anchorWithOffsetToAnchor:v35];

          v33 = [*(&self->super.super.super.super.isa + v25[542]) widthAnchor];
          v34 = [v32 constraintEqualToAnchor:v33 multiplier:v23];
          goto LABEL_21;
        }
      }

      if (v24 != -1)
      {
        v37 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:v24];
        v38 = [v37 centerXAnchor];
        v39 = [(NavSignLaneGuidanceView *)v29 centerXAnchor];
        v40 = [v38 anchorWithOffsetToAnchor:v39];

        v41 = [*(&self->super.super.super.super.isa + v25[542]) widthAnchor];
        v42 = [v40 constraintEqualToAnchor:v41 multiplier:v26];
        [v22 addObject:v42];
      }

      v43 = [(NavSignLaneGuidanceView *)v29 topAnchor];
      v44 = v25[542];
      v45 = [*(&self->super.super.super.super.isa + v44) topAnchor];
      v46 = [v43 constraintEqualToAnchor:v45];
      [v22 addObject:v46];

      v47 = [(NavSignLaneGuidanceView *)v29 bottomAnchor];
      v48 = [*(&self->super.super.super.super.isa + v44) bottomAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];
      [v22 addObject:v49];

      v50 = v65 + v24 != -1 || v24 == -1;
      v51 = !v50;
      p_leftEdgeLaneGradientLayer = &self->_leftEdgeLaneGradientLayer;
      if (!v50 || (v53 = 0, v63 + v24 == -1) && (p_leftEdgeLaneGradientLayer = &self->_rightEdgeLaneGradientLayer, v24 + 1 < v62))
      {
        [(NavSignLaneGuidanceView *)v29 bounds];
        v54 = [(NavSignLaneGuidanceView *)self _newGradientLayerWithFrame:v51 forLeftEdge:?];
        v55 = *p_leftEdgeLaneGradientLayer;
        *p_leftEdgeLaneGradientLayer = v54;

        v53 = *p_leftEdgeLaneGradientLayer;
      }

      v56 = [(NavSignLaneGuidanceView *)v29 layer];
      [v56 setMask:v53];

      [(NavSignLaneGuidanceView *)self _debugHighlightLaneView:v29];
      ++v24;
      v25 = &OBJC_IVAR___CarZoomButtonView__panButton;
      v22 = v64;
      if (v66 + v24 == -1)
      {
        [NSLayoutConstraint activateConstraints:v64];
        v57 = sub_100D6E0B8();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [(NSMutableArray *)self->_laneViews count];
          v59 = NSStringFromRange(self->_visibleLaneRange);
          *buf = 134349570;
          v76 = self;
          v77 = 2048;
          v78 = v58;
          v79 = 2112;
          v80 = v59;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "[%{public}p] _resetLanes: did reset lanes, current - lanes.count: %lu, _visibleLaneRange: %@", buf, 0x20u);
        }

        [(NavSignLaneGuidanceView *)self setNeedsLayout];
        goto LABEL_41;
      }
    }
  }

  *p_visibleLaneRange = xmmword_1012127F0;
  v22 = sub_100D6E0B8();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v60 = [(NSMutableArray *)self->_laneViews count];
    v83.location = p_visibleLaneRange->location;
    v83.length = self->_visibleLaneRange.length;
    v61 = NSStringFromRange(v83);
    *buf = 134349570;
    v76 = self;
    v77 = 2048;
    v78 = v60;
    v79 = 2112;
    v80 = v61;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] _resetLanes: did reset lanes, current - lanes.count: %lu, _visibleLaneRange: %@", buf, 0x20u);
  }

LABEL_41:
}

- (void)_setupConstraints
{
  v40 = +[NSMutableArray array];
  v3 = objc_alloc_init(UILayoutGuide);
  laneContentGuide = self->_laneContentGuide;
  self->_laneContentGuide = v3;

  [(NavSignLaneGuidanceView *)self addLayoutGuide:self->_laneContentGuide];
  v5 = [(UILayoutGuide *)self->_laneContentGuide topAnchor];
  v6 = [(NavSignLaneGuidanceView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  laneContentTopMarginConstraint = self->_laneContentTopMarginConstraint;
  self->_laneContentTopMarginConstraint = v7;

  v9 = [(NavSignLaneGuidanceView *)self bottomAnchor];
  v10 = [(UILayoutGuide *)self->_laneContentGuide bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  laneContentBottomMarginConstraint = self->_laneContentBottomMarginConstraint;
  self->_laneContentBottomMarginConstraint = v11;

  v13 = [(UILayoutGuide *)self->_laneContentGuide leftAnchor];
  v14 = [(NavSignLaneGuidanceView *)self leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  laneContentLeftMarginConstraint = self->_laneContentLeftMarginConstraint;
  self->_laneContentLeftMarginConstraint = v15;

  v17 = [(NavSignLaneGuidanceView *)self rightAnchor];
  v18 = [(UILayoutGuide *)self->_laneContentGuide rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  laneContentRightMarginConstraint = self->_laneContentRightMarginConstraint;
  self->_laneContentRightMarginConstraint = v19;

  v21 = self->_laneContentLeftMarginConstraint;
  v42[0] = self->_laneContentTopMarginConstraint;
  v42[1] = v21;
  v22 = self->_laneContentBottomMarginConstraint;
  v42[2] = self->_laneContentRightMarginConstraint;
  v42[3] = v22;
  v23 = [NSArray arrayWithObjects:v42 count:4];
  [v40 addObjectsFromArray:v23];

  v24 = objc_alloc_init(UILayoutGuide);
  offsetFromBottomGuide = self->_offsetFromBottomGuide;
  self->_offsetFromBottomGuide = v24;

  [(NavSignLaneGuidanceView *)self addLayoutGuide:self->_offsetFromBottomGuide];
  v26 = [(UILayoutGuide *)self->_offsetFromBottomGuide heightAnchor];
  v27 = [v26 constraintEqualToConstant:0.0];
  offsetFromBottomHeightConstraint = self->_offsetFromBottomHeightConstraint;
  self->_offsetFromBottomHeightConstraint = v27;

  v39 = [(UILayoutGuide *)self->_offsetFromBottomGuide bottomAnchor];
  v29 = [(UILayoutGuide *)self->_laneContentGuide bottomAnchor];
  v30 = [v39 constraintEqualToAnchor:v29];
  v41[0] = v30;
  v31 = [(UILayoutGuide *)self->_offsetFromBottomGuide leftAnchor];
  v32 = [(UILayoutGuide *)self->_laneContentGuide leftAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v41[1] = v33;
  v34 = [(UILayoutGuide *)self->_offsetFromBottomGuide rightAnchor];
  v35 = [(UILayoutGuide *)self->_laneContentGuide rightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v37 = self->_offsetFromBottomHeightConstraint;
  v41[2] = v36;
  v41[3] = v37;
  v38 = [NSArray arrayWithObjects:v41 count:4];
  [v40 addObjectsFromArray:v38];

  [NSLayoutConstraint activateConstraints:v40];
}

- (unint64_t)_rightmostVisibleLaneIndex
{
  p_visibleLaneRange = &self->_visibleLaneRange;
  location = self->_visibleLaneRange.location;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = p_visibleLaneRange->length;
    if (length)
    {
      return location + length - 1;
    }
  }

  return result;
}

- (id)_newGradientLayerWithFrame:(CGRect)a3 forLeftEdge:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(NavSignLaneGuidanceView *)self theme];
  v10 = [v9 navSignPrimaryColor];

  v11 = objc_alloc_init(CAGradientLayer);
  [v11 setFrame:{x, y, width, height}];
  [v11 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];
  v12 = 0.0;
  v13 = [v10 colorWithAlphaComponent:0.0];
  v18[0] = [v13 CGColor];
  v14 = [v10 colorWithAlphaComponent:1.0];
  v18[1] = [v14 CGColor];
  v15 = [NSArray arrayWithObjects:v18 count:2];
  [v11 setColors:v15];

  [v11 setLocations:&off_1016EDA00];
  if (v4)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  if (v4)
  {
    v12 = 1.0;
  }

  [v11 setStartPoint:{v16, 0.5}];
  [v11 setEndPoint:{v12, 0.5}];

  return v11;
}

- (void)_updateLaneContentMargins
{
  [(NavSignLaneGuidanceView *)self edgeInsets];
  [(NSLayoutConstraint *)self->_laneContentTopMarginConstraint setConstant:?];
  [(NavSignLaneGuidanceView *)self edgeInsets];
  [(NSLayoutConstraint *)self->_laneContentBottomMarginConstraint setConstant:v3];
  [(NavSignLaneGuidanceView *)self edgeInsets];
  [(NSLayoutConstraint *)self->_laneContentLeftMarginConstraint setConstant:v4];
  [(NavSignLaneGuidanceView *)self edgeInsets];
  laneContentRightMarginConstraint = self->_laneContentRightMarginConstraint;

  [(NSLayoutConstraint *)laneContentRightMarginConstraint setConstant:v5];
}

- (void)_updateMaxLanesForSignWidth:(double)a3
{
  v5 = sub_100D6E0B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastUpdatedSignWidth = self->_lastUpdatedSignWidth;
    v10 = 134349568;
    v11 = self;
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = lastUpdatedSignWidth;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] _updateMaxLanesForSignWidth: %.2f, previousWidth: %.2f", &v10, 0x20u);
  }

  if (a3 > 0.0 && vabdd_f64(self->_lastUpdatedSignWidth, a3) > 2.22044605e-16)
  {
    self->_lastUpdatedSignWidth = a3;
    if (self->_laneStyle - 1 < 2)
    {
      a3 = a3 + a3;
    }

    if ([NavSignLaneGuidanceView maxNumberVisibleLanesForSignWidth:a3]< 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NavSignLaneGuidanceView maxNumberVisibleLanesForSignWidth:a3];
    }

    self->_maxNumberOfVisibleLanes = v7;
    v8 = sub_100D6E0B8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      maxNumberOfVisibleLanes = self->_maxNumberOfVisibleLanes;
      v10 = 134349312;
      v11 = self;
      v12 = 2048;
      v13 = *&maxNumberOfVisibleLanes;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateMaxLanesForSignWidth: _maxNumberOfVisibleLanes set to %lu", &v10, 0x16u);
    }

    [(NavSignLaneGuidanceView *)self _resetLanes];
  }
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = NavSignLaneGuidanceView;
  [(NavSignLaneGuidanceView *)&v51 layoutSubviews];
  v3 = sub_100D6E0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableArray *)self->_laneViews count];
    [(NavSignLaneGuidanceView *)self bounds];
    v5 = NSStringFromCGRect(v64);
    v6 = [(NavSignLaneGuidanceView *)self superview];
    [v6 bounds];
    v7 = NSStringFromCGRect(v65);
    lastUpdatedSignWidth = self->_lastUpdatedSignWidth;
    v9 = NSStringFromRange(self->_visibleLaneRange);
    *buf = 134350338;
    v53 = self;
    v54 = 2048;
    v55 = v4;
    v56 = 2112;
    v57 = v5;
    v58 = 2112;
    v59 = v7;
    v60 = 2048;
    v61 = lastUpdatedSignWidth;
    v62 = 2112;
    v63 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] layoutSubviews _laneViews.count: %lu, self.bounds: %@, superview.bounds: %@, _lastUpdatedSignWidth: %.2f, visibleLaneRange: %@", buf, 0x3Eu);
  }

  if ([(NSMutableArray *)self->_laneViews count])
  {
    [(NavSignLaneGuidanceView *)self bounds];
    if (v10 == 0.0 || (v12 = v11, v11 == 0.0))
    {
      v23 = sub_100D6E0B8();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v53 = self;
        v24 = "[%{public}p] layoutSubviews zero bounds";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v24, buf, 0xCu);
      }

LABEL_17:

      return;
    }

    v13 = v10;
    v14 = [(NavSignLaneGuidanceView *)self superview];
    if (v14)
    {
      v15 = v14;
      v16 = self->_lastUpdatedSignWidth;
      v17 = [(NavSignLaneGuidanceView *)self superview];
      [v17 bounds];
      v19 = vabdd_f64(v16, v18);

      if (v19 > 2.22044605e-16)
      {
        v20 = sub_100D6E0B8();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v53 = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] layoutSubviews. _lastUpdatedSignWidth does not match current bounds, will update lanes for new width", buf, 0xCu);
        }

        v21 = [(NavSignLaneGuidanceView *)self superview];
        [v21 bounds];
        [(NavSignLaneGuidanceView *)self _updateMaxLanesForSignWidth:v22];

        [(NavSignLaneGuidanceView *)self layoutIfNeeded];
        return;
      }
    }

    if (self->_lastUpdatedSignWidth == 0.0)
    {
      v23 = sub_100D6E0B8();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v53 = self;
        v24 = "[%{public}p] layoutSubviews. _lastUpdatedSignWidth is 0";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v25 = [(NavSignLaneGuidanceView *)self _leftmostVisibleLaneIndex];
    v26 = [(NavSignLaneGuidanceView *)self _rightmostVisibleLaneIndex];
    if (v25 && v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:v25];
      [v27 bounds];
      [(CAGradientLayer *)self->_leftEdgeLaneGradientLayer setFrame:?];
    }

    if (v26 != 0x7FFFFFFFFFFFFFFFLL && v26 + 1 < [(NSMutableArray *)self->_laneViews count])
    {
      v28 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:v26];
      [v28 bounds];
      [(CAGradientLayer *)self->_rightEdgeLaneGradientLayer setFrame:?];
    }

    length = self->_visibleLaneRange.length;
    if (length)
    {
      v30 = v13 / length;
      v31 = 1.0;
      if (![(NavSignLaneGuidanceView *)self shouldTransformWithVerticalScale])
      {
        [(NavSignLaneGuidanceView *)self verticalScale];
        if (v32 <= 1.0)
        {
          [(NavSignLaneGuidanceView *)self verticalScale];
          v31 = v33;
        }
      }

      v34 = [(NavSignLaneGuidanceView *)self window];
      v35 = [v34 screen];
      [v35 nativeScale];
      if (v36 <= 2.0)
      {
        v37 = 51.0;
      }

      else
      {
        v37 = 60.0;
      }

      if (v30 < v37)
      {
        v31 = fmin(v31, v30 / v37);
      }

      v38 = 0.0;
      v39 = 0.0;
      if (v25 <= v26)
      {
        v40 = v25;
        do
        {
          v41 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:v40];
          [v41 intrinsicContentSize];
          if (v42 > v39)
          {
            [v41 intrinsicContentSize];
            v39 = v43;
          }

          [v41 intrinsicContentSize];
          if (v44 > v38)
          {
            [v41 intrinsicContentSize];
            v38 = v45;
          }

          ++v40;
        }

        while (v40 <= v26);
      }

      if (v38 * v31 > v30 && v38 > 0.0)
      {
        v31 = v30 / v38;
      }

      UIRoundToViewScale();
      v47 = v46 * v31;
      if (v12 < v46 * v31)
      {
        v31 = fmin(v31, v12 / v46);
        v47 = v31 * v46;
      }

      v48 = fmin(v12 - v47, 25.0 - v31 * 25.0);
      [(NSLayoutConstraint *)self->_offsetFromBottomHeightConstraint setConstant:v48];
      laneViews = self->_laneViews;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100D6EEC8;
      v50[3] = &unk_101652F88;
      v50[5] = v25;
      v50[6] = v26;
      *&v50[7] = v31;
      *&v50[8] = v48;
      v50[4] = self;
      [(NSMutableArray *)laneViews enumerateObjectsUsingBlock:v50];
    }
  }
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)duplicateLaneGuidanceView
{
  v3 = [objc_alloc(objc_opt_class()) initWithLaneStyle:self->_laneStyle];
  [(NavSignLaneGuidanceView *)self edgeInsets];
  [v3 setEdgeInsets:?];
  [(NavSignLaneGuidanceView *)self verticalScale];
  [v3 setVerticalScale:?];
  [v3 setShouldTransformWithVerticalScale:{-[NavSignLaneGuidanceView shouldTransformWithVerticalScale](self, "shouldTransformWithVerticalScale")}];
  v4 = [(NavSignLaneGuidanceView *)self lanes];
  [v3 setLanes:v4];

  return v3;
}

- (double)availableLaneWidth
{
  if (![(NavSignLaneGuidanceView *)self numberOfVisibleLanes])
  {
    return 0.0;
  }

  [(NavSignLaneGuidanceView *)self availableWidthForLanes];
  return v3 / [(NavSignLaneGuidanceView *)self numberOfVisibleLanes];
}

- (double)availableWidthForLanes
{
  [(NavSignLaneGuidanceView *)self bounds];
  Width = CGRectGetWidth(v8);
  [(NavSignLaneGuidanceView *)self edgeInsets];
  v5 = v4;
  [(NavSignLaneGuidanceView *)self edgeInsets];
  return fmax(Width - (v5 + v6), 0.0);
}

- (BOOL)highlightedLanesNotInVisibleRange
{
  v3 = [(NavSignLaneGuidanceView *)self lanes];
  v4 = [v3 count];
  v5 = [(NavSignLaneGuidanceView *)self maxNumberOfVisibleLanes];

  if (v4 > v5)
  {
    v6 = [(NavSignLaneGuidanceView *)self highlightedLaneRange];
    v8 = v7;
    if (v7 >= [(NavSignLaneGuidanceView *)self maxNumberOfVisibleLanes]|| v6 && v6 <= [(NavSignLaneGuidanceView *)self _leftmostVisibleLaneIndex])
    {
      return 1;
    }

    v9 = &v6[v8 - 1];
    v10 = [(NavSignLaneGuidanceView *)self lanes];
    if (v9 >= [v10 count] - 1)
    {
    }

    else
    {
      v11 = [(NavSignLaneGuidanceView *)self _rightmostVisibleLaneIndex];

      if (v9 >= v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (void)setInvalidArrowColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && self->_invalidArrowColor != v5)
  {
    objc_storeStrong(&self->_invalidArrowColor, a3);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_laneViews;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 setInvalidArrowColor:{self->_invalidArrowColor, v13}];
          [v12 setNeedsDisplay];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NavSignLaneGuidanceView *)self setNeedsDisplay];
  }
}

- (_NSRange)highlightedLaneRange
{
  v2 = [(NavSignLaneGuidanceView *)self lanes];
  v3 = [NavSignLaneGuidanceInfo highlightedLaneRangeForLanes:v2];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setDebugHighlightLanes:(BOOL)a3
{
  if (self->_debugHighlightLanes != a3)
  {
    self->_debugHighlightLanes = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_laneViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(NavSignLaneGuidanceView *)self _debugHighlightLaneView:*(*(&v9 + 1) + 8 * v8), v9];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setLanes:(id)a3
{
  v4 = a3;
  if (([MNComparison isValue:v4 equalTo:self->_lanes]& 1) == 0)
  {
    v5 = sub_100D6E0B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      lanes = self->_lanes;
      *buf = 134349570;
      v25 = self;
      v26 = 2112;
      v27 = lanes;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Changing lanes from %@ to %@", buf, 0x20u);
    }

    v7 = [v4 copy];
    v8 = self->_lanes;
    self->_lanes = v7;

    self->_maneuverHasPreferredLane = 0;
    self->_laneArrowBiasDirection = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_lanes;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 isPreferredLaneForManeuver])
          {
            v17 = [v14 directions];
            v18 = [v17 firstObject];
            [v18 direction];
            self->_laneArrowBiasDirection = MKLaneDirectionIsToTheLeft() ^ 1;

            self->_maneuverHasPreferredLane = 1;
            goto LABEL_16;
          }

          if ([v14 isLaneForManeuver])
          {
            v15 = [v14 directions];
            v16 = [v15 firstObject];
            [v16 direction];
            self->_laneArrowBiasDirection = MKLaneDirectionIsToTheLeft() ^ 1;
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    [(NavSignLaneGuidanceView *)self _resetLanes];
  }
}

- (void)setShouldTransformWithVerticalScale:(BOOL)a3
{
  if (self->_shouldTransformWithVerticalScale != a3)
  {
    self->_shouldTransformWithVerticalScale = a3;
    [(NavSignLaneGuidanceView *)self setNeedsLayout];
  }
}

- (void)setVerticalScale:(double)a3
{
  if (self->_verticalScale != a3 && a3 > 0.0 && a3 <= 1.0)
  {
    self->_verticalScale = a3;
    [(NavSignLaneGuidanceView *)self setNeedsLayout];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    [(NavSignLaneGuidanceView *)self _updateLaneContentMargins];
  }
}

- (NavSignLaneGuidanceView)initWithLaneStyle:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NavSignLaneGuidanceView;
  v4 = [(NavSignLaneGuidanceView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    laneViews = v4->_laneViews;
    v4->_laneViews = v5;

    v4->_laneStyle = a3;
    v4->_lastUpdatedSignWidth = 0.0;
    v4->_maxNumberOfVisibleLanes = 0x7FFFFFFFFFFFFFFFLL;
    v7 = *&UIEdgeInsetsZero.bottom;
    *&v4->_edgeInsets.top = *&UIEdgeInsetsZero.top;
    *&v4->_edgeInsets.bottom = v7;
    v4->_verticalScale = 1.0;
    [(NavSignLaneGuidanceView *)v4 setClipsToBounds:0];
    [(NavSignLaneGuidanceView *)v4 _setupConstraints];
    v8 = +[UIColor clearColor];
    [(NavSignLaneGuidanceView *)v4 setBackgroundColor:v8];
  }

  return v4;
}

+ (_NSRange)_visibleLaneRangeForNumberOfLanes:(unint64_t)a3 maxNumberOfVisibleLanes:(unint64_t)a4 highlightedLaneRange:(_NSRange)a5
{
  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 && a4)
  {
    v7 = a3 - a4;
    if (a3 >= a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a3;
    }

    if (a3 > a4)
    {
      if (a3 - (a5.length + a5.location) >= a5.location || a5.location < v7)
      {
        v7 = 0;
      }

      if (a5.length > a4)
      {
        v7 = 0;
      }

      if (a5.location == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v6 = v7;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  result.length = v5;
  result.location = v6;
  return result;
}

+ (int64_t)maxNumberVisibleLanesForSignWidth:(double)a3
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  else
  {
    return llround(a3 * 0.00266666667 * GEOConfigGetInteger());
  }
}

@end
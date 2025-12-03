@interface NavSignLaneGuidanceView
+ (_NSRange)_visibleLaneRangeForNumberOfLanes:(unint64_t)lanes maxNumberOfVisibleLanes:(unint64_t)visibleLanes highlightedLaneRange:(_NSRange)range;
+ (int64_t)maxNumberVisibleLanesForSignWidth:(double)width;
- (BOOL)highlightedLanesNotInVisibleRange;
- (NavSignLaneGuidanceView)initWithLaneStyle:(unint64_t)style;
- (UIEdgeInsets)edgeInsets;
- (_NSRange)highlightedLaneRange;
- (_NSRange)visibleLaneRange;
- (double)availableLaneWidth;
- (double)availableWidthForLanes;
- (id)_laneViewForLane:(id)lane;
- (id)_newGradientLayerWithFrame:(CGRect)frame forLeftEdge:(BOOL)edge;
- (id)accessibilityIdentifier;
- (id)duplicateLaneGuidanceView;
- (unint64_t)_rightmostVisibleLaneIndex;
- (void)_debugHighlightLaneView:(id)view;
- (void)_resetLanes;
- (void)_setupConstraints;
- (void)_updateLaneContentMargins;
- (void)_updateMaxLanesForSignWidth:(double)width;
- (void)layoutSubviews;
- (void)setDebugHighlightLanes:(BOOL)lanes;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setInvalidArrowColor:(id)color;
- (void)setLanes:(id)lanes;
- (void)setShouldTransformWithVerticalScale:(BOOL)scale;
- (void)setVerticalScale:(double)scale;
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

- (id)_laneViewForLane:(id)lane
{
  laneCopy = lane;
  v5 = [[GuidanceLaneView alloc] initWithLaneInfo:laneCopy maneuverHasPreferredLane:self->_maneuverHasPreferredLane drawingBiasDirection:self->_laneArrowBiasDirection laneStyle:self->_laneStyle];

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

- (void)_debugHighlightLaneView:(id)view
{
  viewCopy = view;
  if (![(NavSignLaneGuidanceView *)self debugHighlightLanes])
  {
    goto LABEL_4;
  }

  laneInfo = [viewCopy laneInfo];
  isPreferredLaneForManeuver = [laneInfo isPreferredLaneForManeuver];

  if (!isPreferredLaneForManeuver)
  {
    laneInfo2 = [viewCopy laneInfo];
    isLaneForManeuver = [laneInfo2 isLaneForManeuver];

    if (isLaneForManeuver)
    {
      v6 = +[UIColor yellowColor];
      goto LABEL_7;
    }

LABEL_4:
    v7 = +[UIColor clearColor];
    [viewCopy setBackgroundColor:v7];
    goto LABEL_8;
  }

  v6 = +[UIColor redColor];
LABEL_7:
  v7 = v6;
  v10 = [v6 colorWithAlphaComponent:0.5];
  [viewCopy setBackgroundColor:v10];

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
    selfCopy4 = self;
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
  highlightedLaneRange = [(NavSignLaneGuidanceView *)self highlightedLaneRange];
  p_visibleLaneRange = &self->_visibleLaneRange;
  self->_visibleLaneRange.location = [NavSignLaneGuidanceView _visibleLaneRangeForNumberOfLanes:v14 maxNumberOfVisibleLanes:self->_maxNumberOfVisibleLanes highlightedLaneRange:highlightedLaneRange, v17];
  self->_visibleLaneRange.length = v18;
  if (v14 && v18)
  {
    _leftmostVisibleLaneIndex = [(NavSignLaneGuidanceView *)self _leftmostVisibleLaneIndex];
    _rightmostVisibleLaneIndex = [(NavSignLaneGuidanceView *)self _rightmostVisibleLaneIndex];
    length = self->_visibleLaneRange.length;
    v22 = +[NSMutableArray array];
    v23 = 0.5 / length;
    v62 = v14 - 1;
    v69 = -(_leftmostVisibleLaneIndex + (length >> 1));
    v66 = -v14;
    v67 = length;
    v63 = -_rightmostVisibleLaneIndex;
    v64 = v22;
    v65 = -_leftmostVisibleLaneIndex;
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
          centerXAnchor = [(NavSignLaneGuidanceView *)v29 centerXAnchor];
          centerXAnchor2 = [(NavSignLaneGuidanceView *)self centerXAnchor];
          v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
LABEL_21:
          v36 = v34;
          [v22 addObject:v34];
        }
      }

      else
      {
        if (v27 == -1)
        {
          centerXAnchor3 = [(NavSignLaneGuidanceView *)self centerXAnchor];
          selfCopy2 = v29;
          goto LABEL_20;
        }

        if (v69 + v24 == -2)
        {
          centerXAnchor3 = [(NavSignLaneGuidanceView *)v29 centerXAnchor];
          selfCopy2 = self;
LABEL_20:
          centerXAnchor4 = [(NavSignLaneGuidanceView *)selfCopy2 centerXAnchor];
          centerXAnchor = [centerXAnchor3 anchorWithOffsetToAnchor:centerXAnchor4];

          centerXAnchor2 = [*(&self->super.super.super.super.isa + v25[542]) widthAnchor];
          v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 multiplier:v23];
          goto LABEL_21;
        }
      }

      if (v24 != -1)
      {
        v37 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:v24];
        centerXAnchor5 = [v37 centerXAnchor];
        centerXAnchor6 = [(NavSignLaneGuidanceView *)v29 centerXAnchor];
        v40 = [centerXAnchor5 anchorWithOffsetToAnchor:centerXAnchor6];

        widthAnchor = [*(&self->super.super.super.super.isa + v25[542]) widthAnchor];
        v42 = [v40 constraintEqualToAnchor:widthAnchor multiplier:v26];
        [v22 addObject:v42];
      }

      topAnchor = [(NavSignLaneGuidanceView *)v29 topAnchor];
      v44 = v25[542];
      topAnchor2 = [*(&self->super.super.super.super.isa + v44) topAnchor];
      v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v22 addObject:v46];

      bottomAnchor = [(NavSignLaneGuidanceView *)v29 bottomAnchor];
      bottomAnchor2 = [*(&self->super.super.super.super.isa + v44) bottomAnchor];
      v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

      layer = [(NavSignLaneGuidanceView *)v29 layer];
      [layer setMask:v53];

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
          selfCopy4 = self;
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
    selfCopy4 = self;
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
  topAnchor = [(UILayoutGuide *)self->_laneContentGuide topAnchor];
  topAnchor2 = [(NavSignLaneGuidanceView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  laneContentTopMarginConstraint = self->_laneContentTopMarginConstraint;
  self->_laneContentTopMarginConstraint = v7;

  bottomAnchor = [(NavSignLaneGuidanceView *)self bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_laneContentGuide bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  laneContentBottomMarginConstraint = self->_laneContentBottomMarginConstraint;
  self->_laneContentBottomMarginConstraint = v11;

  leftAnchor = [(UILayoutGuide *)self->_laneContentGuide leftAnchor];
  leftAnchor2 = [(NavSignLaneGuidanceView *)self leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  laneContentLeftMarginConstraint = self->_laneContentLeftMarginConstraint;
  self->_laneContentLeftMarginConstraint = v15;

  rightAnchor = [(NavSignLaneGuidanceView *)self rightAnchor];
  rightAnchor2 = [(UILayoutGuide *)self->_laneContentGuide rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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
  heightAnchor = [(UILayoutGuide *)self->_offsetFromBottomGuide heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:0.0];
  offsetFromBottomHeightConstraint = self->_offsetFromBottomHeightConstraint;
  self->_offsetFromBottomHeightConstraint = v27;

  bottomAnchor3 = [(UILayoutGuide *)self->_offsetFromBottomGuide bottomAnchor];
  bottomAnchor4 = [(UILayoutGuide *)self->_laneContentGuide bottomAnchor];
  v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v41[0] = v30;
  leftAnchor3 = [(UILayoutGuide *)self->_offsetFromBottomGuide leftAnchor];
  leftAnchor4 = [(UILayoutGuide *)self->_laneContentGuide leftAnchor];
  v33 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v41[1] = v33;
  rightAnchor3 = [(UILayoutGuide *)self->_offsetFromBottomGuide rightAnchor];
  rightAnchor4 = [(UILayoutGuide *)self->_laneContentGuide rightAnchor];
  v36 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
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

- (id)_newGradientLayerWithFrame:(CGRect)frame forLeftEdge:(BOOL)edge
{
  edgeCopy = edge;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  theme = [(NavSignLaneGuidanceView *)self theme];
  navSignPrimaryColor = [theme navSignPrimaryColor];

  v11 = objc_alloc_init(CAGradientLayer);
  [v11 setFrame:{x, y, width, height}];
  [v11 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];
  v12 = 0.0;
  v13 = [navSignPrimaryColor colorWithAlphaComponent:0.0];
  v18[0] = [v13 CGColor];
  v14 = [navSignPrimaryColor colorWithAlphaComponent:1.0];
  v18[1] = [v14 CGColor];
  v15 = [NSArray arrayWithObjects:v18 count:2];
  [v11 setColors:v15];

  [v11 setLocations:&off_1016EDA00];
  if (edgeCopy)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  if (edgeCopy)
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

- (void)_updateMaxLanesForSignWidth:(double)width
{
  v5 = sub_100D6E0B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastUpdatedSignWidth = self->_lastUpdatedSignWidth;
    v10 = 134349568;
    selfCopy2 = self;
    v12 = 2048;
    widthCopy = width;
    v14 = 2048;
    v15 = lastUpdatedSignWidth;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] _updateMaxLanesForSignWidth: %.2f, previousWidth: %.2f", &v10, 0x20u);
  }

  if (width > 0.0 && vabdd_f64(self->_lastUpdatedSignWidth, width) > 2.22044605e-16)
  {
    self->_lastUpdatedSignWidth = width;
    if (self->_laneStyle - 1 < 2)
    {
      width = width + width;
    }

    if ([NavSignLaneGuidanceView maxNumberVisibleLanesForSignWidth:width]< 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NavSignLaneGuidanceView maxNumberVisibleLanesForSignWidth:width];
    }

    self->_maxNumberOfVisibleLanes = v7;
    v8 = sub_100D6E0B8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      maxNumberOfVisibleLanes = self->_maxNumberOfVisibleLanes;
      v10 = 134349312;
      selfCopy2 = self;
      v12 = 2048;
      widthCopy = *&maxNumberOfVisibleLanes;
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
    superview = [(NavSignLaneGuidanceView *)self superview];
    [superview bounds];
    v7 = NSStringFromCGRect(v65);
    lastUpdatedSignWidth = self->_lastUpdatedSignWidth;
    v9 = NSStringFromRange(self->_visibleLaneRange);
    *buf = 134350338;
    selfCopy4 = self;
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
        selfCopy4 = self;
        v24 = "[%{public}p] layoutSubviews zero bounds";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v24, buf, 0xCu);
      }

LABEL_17:

      return;
    }

    v13 = v10;
    superview2 = [(NavSignLaneGuidanceView *)self superview];
    if (superview2)
    {
      v15 = superview2;
      v16 = self->_lastUpdatedSignWidth;
      superview3 = [(NavSignLaneGuidanceView *)self superview];
      [superview3 bounds];
      v19 = vabdd_f64(v16, v18);

      if (v19 > 2.22044605e-16)
      {
        v20 = sub_100D6E0B8();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] layoutSubviews. _lastUpdatedSignWidth does not match current bounds, will update lanes for new width", buf, 0xCu);
        }

        superview4 = [(NavSignLaneGuidanceView *)self superview];
        [superview4 bounds];
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
        selfCopy4 = self;
        v24 = "[%{public}p] layoutSubviews. _lastUpdatedSignWidth is 0";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    _leftmostVisibleLaneIndex = [(NavSignLaneGuidanceView *)self _leftmostVisibleLaneIndex];
    _rightmostVisibleLaneIndex = [(NavSignLaneGuidanceView *)self _rightmostVisibleLaneIndex];
    if (_leftmostVisibleLaneIndex && _leftmostVisibleLaneIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:_leftmostVisibleLaneIndex];
      [v27 bounds];
      [(CAGradientLayer *)self->_leftEdgeLaneGradientLayer setFrame:?];
    }

    if (_rightmostVisibleLaneIndex != 0x7FFFFFFFFFFFFFFFLL && _rightmostVisibleLaneIndex + 1 < [(NSMutableArray *)self->_laneViews count])
    {
      v28 = [(NSMutableArray *)self->_laneViews objectAtIndexedSubscript:_rightmostVisibleLaneIndex];
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

      window = [(NavSignLaneGuidanceView *)self window];
      screen = [window screen];
      [screen nativeScale];
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
      if (_leftmostVisibleLaneIndex <= _rightmostVisibleLaneIndex)
      {
        v40 = _leftmostVisibleLaneIndex;
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

        while (v40 <= _rightmostVisibleLaneIndex);
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
      v50[5] = _leftmostVisibleLaneIndex;
      v50[6] = _rightmostVisibleLaneIndex;
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
  lanes = [(NavSignLaneGuidanceView *)self lanes];
  [v3 setLanes:lanes];

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
  lanes = [(NavSignLaneGuidanceView *)self lanes];
  v4 = [lanes count];
  maxNumberOfVisibleLanes = [(NavSignLaneGuidanceView *)self maxNumberOfVisibleLanes];

  if (v4 > maxNumberOfVisibleLanes)
  {
    highlightedLaneRange = [(NavSignLaneGuidanceView *)self highlightedLaneRange];
    v8 = v7;
    if (v7 >= [(NavSignLaneGuidanceView *)self maxNumberOfVisibleLanes]|| highlightedLaneRange && highlightedLaneRange <= [(NavSignLaneGuidanceView *)self _leftmostVisibleLaneIndex])
    {
      return 1;
    }

    v9 = &highlightedLaneRange[v8 - 1];
    lanes2 = [(NavSignLaneGuidanceView *)self lanes];
    if (v9 >= [lanes2 count] - 1)
    {
    }

    else
    {
      _rightmostVisibleLaneIndex = [(NavSignLaneGuidanceView *)self _rightmostVisibleLaneIndex];

      if (v9 >= _rightmostVisibleLaneIndex)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (void)setInvalidArrowColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (colorCopy && self->_invalidArrowColor != colorCopy)
  {
    objc_storeStrong(&self->_invalidArrowColor, color);
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
  lanes = [(NavSignLaneGuidanceView *)self lanes];
  v3 = [NavSignLaneGuidanceInfo highlightedLaneRangeForLanes:lanes];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setDebugHighlightLanes:(BOOL)lanes
{
  if (self->_debugHighlightLanes != lanes)
  {
    self->_debugHighlightLanes = lanes;
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

- (void)setLanes:(id)lanes
{
  lanesCopy = lanes;
  if (([MNComparison isValue:lanesCopy equalTo:self->_lanes]& 1) == 0)
  {
    v5 = sub_100D6E0B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      lanes = self->_lanes;
      *buf = 134349570;
      selfCopy = self;
      v26 = 2112;
      lanesCopy2 = lanes;
      v28 = 2112;
      v29 = lanesCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Changing lanes from %@ to %@", buf, 0x20u);
    }

    v7 = [lanesCopy copy];
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
            directions = [v14 directions];
            firstObject = [directions firstObject];
            [firstObject direction];
            self->_laneArrowBiasDirection = MKLaneDirectionIsToTheLeft() ^ 1;

            self->_maneuverHasPreferredLane = 1;
            goto LABEL_16;
          }

          if ([v14 isLaneForManeuver])
          {
            directions2 = [v14 directions];
            firstObject2 = [directions2 firstObject];
            [firstObject2 direction];
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

- (void)setShouldTransformWithVerticalScale:(BOOL)scale
{
  if (self->_shouldTransformWithVerticalScale != scale)
  {
    self->_shouldTransformWithVerticalScale = scale;
    [(NavSignLaneGuidanceView *)self setNeedsLayout];
  }
}

- (void)setVerticalScale:(double)scale
{
  if (self->_verticalScale != scale && scale > 0.0 && scale <= 1.0)
  {
    self->_verticalScale = scale;
    [(NavSignLaneGuidanceView *)self setNeedsLayout];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(NavSignLaneGuidanceView *)self _updateLaneContentMargins];
  }
}

- (NavSignLaneGuidanceView)initWithLaneStyle:(unint64_t)style
{
  v10.receiver = self;
  v10.super_class = NavSignLaneGuidanceView;
  v4 = [(NavSignLaneGuidanceView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    laneViews = v4->_laneViews;
    v4->_laneViews = v5;

    v4->_laneStyle = style;
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

+ (_NSRange)_visibleLaneRangeForNumberOfLanes:(unint64_t)lanes maxNumberOfVisibleLanes:(unint64_t)visibleLanes highlightedLaneRange:(_NSRange)range
{
  lanesCopy = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (lanes && visibleLanes)
  {
    v7 = lanes - visibleLanes;
    if (lanes >= visibleLanes)
    {
      lanesCopy = visibleLanes;
    }

    else
    {
      lanesCopy = lanes;
    }

    if (lanes > visibleLanes)
    {
      if (lanes - (range.length + range.location) >= range.location || range.location < v7)
      {
        v7 = 0;
      }

      if (range.length > visibleLanes)
      {
        v7 = 0;
      }

      if (range.location == 0x7FFFFFFFFFFFFFFFLL)
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

  result.length = lanesCopy;
  result.location = v6;
  return result;
}

+ (int64_t)maxNumberVisibleLanesForSignWidth:(double)width
{
  if (width <= 0.0)
  {
    return 0;
  }

  else
  {
    return llround(width * 0.00266666667 * GEOConfigGetInteger());
  }
}

@end
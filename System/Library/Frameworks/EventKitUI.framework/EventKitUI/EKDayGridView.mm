@interface EKDayGridView
+ (void)cacheBackgroundImage:(id)a3 forKey:(id)a4;
- (CGRect)rectForStartSeconds:(int64_t)a3 endSeconds:(int64_t)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKDayGridView)initWithFrame:(CGRect)a3;
- (EKDayGridView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 backgroundColor:(id)a5 opaque:(BOOL)a6 numberOfDaysToDisplay:(unint64_t)a7;
- (UIColor)lineColor;
- (double)_dayWidth;
- (double)_timeMarkerAlpha;
- (double)positionOfSecond:(int64_t)a3;
- (double)widthForOccurrences;
- (id)_generateGridImage;
- (id)_timeDotImage;
- (int)secondAtPosition:(double)a3;
- (int64_t)_sizeClass;
- (void)_layoutHighlight;
- (void)_updateMarkerAlpha;
- (void)_updateTimeMarker;
- (void)didMoveToWindow;
- (void)hideNowDot:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setCurtainHeight:(double)a3;
- (void)setFixedDayWidth:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGridHeightScale:(double)a3;
- (void)setGridVisualEffect:(id)a3;
- (void)setHighlightedDayIndex:(int64_t)a3;
- (void)setLineColor:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsLeftBorder:(BOOL)a3;
- (void)setShowsRightBorder:(BOOL)a3;
- (void)setShowsTimeLine:(BOOL)a3;
- (void)setShowsTimeMarker:(BOOL)a3;
- (void)setTimeMarkerTodayDay:(int64_t)a3;
- (void)setUseMultiDayStyle:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateMarkerPosition;
@end

@implementation EKDayGridView

- (void)_updateTimeMarker
{
  if (self->_showsTimeLine || self->_showsTimeMarker)
  {
    timeMarker = self->_timeMarker;
    if (timeMarker)
    {
      [(EKCurrentTimeMarkerView *)timeMarker setShowsThumb:self->_showsTimeMarker];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setShowsLine:self->_showsTimeLine];
      [(EKDayGridView *)self updateMarkerPosition];
    }

    else
    {
      v4 = [[EKCurrentTimeMarkerView alloc] initWithFrame:self->_sizeClass sizeClass:0.0, 0.0, 10.0, 10.0];
      v5 = self->_timeMarker;
      self->_timeMarker = v4;

      [(EKDayGridView *)self bounds];
      v7 = v6;
      v8 = self->_timeMarker;
      [(EKDayGridView *)self hourHeight];
      v10 = v9;
      [(EKDayGridView *)self topPadding];
      [EKDayTimeView timeMarkerFrameForTotalWidth:v8 timeWidth:v7 timeMarker:0.0 hourHeight:v10 topPadding:v11];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setFrame:?];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setAutoresizingMask:2];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setShowsThumb:self->_showsTimeMarker];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setShowsLine:self->_showsTimeLine];
      [(EKDayGridView *)self updateMarkerPosition];
      [(EKCurrentTimeMarkerView *)self->_timeMarker setAlpha:0.0];
      [(EKDayGridView *)self addSubview:self->_timeMarker];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__EKDayGridView__updateTimeMarker__block_invoke;
      aBlock[3] = &unk_1E843EC60;
      aBlock[4] = self;
      v12 = _Block_copy(aBlock);
      if ([(EKDayGridView *)self animatesTimeMarker])
      {
        [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.2];
      }

      else
      {
        v12[2](v12);
      }
    }
  }

  else
  {
    v13 = self->_timeMarker;
    if (v13)
    {
      v14 = v13;
      v15 = self->_timeMarker;
      self->_timeMarker = 0;

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __34__EKDayGridView__updateTimeMarker__block_invoke_2;
      v42[3] = &unk_1E843EC60;
      v16 = v14;
      v43 = v16;
      v17 = _Block_copy(v42);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __34__EKDayGridView__updateTimeMarker__block_invoke_3;
      v40[3] = &unk_1E843EC10;
      v18 = v16;
      v41 = v18;
      v19 = _Block_copy(v40);
      if ([(EKDayGridView *)self animatesTimeMarker])
      {
        [MEMORY[0x1E69DD250] animateWithDuration:v17 animations:v19 completion:0.2];
      }

      else
      {
        v17[2](v17);
        v19[2](v19, 1);
      }
    }
  }

  v20 = [(EKDayGridView *)self _showsTimeDot];
  timeDot = self->_timeDot;
  if (v20)
  {
    if (timeDot)
    {
      [(EKDayGridView *)self updateMarkerPosition];
    }

    else
    {
      v28 = [(EKDayGridView *)self _timeDotImage];
      v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v28];
      v30 = self->_timeDot;
      self->_timeDot = v29;

      [(EKDayGridView *)self updateMarkerPosition];
      [(UIImageView *)self->_timeDot setAlpha:0.0];
      [(EKDayGridView *)self addSubview:self->_timeDot];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __34__EKDayGridView__updateTimeMarker__block_invoke_4;
      v39[3] = &unk_1E843EC60;
      v39[4] = self;
      v31 = _Block_copy(v39);
      if ([(EKDayGridView *)self animatesTimeMarker])
      {
        [MEMORY[0x1E69DD250] animateWithDuration:v31 animations:0.2];
      }

      else
      {
        v31[2](v31);
      }
    }
  }

  else if (timeDot)
  {
    v22 = timeDot;
    v23 = self->_timeDot;
    self->_timeDot = 0;

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __34__EKDayGridView__updateTimeMarker__block_invoke_5;
    v37[3] = &unk_1E843EC60;
    v24 = v22;
    v38 = v24;
    v25 = _Block_copy(v37);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __34__EKDayGridView__updateTimeMarker__block_invoke_6;
    v35 = &unk_1E843EC10;
    v26 = v24;
    v36 = v26;
    v27 = _Block_copy(&v32);
    if ([(EKDayGridView *)self animatesTimeMarker:v32])
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v25 animations:v27 completion:0.2];
    }

    else
    {
      v25[2](v25);
      v27[2](v27, 1);
    }
  }
}

- (void)updateMarkerPosition
{
  timeMarker = self->_timeMarker;
  if (timeMarker)
  {
    [(EKCurrentTimeMarkerView *)timeMarker updateTime];
    [(EKDayGridView *)self bounds];
    v5 = v4;
    v6 = self->_timeMarker;
    [(EKDayGridView *)self hourHeight];
    v8 = v7;
    [(EKDayGridView *)self topPadding];
    v9 = 0.0;
    [EKDayTimeView timeMarkerFrameForTotalWidth:v6 timeWidth:v5 timeMarker:0.0 hourHeight:v8 topPadding:v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(EKCurrentTimeMarkerView *)self->_timeMarker setFrame:?];
    if ([(EKDayGridView *)self timeMarkerTodayDay]< 1)
    {
      [(EKCurrentTimeMarkerView *)self->_timeMarker setTodayStart:0.0];
    }

    else
    {
      IsLeftToRight = CalTimeDirectionIsLeftToRight();
      v20 = ([(EKDayGridView *)self timeMarkerTodayDay]- 1);
      [(EKDayGridView *)self _dayWidth];
      v22 = v21 * v20;
      v23 = v16 - v20 * v21;
      if (IsLeftToRight)
      {
        v23 = v22;
      }

      [(EKCurrentTimeMarkerView *)self->_timeMarker setTodayStart:v23];
      [(EKDayGridView *)self _dayWidth];
      v9 = v24;
    }

    [(EKCurrentTimeMarkerView *)self->_timeMarker setTodayWidth:v9];
    [(EKCurrentTimeMarkerView *)self->_timeMarker setNeedsDisplay];
    CalRoundToScreenScale(8.0);
    v26 = v25 * 0.5;
    if ([(EKDayGridView *)self timeMarkerTodayDay]< 1)
    {
      v30 = 0.0;
    }

    else
    {
      v27 = CalTimeDirectionIsLeftToRight();
      v28 = ([(EKDayGridView *)self timeMarkerTodayDay]- 1);
      [(EKDayGridView *)self _dayWidth];
      if (v27)
      {
        v30 = -(v26 - v28 * v29);
      }

      else
      {
        v30 = v16 - v28 * v29 - v26;
      }
    }

    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v31 = CGRectGetMidY(v36) - v26;
    CalRoundToScreenScale(8.0);
    v33 = v32;
    CalRoundToScreenScale(8.0);
    [(UIImageView *)self->_timeDot setFrame:v30, v31, v33, v34];

    [(EKDayGridView *)self _updateMarkerAlpha];
  }
}

uint64_t __34__EKDayGridView__updateTimeMarker__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[66];
  [v1 _timeMarkerAlpha];

  return [v2 setAlpha:?];
}

- (int64_t)_sizeClass
{
  v3 = [(EKDayGridView *)self window];

  if (!v3)
  {
    return self->_sizeClass;
  }

  return EKUIWidthSizeClassForViewHierarchy(self);
}

- (void)layoutSubviews
{
  v97 = *MEMORY[0x1E69E9840];
  v3 = [(EKDayGridView *)self window];

  if (v3)
  {
    [(EKCurrentTimeMarkerView *)self->_timeMarker setNeedsDisplay];
    v81 = EKUISeparatorLineThickness();
    [(EKDayGridView *)self bounds];
    v5 = v4;
    [(EKDayGridView *)self topPadding];
    v7 = v5 - v6;
    [(EKDayGridView *)self bottomPadding];
    v9 = v7 - v8 + 1.0;
    *&v8 = v9 * 0.0009765625;
    v10 = vcvtps_s32_f32(*&v8);
    if ([(NSMutableArray *)self->_gridPatternViews count]< v10)
    {
      v11 = [(NSMutableArray *)self->_gridPatternViews count];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        do
        {
          v13 = [EKUIVisualEffectView alloc];
          [(EKDayGridView *)self bounds];
          v14 = [(EKUIVisualEffectView *)v13 initWithFrame:?];
          [(EKUIVisualEffectView *)v14 setTintColorDelegate:self];
          [(UIView *)self->_gridContainerView addSubview:v14];
          [(UIView *)self->_gridContainerView sendSubviewToBack:v14];
          v15 = [(EKDayGridView *)self gridVisualEffect];
          [(EKUIVisualEffectView *)v14 setEffect:v15];

          v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
          [v16 setAutoresizingMask:18];
          v17 = [(EKUIVisualEffectView *)v14 contentView];
          [v17 addSubview:v16];

          [(NSMutableArray *)self->_gridPatternViews addObject:v16];
          gridParentViews = self->_gridParentViews;
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v16];
          [(NSMutableDictionary *)gridParentViews setObject:v14 forKey:v19];

          --v12;
        }

        while (v12);
      }
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v20 = self->_gridPatternViews;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v90 objects:v96 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v91;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v91 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v90 + 1) + 8 * i);
          v26 = MEMORY[0x1E69DC888];
          v27 = [(EKDayGridView *)self _generateGridImage];
          v28 = [v26 colorWithPatternImage:v27];
          [v25 setBackgroundColor:v28];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v22);
    }

    [(EKDayGridView *)self bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [(EKDayGridView *)self topPadding];
    v36 = v35;
    [(EKDayGridView *)self bounds];
    v38 = v37;
    [(EKDayGridView *)self bottomPadding];
    v40 = v39;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = self->_gridPatternViews;
    v41 = [(NSMutableArray *)obj countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = v38 - v40 + 1.0;
      if (v9 <= 1024.0)
      {
        v45 = v9;
      }

      else
      {
        v45 = 1024.0;
      }

      v46 = v36 + v32;
      v47 = *v87;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v87 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v86 + 1) + 8 * j);
          v50 = self->_gridParentViews;
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v49];
          v52 = [(NSMutableDictionary *)v50 objectForKey:v51];

          if (v43)
          {
            [v52 removeFromSuperview];
            v43 = 1;
          }

          else
          {
            v53 = [v52 superview];

            if (!v53)
            {
              [(UIView *)self->_gridContainerView addSubview:v52];
              [(UIView *)self->_gridContainerView sendSubviewToBack:v52];
            }

            [v52 setFrame:{v30, v46, v34, v45}];
            [v49 setFrame:{0.0, 0.0, v34, v45}];
            v43 = v46 + 1024.0 >= v44;
            hourHeight = self->_hourHeight;
            v46 = hourHeight + v46 + v45 - fmod(1024.0, hourHeight);
            [(EKDayGridView *)self bounds];
            v56 = v55 - v46;
            [(EKDayGridView *)self bottomPadding];
            v58 = v81 + v56 - v57;
            if (v58 <= 1024.0)
            {
              v45 = v58;
            }

            else
            {
              v45 = 1024.0;
            }
          }
        }

        v42 = [(NSMutableArray *)obj countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v42);
    }

    [(EKDayGridView *)self bounds];
    v63 = v59;
    v64 = v60;
    v65 = v61;
    v66 = v62;
    if (self->_leftBorderView)
    {
      [(UIView *)self->_leftBorderView setFrame:0.0, 0.0, v81, CGRectGetHeight(*&v59)];
    }

    [(EKDayGridView *)self _dayWidth];
    v68 = v67;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v69 = self->_middleBorderViews;
    v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v82 objects:v94 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v83;
      v73 = v68;
      do
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v83 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v75 = *(*(&v82 + 1) + 8 * k);
          CalRoundToScreenScale(v73);
          v77 = v76;
          v98.origin.x = v63;
          v98.origin.y = v64;
          v98.size.width = v65;
          v98.size.height = v66;
          [v75 setFrame:{v77, 0.0, v81, CGRectGetHeight(v98) + 1.0}];
          v73 = v68 + v73;
        }

        v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v71);
    }

    if ((*(self + 424) & 2) != 0)
    {
      [(EKDayGridView *)self widthForOccurrences];
      v79 = v78 + -!self->_rightBorderInsetsOccurrences;
      [(EKDayGridView *)self bounds];
      [(UIView *)self->_rightBorderView setFrame:v79, 0.0, v81, CGRectGetHeight(v99)];
    }
  }

  else
  {
    self->_needsLayoutInWindow = 1;
  }
}

- (void)didMoveToWindow
{
  [(EKDayGridView *)self updateHourHeight];
  if (self->_needsLayoutInWindow)
  {
    [(EKDayGridView *)self setNeedsLayout];
    self->_needsLayoutInWindow = 0;
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = EKDayGridView;
  [(EKDayGridView *)&v4 tintColorDidChange];
  [__cachedTimeDotImages removeAllObjects];
  v3 = [(EKDayGridView *)self _timeDotImage];
  [(UIImageView *)self->_timeDot setImage:v3];
}

- (id)_timeDotImage
{
  if (!__cachedTimeDotImages)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    v4 = __cachedTimeDotImages;
    __cachedTimeDotImages = v3;
  }

  v5 = [(EKDayGridView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = @"dark";
  if (v6 == 1)
  {
    v7 = @"light";
  }

  v8 = v7;

  v9 = [__cachedTimeDotImages objectForKey:v8];
  if (!v9)
  {
    CalRoundToScreenScale(8.0);
    v15 = 0;
    v16 = &v15;
    v17 = 0x4010000000;
    v19 = 0;
    v20 = 0;
    v18 = "";
    v21 = v10;
    v22 = v10;
    v11 = objc_alloc(MEMORY[0x1E69DCA78]);
    v12 = [v11 initWithBounds:{v16[4], v16[5], v16[6], v16[7]}];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __30__EKDayGridView__timeDotImage__block_invoke;
    v14[3] = &unk_1E84423C8;
    v14[4] = &v15;
    v9 = [v12 imageWithActions:v14];
    [__cachedTimeDotImages setObject:v9 forKey:v8];

    _Block_object_dispose(&v15, 8);
  }

  return v9;
}

void __30__EKDayGridView__timeDotImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a2;
  v5 = [v3 systemBackgroundColor];
  [v5 setFill];

  CGContextFillEllipseInRect([v4 CGContext], *(*(*(a1 + 32) + 8) + 32));
  *(*(*(a1 + 32) + 8) + 32) = CGRectInset(*(*(*(a1 + 32) + 8) + 32), 1.0, 1.0);
  v6 = CalendarAppTintColor();
  [v6 setFill];

  v7 = [v4 CGContext];
  v8 = *(*(a1 + 32) + 8);
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];
  v12 = v8[7];

  CGContextFillEllipseInRect(v7, *&v9);
}

- (double)widthForOccurrences
{
  result = self->_cachedWidthForOffMainThreadWork;
  if ((*(self + 424) & 2) != 0 && self->_rightBorderInsetsOccurrences)
  {
    return result + -1.0;
  }

  return result;
}

- (id)_generateGridImage
{
  [(EKDayGridView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(EKDayGridView *)self lineColor];
  v8 = [(EKDayGridView *)self traitCollection];
  v9 = [v8 userInterfaceLevel];

  v10 = MEMORY[0x1E696AEC0];
  hourHeight = self->_hourHeight;
  selected = self->_selected;
  v13 = [(EKDayGridView *)self isOpaque];
  v14 = [v7 styleString];
  v15 = [(EKDayGridView *)self traitCollection];
  v16 = [v10 stringWithFormat:@"grid:%d:%f:%d:%@:%zd:%zd", selected, *&hourHeight, v13, v14, objc_msgSend(v15, "userInterfaceStyle"), v9];

  v17 = [EKDayGridView cachedBackgroundImageForKey:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    goto LABEL_34;
  }

  v20 = *(MEMORY[0x1E695EFF8] + 8);
  rect = *MEMORY[0x1E695EFF8];
  v52.height = 1024.0;
  v52.width = 2.0;
  UIGraphicsBeginImageContextWithOptions(v52, 0, 0.0);
  if (self->_selected)
  {
    v21 = [MEMORY[0x1E69DC888] colorWithRed:0.898039216 green:0.945098039 blue:0.988235294 alpha:1.0];
    [v21 set];

LABEL_7:
    v53.size.height = 1024.0;
    v53.size.width = 2.0;
    v53.origin.x = rect;
    v53.origin.y = v20;
    UIRectFill(v53);
    goto LABEL_8;
  }

  if ([(EKDayGridView *)self isOpaque])
  {
    [(UIColor *)self->_backgroundColor set];
    goto LABEL_7;
  }

LABEL_8:
  [v7 CGColor];
  v54.size.height = 1024.0;
  v54.size.width = 2.0;
  v54.origin.x = v4;
  v54.origin.y = v6;
  MaxY = CGRectGetMaxY(v54);
  v23 = self->_hourHeight;
  v24 = ceil(MaxY / v23);
  if (v24 > 24.0)
  {
    v24 = 24.0;
  }

  v25 = v24;
  v26 = fmax(floor(v6 / v23), 0.0);
  v49 = v7;
  if (MEMORY[0x1D38B98D0]())
  {
    v27 = EKUISeparatorLineThickness();
  }

  else
  {
    v28 = [(EKDayGridView *)self traitCollection];
    v29 = EKUIUsesLargeTextLayout(v28);
    v30 = 1.0;
    if (!v29)
    {
      v30 = CalOnePixelInPoints();
    }

    CalRoundToScreenScale(v30);
    v27 = v31;
  }

  v32 = v25 - v26;
  if (v25 >= v26)
  {
    v33 = 0;
    do
    {
      v34 = CalRoundRectToScreenScale(0.0, self->_hourHeight * (v26 + v33) - v6, 2.0, v27);
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = v32 == v33 || v33 == 0;
      v42 = v41;
      if (!v41 || (v55.size.width = 2.0, v55.origin.x = rect, v55.origin.y = v20, v55.size.height = 1024.0, v60.origin.x = v34, v60.origin.y = v36, v60.size.width = v38, v60.size.height = v40, CGRectIntersectsRect(v55, v60)))
      {
        UISetColor();
        v56.origin.x = v34;
        v56.origin.y = v36;
        v56.size.width = v38;
        v56.size.height = v40;
        UIRectFill(v56);
      }

      v43 = self->_hourHeight;
      if (v26 + v33 == 24)
      {
        v59.origin.y = v36 + v43;
        v59.origin.x = v34;
        v59.size.width = v38;
        v59.size.height = v40;
        UIRectFill(v59);
      }

      else
      {
        v44 = v36 + v27 + floor(v43 * 0.5);
        v45 = v34 + 1.0;
        v46 = v38 + -1.0;
        if (!v42 || (v57.size.width = 2.0, v57.origin.x = rect, v57.origin.y = v20, v57.size.height = 1024.0, v61.origin.x = v45, v61.origin.y = v44, v61.size.width = v46, v61.size.height = v40, CGRectIntersectsRect(v57, v61)))
        {
          v58.origin.x = v45;
          v58.origin.y = v44;
          v58.size.width = v46;
          v58.size.height = v40;
          CGRectGetMaxX(v58);
        }
      }

      ++v33;
    }

    while (v32 + 1 != v33);
  }

  v47 = UIGraphicsGetImageFromCurrentImageContext();
  v19 = [v47 resizableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

  UIGraphicsEndImageContext();
  [EKDayGridView cacheBackgroundImage:v19 forKey:v16];
  v7 = v49;
LABEL_34:

  return v19;
}

- (UIColor)lineColor
{
  lineColor = self->_lineColor;
  if (lineColor)
  {
    v3 = lineColor;
  }

  else
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      [MEMORY[0x1E69DC888] lightGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] separatorColor];
    }
    v3 = ;
  }

  return v3;
}

- (double)_dayWidth
{
  result = self->_fixedDayWidth;
  if (result <= 0.0)
  {
    [(EKDayGridView *)self bounds];
    return floor(v4 / self->_daysToDisplay);
  }

  return result;
}

+ (void)cacheBackgroundImage:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (!__DayViewGridBackgroundCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = __DayViewGridBackgroundCache;
    __DayViewGridBackgroundCache = v6;
  }

  if (v8)
  {
    [__DayViewGridBackgroundCache setObject:v8 forKey:v5];
  }

  else
  {
    [__DayViewGridBackgroundCache removeObjectForKey:v5];
  }
}

- (EKDayGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(EKDayGridView *)self initWithFrame:1 sizeClass:v8 backgroundColor:1 opaque:1 numberOfDaysToDisplay:x, y, width, height];

  return v9;
}

- (EKDayGridView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 backgroundColor:(id)a5 opaque:(BOOL)a6 numberOfDaysToDisplay:(unint64_t)a7
{
  v8 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54[4] = *MEMORY[0x1E69E9840];
  v16 = a5;
  v53.receiver = self;
  v53.super_class = EKDayGridView;
  v17 = [(EKDayGridView *)&v53 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    v52 = v16;
    [(EKDayGridView *)v17 setOpaque:v8];
    v18->_selected = -1;
    [(EKDayGridView *)v18 setShowsLeftBorder:0];
    [(EKDayGridView *)v18 setSelected:0];
    v18->_rightBorderInsetsOccurrences = 1;
    objc_storeStrong(&v18->_backgroundColor, a5);
    v18->_daysToDisplay = a7;
    v18->_animatesTimeMarker = 1;
    v18->_orientation = 1;
    [EKDayTimeView timeInsetForSizeClass:a4 orientation:1];
    v18->_timeInset = -v19;
    v51 = a4;
    [EKDayTimeView hourHeightForSizeClass:a4 orientation:v18->_orientation];
    v18->_hourHeight = v20;
    v18->_gridHeightScale = 1.0;
    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    gridContainerView = v18->_gridContainerView;
    v18->_gridContainerView = v21;

    [(UIView *)v18->_gridContainerView setAutoresizingMask:18];
    [(EKDayGridView *)v18 addSubview:v18->_gridContainerView];
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18->_daysToDisplay];
    middleBorderViews = v18->_middleBorderViews;
    v18->_middleBorderViews = v23;

    if (v18->_daysToDisplay != 1)
    {
      v25 = 0;
      do
      {
        v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
        [v26 setAutoresizingMask:5];
        v27 = [MEMORY[0x1E69DC888] separatorColor];
        [v26 setBackgroundColor:v27];

        [(UIView *)v18->_gridContainerView addSubview:v26];
        [(NSMutableArray *)v18->_middleBorderViews addObject:v26];

        ++v25;
      }

      while (v25 < v18->_daysToDisplay - 1);
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    gridPatternViews = v18->_gridPatternViews;
    v18->_gridPatternViews = v28;

    v18->_highlightedDayIndex = -1;
    v30 = [MEMORY[0x1E695DF90] dictionary];
    gridParentViews = v18->_gridParentViews;
    v18->_gridParentViews = v30;

    if (CalCanvasPocketEnabled())
    {
      v32 = objc_opt_new();
      [v32 setBackgroundColor:v16];
      [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(EKDayGridView *)v18 addSubview:v32];
      v33 = [v32 heightAnchor];
      v34 = [v33 constraintEqualToConstant:0.0];
      curtainHeightConstraint = v18->_curtainHeightConstraint;
      v18->_curtainHeightConstraint = v34;

      v47 = MEMORY[0x1E696ACD8];
      v50 = [v32 leadingAnchor];
      v49 = [(EKDayGridView *)v18 leadingAnchor];
      v48 = [v50 constraintEqualToAnchor:v49];
      v54[0] = v48;
      v36 = [v32 trailingAnchor];
      v37 = [(EKDayGridView *)v18 trailingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      v54[1] = v38;
      v39 = [v32 topAnchor];
      v40 = [(EKDayGridView *)v18 topAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      v54[2] = v41;
      v54[3] = v18->_curtainHeightConstraint;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
      [v47 activateConstraints:v42];
    }

    v43 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    occurrenceContainerView = v18->_occurrenceContainerView;
    v18->_occurrenceContainerView = v43;

    [(UIView *)v18->_occurrenceContainerView setAutoresizingMask:18];
    [(EKDayGridView *)v18 addSubview:v18->_occurrenceContainerView];
    [(EKDayGridView *)v18 bounds];
    v18->_cachedWidthForOffMainThreadWork = v45;
    v16 = v52;
    v18->_sizeClass = v51;
  }

  return v18;
}

- (void)setUseMultiDayStyle:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_useMultiDayStyle = a3;
  if (a3)
  {
    EKUIVerticalGridLineColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }
  v4 = ;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_middleBorderViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setBackgroundColor:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setBounds:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = EKDayGridView;
  [(EKDayGridView *)&v5 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(EKDayGridView *)self bounds];
  self->_cachedWidthForOffMainThreadWork = v4;
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = EKDayGridView;
  [(EKDayGridView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(EKDayGridView *)self bounds];
  self->_cachedWidthForOffMainThreadWork = v4;
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [EKDayTimeView timeInsetForSizeClass:[(EKDayGridView *)self _sizeClass] orientation:a3];
    self->_timeInset = v5;
    [(EKDayGridView *)self updateHourHeight];
    [(EKDayGridView *)self frame];
    v7 = v6;
    [(EKDayGridView *)self frame];
    [(EKDayGridView *)self setFrame:0.0, 0.0, v7];

    [(EKDayGridView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  fixedDayWidth = self->_fixedDayWidth;
  if (fixedDayWidth > 0.0)
  {
    CalRoundToScreenScale(fixedDayWidth * self->_daysToDisplay);
    width = v6;
  }

  hourHeight = self->_hourHeight;
  [(EKDayGridView *)self topPadding];
  v9 = v8 + hourHeight * 24.0;
  [(EKDayGridView *)self bottomPadding];
  CalRoundToScreenScale(v9 + v10);
  v12 = v11;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setGridHeightScale:(double)a3
{
  self->_gridHeightScale = a3;
  [(EKDayGridView *)self updateHourHeight];

  [(EKDayGridView *)self setNeedsLayout];
}

uint64_t __34__EKDayGridView__updateTimeMarker__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[67];
  [v1 _timeMarkerAlpha];

  return [v2 setAlpha:?];
}

- (void)hideNowDot:(BOOL)a3
{
  if (self->_hideTimeDot != a3)
  {
    self->_hideTimeDot = a3;
    [(EKDayGridView *)self _updateTimeMarker];
  }
}

- (void)setShowsTimeLine:(BOOL)a3
{
  if (self->_showsTimeLine != a3)
  {
    self->_showsTimeLine = a3;
    [(EKDayGridView *)self _updateTimeMarker];
  }
}

- (void)setShowsTimeMarker:(BOOL)a3
{
  if (self->_showsTimeMarker != a3)
  {
    self->_showsTimeMarker = a3;
    [(EKDayGridView *)self _updateTimeMarker];
  }
}

- (void)setTimeMarkerTodayDay:(int64_t)a3
{
  if (self->_timeMarkerTodayDay != a3)
  {
    self->_timeMarkerTodayDay = a3;
    [(EKDayGridView *)self _updateTimeMarker];
  }
}

- (void)setShowsLeftBorder:(BOOL)a3
{
  v3 = *(self + 424);
  if ((v3 & 1) != a3)
  {
    *(self + 424) = v3 & 0xFE | a3;
    leftBorderView = self->_leftBorderView;
    if (a3)
    {
      if (!leftBorderView)
      {
        v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v8 = self->_leftBorderView;
        self->_leftBorderView = v7;

        [(UIView *)self->_leftBorderView setAutoresizingMask:5];
        v9 = self->_leftBorderView;
        v10 = [MEMORY[0x1E69DC888] separatorColor];
        [(UIView *)v9 setBackgroundColor:v10];

        gridContainerView = self->_gridContainerView;
        v12 = self->_leftBorderView;

        [(UIView *)gridContainerView addSubview:v12];
      }
    }

    else
    {
      [(UIView *)leftBorderView removeFromSuperview];
      v6 = self->_leftBorderView;
      self->_leftBorderView = 0;
    }
  }
}

- (void)setShowsRightBorder:(BOOL)a3
{
  v3 = *(self + 424);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 424) = v3 & 0xFD | v5;
    rightBorderView = self->_rightBorderView;
    if (a3)
    {
      if (!rightBorderView)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v9 = self->_rightBorderView;
        self->_rightBorderView = v8;

        v10 = self->_rightBorderView;
        v11 = [MEMORY[0x1E69DC888] separatorColor];
        [(UIView *)v10 setBackgroundColor:v11];

        gridContainerView = self->_gridContainerView;
        v13 = self->_rightBorderView;

        [(UIView *)gridContainerView addSubview:v13];
      }
    }

    else
    {
      [(UIView *)rightBorderView removeFromSuperview];
      v7 = self->_rightBorderView;
      self->_rightBorderView = 0;
    }
  }
}

- (CGRect)rectForStartSeconds:(int64_t)a3 endSeconds:(int64_t)a4
{
  v6 = MEMORY[0x1E695F058];
  v7 = a4 - a3 - 1679;
  if (a3 / 86400.0 >= 0.0)
  {
    v8 = a3 / 86400.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (a4 / 86400.0 <= 1.0)
  {
    v9 = a4 / 86400.0;
  }

  else
  {
    v9 = 1.0;
  }

  [(EKDayGridView *)self hourHeight];
  v11 = v10;
  v12 = v10 * 24.0;
  [(EKDayGridView *)self topPadding];
  v14 = v13;
  CalRoundToScreenScale(v8 * v12);
  v16 = v14 + v15;
  CalRoundToScreenScale(v9 * v12);
  v18 = v14 + v17 - v16;
  CalRoundToScreenScale(v11 * 0.75);
  if (v18 < v19)
  {
    CalRoundToScreenScale(v11 * 0.51);
    if (v18 > v20)
    {
      CalRoundToScreenScale(v11 * 0.75);
      v18 = v21;
    }
  }

  v22 = *(v6 + 16);
  if (v7 <= 0xF2)
  {
    v18 = v18 - EKUISeparatorLineThickness();
    if ((a4 + 100) % 3600 <= 199)
    {
      v18 = v18 - EKUISeparatorLineThickness();
    }
  }

  v23 = 0.0;
  v24 = v16;
  v25 = v22;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (double)positionOfSecond:(int64_t)a3
{
  [(EKDayGridView *)self hourHeight];
  v6 = v5;
  [(EKDayGridView *)self topPadding];

  [EKDayTimeView positionOfSecond:a3 hourHeight:0 topPadding:v6 clampToBounds:v7];
  return result;
}

- (int)secondAtPosition:(double)a3
{
  [(EKDayGridView *)self topPadding];
  v6 = v5;
  if (v5 < a3 || (result = CalCanvasPocketEnabled()) != 0)
  {
    [(EKDayGridView *)self hourHeight];
    return llround((a3 - v6) / (v8 * 24.0) * 86400.0);
  }

  return result;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(EKDayGridView *)self setNeedsDisplay];
  }
}

- (void)setHighlightedDayIndex:(int64_t)a3
{
  if (self->_highlightedDayIndex != a3)
  {
    self->_highlightedDayIndex = a3;
    [(EKDayGridView *)self _layoutHighlight];
  }
}

- (void)setFixedDayWidth:(double)a3
{
  if (self->_fixedDayWidth != a3)
  {
    self->_fixedDayWidth = a3;
    [(EKDayGridView *)self setNeedsLayout];

    [(EKDayGridView *)self _updateTimeMarker];
  }
}

- (void)setLineColor:(id)a3
{
  v5 = a3;
  if (self->_lineColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lineColor, a3);
    [(EKDayGridView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setGridVisualEffect:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_gridVisualEffect, a3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMutableDictionary *)self->_gridParentViews allValues];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setEffect:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_layoutHighlight
{
  highlightedDayIndex = self->_highlightedDayIndex;
  highlightedDayBackground = self->_highlightedDayBackground;
  if (highlightedDayIndex < 0)
  {

    [(UIView *)highlightedDayBackground setHidden:1];
  }

  else
  {
    if (![(UIView *)highlightedDayBackground isHidden])
    {
      [(UIView *)self->_highlightedDayBackground alpha];
      if (v5 >= 0.999)
      {
        v6 = self->_fadingHighlightedDayBackground;
        objc_storeStrong(&self->_fadingHighlightedDayBackground, self->_highlightedDayBackground);
        v7 = self->_highlightedDayBackground;
        self->_highlightedDayBackground = v6;
        v8 = v6;

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __33__EKDayGridView__layoutHighlight__block_invoke;
        v20[3] = &unk_1E843EC60;
        v20[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:196608 delay:v20 options:0 animations:0.2 completion:0.0];
      }
    }

    if (!self->_highlightedDayBackground)
    {
      v9 = objc_alloc(MEMORY[0x1E69DD250]);
      v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v11 = self->_highlightedDayBackground;
      self->_highlightedDayBackground = v10;

      v12 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      [(UIView *)self->_highlightedDayBackground setBackgroundColor:v12];

      [(UIView *)self->_gridContainerView addSubview:self->_highlightedDayBackground];
      [(UIView *)self->_gridContainerView sendSubviewToBack:self->_highlightedDayBackground];
    }

    v13 = self->_highlightedDayIndex - 1;
    [(EKDayGridView *)self _dayWidth];
    v15 = v14;
    CalRoundToScreenScale(v14 * v13);
    v17 = v16;
    v18 = CalCeilToScreenScale(v15);
    [(EKDayGridView *)self frame];
    [(UIView *)self->_highlightedDayBackground setFrame:v17, 0.0, v18];
    [(UIView *)self->_highlightedDayBackground setAlpha:0.0];
    [(UIView *)self->_highlightedDayBackground setHidden:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __33__EKDayGridView__layoutHighlight__block_invoke_2;
    v19[3] = &unk_1E843EC60;
    v19[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:196608 delay:v19 options:0 animations:0.1 completion:0.0];
  }
}

- (void)setCurtainHeight:(double)a3
{
  [(NSLayoutConstraint *)self->_curtainHeightConstraint setConstant:fmax(a3, 0.0)];

  [(EKDayGridView *)self _updateMarkerAlpha];
}

- (void)_updateMarkerAlpha
{
  if (CalCanvasPocketEnabled())
  {
    [(EKDayGridView *)self _timeMarkerAlpha];
    v4 = v3;
    [(EKCurrentTimeMarkerView *)self->_timeMarker setAlpha:?];
    timeDot = self->_timeDot;

    [(UIImageView *)timeDot setAlpha:v4];
  }
}

- (double)_timeMarkerAlpha
{
  v3 = 1.0;
  if (CalCanvasPocketEnabled())
  {
    [(EKCurrentTimeMarkerView *)self->_timeMarker frame];
    MidY = CGRectGetMidY(v8);
    [(NSLayoutConstraint *)self->_curtainHeightConstraint constant];
    v6 = fmax((MidY - v5) / 10.0, 0.0);
    if (v6 <= 1.0)
    {
      return v6;
    }

    else
    {
      return 1.0;
    }
  }

  return v3;
}

@end
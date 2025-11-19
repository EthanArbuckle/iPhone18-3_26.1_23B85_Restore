@interface EKCurrentTimeMarkerView
+ (double)_spacingAdjustmentFontSize;
+ (id)timeMarkerFontForSizeClass:(int64_t)a3;
- (CGRect)_lineFrame;
- (CGRect)currentTimeFrame;
- (EKCurrentTimeMarkerView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4;
- (double)extensionLineHeight;
- (double)markerWidth;
- (void)_updateTimeWithForce:(BOOL)a3;
- (void)drawRect:(CGRect)a3;
- (void)invalidateFonts;
- (void)layoutSubviews;
- (void)setShowsLine:(BOOL)a3;
- (void)setShowsThumb:(BOOL)a3;
@end

@implementation EKCurrentTimeMarkerView

- (double)markerWidth
{
  v2 = [(EKCurrentTimeMarkerView *)self currentTimeLabel];
  [v2 sizeThatFits:{10.0, 10.0}];
  v4 = v3;

  return v4 + 10.0;
}

- (CGRect)currentTimeFrame
{
  [(UIView *)self->_timeLabelPill frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(EKCurrentTimeMarkerView *)self superview];
  [(EKCurrentTimeMarkerView *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_lineFrame
{
  [(EKCurrentTimeMarkerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ([(EKCurrentTimeMarkerView *)self showsThumb])
  {
    IsLeftToRight = CalInterfaceIsLeftToRight();
    [(EKCurrentTimeMarkerView *)self markerWidth];
    if (IsLeftToRight)
    {
      v4 = v10;
    }

    else
    {
      v8 = v8 - v10;
    }
  }

  [(EKCurrentTimeMarkerView *)self extensionLineHeight];
  v12 = v11;
  [(EKCurrentTimeMarkerView *)self bounds];
  v13 = v6 + (CGRectGetHeight(v17) - v12) * 0.5;
  v14 = v4;
  v15 = v8;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (double)extensionLineHeight
{
  v2 = [(EKCurrentTimeMarkerView *)self traitCollection];
  v3 = EKUIUsesLargeTextLayout(v2);

  result = 2.0;
  if (v3)
  {
    return 3.0;
  }

  return result;
}

- (EKCurrentTimeMarkerView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4
{
  v37[6] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = EKCurrentTimeMarkerView;
  v5 = [(EKCurrentTimeMarkerView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(EKCurrentTimeMarkerView *)v5 setOpaque:0];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(EKCurrentTimeMarkerView *)v6 setBackgroundColor:v7];

    [(EKCurrentTimeMarkerView *)v6 setUserInteractionEnabled:0];
    [(EKCurrentTimeMarkerView *)v6 setShowsLine:1];
    [(EKCurrentTimeMarkerView *)v6 setShowsThumb:0];
    [(EKCurrentTimeMarkerView *)v6 setTodayStart:0.0];
    [(EKCurrentTimeMarkerView *)v6 setTodayWidth:0.0];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(EKCurrentTimeMarkerView *)v6 setCurrentTimeLabel:v8];

    v9 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    [v10 setTextAlignment:1];

    v11 = [objc_opt_class() timeMarkerFontForSizeClass:a4];
    v12 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    [v12 setFont:v11];

    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    timeLabelPill = v6->_timeLabelPill;
    v6->_timeLabelPill = v13;

    [(UIView *)v6->_timeLabelPill setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x1E69DC888] cuik_todayTimelineColor];
    [(UIView *)v6->_timeLabelPill setBackgroundColor:v15];

    [(UIView *)v6->_timeLabelPill setClipsToBounds:1];
    [(UIView *)v6->_timeLabelPill setHidden:1];
    v16 = v6->_timeLabelPill;
    v17 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    [(UIView *)v16 addSubview:v17];

    [(EKCurrentTimeMarkerView *)v6 addSubview:v6->_timeLabelPill];
    v18 = MEMORY[0x1E696ACD8];
    v35 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    v34 = [v18 constraintWithItem:v35 attribute:9 relatedBy:0 toItem:v6->_timeLabelPill attribute:9 multiplier:1.0 constant:0.0];
    v37[0] = v34;
    v19 = MEMORY[0x1E696ACD8];
    v33 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    v20 = [v19 constraintWithItem:v33 attribute:10 relatedBy:0 toItem:v6->_timeLabelPill attribute:10 multiplier:1.0 constant:0.0];
    v37[1] = v20;
    v21 = MEMORY[0x1E696ACD8];
    v22 = v6->_timeLabelPill;
    v23 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    v24 = [v21 constraintWithItem:v22 attribute:7 relatedBy:0 toItem:v23 attribute:7 multiplier:1.0 constant:10.0];
    v37[2] = v24;
    v25 = MEMORY[0x1E696ACD8];
    v26 = v6->_timeLabelPill;
    v27 = [(EKCurrentTimeMarkerView *)v6 currentTimeLabel];
    v28 = [v25 constraintWithItem:v26 attribute:8 relatedBy:0 toItem:v27 attribute:8 multiplier:1.0 constant:2.0];
    v37[3] = v28;
    v29 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:10 relatedBy:0 toItem:v6->_timeLabelPill attribute:10 multiplier:1.0 constant:0.0];
    v37[4] = v29;
    v30 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:5 relatedBy:0 toItem:v6->_timeLabelPill attribute:5 multiplier:1.0 constant:0.0];
    v37[5] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
    [v18 activateConstraints:v31];
  }

  return v6;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = EKCurrentTimeMarkerView;
  [(EKCurrentTimeMarkerView *)&v6 layoutSubviews];
  [(UIView *)self->_timeLabelPill frame];
  v4 = v3 * 0.5;
  v5 = [(UIView *)self->_timeLabelPill layer];
  [v5 setCornerRadius:v4];
}

+ (id)timeMarkerFontForSizeClass:(int64_t)a3
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v4 = [v3 fontDescriptor];
  [v4 pointSize];
  v6 = v5;

  CalRoundToScreenScale(v6 * 1.09090909);
  v8 = fmin(v7, 24.0);
  v9 = MEMORY[0x1E69DB878];

  return [v9 boldSystemFontOfSize:v8];
}

+ (double)_spacingAdjustmentFontSize
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptor];
  [v3 pointSize];
  v5 = v4;

  CalRoundToScreenScale(v5 * 0.454545455);
  return result;
}

- (void)setShowsLine:(BOOL)a3
{
  if (self->_showsLine != a3)
  {
    self->_showsLine = a3;
    [(EKCurrentTimeMarkerView *)self setNeedsDisplay];
  }
}

- (void)_updateTimeWithForce:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKCurrentTimeMarkerView *)self currentTimeLabel];
  v14 = [v5 text];

  v6 = CUIKNowDate();
  v7 = *MEMORY[0x1E6992E88];
  v8 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v9 = [v6 localizedStringWithFormat:v7 timeZone:v8];

  if (!CalInterfaceIsLeftToRight() || ([v9 isEqualToString:v14] ? (v10 = !v3) : (v10 = 0), !v10))
  {
    v11 = [(EKCurrentTimeMarkerView *)self currentTimeLabel];
    [v11 setText:v9];

    v12 = [MEMORY[0x1E69DC888] whiteColor];
    v13 = [(EKCurrentTimeMarkerView *)self currentTimeLabel];
    [v13 setTextColor:v12];
  }
}

- (void)invalidateFonts
{
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(self))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [objc_opt_class() timeMarkerFontForSizeClass:v3];
  v5 = [(EKCurrentTimeMarkerView *)self currentTimeLabel];
  [v5 setFont:v4];

  [(EKCurrentTimeMarkerView *)self _updateTimeWithForce:1];
}

- (void)setShowsThumb:(BOOL)a3
{
  if (self->_showsThumb != a3)
  {
    v5 = !a3;
    [(UIView *)self->_timeLabelPill setHidden:!a3];
    if (v5)
    {
      v6 = [(EKCurrentTimeMarkerView *)self subviews];
      [v6 makeObjectsPerformSelector:sel_removeFromSuperview];
    }

    else
    {
      [(EKCurrentTimeMarkerView *)self updateTime];
    }
  }

  self->_showsThumb = a3;
}

- (void)drawRect:(CGRect)a3
{
  if (!self->_showsLine)
  {
    return;
  }

  v58 = v4;
  v59 = v3;
  if (self->_showsThumb)
  {
    v18 = [MEMORY[0x1E69DC888] cuik_todayTimelineColor];
LABEL_7:
    v20 = v18;
    [v18 set];

    [(EKCurrentTimeMarkerView *)self _lineFrame];
    v23 = v22;
    MinY = v24;
    v27 = v26;
    goto LABEL_8;
  }

  [(EKCurrentTimeMarkerView *)self todayWidth:a3.origin.x];
  if (v19 == 0.0)
  {
    v18 = [MEMORY[0x1E69DC888] cuik_nonTodayTimelineColor];
    goto LABEL_7;
  }

  [(EKCurrentTimeMarkerView *)self _lineFrame];
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  v27 = CGRectGetHeight(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MinY = CGRectGetMinY(v61);
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v36 = [MEMORY[0x1E69DC888] cuik_todayTimelineColor];
  [v36 set];

  [(EKCurrentTimeMarkerView *)self todayStart];
  v38 = v37;
  [(EKCurrentTimeMarkerView *)self todayWidth];
  v40 = v39;
  if (IsLeftToRight)
  {
    v41 = v38;
    v42 = MinY;
    v43 = v27;
    UIRectFill(*(&v40 - 2));
    v44 = [MEMORY[0x1E69DC888] cuik_nonTodayTimelineColor];
    [v44 set];

    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    MinX = CGRectGetMinX(v62);
    [(EKCurrentTimeMarkerView *)self todayStart];
    v63.size.width = v46 - MinX;
    v63.origin.x = MinX;
    v63.origin.y = MinY;
    v63.size.height = v27;
    UIRectFill(v63);
    [(EKCurrentTimeMarkerView *)self todayStart];
    v48 = v47;
    [(EKCurrentTimeMarkerView *)self todayWidth];
    v23 = v48 + v49;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    MaxX = CGRectGetMaxX(v64) - v23;
  }

  else
  {
    v50 = v38 - v39;
    [(EKCurrentTimeMarkerView *)self todayWidth];
    v65.size.width = v51;
    v65.origin.x = v50;
    v65.origin.y = MinY;
    v65.size.height = v27;
    UIRectFill(v65);
    v52 = [MEMORY[0x1E69DC888] cuik_nonTodayTimelineColor];
    [v52 set];

    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v53 = CGRectGetMinX(v66);
    [(EKCurrentTimeMarkerView *)self todayStart];
    v55 = v54;
    [(EKCurrentTimeMarkerView *)self todayWidth];
    v67.size.width = v55 - v56 - v53;
    v67.origin.x = v53;
    v67.origin.y = MinY;
    v67.size.height = v27;
    UIRectFill(v67);
    [(EKCurrentTimeMarkerView *)self todayStart];
    v23 = v57;
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    MaxX = CGRectGetMaxX(v68);
  }

LABEL_8:
  v28 = v23;
  v29 = MinY;
  v30 = v27;

  UIRectFill(*(&MaxX - 2));
}

@end
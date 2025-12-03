@interface YearViewYearHeader
+ (double)headerDaySpacingForWindowSize:(CGSize)size;
+ (double)headerYInsetForWindowSize:(CGSize)size;
+ (double)heightForWindowSize:(CGSize)size;
+ (double)middleHeightForWindowSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (YearViewYearHeader)initWithCalendarDate:(id)date;
- (double)heightBetweenLineAndNumber;
- (double)yearNumberHeaderFontSize;
- (id)_thinLineColor;
- (id)_yearString;
- (void)_initializeThinLine;
- (void)_layoutOverlayLegend;
- (void)_layoutThinLine;
- (void)_layoutYearNumber;
- (void)_reloadYearNumberLabel;
- (void)_removeOverlayLegend;
- (void)_updateOverlayLegend;
- (void)layoutSubviews;
- (void)localeChanged;
- (void)setCalendarDate:(id)date;
- (void)willMoveToWindow:(id)window;
@end

@implementation YearViewYearHeader

- (YearViewYearHeader)initWithCalendarDate:(id)date
{
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = YearViewYearHeader;
  v6 = [(YearViewYearHeader *)&v14 init];
  if (v6)
  {
    if (!dateCopy)
    {
      sub_100170048();
    }

    objc_storeStrong(&v6->_calendarDate, date);
    _headerBackgroundColor = [objc_opt_class() _headerBackgroundColor];
    [(YearViewYearHeader *)v6 setBackgroundColor:_headerBackgroundColor];

    [(YearViewYearHeader *)v6 _reloadYearNumberLabel];
    [(YearViewYearHeader *)v6 _initializeThinLine];
    [(YearViewYearHeader *)v6 _updateOverlayLegend];
    objc_initWeak(&location, v6);
    v15 = objc_opt_class();
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007E650;
    v11[3] = &unk_10020E9E0;
    objc_copyWeak(&v12, &location);
    v9 = [(YearViewYearHeader *)v6 registerForTraitChanges:v8 withHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = objc_opt_class();
  EKUICurrentWindowSize();
  [v4 heightForWindowSize:?];
  v6 = v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  window = [(YearViewYearHeader *)self window];

  if (window)
  {
    v4.receiver = self;
    v4.super_class = YearViewYearHeader;
    [(YearViewYearHeader *)&v4 layoutSubviews];
    [(YearViewYearHeader *)self _layoutYearNumber];
    [(YearViewYearHeader *)self _layoutThinLine];
    [(YearViewYearHeader *)self _layoutOverlayLegend];
  }

  else
  {
    self->_layoutWhenJoiningViewHierarchy = 1;
  }
}

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    if (self->_layoutWhenJoiningViewHierarchy)
    {
      windowCopy = window;
      EKUIPushFallbackSizingContextWithViewHierarchy();
      [(YearViewYearHeader *)self layoutSubviews];
      EKUIPopFallbackSizingContextWithViewHierarchy();

      self->_layoutWhenJoiningViewHierarchy = 0;
    }
  }
}

+ (double)heightForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [objc_opt_class() headerYInsetForWindowSize:{size.width, size.height}];
  v6 = v5;
  [objc_opt_class() middleHeightForWindowSize:{width, height}];
  v8 = v7;
  [objc_opt_class() headerDaySpacingForWindowSize:{width, height}];
  v10 = v6 + v8 + v9;
  v11 = CUIKCurrentLocaleRequiresIndianLanguageAdjustments();
  result = v10 + 15.0;
  if (!v11)
  {
    return v10;
  }

  return result;
}

- (void)setCalendarDate:(id)date
{
  dateCopy = date;
  if (self->_calendarDate != dateCopy)
  {
    v6 = dateCopy;
    objc_storeStrong(&self->_calendarDate, date);
    [(YearViewYearHeader *)self _reloadYearNumberLabel];
    [(YearViewYearHeader *)self _updateOverlayLegend];
    dateCopy = v6;
  }
}

- (void)localeChanged
{
  [(YearViewYearHeader *)self _reloadYearNumberLabel];

  [(YearViewYearHeader *)self _updateOverlayLegend];
}

- (id)_thinLineColor
{
  if (qword_1002519F8 != -1)
  {
    sub_1001700A8();
  }

  v3 = qword_1002519F0;

  return v3;
}

- (void)_initializeThinLine
{
  if (self->_thinLine)
  {
    v2 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "The thin line already been initialized.", v8, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(UIView);
    thinLine = self->_thinLine;
    self->_thinLine = v4;

    _thinLineColor = [(YearViewYearHeader *)self _thinLineColor];
    [(UIView *)self->_thinLine setBackgroundColor:_thinLineColor];

    v7 = self->_thinLine;

    [(YearViewYearHeader *)self addSubview:v7];
  }
}

- (void)_reloadYearNumberLabel
{
  if (!self->_yearNumber)
  {
    v3 = objc_alloc_init(UILabel);
    yearNumber = self->_yearNumber;
    self->_yearNumber = v3;

    _headerBackgroundColor = [objc_opt_class() _headerBackgroundColor];
    [(UILabel *)self->_yearNumber setBackgroundColor:_headerBackgroundColor];

    [(YearViewYearHeader *)self addSubview:self->_yearNumber];
  }

  v6 = objc_alloc_init(NSMutableParagraphStyle);
  [v6 setAlignment:0];
  calendarDate = [(YearViewYearHeader *)self calendarDate];
  date = [calendarDate date];
  if (CUIKNSDateIsThisYear())
  {
    CalendarAppTintColor();
  }

  else
  {
    +[UIColor labelColor];
  }
  v9 = ;

  v22[0] = NSFontAttributeName;
  yearNumberFont = [(YearViewYearHeader *)self yearNumberFont];
  v23[0] = yearNumberFont;
  v23[1] = v6;
  v22[1] = NSParagraphStyleAttributeName;
  v22[2] = NSForegroundColorAttributeName;
  v23[2] = v9;
  v22[3] = NSKernAttributeName;
  [(YearViewYearHeader *)self yearNumberKerning];
  *&v11 = v11;
  v12 = [NSNumber numberWithFloat:v11];
  v23[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

  _yearString = [(YearViewYearHeader *)self _yearString];
  v15 = [[NSAttributedString alloc] initWithString:_yearString attributes:v13];
  [(UILabel *)self->_yearNumber setAttributedText:v15];
  [(UILabel *)self->_yearNumber sizeToFit];
  [(UILabel *)self->_yearNumber frame];
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_yearNumber bounds];
  v20 = CGRectGetWidth(v24) + 10.0;
  [(UILabel *)self->_yearNumber bounds];
  [(UILabel *)self->_yearNumber setFrame:v17, v19, v20, CGRectGetHeight(v25)];
  _headerBackgroundColor2 = [objc_opt_class() _headerBackgroundColor];
  [(UILabel *)self->_yearNumber setBackgroundColor:_headerBackgroundColor2];

  [(YearViewYearHeader *)self setNeedsLayout];
  [(YearViewYearHeader *)self setNeedsDisplay];
}

- (id)_yearString
{
  v3 = +[NSCalendar currentCalendar];
  calendarIdentifier = [v3 calendarIdentifier];
  v5 = [NSCalendarIdentifierJapanese isEqualToString:calendarIdentifier];

  if (!v5)
  {
    goto LABEL_4;
  }

  calendarDate = [(YearViewYearHeader *)self calendarDate];
  date = [calendarDate date];
  v8 = [v3 component:2 fromDate:date];

  calendarDate2 = [(YearViewYearHeader *)self calendarDate];
  calendarDateForEndOfYear = [calendarDate2 calendarDateForEndOfYear];

  date2 = [calendarDateForEndOfYear date];
  v12 = [v3 component:2 fromDate:date2];

  if (v8 == v12)
  {

LABEL_4:
    self->_showingMultiEraYear = 0;
    calendarDateForEndOfYear = [(YearViewYearHeader *)self calendarDate];
    date3 = [calendarDateForEndOfYear date];
    v14 = CUIKStringForYear();
    goto LABEL_6;
  }

  self->_showingMultiEraYear = 1;
  date3 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [date3 localizedStringForKey:@"%@ / %@" value:&stru_1002133B8 table:0];
  calendarDate3 = [(YearViewYearHeader *)self calendarDate];
  date4 = [calendarDate3 date];
  v18 = CUIKStringForYear();
  date5 = [calendarDateForEndOfYear date];
  v20 = CUIKStringForYear();
  v14 = [NSString localizedStringWithFormat:v15, v18, v20];

LABEL_6:

  return v14;
}

- (void)_updateOverlayLegend
{
  v3 = CUIKGetOverlayCalendar();
  v4 = v3 != 0;

  if (self->_showingOverlayLegend == v4)
  {
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    self->_showingOverlayLegend = v4;
    if (v3)
    {
      v5 = objc_opt_new();
      overlayLegendYearStartLine = self->_overlayLegendYearStartLine;
      self->_overlayLegendYearStartLine = v5;

      v7 = CalendarAppTintColor();
      [(UIView *)self->_overlayLegendYearStartLine setBackgroundColor:v7];

      [(YearViewYearHeader *)self addSubview:self->_overlayLegendYearStartLine];
      v8 = objc_opt_new();
      overlayLegendMonthStartLine = self->_overlayLegendMonthStartLine;
      self->_overlayLegendMonthStartLine = v8;

      v10 = CalendarAppTintColor();
      [(UIView *)self->_overlayLegendMonthStartLine setBackgroundColor:v10];

      [(YearViewYearHeader *)self addSubview:self->_overlayLegendMonthStartLine];
      v11 = objc_opt_new();
      overlayLegendYearStartLabel = self->_overlayLegendYearStartLabel;
      self->_overlayLegendYearStartLabel = v11;

      v13 = +[UIColor systemGrayColor];
      [(UILabel *)self->_overlayLegendYearStartLabel setTextColor:v13];

      overlayLegendFont = [(YearViewYearHeader *)self overlayLegendFont];
      [(UILabel *)self->_overlayLegendYearStartLabel setFont:overlayLegendFont];

      [(YearViewYearHeader *)self addSubview:self->_overlayLegendYearStartLabel];
      v15 = objc_opt_new();
      overlayLegendMonthStartLabel = self->_overlayLegendMonthStartLabel;
      self->_overlayLegendMonthStartLabel = v15;

      v17 = +[UIColor systemGrayColor];
      [(UILabel *)self->_overlayLegendMonthStartLabel setTextColor:v17];

      overlayLegendFont2 = [(YearViewYearHeader *)self overlayLegendFont];
      [(UILabel *)self->_overlayLegendMonthStartLabel setFont:overlayLegendFont2];

      [(YearViewYearHeader *)self addSubview:self->_overlayLegendMonthStartLabel];
LABEL_6:
      [(UILabel *)self->_overlayLegendYearStartLabel setText:&stru_1002133B8];
      [(UILabel *)self->_overlayLegendMonthStartLabel setText:&stru_1002133B8];
      [(UIView *)self->_overlayLegendYearStartLine setAlpha:0.0];
      [(UIView *)self->_overlayLegendMonthStartLine setAlpha:0.0];
      [(UILabel *)self->_overlayLegendMonthStartLabel setAlpha:0.0];
      [(UILabel *)self->_overlayLegendMonthStartLabel setAlpha:0.0];
      v19 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007F2A8;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_async(v19, block);

      return;
    }

    [(YearViewYearHeader *)self _removeOverlayLegend];
  }

  [(YearViewYearHeader *)self setNeedsLayout];
}

- (void)_removeOverlayLegend
{
  [(UIView *)self->_overlayLegendYearStartLine removeFromSuperview];
  [(UIView *)self->_overlayLegendMonthStartLine removeFromSuperview];
  [(UILabel *)self->_overlayLegendYearStartLabel removeFromSuperview];
  [(UILabel *)self->_overlayLegendMonthStartLabel removeFromSuperview];
  overlayLegendYearStartLine = self->_overlayLegendYearStartLine;
  self->_overlayLegendYearStartLine = 0;

  overlayLegendMonthStartLine = self->_overlayLegendMonthStartLine;
  self->_overlayLegendMonthStartLine = 0;

  overlayLegendYearStartLabel = self->_overlayLegendYearStartLabel;
  self->_overlayLegendYearStartLabel = 0;

  overlayLegendMonthStartLabel = self->_overlayLegendMonthStartLabel;
  self->_overlayLegendMonthStartLabel = 0;
}

- (void)_layoutThinLine
{
  [(YearViewYearHeader *)self bounds];
  v4 = v3;
  CalRoundToScreenScale();
  v6 = v5;
  EKUISeparatorLineThickness();
  v8 = v7;
  [(UILabel *)self->_yearNumber frame];
  MaxY = CGRectGetMaxY(v13);
  [(YearViewYearHeader *)self heightBetweenLineAndNumber];
  thinLine = self->_thinLine;

  [(UIView *)thinLine setFrame:v6, MaxY + v10, v4 - v6, v8];
}

- (void)_layoutYearNumber
{
  [(UILabel *)self->_yearNumber frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = 0.0;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    [(YearViewYearHeader *)self bounds];
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v11 = MaxX - CGRectGetWidth(v18);
  }

  v13 = objc_opt_class();
  EKUICurrentWindowSize();
  [v13 headerYInsetForWindowSize:?];
  yearNumber = self->_yearNumber;

  [(UILabel *)yearNumber setFrame:v11, v14, v8, v10];
}

- (void)_layoutOverlayLegend
{
  if (self->_showingOverlayLegend)
  {
    [(UILabel *)self->_overlayLegendYearStartLabel sizeToFit];
    [(UILabel *)self->_overlayLegendMonthStartLabel sizeToFit];
    [(YearViewYearHeader *)self overlayLegendLineLength];
    v4 = v3;
    IsLeftToRight = CalInterfaceIsLeftToRight();
    [(YearViewYearHeader *)self bounds];
    v85 = v4;
    if (IsLeftToRight)
    {
      MaxX = CGRectGetMaxX(*&v6);
      [(YearViewYearHeader *)self overlayLegendRightInset];
      v12 = MaxX - v11;
      [(UILabel *)self->_overlayLegendYearStartLabel frame];
      Width = CGRectGetWidth(v88);
      [(UILabel *)self->_overlayLegendMonthStartLabel frame];
      v14 = v12 - fmax(Width, CGRectGetWidth(v89));
      [(YearViewYearHeader *)self overlayLegendSpacing];
      v87 = v14 - v15 - v4;
      v16 = v14;
    }

    else
    {
      MinX = CGRectGetMinX(*&v6);
      [(YearViewYearHeader *)self overlayLegendSpacing];
      v19 = MinX + v18;
      [(UILabel *)self->_overlayLegendYearStartLabel frame];
      v20 = CGRectGetWidth(v90);
      [(UILabel *)self->_overlayLegendMonthStartLabel frame];
      v21 = v19 + fmax(v20, CGRectGetWidth(v91));
      [(YearViewYearHeader *)self overlayLegendSpacing];
      v23 = v21 - v22;
      [(UILabel *)self->_overlayLegendYearStartLabel frame];
      v16 = v23 - CGRectGetWidth(v92);
      [(YearViewYearHeader *)self overlayLegendSpacing];
      v87 = v21;
      v25 = v21 - v24;
      [(UILabel *)self->_overlayLegendMonthStartLabel frame];
      v14 = v25 - CGRectGetWidth(v93);
    }

    [(UIView *)self->_thinLine frame];
    MinY = CGRectGetMinY(v94);
    [(UILabel *)self->_overlayLegendYearStartLabel frame];
    v28 = v27;
    v30 = v29;
    [(YearViewYearHeader *)self overlayLegendYearBaseline];
    v32 = MinY - v31;
    [(UILabel *)self->_overlayLegendYearStartLabel _firstLineBaselineOffsetFromBoundsTop];
    v34 = v32 - v33;
    [(UILabel *)self->_overlayLegendYearStartLabel setFrame:v16, v32 - v33, v28, v30];
    [(UILabel *)self->_overlayLegendMonthStartLabel frame];
    v36 = v35;
    v38 = v37;
    [(YearViewYearHeader *)self overlayLegendMonthBaseline];
    v40 = MinY - v39;
    [(UILabel *)self->_overlayLegendMonthStartLabel _firstLineBaselineOffsetFromBoundsTop];
    v42 = v40 - v41;
    [(UILabel *)self->_overlayLegendMonthStartLabel setFrame:v14, v42, v36, v38];
    v95.origin.x = v16;
    v95.origin.y = v34;
    v95.size.width = v28;
    v95.size.height = v30;
    CGRectGetMidY(v95);
    [(YearViewYearHeader *)self overlayLegendYearLineThickness];
    CalRoundToScreenScale();
    v44 = v43;
    [(YearViewYearHeader *)self overlayLegendYearLineThickness];
    [(UIView *)self->_overlayLegendYearStartLine setFrame:v87, v44, v86, v45];
    v96.origin.x = v14;
    v96.origin.y = v42;
    v96.size.width = v36;
    v96.size.height = v38;
    CGRectGetMidY(v96);
    [(YearViewYearHeader *)self overlayLegendMonthLineThickness];
    CalRoundToScreenScale();
    v47 = v46;
    [(YearViewYearHeader *)self overlayLegendMonthLineThickness];
    [(UIView *)self->_overlayLegendMonthStartLine setFrame:v87, v47, v86, v48];
    if (self->_showingMultiEraYear)
    {
      [(UILabel *)self->_overlayLegendYearStartLabel frame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      [(UIView *)self->_overlayLegendYearStartLine frame];
      v104.origin.x = v57;
      v104.origin.y = v58;
      v104.size.width = v59;
      v104.size.height = v60;
      v97.origin.x = v50;
      v97.origin.y = v52;
      v97.size.width = v54;
      v97.size.height = v56;
      v98 = CGRectUnion(v97, v104);
      x = v98.origin.x;
      y = v98.origin.y;
      v63 = v98.size.width;
      height = v98.size.height;
      [(UIView *)self->_overlayLegendMonthStartLine frame];
      v105.origin.x = v65;
      v105.origin.y = v66;
      v105.size.width = v67;
      v105.size.height = v68;
      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.width = v63;
      v99.size.height = height;
      v100 = CGRectUnion(v99, v105);
      v69 = v100.origin.x;
      v70 = v100.origin.y;
      v71 = v100.size.width;
      v72 = v100.size.height;
      [(UILabel *)self->_overlayLegendMonthStartLabel frame];
      v106.origin.x = v73;
      v106.origin.y = v74;
      v106.size.width = v75;
      v106.size.height = v76;
      v101.origin.x = v69;
      v101.origin.y = v70;
      v101.size.width = v71;
      v101.size.height = v72;
      v102 = CGRectUnion(v101, v106);
      v77 = v102.origin.x;
      v78 = v102.origin.y;
      v79 = v102.size.width;
      v80 = v102.size.height;
      [(UILabel *)self->_yearNumber frame];
      v107.origin.x = v81;
      v107.origin.y = v82;
      v107.size.width = v83;
      v107.size.height = v84;
      v103.origin.x = v77;
      v103.origin.y = v78;
      v103.size.width = v79;
      v103.size.height = v80;
      if (CGRectIntersectsRect(v103, v107))
      {
        [(YearViewYearHeader *)self _removeOverlayLegend];
        self->_showingOverlayLegend = 0;
      }
    }
  }
}

+ (double)headerYInsetForWindowSize:(CGSize)size
{
  sub_10007FD08();
  objc_opt_class();
  sub_100026F2C();
  return 0.0;
}

+ (double)middleHeightForWindowSize:(CGSize)size
{
  sub_10007FD08();
  objc_opt_class();
  sub_100026F2C();
  return 0.0;
}

+ (double)headerDaySpacingForWindowSize:(CGSize)size
{
  sub_10007FD08();
  objc_opt_class();
  sub_100026F2C();
  return 0.0;
}

- (double)yearNumberHeaderFontSize
{
  sub_10007FD08();
  objc_opt_class();
  sub_100026F2C();
  return 0.0;
}

- (double)heightBetweenLineAndNumber
{
  sub_10007FD08();
  objc_opt_class();
  sub_100026F2C();
  return 0.0;
}

@end
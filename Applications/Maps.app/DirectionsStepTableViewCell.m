@interface DirectionsStepTableViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3;
+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6;
+ (id)reuseIdentifier;
+ (unint64_t)signViewIconSize;
- (CGRect)_separatorFrame;
- (DirectionsStepTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_trailingGuideToContentViewDistance;
- (void)setAccessoryType:(int64_t)a3;
- (void)setAlignSeparatorWithLeadingText:(BOOL)a3;
- (void)updateTheme;
@end

@implementation DirectionsStepTableViewCell

- (void)setAlignSeparatorWithLeadingText:(BOOL)a3
{
  if (self->_alignSeparatorWithLeadingText != a3)
  {
    self->_alignSeparatorWithLeadingText = a3;
    v5 = [(DirectionsStepTableViewCell *)self separatorStyle];
    [(DirectionsStepTableViewCell *)self setSeparatorStyle:([(DirectionsStepTableViewCell *)self separatorStyle]+ 1) % 3];

    [(DirectionsStepTableViewCell *)self setSeparatorStyle:v5];
  }
}

- (CGRect)_separatorFrame
{
  v23.receiver = self;
  v23.super_class = DirectionsStepTableViewCell;
  [(DirectionsStepTableViewCell *)&v23 _separatorFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(DirectionsStepTableViewCell *)self alignSeparatorWithLeadingText])
  {
    v22 = 0u;
    v11 = objc_opt_class();
    v12 = [(DirectionsStepTableViewCell *)self traitCollection:0];
    v13 = [v12 userInterfaceIdiom];
    if (v11)
    {
      [v11 cellMetricsForIdiom:v13];
    }

    else
    {
      v22 = 0u;
    }

    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(DirectionsStepTableViewCell *)self semanticContentAttribute]])
    {
      v14 = [(DirectionsStepTableViewCell *)self contentView];
      [v14 bounds];
      MaxX = CGRectGetMaxX(v24);
      v25.origin.x = v4;
      v25.origin.y = v6;
      v25.size.width = v8;
      v25.size.height = v10;
      v16 = CGRectGetMaxX(v25);

      v17 = v16 - MaxX + *&v22 + 0.0 + *(&v22 + 1);
    }

    else
    {
      v26.origin.x = v4;
      v26.origin.y = v6;
      v26.size.width = v8;
      v26.size.height = v10;
      v17 = *&v22 + 0.0 + *(&v22 + 1) - CGRectGetMinX(v26);
      v4 = v17 + v4;
    }

    v8 = v8 - v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)_trailingGuideToContentViewDistance
{
  v3 = objc_opt_class();
  v4 = [(DirectionsStepTableViewCell *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];
  if (v3)
  {
    [v3 cellMetricsForIdiom:v5];
  }

  v6 = [(DirectionsStepTableViewCell *)self accessoryType];
  result = 0.0;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (void)setAccessoryType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = DirectionsStepTableViewCell;
  [(DirectionsStepTableViewCell *)&v5 setAccessoryType:a3];
  stepView = self->_stepView;
  [(DirectionsStepTableViewCell *)self _trailingGuideToContentViewDistance];
  [(DirectionsStepView *)stepView _updateTrailingGuideToContentViewConstraintWithConstant:?];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = DirectionsStepTableViewCell;
  [(MapsThemeTableViewCell *)&v9 updateTheme];
  v3 = [(DirectionsStepTableViewCell *)self backgroundView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(DirectionsStepTableViewCell *)self backgroundView];
    [v5 setHighlightedColor:{-[DirectionsStepTableViewCell isSelectedRow](self, "isSelectedRow")}];
  }

  v6 = [(DirectionsStepTableViewCell *)self theme];
  v7 = [v6 tableViewCellHighlightedOverlayColor];
  v8 = [(DirectionsStepTableViewCell *)self selectedBackgroundView];
  [v8 setBackgroundColor:v7];
}

- (DirectionsStepTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = DirectionsStepTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(DirectionsStepTableViewCell *)v4 setAccessibilityIdentifier:@"DirectionsStepCell"];
    v6 = objc_alloc([objc_opt_class() stepViewClass]);
    v7 = [(DirectionsStepTableViewCell *)v5 contentView];
    [v7 bounds];
    v8 = [v6 initWithFrame:?];
    stepView = v5->_stepView;
    v5->_stepView = v8;

    [(DirectionsStepView *)v5->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsStepView *)v5->_stepView setAccessibilityIdentifier:@"DirectionsStep"];
    v10 = [(DirectionsStepTableViewCell *)v5 contentView];
    [v10 addSubview:v5->_stepView];

    v11 = v5->_stepView;
    v12 = [(DirectionsStepTableViewCell *)v5 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [(DirectionsStepView *)v11 _maps_constraintsEqualToEdgesOfView:v12 priority:v13];
    v15 = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:v15];
  }

  return v5;
}

+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  [objc_msgSend(a1 "stepViewClass")];
  v13 = v12;

  return v13;
}

+ (unint64_t)signViewIconSize
{
  v2 = [a1 stepViewClass];

  return [v2 signViewIconSize];
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3
{
  result = [a2 stepViewClass];
  if (result)
  {

    return [($8452678F12DBC466148836A9D382CAFC *)result cellMetricsForIdiom:a4];
  }

  else
  {
    retstr->var8 = 0.0;
    *&retstr->var4 = 0u;
    *&retstr->var6 = 0u;
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
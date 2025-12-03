@interface DirectionsStartEndTableViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (id)reuseIdentifier;
- (CGRect)_separatorFrame;
- (DirectionsStartEndTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setAlignSeparatorWithLeadingText:(BOOL)text;
@end

@implementation DirectionsStartEndTableViewCell

- (CGRect)_separatorFrame
{
  v24.receiver = self;
  v24.super_class = DirectionsStartEndTableViewCell;
  [(DirectionsStartEndTableViewCell *)&v24 _separatorFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(DirectionsStartEndTableViewCell *)self alignSeparatorWithLeadingText])
  {
    v23 = 0u;
    v11 = objc_opt_class();
    v12 = [(DirectionsStartEndTableViewCell *)self traitCollection:0];
    userInterfaceIdiom = [v12 userInterfaceIdiom];
    if (v11)
    {
      [v11 cellMetricsForIdiom:userInterfaceIdiom];
    }

    else
    {
      v23 = 0u;
    }

    v14 = *&v23 + 0.0 + *(&v23 + 1);
    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(DirectionsStartEndTableViewCell *)self semanticContentAttribute]])
    {
      contentView = [(DirectionsStartEndTableViewCell *)self contentView];
      [contentView bounds];
      MaxX = CGRectGetMaxX(v25);
      v26.origin.x = v4;
      v26.origin.y = v6;
      v26.size.width = v8;
      v26.size.height = v10;
      v17 = CGRectGetMaxX(v26);

      v18 = v14 - MaxX + v17;
    }

    else
    {
      v27.origin.x = v4;
      v27.origin.y = v6;
      v27.size.width = v8;
      v27.size.height = v10;
      v18 = v14 - CGRectGetMinX(v27);
      v4 = v18 + v4;
    }

    v8 = v8 - v18;
  }

  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)setAlignSeparatorWithLeadingText:(BOOL)text
{
  if (self->_alignSeparatorWithLeadingText != text)
  {
    self->_alignSeparatorWithLeadingText = text;
    separatorStyle = [(DirectionsStartEndTableViewCell *)self separatorStyle];
    [(DirectionsStartEndTableViewCell *)self setSeparatorStyle:([(DirectionsStartEndTableViewCell *)self separatorStyle]+ 1) % 3];

    [(DirectionsStartEndTableViewCell *)self setSeparatorStyle:separatorStyle];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DirectionsStartEndTableViewCell;
  [(DirectionsStartEndTableViewCell *)&v3 prepareForReuse];
  [(DirectionsStartEndContentView *)self->_startEndView prepareForReuse];
}

- (DirectionsStartEndTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = DirectionsStartEndTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(DirectionsStartEndTableViewCell *)v4 setAccessibilityIdentifier:@"DirectionsStartEndCell"];
    v6 = objc_alloc([objc_opt_class() startEndViewClass]);
    contentView = [(DirectionsStartEndTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [v6 initWithFrame:?];
    startEndView = v5->_startEndView;
    v5->_startEndView = v8;

    [(DirectionsStartEndContentView *)v5->_startEndView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(DirectionsStartEndTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_startEndView];

    v11 = v5->_startEndView;
    contentView3 = [(DirectionsStartEndTableViewCell *)v5 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [(DirectionsStartEndContentView *)v11 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v13];
    allConstraints = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v5;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  result = [a2 startEndViewClass];
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

@end
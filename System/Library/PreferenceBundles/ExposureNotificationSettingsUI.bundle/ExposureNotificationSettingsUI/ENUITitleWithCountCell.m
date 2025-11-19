@interface ENUITitleWithCountCell
+ (void)addCount:(unint64_t)a3 toSpecifier:(id)a4;
- (ENUITitleWithCountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_countTextToDisplayForSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setUp;
@end

@implementation ENUITitleWithCountCell

- (ENUITitleWithCountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ENUITitleWithCountCell;
  v4 = [(ENUITitleWithCountCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUITitleWithCountCell *)v4 setUp];
  }

  return v5;
}

- (void)setUp
{
  v3 = objc_opt_new();
  [(ENUITitleWithCountCell *)self setCountLabel:v3];

  v4 = [(ENUITitleWithCountCell *)self titleLabel];
  v5 = [v4 font];
  v6 = [(ENUITitleWithCountCell *)self countLabel];
  [v6 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(ENUITitleWithCountCell *)self countLabel];
  [v8 setTextColor:v7];

  v9 = [(ENUITitleWithCountCell *)self countLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(ENUITitleWithCountCell *)self countLabel];
  [v10 setAdjustsFontForContentSizeCategory:1];

  v11 = [(ENUITitleWithCountCell *)self contentView];
  v12 = [(ENUITitleWithCountCell *)self countLabel];
  [v11 addSubview:v12];

  v24 = [(ENUITitleWithCountCell *)self countLabel];
  v23 = [v24 trailingAnchor];
  v13 = [(ENUITitleWithCountCell *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v23 constraintEqualToAnchor:v15];
  v25[0] = v16;
  v17 = [(ENUITitleWithCountCell *)self countLabel];
  v18 = [v17 centerYAnchor];
  v19 = [(ENUITitleWithCountCell *)self contentView];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v25[1] = v21;
  v22 = [NSArray arrayWithObjects:v25 count:2];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = ENUITitleWithCountCell;
  v4 = a3;
  [(ENUITitleWithCountCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [(ENUITitleWithCountCell *)self _countTextToDisplayForSpecifier:v4, v11.receiver, v11.super_class];

  v6 = [(ENUITitleWithCountCell *)self countLabel];
  [v6 setText:v5];

  v7 = [(ENUITitleWithCountCell *)self countLabel];
  v8 = [v7 text];
  v9 = [v8 length] == 0;
  v10 = [(ENUITitleWithCountCell *)self countLabel];
  [v10 setHidden:v9];

  [(ENUITitleWithCountCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = ENUITitleWithCountCell;
  [(ENUITitleWithCountCell *)&v25 layoutSubviews];
  v3 = [(ENUITitleWithCountCell *)self countLabel];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    v5 = [(ENUITitleWithCountCell *)self textLabel];
    v6 = [(ENUITitleWithCountCell *)self countLabel];
    [v6 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v8 = v7 + 16.0;

    v9 = [(ENUITitleWithCountCell *)self contentView];
    [v9 frame];
    v11 = v10;
    v12 = [(ENUITitleWithCountCell *)self layoutMarginsGuide];
    [v12 layoutFrame];
    v14 = v11 - v13 - v8;

    [v5 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (v15 < v14)
    {
      v14 = v15;
    }

    v22 = [(ENUITitleWithCountCell *)self traitCollection];
    v23 = [v22 layoutDirection];

    v24 = v8 + v17;
    if (v23 != &dword_0 + 1)
    {
      v24 = v17;
    }

    [v5 setFrame:{v24, v19, v14, v21}];
  }
}

+ (void)addCount:(unint64_t)a3 toSpecifier:(id)a4
{
  v5 = a4;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [v5 setProperty:v6 forKey:@"ENUICountNumberSpecifierPropertyKey"];
}

- (id)_countTextToDisplayForSpecifier:(id)a3
{
  v3 = a3;
  if (qword_34158 != -1)
  {
    sub_1C41C();
  }

  v4 = [v3 propertyForKey:@"ENUICountNumberSpecifierPropertyKey"];
  if (v4)
  {
    v5 = [qword_34150 stringFromNumber:v4];
  }

  else
  {
    v5 = &stru_2D818;
  }

  return v5;
}

@end
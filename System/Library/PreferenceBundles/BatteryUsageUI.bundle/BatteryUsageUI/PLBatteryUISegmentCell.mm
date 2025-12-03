@interface PLBatteryUISegmentCell
- (BOOL)checkIfFontFits:(id)fits withSegment1:(id)segment1 andSegment2:(id)segment2;
- (id)getFittingPreferredFontFromSegment1:(id)segment1 andSegment2:(id)segment2;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUISegmentCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PLBatteryUISegmentCell;
  specifierCopy = specifier;
  [(PLBatteryUISegmentCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"PLBatteryUIGraphClearGraphKey", v7.receiver, v7.super_class}];
  -[PLBatteryUISegmentCell setClearGraph:](self, "setClearGraph:", [v5 BOOLValue]);

  v6 = [specifierCopy propertyForKey:@"PLBatteryUIGraphRequiresTopSeparatorKey"];

  -[PLBatteryUISegmentCell setRequiresTopSeparator:](self, "setRequiresTopSeparator:", [v6 BOOLValue]);
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PLBatteryUISegmentCell;
  [(PLBatteryUISegmentCell *)&v28 layoutSubviews];
  if ([(PLBatteryUISegmentCell *)self requiresTopSeparator])
  {
    topSeparator = [(PLBatteryUISegmentCell *)self topSeparator];
    if (!topSeparator || (v4 = topSeparator, v5 = [(PLBatteryUISegmentCell *)self clearGraph], v4, v5))
    {
      topSeparator2 = [(PLBatteryUISegmentCell *)self topSeparator];

      if (topSeparator2)
      {
        topSeparator3 = [(PLBatteryUISegmentCell *)self topSeparator];
        [topSeparator3 removeFromSuperview];
      }

      v8 = [UIView alloc];
      [(PLBatteryUISegmentCell *)self frame];
      v10 = v9;
      v11 = +[UIScreen mainScreen];
      [v11 scale];
      v13 = [v8 initWithFrame:{0.0, 0.0, v10, 1.0 / v12}];
      [(PLBatteryUISegmentCell *)self setTopSeparator:v13];

      separatorColor = [(PLBatteryUISegmentCell *)self separatorColor];
      topSeparator4 = [(PLBatteryUISegmentCell *)self topSeparator];
      [topSeparator4 setBackgroundColor:separatorColor];

      topSeparator5 = [(PLBatteryUISegmentCell *)self topSeparator];
      [(PLBatteryUISegmentCell *)self addSubview:topSeparator5];
    }
  }

  v17 = +[UIColor systemBlueColor];
  [(PLBatteryUISegmentCell *)self setTintColor:v17];

  control = [(PLBatteryUISegmentCell *)self control];
  [control frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  control2 = [(PLBatteryUISegmentCell *)self control];
  [control2 setFrame:{v20 + 10.0, v22 + 4.0, v24 + -20.0, v26}];
}

- (id)getFittingPreferredFontFromSegment1:(id)segment1 andSegment2:(id)segment2
{
  segment1Copy = segment1;
  segment2Copy = segment2;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v8 pointSize];
  for (i = v9; i > 0.0; i = i + -0.5)
  {
    v11 = [v8 fontWithSize:i];
    v12 = [(PLBatteryUISegmentCell *)self checkIfFontFits:v11 withSegment1:segment1Copy andSegment2:segment2Copy];

    if (v12)
    {
      break;
    }
  }

  v13 = [v8 fontWithSize:i];

  return v13;
}

- (BOOL)checkIfFontFits:(id)fits withSegment1:(id)segment1 andSegment2:(id)segment2
{
  segment2Copy = segment2;
  segment1Copy = segment1;
  fitsCopy = fits;
  control = [(PLBatteryUISegmentCell *)self control];
  [control frame];
  v13 = v12;
  if (segment2Copy)
  {
    v14 = v12 * 0.5;

    [PLBatteryUIUtilities getOneLineWidthOfText:segment1Copy withFont:fitsCopy];
    v16 = v15;

    [PLBatteryUIUtilities getOneLineWidthOfText:segment2Copy withFont:fitsCopy];
    v18 = v17;

    v19 = v18 <= v14 && v16 <= v14;
  }

  else
  {

    [PLBatteryUIUtilities getOneLineWidthOfText:segment1Copy withFont:fitsCopy];
    v21 = v20;

    v19 = v21 <= v13;
  }

  return v19;
}

@end
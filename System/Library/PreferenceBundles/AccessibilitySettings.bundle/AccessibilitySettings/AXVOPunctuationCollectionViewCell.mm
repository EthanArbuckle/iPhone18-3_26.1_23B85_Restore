@interface AXVOPunctuationCollectionViewCell
+ (CGSize)cellSize;
- (AXVOPunctuationCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation AXVOPunctuationCollectionViewCell

+ (CGSize)cellSize
{
  textStyle = [objc_opt_class() textStyle];
  v3 = [UIFont preferredFontForTextStyle:textStyle];
  [@"§" sizeWithFont:v3 forWidth:0 lineBreakMode:30.0 letterSpacing:0.0];
  v5 = v4;

  if (v5 <= 30.0)
  {
    v6 = 30.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (AXVOPunctuationCollectionViewCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = AXVOPunctuationCollectionViewCell;
  v3 = [(AXVOPunctuationCollectionViewCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AXVOPunctuationCollectionViewCell *)v3 setLabel:v4];

  textStyle = [objc_opt_class() textStyle];
  v6 = [UIFont preferredFontForTextStyle:textStyle];
  label = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [label setFont:v6];

  v8 = +[UIColor tertiarySystemFillColor];
  [(AXVOPunctuationCollectionViewCell *)v3 setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  label2 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [label2 setBackgroundColor:v9];

  label3 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [label3 setTextAlignment:1];

  layer = [(AXVOPunctuationCollectionViewCell *)v3 layer];
  [layer setCornerRadius:4.0];

  contentView = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  label4 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [contentView addSubview:label4];

  label5 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [label5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  label6 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  contentView3 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v19 = [NSLayoutConstraint constraintWithItem:label6 attribute:9 relatedBy:0 toItem:contentView3 attribute:9 multiplier:1.0 constant:0.0];
  [contentView2 addConstraint:v19];

  contentView4 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  label7 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  contentView5 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v23 = [NSLayoutConstraint constraintWithItem:label7 attribute:10 relatedBy:0 toItem:contentView5 attribute:10 multiplier:1.0 constant:0.0];
  [contentView4 addConstraint:v23];

  contentView6 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  label8 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  contentView7 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v27 = [NSLayoutConstraint constraintWithItem:label8 attribute:7 relatedBy:0 toItem:contentView7 attribute:7 multiplier:1.0 constant:0.0];
  [contentView6 addConstraint:v27];

  return v3;
}

@end
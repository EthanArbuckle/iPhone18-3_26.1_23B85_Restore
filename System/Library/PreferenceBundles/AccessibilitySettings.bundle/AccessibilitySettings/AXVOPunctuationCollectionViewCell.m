@interface AXVOPunctuationCollectionViewCell
+ (CGSize)cellSize;
- (AXVOPunctuationCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation AXVOPunctuationCollectionViewCell

+ (CGSize)cellSize
{
  v2 = [objc_opt_class() textStyle];
  v3 = [UIFont preferredFontForTextStyle:v2];
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

- (AXVOPunctuationCollectionViewCell)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = AXVOPunctuationCollectionViewCell;
  v3 = [(AXVOPunctuationCollectionViewCell *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AXVOPunctuationCollectionViewCell *)v3 setLabel:v4];

  v5 = [objc_opt_class() textStyle];
  v6 = [UIFont preferredFontForTextStyle:v5];
  v7 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [v7 setFont:v6];

  v8 = +[UIColor tertiarySystemFillColor];
  [(AXVOPunctuationCollectionViewCell *)v3 setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  v10 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [v10 setBackgroundColor:v9];

  v11 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [v11 setTextAlignment:1];

  v12 = [(AXVOPunctuationCollectionViewCell *)v3 layer];
  [v12 setCornerRadius:4.0];

  v13 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v14 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [v13 addSubview:v14];

  v15 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v17 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  v18 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:9 relatedBy:0 toItem:v18 attribute:9 multiplier:1.0 constant:0.0];
  [v16 addConstraint:v19];

  v20 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v21 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  v22 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v22 attribute:10 multiplier:1.0 constant:0.0];
  [v20 addConstraint:v23];

  v24 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v25 = [(AXVOPunctuationCollectionViewCell *)v3 label];
  v26 = [(AXVOPunctuationCollectionViewCell *)v3 contentView];
  v27 = [NSLayoutConstraint constraintWithItem:v25 attribute:7 relatedBy:0 toItem:v26 attribute:7 multiplier:1.0 constant:0.0];
  [v24 addConstraint:v27];

  return v3;
}

@end
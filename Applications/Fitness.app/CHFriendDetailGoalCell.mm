@interface CHFriendDetailGoalCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CHFriendDetailGoalCell)initWithFrame:(CGRect)frame;
- (void)_setupCell;
- (void)layoutSubviews;
- (void)setCurrentValue:(id)value;
- (void)setCurrentValue:(id)value goalValue:(id)goalValue unitString:(id)string;
- (void)setCurrentValue:(id)value unitString:(id)string;
- (void)setKeyColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation CHFriendDetailGoalCell

- (void)_setupCell
{
  v3 = +[UIColor systemBackgroundColor];
  [(CHFriendDetailGoalCell *)self setBackgroundColor:v3];

  v4 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_titleLabel setFont:v6];

  v7 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v7];

  [(CHFriendDetailGoalCell *)self addSubview:self->_titleLabel];
  v8 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v8;

  v10 = +[UIColor labelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v10];

  v11 = self->_subtitleLabel;

  [(CHFriendDetailGoalCell *)self addSubview:v11];
}

- (CHFriendDetailGoalCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendDetailGoalCell;
  v3 = [(CHFriendDetailGoalCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendDetailGoalCell *)v3 _setupCell];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CHFriendDetailGoalCell;
  [(CHFriendDetailGoalCell *)&v18 layoutSubviews];
  [(CHFriendDetailGoalCell *)self bounds];
  v4 = v3;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_subtitleLabel sizeToFit];
  [(CHFriendDetailGoalCell *)self bounds];
  CGRectGetHeight(v22);
  [(UILabel *)self->_titleLabel frame];
  CGRectGetHeight(v23);
  [(UILabel *)self->_subtitleLabel frame];
  CGRectGetHeight(v24);
  UIRoundToViewScale();
  v6 = v5;
  text = [(UILabel *)self->_titleLabel text];
  v20 = NSFontAttributeName;
  font = [(UILabel *)self->_titleLabel font];
  v21 = font;
  v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [text sizeWithAttributes:v9];
  [(UILabel *)self->_titleLabel setFrame:0.0, v6, v4, v10];

  [(UILabel *)self->_titleLabel frame];
  v12 = v11;
  [(UILabel *)self->_titleLabel frame];
  v13 = CGRectGetMaxY(v25) + -5.0;
  attributedText = [(UILabel *)self->_subtitleLabel attributedText];
  [attributedText size];
  [(UILabel *)self->_subtitleLabel setFrame:v12, v13, v4, v15];

  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0]== 1)
  {
    subtitleLabel = self->_subtitleLabel;
    v19[0] = self->_titleLabel;
    v19[1] = subtitleLabel;
    v17 = [NSArray arrayWithObjects:v19 count:2];
    [(CHFriendDetailGoalCell *)self ch_transformViewsForRightToLeftLanguages:v17];
  }
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(CHFriendDetailGoalCell *)self setNeedsLayout];
}

- (void)setCurrentValue:(id)value
{
  v6 = [FIUIFormattingManager stringWithNumber:value decimalPrecision:1];
  v4 = [[NSMutableAttributedString alloc] initWithString:v6];
  v5 = [UIFont fu_sausageFontOfSize:30.0];
  [v4 addAttribute:NSFontAttributeName value:v5 range:{0, objc_msgSend(v4, "length")}];

  [v4 addAttribute:NSForegroundColorAttributeName value:self->_keyColor range:{0, objc_msgSend(v4, "length")}];
  [(UILabel *)self->_subtitleLabel setAttributedText:v4];
  [(CHFriendDetailGoalCell *)self setNeedsLayout];
}

- (void)setCurrentValue:(id)value unitString:(id)string
{
  stringCopy = string;
  valueCopy = value;
  v8 = [UIFont fu_sausageFontOfSize:30.0];
  v26 = UIFontDescriptorFeatureSettingsAttribute;
  v23[0] = UIFontFeatureTypeIdentifierKey;
  v23[1] = UIFontFeatureSelectorIdentifierKey;
  v24[0] = &off_10086E200;
  v24[1] = &off_10086E218;
  v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25 = v9;
  v10 = [NSArray arrayWithObjects:&v25 count:1];
  v27 = v10;
  v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  fontDescriptor = [v8 fontDescriptor];
  v12 = [fontDescriptor fontDescriptorByAddingAttributes:v22];

  v13 = [UIFont fontWithDescriptor:v12 size:30.0];
  v14 = [FIUIFormattingManager stringWithNumber:valueCopy decimalPrecision:3];

  v15 = [NSMutableAttributedString alloc];
  stringCopy = [NSString stringWithFormat:@"%@%@", v14, stringCopy];
  v17 = [v15 initWithString:stringCopy];

  string = [v17 string];
  v19 = [string rangeOfString:stringCopy];
  v21 = v20;

  [v17 addAttribute:NSFontAttributeName value:v8 range:{0, v19}];
  [v17 addAttribute:NSFontAttributeName value:v13 range:{v19, v21}];
  [v17 addAttribute:NSForegroundColorAttributeName value:self->_keyColor range:{0, objc_msgSend(v17, "length")}];
  [(UILabel *)self->_subtitleLabel setAttributedText:v17];
  [(CHFriendDetailGoalCell *)self setNeedsLayout];
}

- (void)setCurrentValue:(id)value goalValue:(id)goalValue unitString:(id)string
{
  stringCopy = string;
  goalValueCopy = goalValue;
  valueCopy = value;
  v10 = [UIFont fu_sausageFontOfSize:30.0];
  v32 = UIFontDescriptorFeatureSettingsAttribute;
  v29[0] = UIFontFeatureTypeIdentifierKey;
  v29[1] = UIFontFeatureSelectorIdentifierKey;
  v30[0] = &off_10086E200;
  v30[1] = &off_10086E218;
  v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v31 = v11;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  v33 = v12;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  fontDescriptor = [v10 fontDescriptor];
  v14 = [fontDescriptor fontDescriptorByAddingAttributes:v27];

  v15 = [UIFont fontWithDescriptor:v14 size:30.0];
  v16 = [NSString goalProgressAttrStringWithCurrentValue:valueCopy goalValue:goalValueCopy unitString:stringCopy];

  v17 = [v16 mutableCopy];
  [v17 removeAttribute:NSFontAttributeName range:{0, objc_msgSend(v17, "length")}];
  string = [v17 string];
  v19 = [string rangeOfString:stringCopy];
  v21 = v20;

  string2 = [v17 string];
  v23 = [string2 rangeOfString:@"/"];
  v25 = v24;

  [v17 addAttribute:NSFontAttributeName value:v15 range:{v19, v21}];
  [v17 addAttribute:NSFontAttributeName value:v10 range:{0, v19}];
  fu_shortSlashFont = [v10 fu_shortSlashFont];
  [v17 addAttribute:NSFontAttributeName value:fu_shortSlashFont range:{v23, v25}];

  [v17 addAttribute:NSForegroundColorAttributeName value:self->_keyColor range:{0, objc_msgSend(v17, "length")}];
  [(UILabel *)self->_subtitleLabel setAttributedText:v17];
  [(CHFriendDetailGoalCell *)self setNeedsLayout];
}

- (void)setKeyColor:(id)color
{
  objc_storeStrong(&self->_keyColor, color);

  [(CHFriendDetailGoalCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  text = [(UILabel *)self->_titleLabel text];
  v20 = NSFontAttributeName;
  font = [(UILabel *)self->_titleLabel font];
  v21 = font;
  v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [text boundingRectWithSize:1 options:v8 attributes:0 context:{width, height}];
  v10 = v9;
  v12 = v11;

  attributedText = [(UILabel *)self->_subtitleLabel attributedText];
  [attributedText boundingRectWithSize:1 options:0 context:{width, height}];
  v15 = v14;
  v17 = v16;

  if (v10 >= v15)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  v19 = v12 + v17 + -5.0;
  result.height = v19;
  result.width = v18;
  return result;
}

@end
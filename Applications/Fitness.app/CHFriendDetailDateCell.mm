@interface CHFriendDetailDateCell
- (CHFriendDetailDateCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation CHFriendDetailDateCell

- (CHFriendDetailDateCell)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = CHFriendDetailDateCell;
  v3 = [(CHFriendDetailDateCell *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
    v5 = [v4 fontDescriptorWithSymbolicTraits:0x8000];

    v6 = [UIFont fontWithDescriptor:v5 size:0.0];
    v7 = objc_opt_new();
    v8 = +[NSParagraphStyle defaultParagraphStyle];
    [v7 setParagraphStyle:v8];

    [v7 setLineSpacing:0.0];
    v22[0] = NSParagraphStyleAttributeName;
    v22[1] = NSFontAttributeName;
    v23[0] = v7;
    v23[1] = v6;
    v22[2] = NSForegroundColorAttributeName;
    v9 = +[UIColor labelColor];
    v23[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

    v11 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v15;

    [(UILabel *)v3->_dateLabel setNumberOfLines:0];
    [(UILabel *)v3->_dateLabel setLineBreakMode:0];
    [(UILabel *)v3->_dateLabel _setDefaultAttributes:v10];
    [(CHFriendDetailDateCell *)v3 addSubview:v3->_dateLabel];
    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    separatorView = v3->_separatorView;
    v3->_separatorView = v17;

    v19 = +[UIColor separatorColor];
    [(UIView *)v3->_separatorView setBackgroundColor:v19];

    [(CHFriendDetailDateCell *)v3 addSubview:v3->_separatorView];
  }

  return v3;
}

- (void)setText:(id)text
{
  [(UILabel *)self->_dateLabel setText:text];

  [(CHFriendDetailDateCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CHFriendDetailDateCell;
  [(CHFriendDetailDateCell *)&v18 layoutSubviews];
  [(CHFriendDetailDateCell *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  [(UILabel *)self->_dateLabel sizeThatFits:CGRectGetWidth(v19) + -6.0, 1.79769313e308];
  v8 = v7;
  v10 = v9;
  IsRightToLeft = FIUILocaleIsRightToLeft();
  v12 = 3.0;
  if (IsRightToLeft)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v12 = CGRectGetWidth(v20) - v8 + -3.0;
  }

  [(UILabel *)self->_dateLabel setFrame:v12, 0.0, v8, v10];
  font = [(UILabel *)self->_dateLabel font];
  [font _scaledValueForValue:16.0];
  v15 = v14;

  [(UILabel *)self->_dateLabel _setFirstLineCapFrameOriginY:v15];
  [(UILabel *)self->_dateLabel _lastLineBaselineFrameOriginY];
  v17 = v16 + 17.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [(UIView *)self->_separatorView setFrame:0.0, v17, CGRectGetWidth(v21), 0.5];
}

@end
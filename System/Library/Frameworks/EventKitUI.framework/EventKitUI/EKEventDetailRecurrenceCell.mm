@interface EKEventDetailRecurrenceCell
- (double)height;
- (id)_myTableView;
- (id)_recurrenceLabel;
- (void)layoutForWidth:(double)width position:(int)position;
- (void)layoutSubviews;
- (void)setRecurrenceString:(id)string;
@end

@implementation EKEventDetailRecurrenceCell

- (id)_recurrenceLabel
{
  recurrenceLabel = self->_recurrenceLabel;
  if (!recurrenceLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_recurrenceLabel;
    self->_recurrenceLabel = v5;

    [(UILabel *)self->_recurrenceLabel setNumberOfLines:0];
    [(UILabel *)self->_recurrenceLabel setLineBreakMode:0];
    [(UILabel *)self->_recurrenceLabel setTextAlignment:2];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)self->_recurrenceLabel setFont:v7];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_recurrenceLabel setTextColor:secondaryLabelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_recurrenceLabel setBackgroundColor:clearColor];

    contentView = [(EKEventDetailRecurrenceCell *)self contentView];
    [contentView addSubview:self->_recurrenceLabel];

    recurrenceLabel = self->_recurrenceLabel;
  }

  return recurrenceLabel;
}

- (void)setRecurrenceString:(id)string
{
  stringCopy = string;
  _recurrenceLabel = [(EKEventDetailRecurrenceCell *)self _recurrenceLabel];
  [_recurrenceLabel setText:stringCopy];
}

- (id)_myTableView
{
  superview = [(EKEventDetailRecurrenceCell *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = superview;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)layoutForWidth:(double)width position:(int)position
{
  v6.receiver = self;
  v6.super_class = EKEventDetailRecurrenceCell;
  [(EKEventDetailCell *)&v6 layoutForWidth:*&position position:?];
  self->_lastLayoutWidth = width;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = EKEventDetailRecurrenceCell;
  [(EKUITableViewCell *)&v20 layoutSubviews];
  _recurrenceLabel = [(EKEventDetailRecurrenceCell *)self _recurrenceLabel];
  textLabel = [(EKEventDetailRecurrenceCell *)self textLabel];
  [textLabel frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _myTableView = [(EKEventDetailRecurrenceCell *)self _myTableView];
  v14 = _myTableView;
  if (_myTableView)
  {
    [_myTableView _backgroundInset];
    v16 = v15 + 11.0;
  }

  else
  {
    v16 = 11.0;
  }

  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v17 = v16 + CGRectGetMaxX(v21) + 10.0;
  v18 = self->_lastLayoutWidth - v17 - v16;
  [_recurrenceLabel sizeThatFits:{v18, 3.40282347e38}];
  [(UILabel *)self->_recurrenceLabel setFrame:v17, 9.0, v18, v19];
}

- (double)height
{
  _recurrenceLabel = [(EKEventDetailRecurrenceCell *)self _recurrenceLabel];
  [_recurrenceLabel frame];
  v4 = v3;
  v6 = v5;

  return v6 + v4 * 2.0;
}

@end
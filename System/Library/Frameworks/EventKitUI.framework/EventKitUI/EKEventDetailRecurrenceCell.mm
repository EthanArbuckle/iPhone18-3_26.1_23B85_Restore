@interface EKEventDetailRecurrenceCell
- (double)height;
- (id)_myTableView;
- (id)_recurrenceLabel;
- (void)layoutForWidth:(double)a3 position:(int)a4;
- (void)layoutSubviews;
- (void)setRecurrenceString:(id)a3;
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

    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_recurrenceLabel setTextColor:v8];

    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_recurrenceLabel setBackgroundColor:v9];

    v10 = [(EKEventDetailRecurrenceCell *)self contentView];
    [v10 addSubview:self->_recurrenceLabel];

    recurrenceLabel = self->_recurrenceLabel;
  }

  return recurrenceLabel;
}

- (void)setRecurrenceString:(id)a3
{
  v4 = a3;
  v5 = [(EKEventDetailRecurrenceCell *)self _recurrenceLabel];
  [v5 setText:v4];
}

- (id)_myTableView
{
  v2 = [(EKEventDetailRecurrenceCell *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)layoutForWidth:(double)a3 position:(int)a4
{
  v6.receiver = self;
  v6.super_class = EKEventDetailRecurrenceCell;
  [(EKEventDetailCell *)&v6 layoutForWidth:*&a4 position:?];
  self->_lastLayoutWidth = a3;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = EKEventDetailRecurrenceCell;
  [(EKUITableViewCell *)&v20 layoutSubviews];
  v3 = [(EKEventDetailRecurrenceCell *)self _recurrenceLabel];
  v4 = [(EKEventDetailRecurrenceCell *)self textLabel];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(EKEventDetailRecurrenceCell *)self _myTableView];
  v14 = v13;
  if (v13)
  {
    [v13 _backgroundInset];
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
  [v3 sizeThatFits:{v18, 3.40282347e38}];
  [(UILabel *)self->_recurrenceLabel setFrame:v17, 9.0, v18, v19];
}

- (double)height
{
  v2 = [(EKEventDetailRecurrenceCell *)self _recurrenceLabel];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  return v6 + v4 * 2.0;
}

@end
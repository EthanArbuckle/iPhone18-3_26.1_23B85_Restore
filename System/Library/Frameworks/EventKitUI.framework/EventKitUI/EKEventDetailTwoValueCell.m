@interface EKEventDetailTwoValueCell
- (BOOL)update;
- (EKEventDetailTwoValueCell)initWithEvent:(id)a3 editable:(BOOL)a4 platformStyle:(int)a5;
- (double)_layoutForWidth:(double)a3;
- (id)titleView;
- (id)value2View;
- (id)valueView;
- (unsigned)visibleItems;
- (void)layoutForWidth:(double)a3 position:(int)a4;
- (void)layoutSubviews;
@end

@implementation EKEventDetailTwoValueCell

- (EKEventDetailTwoValueCell)initWithEvent:(id)a3 editable:(BOOL)a4 platformStyle:(int)a5
{
  v6 = a4;
  v8 = a3;
  LODWORD(self->_value2View) = a5;
  if ((a5 - 1) >= 2)
  {
    if (a5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v13.receiver = self;
    v13.super_class = EKEventDetailTwoValueCell;
    v9 = [(EKEventDetailCell *)&v13 initWithEvent:v8 editable:v6];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = EKEventDetailTwoValueCell;
    v9 = [(EKEventDetailCell *)&v12 initWithEvent:v8 editable:v6 style:1];
  }

  self = v9;
  v10 = self;
LABEL_7:

  return v10;
}

- (unsigned)visibleItems
{
  v3 = [(EKEventDetailTwoValueCell *)self valueView];
  v4 = [v3 text];

  v5 = [(EKEventDetailTwoValueCell *)self value2View];
  v6 = [v5 text];

  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return v4 != 0;
  }
}

- (BOOL)update
{
  v3 = [(EKEventDetailCell *)self isEditable];
  [(EKEventDetailTwoValueCell *)self setAccessoryType:v3];
  if (!*(&self->super._lastLaidOutPosition + 1))
  {
    v4 = [(EKEventDetailTwoValueCell *)self textLabel];
    v5 = [v4 text];

    if (v5)
    {
      v6 = [MEMORY[0x1E69DC888] labelColor];
      v7 = [(EKEventDetailTwoValueCell *)self textLabel];
      v8 = v7;
      v9 = v6;
    }

    else
    {
      v10 = [(EKEventDetailTwoValueCell *)self titleView];
      v11 = [MEMORY[0x1E69DC888] labelColor];
      [v10 setTextColor:v11];

      v12 = [(EKEventDetailTwoValueCell *)self valueView];
      v13 = *MEMORY[0x1E69DDD08];
      v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
      [v12 setFont:v14];

      v15 = [(EKEventDetailTwoValueCell *)self valueView];
      v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v15 setTextColor:v16];

      v17 = [(EKEventDetailTwoValueCell *)self value2View];
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v13];
      [v17 setFont:v18];

      v6 = [(EKEventDetailTwoValueCell *)self value2View];
      v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v7 = v6;
      v9 = v8;
    }

    [v7 setTextColor:v9];

    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v19 pointSize];
    v21 = v20;

    v22 = *&self->_style;
    if (v21 >= 18.5)
    {
      [v22 setNumberOfLines:0];
      [(UILabel *)self->_titleView setNumberOfLines:0];
      [(UILabel *)self->_valueView setNumberOfLines:0];
      [*&self->_style setLineBreakMode:0];
      [(UILabel *)self->_titleView setLineBreakMode:0];
      [(UILabel *)self->_valueView setLineBreakMode:0];
    }

    else
    {
      [v22 setNumberOfLines:1];
      [(UILabel *)self->_titleView setNumberOfLines:1];
      [(UILabel *)self->_valueView setNumberOfLines:1];
    }
  }

  return [(EKEventDetailTwoValueCell *)self visibleItems]|| v3;
}

- (id)titleView
{
  v3 = *&self->_style;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *&self->_style;
    *&self->_style = v4;

    v6 = *&self->_style;
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [v6 setTextColor:v7];

    [*&self->_style setBackgroundColor:0];
    v8 = *&self->_style;
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [v8 setHighlightedTextColor:v9];

    [*&self->_style setOpaque:0];
    v3 = *&self->_style;
  }

  return v3;
}

- (id)valueView
{
  titleView = self->_titleView;
  if (!titleView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_titleView;
    self->_titleView = v4;

    v6 = self->_titleView;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:v7];

    [(UILabel *)self->_titleView setBackgroundColor:0];
    [(UILabel *)self->_titleView setOpaque:0];
    titleView = self->_titleView;
  }

  return titleView;
}

- (id)value2View
{
  valueView = self->_valueView;
  if (!valueView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = self->_valueView;
    self->_valueView = v4;

    v6 = self->_valueView;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:v7];

    [(UILabel *)self->_valueView setBackgroundColor:0];
    [(UILabel *)self->_valueView setOpaque:0];
    valueView = self->_valueView;
  }

  return valueView;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = EKEventDetailTwoValueCell;
  [(EKUITableViewCell *)&v5 layoutSubviews];
  v3 = [(EKEventDetailTwoValueCell *)self contentView];
  [v3 bounds];
  [(EKEventDetailTwoValueCell *)self _layoutForWidth:v4];
}

- (double)_layoutForWidth:(double)a3
{
  [(EKEventDetailCell *)self detailsLeftInset];
  v6 = v5;
  v7 = [(EKEventDetailTwoValueCell *)self titleView];
  v8 = [(EKEventDetailTwoValueCell *)self contentView];
  [v8 addSubview:v7];

  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 24);
  [(EKEventDetailTwoValueCell *)self layoutMargins];
  v13 = a3 - v12;
  [(EKEventDetailTwoValueCell *)self layoutMargins];
  v42 = v13 - v14;
  [*&self->_style setFrame:{v9, v10}];
  [*&self->_style sizeToFit];
  [v7 frame];
  v16 = v15;
  v18 = v17;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v20 = v6;
  if ((IsLeftToRight & 1) == 0)
  {
    [*&self->_style bounds];
    v20 = a3 - v6 - CGRectGetWidth(v43);
  }

  [v7 setFrame:{v20, 11.0, v16, v18}];
  [objc_opt_class() detailsPostLabelSpace];
  v22 = v18 + 11.0 + v21;
  [(UILabel *)self->_titleView setFrame:v9, v10, v42, v11];
  [(UILabel *)self->_titleView sizeToFit];
  v23 = [(EKEventDetailTwoValueCell *)self contentView];
  [v23 addSubview:self->_titleView];

  [(UILabel *)self->_titleView frame];
  v25 = v24;
  v27 = v26;
  [(UILabel *)self->_titleView sizeToFit];
  v28 = CalInterfaceIsLeftToRight();
  v29 = v6;
  if ((v28 & 1) == 0)
  {
    [(UILabel *)self->_titleView bounds];
    v29 = a3 - v6 - CGRectGetWidth(v44);
  }

  [(UILabel *)self->_titleView setFrame:v29, v22, v25, v27];
  [(UILabel *)self->_titleView frame];
  v31 = v30;
  v32 = [(EKEventDetailTwoValueCell *)self visibleItems];
  valueView = self->_valueView;
  if ((v32 & 2) != 0)
  {
    v41 = a3;
    [(UILabel *)valueView setFrame:v9, v10, v42, v11];
    [(UILabel *)self->_valueView sizeToFit];
    v34 = [(EKEventDetailTwoValueCell *)self contentView];
    [v34 addSubview:self->_valueView];

    v22 = v22 + v31 + 1.0;
    [(UILabel *)self->_valueView frame];
    v36 = v35;
    v38 = v37;
    [(UILabel *)self->_valueView sizeToFit];
    if ((CalInterfaceIsLeftToRight() & 1) == 0)
    {
      [(UILabel *)self->_valueView bounds];
      v6 = v41 - v6 - CGRectGetWidth(v45);
    }

    [(UILabel *)self->_valueView setFrame:v6, v22, v36, v38];
    [(UILabel *)self->_valueView frame];
    v31 = v39;
  }

  else
  {
    [(UILabel *)valueView removeFromSuperview];
  }

  return v31 + v22;
}

- (void)layoutForWidth:(double)a3 position:(int)a4
{
  v4 = a4;
  v17.receiver = self;
  v17.super_class = EKEventDetailTwoValueCell;
  [EKEventDetailCell layoutForWidth:sel_layoutForWidth_position_ position:?];
  if ([(EKEventDetailTwoValueCell *)self visibleItems])
  {
    [(EKEventDetailTwoValueCell *)self _layoutForWidth:a3];
    v8 = v7;
    [(EKEventDetailTwoValueCell *)self frame];
    v10 = v9;
    v12 = v11;
    if ((v4 & 4) != 0)
    {
      v14 = ceil(v8);
      v15 = objc_opt_class();
      if (v4)
      {
        [v15 detailsTopVerticalInset];
      }

      else
      {
        [v15 detailsBottomVerticalInset];
      }

      v13 = v14 + v16;
    }

    else
    {
      v13 = ceil(v8 + 7.0);
    }

    [(EKEventDetailTwoValueCell *)self setFrame:v10, v12, a3, v13];
  }

  else
  {
    [(UILabel *)self->_titleView removeFromSuperview];
    [(UILabel *)self->_valueView removeFromSuperview];
    [*&self->_style removeFromSuperview];
  }
}

@end
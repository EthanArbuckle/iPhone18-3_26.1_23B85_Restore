@interface EKEventDetailTwoValueCell
- (BOOL)update;
- (EKEventDetailTwoValueCell)initWithEvent:(id)event editable:(BOOL)editable platformStyle:(int)style;
- (double)_layoutForWidth:(double)width;
- (id)titleView;
- (id)value2View;
- (id)valueView;
- (unsigned)visibleItems;
- (void)layoutForWidth:(double)width position:(int)position;
- (void)layoutSubviews;
@end

@implementation EKEventDetailTwoValueCell

- (EKEventDetailTwoValueCell)initWithEvent:(id)event editable:(BOOL)editable platformStyle:(int)style
{
  editableCopy = editable;
  eventCopy = event;
  LODWORD(self->_value2View) = style;
  if ((style - 1) >= 2)
  {
    if (style)
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    v13.receiver = self;
    v13.super_class = EKEventDetailTwoValueCell;
    v9 = [(EKEventDetailCell *)&v13 initWithEvent:eventCopy editable:editableCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = EKEventDetailTwoValueCell;
    v9 = [(EKEventDetailCell *)&v12 initWithEvent:eventCopy editable:editableCopy style:1];
  }

  self = v9;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (unsigned)visibleItems
{
  valueView = [(EKEventDetailTwoValueCell *)self valueView];
  text = [valueView text];

  value2View = [(EKEventDetailTwoValueCell *)self value2View];
  text2 = [value2View text];

  if (text)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (text2)
  {
    return v7;
  }

  else
  {
    return text != 0;
  }
}

- (BOOL)update
{
  isEditable = [(EKEventDetailCell *)self isEditable];
  [(EKEventDetailTwoValueCell *)self setAccessoryType:isEditable];
  if (!*(&self->super._lastLaidOutPosition + 1))
  {
    textLabel = [(EKEventDetailTwoValueCell *)self textLabel];
    text = [textLabel text];

    if (text)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      textLabel2 = [(EKEventDetailTwoValueCell *)self textLabel];
      secondaryLabelColor2 = textLabel2;
      v9 = labelColor;
    }

    else
    {
      titleView = [(EKEventDetailTwoValueCell *)self titleView];
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      [titleView setTextColor:labelColor2];

      valueView = [(EKEventDetailTwoValueCell *)self valueView];
      v13 = *MEMORY[0x1E69DDD08];
      v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
      [valueView setFont:v14];

      valueView2 = [(EKEventDetailTwoValueCell *)self valueView];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [valueView2 setTextColor:secondaryLabelColor];

      value2View = [(EKEventDetailTwoValueCell *)self value2View];
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v13];
      [value2View setFont:v18];

      labelColor = [(EKEventDetailTwoValueCell *)self value2View];
      secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      textLabel2 = labelColor;
      v9 = secondaryLabelColor2;
    }

    [textLabel2 setTextColor:v9];

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

  return [(EKEventDetailTwoValueCell *)self visibleItems]|| isEditable;
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
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v6 setTextColor:labelColor];

    [*&self->_style setBackgroundColor:0];
    v8 = *&self->_style;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v8 setHighlightedTextColor:whiteColor];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:secondaryLabelColor];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6 setTextColor:secondaryLabelColor];

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
  contentView = [(EKEventDetailTwoValueCell *)self contentView];
  [contentView bounds];
  [(EKEventDetailTwoValueCell *)self _layoutForWidth:v4];
}

- (double)_layoutForWidth:(double)width
{
  [(EKEventDetailCell *)self detailsLeftInset];
  v6 = v5;
  titleView = [(EKEventDetailTwoValueCell *)self titleView];
  contentView = [(EKEventDetailTwoValueCell *)self contentView];
  [contentView addSubview:titleView];

  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 24);
  [(EKEventDetailTwoValueCell *)self layoutMargins];
  v13 = width - v12;
  [(EKEventDetailTwoValueCell *)self layoutMargins];
  v42 = v13 - v14;
  [*&self->_style setFrame:{v9, v10}];
  [*&self->_style sizeToFit];
  [titleView frame];
  v16 = v15;
  v18 = v17;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v20 = v6;
  if ((IsLeftToRight & 1) == 0)
  {
    [*&self->_style bounds];
    v20 = width - v6 - CGRectGetWidth(v43);
  }

  [titleView setFrame:{v20, 11.0, v16, v18}];
  [objc_opt_class() detailsPostLabelSpace];
  v22 = v18 + 11.0 + v21;
  [(UILabel *)self->_titleView setFrame:v9, v10, v42, v11];
  [(UILabel *)self->_titleView sizeToFit];
  contentView2 = [(EKEventDetailTwoValueCell *)self contentView];
  [contentView2 addSubview:self->_titleView];

  [(UILabel *)self->_titleView frame];
  v25 = v24;
  v27 = v26;
  [(UILabel *)self->_titleView sizeToFit];
  v28 = CalInterfaceIsLeftToRight();
  v29 = v6;
  if ((v28 & 1) == 0)
  {
    [(UILabel *)self->_titleView bounds];
    v29 = width - v6 - CGRectGetWidth(v44);
  }

  [(UILabel *)self->_titleView setFrame:v29, v22, v25, v27];
  [(UILabel *)self->_titleView frame];
  v31 = v30;
  visibleItems = [(EKEventDetailTwoValueCell *)self visibleItems];
  valueView = self->_valueView;
  if ((visibleItems & 2) != 0)
  {
    widthCopy = width;
    [(UILabel *)valueView setFrame:v9, v10, v42, v11];
    [(UILabel *)self->_valueView sizeToFit];
    contentView3 = [(EKEventDetailTwoValueCell *)self contentView];
    [contentView3 addSubview:self->_valueView];

    v22 = v22 + v31 + 1.0;
    [(UILabel *)self->_valueView frame];
    v36 = v35;
    v38 = v37;
    [(UILabel *)self->_valueView sizeToFit];
    if ((CalInterfaceIsLeftToRight() & 1) == 0)
    {
      [(UILabel *)self->_valueView bounds];
      v6 = widthCopy - v6 - CGRectGetWidth(v45);
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

- (void)layoutForWidth:(double)width position:(int)position
{
  positionCopy = position;
  v17.receiver = self;
  v17.super_class = EKEventDetailTwoValueCell;
  [EKEventDetailCell layoutForWidth:sel_layoutForWidth_position_ position:?];
  if ([(EKEventDetailTwoValueCell *)self visibleItems])
  {
    [(EKEventDetailTwoValueCell *)self _layoutForWidth:width];
    v8 = v7;
    [(EKEventDetailTwoValueCell *)self frame];
    v10 = v9;
    v12 = v11;
    if ((positionCopy & 4) != 0)
    {
      v14 = ceil(v8);
      v15 = objc_opt_class();
      if (positionCopy)
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

    [(EKEventDetailTwoValueCell *)self setFrame:v10, v12, width, v13];
  }

  else
  {
    [(UILabel *)self->_titleView removeFromSuperview];
    [(UILabel *)self->_valueView removeFromSuperview];
    [*&self->_style removeFromSuperview];
  }
}

@end
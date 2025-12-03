@interface COSHorizontalCheckmarkChoiceView
- (CGSize)intrinsicContentSize;
- (COSHorizontalCheckmarkChoiceView)initWithLeftTitle:(id)title rightTitle:(id)rightTitle;
- (COSHorizontalCheckmarkChoiceViewDelegate)delegate;
- (void)didTapChoiceView:(id)view;
- (void)layoutSubviews;
- (void)setSelectedChoice:(unint64_t)choice;
@end

@implementation COSHorizontalCheckmarkChoiceView

- (COSHorizontalCheckmarkChoiceView)initWithLeftTitle:(id)title rightTitle:(id)rightTitle
{
  titleCopy = title;
  rightTitleCopy = rightTitle;
  v16.receiver = self;
  v16.super_class = COSHorizontalCheckmarkChoiceView;
  v8 = [(COSHorizontalCheckmarkChoiceView *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_selectedChoice = 0;
    v10 = [[CheckmarkChoiceView alloc] initWithTitle:titleCopy];
    leftChoice = v9->_leftChoice;
    v9->_leftChoice = v10;

    [(CheckmarkChoiceView *)v9->_leftChoice sizeToFit];
    [(COSHorizontalCheckmarkChoiceView *)v9 addSubview:v9->_leftChoice];
    v12 = [[CheckmarkChoiceView alloc] initWithTitle:rightTitleCopy];
    rightChoice = v9->_rightChoice;
    v9->_rightChoice = v12;

    [(CheckmarkChoiceView *)v9->_rightChoice sizeToFit];
    [(COSHorizontalCheckmarkChoiceView *)v9 addSubview:v9->_rightChoice];
    v14 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"didTapChoiceView:"];
    [(COSHorizontalCheckmarkChoiceView *)v9 addGestureRecognizer:v14];
  }

  return v9;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = COSHorizontalCheckmarkChoiceView;
  [(COSHorizontalCheckmarkChoiceView *)&v9 layoutSubviews];
  [(COSHorizontalCheckmarkChoiceView *)self frame];
  v4 = v3;
  [(COSHorizontalCheckmarkChoiceView *)self frame];
  v6 = v5;
  v7 = v4 * 0.45 * -0.5;
  v8 = v5 * -0.5 + v5 * 0.5;
  [(CheckmarkChoiceView *)self->_leftChoice setFrame:v7 + v4 * 0.25, v8, v4 * 0.45];
  [(CheckmarkChoiceView *)self->_rightChoice setFrame:v7 + v4 * 0.75, v8, v4 * 0.45, v6];
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didTapChoiceView:(id)view
{
  [view locationInView:self];
  v5 = v4;
  [(COSHorizontalCheckmarkChoiceView *)self bounds];
  v6 = CGRectGetWidth(v9) * 0.5;
  if (v5 <= floorf(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(COSHorizontalCheckmarkChoiceView *)self setSelectedChoice:v7];
}

- (void)setSelectedChoice:(unint64_t)choice
{
  self->_selectedChoice = choice;
  leftChoice = self->_leftChoice;
  v6 = choice == 2;
  v7 = choice == 1;
  v8 = choice == 1;
  v9 = !v7 && v6;
  [(CheckmarkChoiceView *)leftChoice setSelected:v8];
  [(CheckmarkChoiceView *)self->_rightChoice setSelected:v9];
  delegate = [(COSHorizontalCheckmarkChoiceView *)self delegate];
  [delegate choiceView:self didSelectChoice:choice];
}

- (COSHorizontalCheckmarkChoiceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
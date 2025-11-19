@interface COSHorizontalCheckmarkChoiceView
- (CGSize)intrinsicContentSize;
- (COSHorizontalCheckmarkChoiceView)initWithLeftTitle:(id)a3 rightTitle:(id)a4;
- (COSHorizontalCheckmarkChoiceViewDelegate)delegate;
- (void)didTapChoiceView:(id)a3;
- (void)layoutSubviews;
- (void)setSelectedChoice:(unint64_t)a3;
@end

@implementation COSHorizontalCheckmarkChoiceView

- (COSHorizontalCheckmarkChoiceView)initWithLeftTitle:(id)a3 rightTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = COSHorizontalCheckmarkChoiceView;
  v8 = [(COSHorizontalCheckmarkChoiceView *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_selectedChoice = 0;
    v10 = [[CheckmarkChoiceView alloc] initWithTitle:v6];
    leftChoice = v9->_leftChoice;
    v9->_leftChoice = v10;

    [(CheckmarkChoiceView *)v9->_leftChoice sizeToFit];
    [(COSHorizontalCheckmarkChoiceView *)v9 addSubview:v9->_leftChoice];
    v12 = [[CheckmarkChoiceView alloc] initWithTitle:v7];
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

- (void)didTapChoiceView:(id)a3
{
  [a3 locationInView:self];
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

- (void)setSelectedChoice:(unint64_t)a3
{
  self->_selectedChoice = a3;
  leftChoice = self->_leftChoice;
  v6 = a3 == 2;
  v7 = a3 == 1;
  v8 = a3 == 1;
  v9 = !v7 && v6;
  [(CheckmarkChoiceView *)leftChoice setSelected:v8];
  [(CheckmarkChoiceView *)self->_rightChoice setSelected:v9];
  v10 = [(COSHorizontalCheckmarkChoiceView *)self delegate];
  [v10 choiceView:self didSelectChoice:a3];
}

- (COSHorizontalCheckmarkChoiceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
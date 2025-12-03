@interface WFDictateTextActionStopButton
- (CGSize)intrinsicContentSize;
- (NSLayoutConstraint)redSquareWidthConstraint;
- (UIView)redSquare;
- (WFDictateTextActionStopButton)init;
- (id)accessibilityLabel;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRecording:(BOOL)recording animated:(BOOL)animated;
@end

@implementation WFDictateTextActionStopButton

- (NSLayoutConstraint)redSquareWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_redSquareWidthConstraint);

  return WeakRetained;
}

- (UIView)redSquare
{
  WeakRetained = objc_loadWeakRetained(&self->_redSquare);

  return WeakRetained;
}

- (id)accessibilityLabel
{
  if ([(WFDictateTextActionStopButton *)self recording])
  {
    v2 = @"Stop dictation";
  }

  else
  {
    v2 = @"Start dictation";
  }

  v3 = WFLocalizedString(v2);

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 73.0;
  v3 = 73.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setRecording:(BOOL)recording animated:(BOOL)animated
{
  if (self->_recording != recording)
  {
    v7[5] = v4;
    v7[6] = v5;
    self->_recording = recording;
    v6 = 0.3;
    if (!animated)
    {
      v6 = 0.0;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__WFDictateTextActionStopButton_setRecording_animated___block_invoke;
    v7[3] = &unk_278C37538;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6];
  }
}

uint64_t __55__WFDictateTextActionStopButton_setRecording_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = WFDictateTextActionStopButton;
  [(WFDictateTextActionStopButton *)&v13 layoutSubviews];
  [(WFDictateTextActionStopButton *)self currentInnerCircleRadius];
  v4 = v3;
  if ([(WFDictateTextActionStopButton *)self recording])
  {
    [(WFDictateTextActionStopButton *)self currentStopButtonSize];
    v6 = v5;
  }

  else
  {
    v6 = v4 + v4;
  }

  redSquareWidthConstraint = [(WFDictateTextActionStopButton *)self redSquareWidthConstraint];
  [redSquareWidthConstraint setConstant:v6];

  if ([(WFDictateTextActionStopButton *)self recording])
  {
    v4 = 5.0;
  }

  redSquare = [(WFDictateTextActionStopButton *)self redSquare];
  layer = [redSquare layer];
  [layer setCornerRadius:v4];

  v10 = *MEMORY[0x277CDA138];
  redSquare2 = [(WFDictateTextActionStopButton *)self redSquare];
  layer2 = [redSquare2 layer];
  [layer2 setCornerCurve:v10];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = WFDictateTextActionStopButton;
  [(WFDictateTextActionStopButton *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WFDictateTextActionStopButton_setHighlighted___block_invoke;
  v5[3] = &unk_278C373E0;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.2];
}

void __48__WFDictateTextActionStopButton_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    CGAffineTransformMakeScale(&v5, 0.9, 0.9);
  }

  else
  {
    v2 = *(MEMORY[0x277CBF2C0] + 16);
    *&v5.a = *MEMORY[0x277CBF2C0];
    *&v5.c = v2;
    *&v5.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  v3 = [*(a1 + 32) redSquare];
  v4 = v5;
  [v3 setTransform:&v4];
}

- (void)drawRect:(CGRect)rect
{
  v16.receiver = self;
  v16.super_class = WFDictateTextActionStopButton;
  [(WFDictateTextActionStopButton *)&v16 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  redSquare = [(WFDictateTextActionStopButton *)self redSquare];
  [redSquare center];
  v6 = v5;
  v8 = v7;

  [(WFDictateTextActionStopButton *)self frame];
  v10 = v9;
  [(WFDictateTextActionStopButton *)self currentLineWidth];
  v12 = v11;
  v13 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v6 startAngle:v8 endAngle:(v10 - v11) * 0.5 clockwise:{0.0, 6.28318531}];
  [v13 setLineWidth:v12];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v15 = [labelColor colorWithAlphaComponent:0.25];
  [v15 setStroke];

  [v13 stroke];
}

- (WFDictateTextActionStopButton)init
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [WFDictateTextActionStopButton buttonWithType:0];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
    [v4 setBackgroundColor:v5];

    layer = [v4 layer];
    [layer setMasksToBounds:1];

    [v4 setUserInteractionEnabled:0];
    [(WFDictateTextActionStopButton *)v3 addSubview:v4];
    [(WFDictateTextActionStopButton *)v3 setRedSquare:v4];
    widthAnchor = [v4 widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:0.0];

    v19 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v4 centerXAnchor];
    centerXAnchor2 = [(WFDictateTextActionStopButton *)v3 centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v23[0] = v8;
    centerYAnchor = [v4 centerYAnchor];
    centerYAnchor2 = [(WFDictateTextActionStopButton *)v3 centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v23[1] = v11;
    v23[2] = v20;
    heightAnchor = [v4 heightAnchor];
    widthAnchor2 = [v4 widthAnchor];
    v14 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v23[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    [v19 activateConstraints:v15];

    [(WFDictateTextActionStopButton *)v3 setRedSquareWidthConstraint:v20];
    v16 = v3;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

@end
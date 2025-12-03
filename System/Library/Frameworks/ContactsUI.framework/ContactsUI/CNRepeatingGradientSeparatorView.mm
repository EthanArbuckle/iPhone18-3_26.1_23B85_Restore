@interface CNRepeatingGradientSeparatorView
- (CGSize)intrinsicContentSize;
- (CNRepeatingGradientSeparatorView)initWithFrame:(CGRect)frame;
- (NSArray)gradientColors;
- (void)_updateGradients;
- (void)layoutSubviews;
- (void)setEndColor:(id)color;
- (void)setLineCount:(int64_t)count;
- (void)setStartColor:(id)color;
@end

@implementation CNRepeatingGradientSeparatorView

- (void)setEndColor:(id)color
{
  colorCopy = color;
  if (self->_endColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_endColor, color);
    colorCopy = v6;
  }
}

- (void)setStartColor:(id)color
{
  colorCopy = color;
  if (self->_startColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_startColor, color);
    colorCopy = v6;
  }
}

- (NSArray)gradientColors
{
  v7[2] = *MEMORY[0x1E69E9840];
  startColor = [(CNRepeatingGradientSeparatorView *)self startColor];
  v7[0] = [startColor CGColor];
  endColor = [(CNRepeatingGradientSeparatorView *)self endColor];
  v7[1] = [endColor CGColor];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)layoutSubviews
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CNRepeatingGradientSeparatorView;
  [(CNRepeatingGradientSeparatorView *)&v16 layoutSubviews];
  [(CNRepeatingGradientSeparatorView *)self bounds];
  CGRectGetHeight(v19);
  [(CNRepeatingGradientSeparatorView *)self lineCount];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  layer = [(CNRepeatingGradientSeparatorView *)self layer];
  sublayers = [layer sublayers];

  v5 = [sublayers countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        v11 = *(*(&v12 + 1) + 8 * v9);
        [(CNRepeatingGradientSeparatorView *)self bounds];
        v7 = v10 + 1;
        [v11 setFrame:?];
        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [sublayers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateGradients
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  layer = [(CNRepeatingGradientSeparatorView *)self layer];
  sublayers = [layer sublayers];
  [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];

  if ([(CNRepeatingGradientSeparatorView *)self lineCount]>= 1)
  {
    v5 = 0;
    do
    {
      layer2 = [MEMORY[0x1E6979380] layer];
      gradientColors = [(CNRepeatingGradientSeparatorView *)self gradientColors];
      [layer2 setColors:gradientColors];

      layer3 = [(CNRepeatingGradientSeparatorView *)self layer];
      [layer3 addSublayer:layer2];

      ++v5;
    }

    while (v5 < [(CNRepeatingGradientSeparatorView *)self lineCount]);
  }

  [(CNRepeatingGradientSeparatorView *)self setNeedsLayout];
  [(CNRepeatingGradientSeparatorView *)self layoutIfNeeded];
  v9 = MEMORY[0x1E6979518];

  [v9 commit];
}

- (void)setLineCount:(int64_t)count
{
  if (self->_lineCount != count)
  {
    self->_lineCount = count;
    [(CNRepeatingGradientSeparatorView *)self _updateGradients];
  }
}

- (CGSize)intrinsicContentSize
{
  _screen = [(CNRepeatingGradientSeparatorView *)self _screen];
  [_screen scale];
  if (v3 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v3 = *&RoundToScale___s;
  }

  v4 = 1.0;
  if (v3 != 1.0)
  {
    v4 = round(v3 * 0.5) / v3;
  }

  v5 = *MEMORY[0x1E69DE788];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CNRepeatingGradientSeparatorView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = CNRepeatingGradientSeparatorView;
  v3 = [(CNRepeatingGradientSeparatorView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    startColor = v3->_startColor;
    v3->_startColor = clearColor;

    v6 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
    endColor = v3->_endColor;
    v3->_endColor = v6;

    LODWORD(v8) = 1148846080;
    [(CNRepeatingGradientSeparatorView *)v3 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(CNRepeatingGradientSeparatorView *)v3 setContentHuggingPriority:0 forAxis:v9];
    [(CNRepeatingGradientSeparatorView *)v3 setLineCount:1];
  }

  return v3;
}

@end
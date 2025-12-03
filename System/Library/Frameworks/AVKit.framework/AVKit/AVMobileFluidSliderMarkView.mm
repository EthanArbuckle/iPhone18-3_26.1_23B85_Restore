@interface AVMobileFluidSliderMarkView
- (AVMobileFluidSliderMarkView)init;
- (void)layoutSubviews;
- (void)setMarkColor:(id)color;
@end

@implementation AVMobileFluidSliderMarkView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVMobileFluidSliderMarkView;
  [(AVMobileFluidSliderMarkView *)&v5 layoutSubviews];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(AVMobileFluidSliderMarkView *)self bounds];
  [(CALayer *)self->_markColorLayer setFrame:v3, v4];
}

- (void)setMarkColor:(id)color
{
  colorCopy = color;
  if (self->_markColor != colorCopy)
  {
    v10 = colorCopy;
    objc_storeStrong(&self->_markColor, color);
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v7 = v6;
    [MEMORY[0x1E6979518] begin];
    if (v7 <= 0.0)
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    else
    {
      [MEMORY[0x1E6979518] setDisableActions:0];
      [MEMORY[0x1E6979518] setAnimationDuration:v7];
    }

    markColorLayer = self->_markColorLayer;
    v9 = v10;
    [(CALayer *)markColorLayer setBackgroundColor:[(UIColor *)v10 CGColor]];
    [(AVMobileFluidSliderMarkView *)self setBackgroundColor:v10];
    [MEMORY[0x1E6979518] commit];
    colorCopy = v10;
  }
}

- (AVMobileFluidSliderMarkView)init
{
  v8.receiver = self;
  v8.super_class = AVMobileFluidSliderMarkView;
  v2 = [(AVMobileFluidSliderMarkView *)&v8 init];
  if (v2)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(AVMobileFluidSliderMarkView *)v2 setBackgroundColor:blackColor];

    layer = [MEMORY[0x1E6979398] layer];
    markColorLayer = v2->_markColorLayer;
    v2->_markColorLayer = layer;

    layer2 = [(AVMobileFluidSliderMarkView *)v2 layer];
    [layer2 addSublayer:v2->_markColorLayer];
  }

  return v2;
}

@end
@interface AVMobileSliderMarkView
- (AVMobileSliderMarkView)init;
- (void)layoutSubviews;
- (void)setMarkColor:(id)a3;
@end

@implementation AVMobileSliderMarkView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVMobileSliderMarkView;
  [(AVMobileSliderMarkView *)&v5 layoutSubviews];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(AVMobileSliderMarkView *)self bounds];
  [(CALayer *)self->_markColorLayer setFrame:v3, v4];
}

- (void)setMarkColor:(id)a3
{
  v5 = a3;
  if (self->_markColor != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_markColor, a3);
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
    [MEMORY[0x1E6979518] commit];
    v5 = v10;
  }
}

- (AVMobileSliderMarkView)init
{
  v8.receiver = self;
  v8.super_class = AVMobileSliderMarkView;
  v2 = [(AVMobileSliderMarkView *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] blackColor];
    [(AVMobileSliderMarkView *)v2 setBackgroundColor:v3];

    v4 = [MEMORY[0x1E6979398] layer];
    markColorLayer = v2->_markColorLayer;
    v2->_markColorLayer = v4;

    v6 = [(AVMobileSliderMarkView *)v2 layer];
    [v6 addSublayer:v2->_markColorLayer];
  }

  return v2;
}

@end
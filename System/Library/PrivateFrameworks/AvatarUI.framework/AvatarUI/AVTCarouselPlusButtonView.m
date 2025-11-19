@interface AVTCarouselPlusButtonView
- (AVTCarouselPlusButtonView)initWithFrame:(CGRect)a3 environment:(id)a4;
- (CGSize)maxItemSize;
- (void)layoutSubviews;
- (void)setAllowHighlight:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaxItemSize:(CGSize)a3;
@end

@implementation AVTCarouselPlusButtonView

- (AVTCarouselPlusButtonView)initWithFrame:(CGRect)a3 environment:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = AVTCarouselPlusButtonView;
  v11 = [(AVTCarouselPlusButtonView *)&v17 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = [MEMORY[0x1E69DC738] buttonWithType:0];
    v13 = AVTPlusButtonImage();
    [(UIButton *)v12 setImage:v13 forState:0];
    [(UIButton *)v12 setUserInteractionEnabled:0];
    button = v11->_button;
    v11->_button = v12;
    v15 = v12;

    objc_storeStrong(&v11->_environment, a4);
    [(AVTCarouselPlusButtonView *)v11 addSubview:v11->_button];
  }

  return v11;
}

- (void)setMaxItemSize:(CGSize)a3
{
  if (a3.width != self->_maxItemSize.width || a3.height != self->_maxItemSize.height)
  {
    self->_maxItemSize = a3;
    [(AVTCarouselPlusButtonView *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  self->_highlighted = a3;
  if ([(AVTCarouselPlusButtonView *)self allowHighlight])
  {
    v5 = [(AVTCarouselPlusButtonView *)self button];
    [v5 setHighlighted:v3];
  }
}

- (void)setAllowHighlight:(BOOL)a3
{
  v3 = a3;
  self->_allowHighlight = a3;
  if ([(AVTCarouselPlusButtonView *)self isHighlighted])
  {
    v5 = [(AVTCarouselPlusButtonView *)self button];
    [v5 setHighlighted:v3];
  }
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = AVTCarouselPlusButtonView;
  [(AVTCarouselPlusButtonView *)&v34 layoutSubviews];
  [(AVTCarouselPlusButtonView *)self maxItemSize];
  if (v4 != *MEMORY[0x1E695F060] || v3 != *(MEMORY[0x1E695F060] + 8))
  {
    v6 = [(AVTCarouselPlusButtonView *)self environment];
    v7 = [v6 deviceIsPad];

    if (v7)
    {
      v8 = 100.0;
    }

    else
    {
      v8 = 88.0;
    }

    [(AVTCarouselPlusButtonView *)self maxItemSize];
    v10 = v8 / v9;
    [(AVTCarouselPlusButtonView *)self maxItemSize];
    v12 = v8 / v11;
    [(AVTCarouselPlusButtonView *)self bounds];
    v14 = v13;
    v16 = v15;
    CGAffineTransformMakeScale(&v33, v10, v12);
    v17 = v16 * v33.c + v33.a * v14;
    v18 = v16 * v33.d + v33.b * v14;
    [(AVTCarouselPlusButtonView *)self bounds];
    UIRectGetCenter();
    v20 = v19;
    v22 = v21;
    [(AVTCarouselPlusButtonView *)self bounds];
    v24 = v23;
    [(AVTCarouselPlusButtonView *)self maxItemSize];
    v26 = (1.0 - v24 / v25) * 70.0;
    v27 = [(AVTCarouselPlusButtonView *)self environment];
    v28 = [v27 deviceIsPad];

    v29 = 0.0;
    if (!v28)
    {
      v29 = v26;
    }

    v30 = v20 + v29;
    v31 = [(AVTCarouselPlusButtonView *)self button];
    [v31 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v17, v18}];

    v32 = [(AVTCarouselPlusButtonView *)self button];
    [v32 setCenter:{v30, v22}];
  }
}

- (CGSize)maxItemSize
{
  width = self->_maxItemSize.width;
  height = self->_maxItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
@interface AVTCarouselPlusButtonView
- (AVTCarouselPlusButtonView)initWithFrame:(CGRect)frame environment:(id)environment;
- (CGSize)maxItemSize;
- (void)layoutSubviews;
- (void)setAllowHighlight:(BOOL)highlight;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaxItemSize:(CGSize)size;
@end

@implementation AVTCarouselPlusButtonView

- (AVTCarouselPlusButtonView)initWithFrame:(CGRect)frame environment:(id)environment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  environmentCopy = environment;
  v17.receiver = self;
  v17.super_class = AVTCarouselPlusButtonView;
  height = [(AVTCarouselPlusButtonView *)&v17 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = [MEMORY[0x1E69DC738] buttonWithType:0];
    v13 = AVTPlusButtonImage();
    [(UIButton *)v12 setImage:v13 forState:0];
    [(UIButton *)v12 setUserInteractionEnabled:0];
    button = height->_button;
    height->_button = v12;
    v15 = v12;

    objc_storeStrong(&height->_environment, environment);
    [(AVTCarouselPlusButtonView *)height addSubview:height->_button];
  }

  return height;
}

- (void)setMaxItemSize:(CGSize)size
{
  if (size.width != self->_maxItemSize.width || size.height != self->_maxItemSize.height)
  {
    self->_maxItemSize = size;
    [(AVTCarouselPlusButtonView *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  self->_highlighted = highlighted;
  if ([(AVTCarouselPlusButtonView *)self allowHighlight])
  {
    button = [(AVTCarouselPlusButtonView *)self button];
    [button setHighlighted:highlightedCopy];
  }
}

- (void)setAllowHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  self->_allowHighlight = highlight;
  if ([(AVTCarouselPlusButtonView *)self isHighlighted])
  {
    button = [(AVTCarouselPlusButtonView *)self button];
    [button setHighlighted:highlightCopy];
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
    environment = [(AVTCarouselPlusButtonView *)self environment];
    deviceIsPad = [environment deviceIsPad];

    if (deviceIsPad)
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
    environment2 = [(AVTCarouselPlusButtonView *)self environment];
    deviceIsPad2 = [environment2 deviceIsPad];

    v29 = 0.0;
    if (!deviceIsPad2)
    {
      v29 = v26;
    }

    v30 = v20 + v29;
    button = [(AVTCarouselPlusButtonView *)self button];
    [button setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v17, v18}];

    button2 = [(AVTCarouselPlusButtonView *)self button];
    [button2 setCenter:{v30, v22}];
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
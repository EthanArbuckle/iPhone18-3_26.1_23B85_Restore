@interface AAUIArrowControlsView
+ (double)defaultHeightForOrientation:(int64_t)orientation;
+ (double)defaultWidthForOrientation:(int64_t)orientation;
- (AAUIArrowControlsView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_arrowButtonWasTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setInterfaceOrientation:(int64_t)orientation;
@end

@implementation AAUIArrowControlsView

+ (double)defaultHeightForOrientation:(int64_t)orientation
{
  v3 = _AAUIImageForButtonDirection(-1, orientation != 0);
  [v3 size];
  v5 = v4;

  return v5;
}

+ (double)defaultWidthForOrientation:(int64_t)orientation
{
  v3 = _AAUIImageForButtonDirection(1, orientation != 0);
  [v3 size];
  v5 = v4 + v4;

  return v5;
}

- (AAUIArrowControlsView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = AAUIArrowControlsView;
  v3 = [(AAUIArrowControlsView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    upButton = v3->_upButton;
    v3->_upButton = v4;

    [(UIButton *)v3->_upButton setContentMode:4];
    [(UIButton *)v3->_upButton addTarget:v3 action:sel__arrowButtonWasTapped_ forControlEvents:1];
    [(AAUIArrowControlsView *)v3 addSubview:v3->_upButton];
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    downButton = v3->_downButton;
    v3->_downButton = v6;

    [(UIButton *)v3->_downButton setContentMode:4];
    [(UIButton *)v3->_downButton addTarget:v3 action:sel__arrowButtonWasTapped_ forControlEvents:1];
    [(AAUIArrowControlsView *)v3 addSubview:v3->_downButton];
    v3->_interfaceOrientation = -1;
    [(AAUIArrowControlsView *)v3 setInterfaceOrientation:1];
  }

  return v3;
}

- (void)_arrowButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_upButton == tappedCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [(AAUIArrowControlsViewDelegate *)self->_delegate arrowControlsView:self didTapUpButton:self->_upButton];
    }
  }

  else if (self->_downButton == tappedCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(AAUIArrowControlsViewDelegate *)self->_delegate arrowControlsView:self didTapDownButton:self->_upButton];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)layoutSubviews
{
  [(UIButton *)self->_upButton frame];
  v4 = v3;
  v6 = v5;
  imageView = [(UIButton *)self->_upButton imageView];
  image = [imageView image];
  [image size];
  v10 = v9 + 16.0;

  imageView2 = [(UIButton *)self->_upButton imageView];
  image2 = [imageView2 image];
  [image2 size];
  v14 = v13 + 24.0;

  [(UIButton *)self->_upButton setFrame:v4, v6, v10, v14];
  [(UIButton *)self->_downButton frame];
  v16 = v15;
  imageView3 = [(UIButton *)self->_downButton imageView];
  image3 = [imageView3 image];
  [image3 size];
  v20 = v19 + 16.0;

  imageView4 = [(UIButton *)self->_downButton imageView];
  image4 = [imageView4 image];
  [image4 size];
  v24 = v23 + 24.0;

  [(UIButton *)self->_upButton frame];
  MaxX = CGRectGetMaxX(v45);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v28 = 18.0;
  }

  else
  {
    v28 = 20.0;
  }

  [(UIButton *)self->_downButton setFrame:MaxX + v28 + -16.0, v16, v20, v24];
  [(AAUIArrowControlsView *)self frame];
  v30 = v29;
  v32 = v31;
  [(UIButton *)self->_upButton frame];
  v34 = v33;
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v37 = 18.0;
  }

  else
  {
    v37 = 20.0;
  }

  v38 = v34 + v37;
  [(UIButton *)self->_downButton frame];
  v40 = v38 + v39 + -24.0;
  [(UIButton *)self->_upButton frame];
  v42 = v41;
  [(UIButton *)self->_downButton frame];
  if (v42 >= v43)
  {
    v43 = v42;
  }

  [(AAUIArrowControlsView *)self setFrame:v30, v32, v40, v43];
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  if (self->_interfaceOrientation != orientation)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v8 = (orientation - 3) < 2 && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
    upButton = self->_upButton;
    v10 = _AAUIImageForButtonDirection(1, v8);
    [(UIButton *)upButton setImage:v10 forState:0];

    [(UIButton *)self->_upButton sizeToFit];
    downButton = self->_downButton;
    v12 = _AAUIImageForButtonDirection(-1, v8);
    [(UIButton *)downButton setImage:v12 forState:0];

    [(UIButton *)self->_downButton sizeToFit];
    self->_interfaceOrientation = orientation;
  }

  [(AAUIArrowControlsView *)self layoutSubviews];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  [(UIButton *)self->_downButton frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIButton *)self->_upButton frame];
  v15 = v12 + 10.0;
  v24.origin.x = v16 + -10.0;
  v24.size.width = v17 + 10.0;
  v22.x = x;
  v22.y = y;
  if (CGRectContainsPoint(v24, v22))
  {
    v18 = self->_upButton;
  }

  else
  {
    v18 = 0;
  }

  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v15;
  v25.size.height = v14;
  v23.x = x;
  v23.y = y;
  if (CGRectContainsPoint(v25, v23))
  {
    v19 = self->_downButton;

    v18 = v19;
  }

  return v18;
}

@end
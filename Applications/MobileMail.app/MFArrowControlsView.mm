@interface MFArrowControlsView
- (MFArrowControlsView)initWithFrame:(CGRect)frame;
- (MFArrowControlsViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_arrowButtonWasTapped:(id)tapped;
- (void)setFrame:(CGRect)frame;
@end

@implementation MFArrowControlsView

- (MFArrowControlsView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = MFArrowControlsView;
  v3 = [(MFArrowControlsView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:1];
    upButton = v3->_upButton;
    v3->_upButton = v4;

    [(UIButton *)v3->_upButton setContentMode:4];
    [(UIButton *)v3->_upButton addTarget:v3 action:"_arrowButtonWasTapped:" forControlEvents:1];
    [(UIButton *)v3->_upButton setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageViewUpArrow];
    [(MFArrowControlsView *)v3 addSubview:v3->_upButton];
    v6 = [UIButton buttonWithType:1];
    downButton = v3->_downButton;
    v3->_downButton = v6;

    [(UIButton *)v3->_downButton setContentMode:4];
    [(UIButton *)v3->_downButton addTarget:v3 action:"_arrowButtonWasTapped:" forControlEvents:1];
    [(UIButton *)v3->_downButton setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageViewDownArrow];
    [(MFArrowControlsView *)v3 addSubview:v3->_downButton];
    [(MFArrowControlsView *)v3 setBounds:0.0, 0.0, 0.0, 44.0];
    [(MFArrowControlsView *)v3 setAutoresizingMask:56];
    v8 = v3->_upButton;
    v9 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIButton *)v8 addInteraction:v9];

    v10 = v3->_downButton;
    v11 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIButton *)v10 addInteraction:v11];

    v12 = v3->_upButton;
    v13 = sub_1001A567C(-1);
    [(UIButton *)v12 setImage:v13 forState:0];

    [(UIButton *)v3->_upButton sizeToFit];
    v14 = v3->_downButton;
    v15 = sub_1001A567C(1);
    [(UIButton *)v14 setImage:v15 forState:0];

    [(UIButton *)v3->_downButton sizeToFit];
  }

  return v3;
}

- (void)_arrowButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (self->_upButton == tappedCopy)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
    }

    [WeakRetained arrowControlsView:self didTapButtonWithDirection:v5];
  }
}

- (void)setFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIButton *)self->_upButton frame:frame.origin.x];
  v7 = v6;
  v9 = v8;
  imageView = [(UIButton *)self->_upButton imageView];
  image = [imageView image];
  [image size];
  v13 = v12;

  imageView2 = [(UIButton *)self->_upButton imageView];
  image2 = [imageView2 image];
  [image2 size];
  v17 = v16 + 24.0;

  [(UIButton *)self->_upButton setFrame:v7, v9, v13 + 16.0, v17];
  [(UIButton *)self->_downButton frame];
  v19 = v18;
  imageView3 = [(UIButton *)self->_downButton imageView];
  image3 = [imageView3 image];
  [image3 size];
  v23 = v22;

  imageView4 = [(UIButton *)self->_downButton imageView];
  image4 = [imageView4 image];
  [image4 size];
  v26 = v23 + 16.0;
  v28 = v27 + 24.0;

  [(UIButton *)self->_upButton frame];
  MaxX = CGRectGetMaxX(v41);
  if (+[UIDevice mf_isPadIdiom])
  {
    v30 = 18.0;
  }

  else
  {
    v30 = 20.0;
  }

  [(UIButton *)self->_downButton setFrame:MaxX + v30 + -16.0, v19, v26, v28];
  [(UIButton *)self->_upButton frame];
  v32 = v31;
  if (+[UIDevice mf_isPadIdiom])
  {
    v33 = 18.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34 = v32 + v33;
  [(UIButton *)self->_downButton frame];
  v36 = v34 + v35 + -24.0;
  [(UIButton *)self->_upButton frame];
  v38 = v37;
  [(UIButton *)self->_downButton frame];
  if (v38 >= v39)
  {
    v39 = v38;
  }

  v40.receiver = self;
  v40.super_class = MFArrowControlsView;
  [(MFArrowControlsView *)&v40 setFrame:x, y, v36, v39];
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
  v24.origin.x = v15 + -10.0;
  v24.size.width = v16 + 10.0;
  v22.x = x;
  v22.y = y;
  v17 = v12 + 10.0;
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
  v25.size.width = v17;
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  view = [interaction view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [view isEnabled])
  {
    v8 = regionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  v5 = [UITargetedPreview alloc];
  view = [interactionCopy view];
  v7 = [v5 initWithView:view];
  v8 = [UIPointerEffect effectWithPreview:v7];

  v9 = [UIPointerStyle styleWithEffect:v8 shape:0];

  return v9;
}

- (MFArrowControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
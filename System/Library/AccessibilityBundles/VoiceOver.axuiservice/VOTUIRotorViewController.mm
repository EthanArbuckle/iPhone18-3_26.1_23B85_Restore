@interface VOTUIRotorViewController
- (void)loadView;
- (void)setRotorHidden:(BOOL)hidden;
- (void)setupConstraintsIfNecessary;
- (void)updateVisualRotor:(id)rotor;
@end

@implementation VOTUIRotorViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(VOTUIRotorViewController *)self setView:v3];
}

- (void)setupConstraintsIfNecessary
{
  view = [(VOTUIRotorViewController *)self view];
  window = [view window];

  v4 = window;
  if (window && !self->_constraintsSetUp)
  {
    v5 = +[NSMutableArray array];
    v6 = self->_rotorDisplay;
    view2 = [(VOTUIRotorViewController *)self view];
    v8 = [NSLayoutConstraint constraintWithItem:v6 attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];
    [v5 addObject:v8];

    view3 = [(VOTUIRotorViewController *)self view];
    v10 = [NSLayoutConstraint constraintWithItem:v6 attribute:10 relatedBy:0 toItem:view3 attribute:10 multiplier:1.0 constant:0.0];

    [v5 addObject:v10];
    view4 = [(VOTUIRotorViewController *)self view];
    v12 = [NSLayoutConstraint constraintWithItem:view4 attribute:9 relatedBy:0 toItem:window attribute:9 multiplier:1.0 constant:0.0];
    [v5 addObject:v12];

    view5 = [(VOTUIRotorViewController *)self view];
    v14 = [NSLayoutConstraint constraintWithItem:view5 attribute:10 relatedBy:0 toItem:window attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v14];

    [NSLayoutConstraint activateConstraints:v5];
    self->_constraintsSetUp = 1;

    v4 = window;
  }
}

- (void)updateVisualRotor:(id)rotor
{
  rotorCopy = rotor;
  if (!self->_rotorDisplay)
  {
    v4 = objc_alloc_init(VOTUIRotorDisplay);
    rotorDisplay = self->_rotorDisplay;
    self->_rotorDisplay = v4;

    [(VOTUIRotorDisplay *)self->_rotorDisplay setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(VOTUIRotorViewController *)self view];
    [view addSubview:self->_rotorDisplay];
  }

  [(VOTUIRotorViewController *)self setupConstraintsIfNecessary];
  v7 = [rotorCopy objectForKey:@"count"];
  v8 = v7;
  if (v7)
  {
    -[VOTUIRotorDisplay setRotorItemCount:](self->_rotorDisplay, "setRotorItemCount:", [v7 integerValue]);
  }

  v9 = [rotorCopy objectForKey:@"increment"];
  v10 = v9;
  if (v9)
  {
    -[VOTUIRotorDisplay updateRotorPosition:](self->_rotorDisplay, "updateRotorPosition:", [v9 BOOLValue]);
  }

  v11 = [rotorCopy objectForKey:@"title"];
  if (v11)
  {
    [(VOTUIRotorDisplay *)self->_rotorDisplay setTitle:v11];
  }

  v12 = [rotorCopy objectForKey:@"show"];
  v13 = v12;
  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
    v15 = self->_rotorDisplay;
    if (bOOLValue)
    {
      [(VOTUIRotorDisplay *)v15 show];
    }

    else
    {
      [(VOTUIRotorDisplay *)v15 hide];
    }
  }
}

- (void)setRotorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(VOTUIRotorViewController *)self view];
  [view setHidden:hiddenCopy];
}

@end
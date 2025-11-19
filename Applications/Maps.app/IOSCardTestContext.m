@interface IOSCardTestContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectLabelMarker:(id)a3;
- (CardTestPopoverContainee)popover;
- (ChromeViewController)chromeViewController;
- (IOSCardTestContext)init;
- (IOSCardTestContext)initWithFloatingControlsOptions:(int64_t)a3;
- (unint64_t)indexOfContext;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)popContainee;
- (void)popContext;
- (void)pushContainee;
- (void)pushContext:(Class)a3;
- (void)pushContextWithFloatingControls:(int64_t)a3;
@end

@implementation IOSCardTestContext

- (CardTestPopoverContainee)popover
{
  WeakRetained = objc_loadWeakRetained(&self->_popover);

  return WeakRetained;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (BOOL)chromeDidClearMapSelection
{
  v3 = [(IOSCardTestContext *)self popover];
  if (v3)
  {
    [(NSMutableArray *)self->_containees removeObject:v3];
    v4 = [(IOSCardTestContext *)self chromeViewController];
    [v4 setNeedsUpdateComponent:@"cards" animated:1];
  }

  return 1;
}

- (BOOL)chromeDidSelectLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [(IOSCardTestContext *)self chromeViewController];
  v6 = sub_10000FA08(v5);

  if (v6 == 5)
  {
    v7 = [(IOSCardTestContext *)self popover];
    if (v7)
    {
      [(NSMutableArray *)self->_containees removeObject:v7];
    }

    v8 = [[CardTestPopoverContainee alloc] initWithContext:self forLabelMarker:v4];
    [(NSMutableArray *)self->_containees addObject:v8];
    [(IOSCardTestContext *)self setPopover:v8];
    v9 = [(IOSCardTestContext *)self chromeViewController];
    [v9 setNeedsUpdateComponent:@"cards" animated:1];
  }

  return v6 == 5;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v13 = a3;
  v5 = [(NSMutableArray *)self->_containees containsObject:v13];
  v6 = v13;
  if (v5)
  {
    [(NSMutableArray *)self->_containees removeObject:v13];
    v7 = [(IOSCardTestContext *)self popover];

    if (v7)
    {
      v8 = [(IOSCardTestContext *)self chromeViewController];
      v9 = [v8 mapSelectionManager];
      [v9 clearSelectionAnimated:1];
    }

    v10 = [(NSMutableArray *)self->_containees count];
    v11 = [(IOSCardTestContext *)self chromeViewController];
    v12 = v11;
    if (v10)
    {
      [v11 setNeedsUpdateComponent:@"cards" animated:1];
    }

    else
    {
      [v11 popContext:self animated:1 completion:0];
    }

    v6 = v13;
  }
}

- (void)popContext
{
  v3 = [(IOSCardTestContext *)self chromeViewController];
  v4 = [v3 contexts];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [(IOSCardTestContext *)self chromeViewController];
    [v6 popContextAnimated:1 completion:0];
  }
}

- (void)pushContextWithFloatingControls:(int64_t)a3
{
  v5 = [(IOSCardTestContext *)self chromeViewController];
  v4 = [[IOSCardTestContext alloc] initWithFloatingControlsOptions:a3];
  [v5 pushContext:v4 animated:1 completion:0];
}

- (void)pushContext:(Class)a3
{
  v5 = [(IOSCardTestContext *)self chromeViewController];
  v4 = objc_alloc_init(a3);
  [v5 pushContext:v4 animated:1 completion:0];
}

- (void)popContainee
{
  if ([(NSMutableArray *)self->_containees count]>= 2)
  {
    [(NSMutableArray *)self->_containees removeLastObject];
    v3 = [(IOSCardTestContext *)self chromeViewController];
    [v3 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (void)pushContainee
{
  v4 = [[CardTestContainee alloc] initWithContext:self];
  [(NSMutableArray *)self->_containees addObject:v4];
  v3 = [(IOSCardTestContext *)self chromeViewController];
  [v3 setNeedsUpdateComponent:@"cards" animated:1];
}

- (unint64_t)indexOfContext
{
  v3 = [(IOSCardTestContext *)self chromeViewController];
  v4 = [v3 contexts];
  v5 = [v4 indexOfObject:self];

  return v5;
}

- (IOSCardTestContext)init
{
  v7.receiver = self;
  v7.super_class = IOSCardTestContext;
  v2 = [(IOSCardTestContext *)&v7 init];
  if (v2)
  {
    v3 = [[CardTestContainee alloc] initWithContext:v2];
    v4 = [[NSMutableArray alloc] initWithObjects:{v3, 0}];
    containees = v2->_containees;
    v2->_containees = v4;

    v2->_floatingControls = 67;
  }

  return v2;
}

- (IOSCardTestContext)initWithFloatingControlsOptions:(int64_t)a3
{
  result = [(IOSCardTestContext *)self init];
  if (result)
  {
    result->_floatingControls = a3;
  }

  return result;
}

@end
@interface IOSCardTestContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectLabelMarker:(id)marker;
- (CardTestPopoverContainee)popover;
- (ChromeViewController)chromeViewController;
- (IOSCardTestContext)init;
- (IOSCardTestContext)initWithFloatingControlsOptions:(int64_t)options;
- (unint64_t)indexOfContext;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)popContainee;
- (void)popContext;
- (void)pushContainee;
- (void)pushContext:(Class)context;
- (void)pushContextWithFloatingControls:(int64_t)controls;
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
  popover = [(IOSCardTestContext *)self popover];
  if (popover)
  {
    [(NSMutableArray *)self->_containees removeObject:popover];
    chromeViewController = [(IOSCardTestContext *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
  }

  return 1;
}

- (BOOL)chromeDidSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  chromeViewController = [(IOSCardTestContext *)self chromeViewController];
  v6 = sub_10000FA08(chromeViewController);

  if (v6 == 5)
  {
    popover = [(IOSCardTestContext *)self popover];
    if (popover)
    {
      [(NSMutableArray *)self->_containees removeObject:popover];
    }

    v8 = [[CardTestPopoverContainee alloc] initWithContext:self forLabelMarker:markerCopy];
    [(NSMutableArray *)self->_containees addObject:v8];
    [(IOSCardTestContext *)self setPopover:v8];
    chromeViewController2 = [(IOSCardTestContext *)self chromeViewController];
    [chromeViewController2 setNeedsUpdateComponent:@"cards" animated:1];
  }

  return v6 == 5;
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  v5 = [(NSMutableArray *)self->_containees containsObject:stateCopy];
  v6 = stateCopy;
  if (v5)
  {
    [(NSMutableArray *)self->_containees removeObject:stateCopy];
    popover = [(IOSCardTestContext *)self popover];

    if (popover)
    {
      chromeViewController = [(IOSCardTestContext *)self chromeViewController];
      mapSelectionManager = [chromeViewController mapSelectionManager];
      [mapSelectionManager clearSelectionAnimated:1];
    }

    v10 = [(NSMutableArray *)self->_containees count];
    chromeViewController2 = [(IOSCardTestContext *)self chromeViewController];
    v12 = chromeViewController2;
    if (v10)
    {
      [chromeViewController2 setNeedsUpdateComponent:@"cards" animated:1];
    }

    else
    {
      [chromeViewController2 popContext:self animated:1 completion:0];
    }

    v6 = stateCopy;
  }
}

- (void)popContext
{
  chromeViewController = [(IOSCardTestContext *)self chromeViewController];
  contexts = [chromeViewController contexts];
  v5 = [contexts count];

  if (v5 >= 2)
  {
    chromeViewController2 = [(IOSCardTestContext *)self chromeViewController];
    [chromeViewController2 popContextAnimated:1 completion:0];
  }
}

- (void)pushContextWithFloatingControls:(int64_t)controls
{
  chromeViewController = [(IOSCardTestContext *)self chromeViewController];
  v4 = [[IOSCardTestContext alloc] initWithFloatingControlsOptions:controls];
  [chromeViewController pushContext:v4 animated:1 completion:0];
}

- (void)pushContext:(Class)context
{
  chromeViewController = [(IOSCardTestContext *)self chromeViewController];
  v4 = objc_alloc_init(context);
  [chromeViewController pushContext:v4 animated:1 completion:0];
}

- (void)popContainee
{
  if ([(NSMutableArray *)self->_containees count]>= 2)
  {
    [(NSMutableArray *)self->_containees removeLastObject];
    chromeViewController = [(IOSCardTestContext *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (void)pushContainee
{
  v4 = [[CardTestContainee alloc] initWithContext:self];
  [(NSMutableArray *)self->_containees addObject:v4];
  chromeViewController = [(IOSCardTestContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (unint64_t)indexOfContext
{
  chromeViewController = [(IOSCardTestContext *)self chromeViewController];
  contexts = [chromeViewController contexts];
  v5 = [contexts indexOfObject:self];

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

- (IOSCardTestContext)initWithFloatingControlsOptions:(int64_t)options
{
  result = [(IOSCardTestContext *)self init];
  if (result)
  {
    result->_floatingControls = options;
  }

  return result;
}

@end
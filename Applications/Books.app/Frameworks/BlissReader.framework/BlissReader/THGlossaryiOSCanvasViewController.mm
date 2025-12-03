@interface THGlossaryiOSCanvasViewController
- (THGlossaryiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)hitRep:(CGPoint)rep allowsAllReps:(BOOL)reps;
- (void)_applyCorrectAppearance;
- (void)dealloc;
- (void)setTheme:(id)theme;
- (void)setUpGestureRecognizers;
@end

@implementation THGlossaryiOSCanvasViewController

- (void)setUpGestureRecognizers
{
  v13.receiver = self;
  v13.super_class = THGlossaryiOSCanvasViewController;
  [(THGlossaryiOSCanvasViewController *)&v13 setUpGestureRecognizers];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  view = [-[THGlossaryiOSCanvasViewController view](self view];
  v4 = [view countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(view);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 != [(THGlossaryiOSCanvasViewController *)self hyperlinkGestureRecognizer])
        {
          [v8 requireGestureRecognizerToFail:{-[THGlossaryiOSCanvasViewController hyperlinkGestureRecognizer](self, "hyperlinkGestureRecognizer")}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [view countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (THGlossaryiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = THGlossaryiOSCanvasViewController;
  v4 = [(THGlossaryiOSCanvasViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(THGlossaryiOSCanvasViewController *)v4 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)_applyCorrectAppearance
{
  objc_opt_class();
  [(THGlossaryiOSCanvasViewController *)self view];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    v5 = [(IMTheme *)[(THGlossaryiOSCanvasViewController *)self theme] backgroundColorForTraitEnvironment:self];
    if (!v5)
    {
      v5 = +[UIColor whiteColor];
    }

    [v4 setBackgroundColor:v5];
    [objc_msgSend(v4 "enclosingScrollView")];
    rootCanvasView = [v4 rootCanvasView];
    [rootCanvasView setBackgroundColor:v5];
    enclosingScrollView = [rootCanvasView enclosingScrollView];

    [enclosingScrollView setBackgroundColor:v5];
  }
}

- (id)hitRep:(CGPoint)rep allowsAllReps:(BOOL)reps
{
  v5 = [-[THGlossaryiOSCanvasViewController interactiveCanvasController](self "interactiveCanvasController")];
  if (!reps)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v5;
}

- (void)setTheme:(id)theme
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    themeCopy = theme;

    self->_theme = theme;

    [(THGlossaryiOSCanvasViewController *)self _applyCorrectAppearance];
  }
}

- (void)dealloc
{
  self->_theme = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryiOSCanvasViewController;
  [(THGlossaryiOSCanvasViewController *)&v3 dealloc];
}

@end
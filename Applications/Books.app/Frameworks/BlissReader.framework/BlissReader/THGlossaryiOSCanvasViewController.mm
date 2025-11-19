@interface THGlossaryiOSCanvasViewController
- (THGlossaryiOSCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)hitRep:(CGPoint)a3 allowsAllReps:(BOOL)a4;
- (void)_applyCorrectAppearance;
- (void)dealloc;
- (void)setTheme:(id)a3;
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
  v3 = [-[THGlossaryiOSCanvasViewController view](self view];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 != [(THGlossaryiOSCanvasViewController *)self hyperlinkGestureRecognizer])
        {
          [v8 requireGestureRecognizerToFail:{-[THGlossaryiOSCanvasViewController hyperlinkGestureRecognizer](self, "hyperlinkGestureRecognizer")}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (THGlossaryiOSCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = THGlossaryiOSCanvasViewController;
  v4 = [(THGlossaryiOSCanvasViewController *)&v6 initWithNibName:a3 bundle:a4];
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
    v6 = [v4 rootCanvasView];
    [v6 setBackgroundColor:v5];
    v7 = [v6 enclosingScrollView];

    [v7 setBackgroundColor:v5];
  }
}

- (id)hitRep:(CGPoint)a3 allowsAllReps:(BOOL)a4
{
  v5 = [-[THGlossaryiOSCanvasViewController interactiveCanvasController](self "interactiveCanvasController")];
  if (!a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v5;
}

- (void)setTheme:(id)a3
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    v5 = a3;

    self->_theme = a3;

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
@interface THWPiOSCanvasViewController
- (THWPiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THWPiOSCanvasViewController

- (THWPiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = THWPiOSCanvasViewController;
  v4 = [(THWPiOSCanvasViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(THWPiOSCanvasViewController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = THWPiOSCanvasViewController;
  [(THWPiOSCanvasViewController *)&v4 viewDidLoad];
  v3 = objc_opt_new();
  [(THWPiOSCanvasViewController *)self setTraitsCache:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = THWPiOSCanvasViewController;
  [(THWPiOSCanvasViewController *)&v6 viewWillAppear:appear];
  traitsCache = [(THWPiOSCanvasViewController *)self traitsCache];
  traitCollection = [(THWPiOSCanvasViewController *)self traitCollection];
  [traitsCache updateTraitsWithCollection:traitCollection];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v6 = [(THWPiOSCanvasViewController *)self traitsCache:change];
  traitCollection = [(THWPiOSCanvasViewController *)self traitCollection];
  [v6 updateTraitsWithCollection:traitCollection];
}

@end
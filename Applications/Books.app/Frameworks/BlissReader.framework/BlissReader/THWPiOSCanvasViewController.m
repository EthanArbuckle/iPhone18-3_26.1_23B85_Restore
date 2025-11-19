@interface THWPiOSCanvasViewController
- (THWPiOSCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation THWPiOSCanvasViewController

- (THWPiOSCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = THWPiOSCanvasViewController;
  v4 = [(THWPiOSCanvasViewController *)&v8 initWithNibName:a3 bundle:a4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = THWPiOSCanvasViewController;
  [(THWPiOSCanvasViewController *)&v6 viewWillAppear:a3];
  v4 = [(THWPiOSCanvasViewController *)self traitsCache];
  v5 = [(THWPiOSCanvasViewController *)self traitCollection];
  [v4 updateTraitsWithCollection:v5];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v6 = [(THWPiOSCanvasViewController *)self traitsCache:a3];
  v5 = [(THWPiOSCanvasViewController *)self traitCollection];
  [v6 updateTraitsWithCollection:v5];
}

@end
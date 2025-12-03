@interface SSSDebugUICatalogViewController
- (SSSDebugUICatalogViewController)init;
- (id)_viewControllerAtIndex:(int64_t)index;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)viewDidLoad;
@end

@implementation SSSDebugUICatalogViewController

- (SSSDebugUICatalogViewController)init
{
  v8.receiver = self;
  v8.super_class = SSSDebugUICatalogViewController;
  v2 = [(SSSDebugUICatalogViewController *)&v8 initWithTransitionStyle:1 navigationOrientation:0 options:0];
  v3 = +[NSMutableArray array];
  allViewControllers = v2->_allViewControllers;
  v2->_allViewControllers = v3;

  v5 = v2->_allViewControllers;
  v6 = objc_opt_new();
  [(NSMutableArray *)v5 addObject:v6];

  [(SSSDebugUICatalogViewController *)v2 setViewControllers:v2->_allViewControllers direction:0 animated:0 completion:0];
  [(SSSDebugUICatalogViewController *)v2 setDelegate:v2];
  [(SSSDebugUICatalogViewController *)v2 setDataSource:v2];
  [(SSSDebugUICatalogViewController *)v2 setModalPresentationStyle:5];
  return v2;
}

- (void)viewDidLoad
{
  v44.receiver = self;
  v44.super_class = SSSDebugUICatalogViewController;
  [(SSSDebugUICatalogViewController *)&v44 viewDidLoad];
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:1];
  v5 = [v3 initWithEffect:v4];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  view = [(SSSDebugUICatalogViewController *)self view];
  [view insertSubview:self->_backgroundView atIndex:0];

  [(UIVisualEffectView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = objc_alloc_init(UIToolbar);
  toolbar = self->_toolbar;
  self->_toolbar = v8;

  [(UIToolbar *)self->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_donePushed"];
  [v11 setTitle:@"Done"];
  v12 = self->_toolbar;
  v45[0] = v10;
  v45[1] = v11;
  v13 = [NSArray arrayWithObjects:v45 count:2];
  [(UIToolbar *)v12 setItems:v13];

  view2 = [(SSSDebugUICatalogViewController *)self view];
  [view2 addSubview:self->_toolbar];

  v15 = +[NSMutableArray array];
  leadingAnchor = [(UIVisualEffectView *)self->_backgroundView leadingAnchor];
  view3 = [(SSSDebugUICatalogViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v15 addObject:v19];

  trailingAnchor = [(UIVisualEffectView *)self->_backgroundView trailingAnchor];
  view4 = [(SSSDebugUICatalogViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v15 addObject:v23];

  topAnchor = [(UIVisualEffectView *)self->_backgroundView topAnchor];
  view5 = [(SSSDebugUICatalogViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 addObject:v27];

  bottomAnchor = [(UIVisualEffectView *)self->_backgroundView bottomAnchor];
  view6 = [(SSSDebugUICatalogViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 addObject:v31];

  leadingAnchor3 = [(UIToolbar *)self->_toolbar leadingAnchor];
  view7 = [(SSSDebugUICatalogViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v15 addObject:v35];

  trailingAnchor3 = [(UIToolbar *)self->_toolbar trailingAnchor];
  view8 = [(SSSDebugUICatalogViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v15 addObject:v39];

  topAnchor3 = [(UIToolbar *)self->_toolbar topAnchor];
  view9 = [(SSSDebugUICatalogViewController *)self view];
  topAnchor4 = [view9 topAnchor];
  v43 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v15 addObject:v43];

  [NSLayoutConstraint activateConstraints:v15];
}

- (id)_viewControllerAtIndex:(int64_t)index
{
  if (index < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSMutableArray *)self->_allViewControllers count]<= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_allViewControllers objectAtIndex:index];
    }
  }

  return v6;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(NSMutableArray *)self->_allViewControllers indexOfObject:viewController]+ 1;

  return [(SSSDebugUICatalogViewController *)self _viewControllerAtIndex:v5];
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [(NSMutableArray *)self->_allViewControllers indexOfObject:viewController]- 1;

  return [(SSSDebugUICatalogViewController *)self _viewControllerAtIndex:v5];
}

@end
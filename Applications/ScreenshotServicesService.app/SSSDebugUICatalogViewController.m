@interface SSSDebugUICatalogViewController
- (SSSDebugUICatalogViewController)init;
- (id)_viewControllerAtIndex:(int64_t)a3;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
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

  v7 = [(SSSDebugUICatalogViewController *)self view];
  [v7 insertSubview:self->_backgroundView atIndex:0];

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

  v14 = [(SSSDebugUICatalogViewController *)self view];
  [v14 addSubview:self->_toolbar];

  v15 = +[NSMutableArray array];
  v16 = [(UIVisualEffectView *)self->_backgroundView leadingAnchor];
  v17 = [(SSSDebugUICatalogViewController *)self view];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v15 addObject:v19];

  v20 = [(UIVisualEffectView *)self->_backgroundView trailingAnchor];
  v21 = [(SSSDebugUICatalogViewController *)self view];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v15 addObject:v23];

  v24 = [(UIVisualEffectView *)self->_backgroundView topAnchor];
  v25 = [(SSSDebugUICatalogViewController *)self view];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v15 addObject:v27];

  v28 = [(UIVisualEffectView *)self->_backgroundView bottomAnchor];
  v29 = [(SSSDebugUICatalogViewController *)self view];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v15 addObject:v31];

  v32 = [(UIToolbar *)self->_toolbar leadingAnchor];
  v33 = [(SSSDebugUICatalogViewController *)self view];
  v34 = [v33 leadingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v15 addObject:v35];

  v36 = [(UIToolbar *)self->_toolbar trailingAnchor];
  v37 = [(SSSDebugUICatalogViewController *)self view];
  v38 = [v37 trailingAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v15 addObject:v39];

  v40 = [(UIToolbar *)self->_toolbar topAnchor];
  v41 = [(SSSDebugUICatalogViewController *)self view];
  v42 = [v41 topAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v15 addObject:v43];

  [NSLayoutConstraint activateConstraints:v15];
}

- (id)_viewControllerAtIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSMutableArray *)self->_allViewControllers count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_allViewControllers objectAtIndex:a3];
    }
  }

  return v6;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [(NSMutableArray *)self->_allViewControllers indexOfObject:a4]+ 1;

  return [(SSSDebugUICatalogViewController *)self _viewControllerAtIndex:v5];
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [(NSMutableArray *)self->_allViewControllers indexOfObject:a4]- 1;

  return [(SSSDebugUICatalogViewController *)self _viewControllerAtIndex:v5];
}

@end
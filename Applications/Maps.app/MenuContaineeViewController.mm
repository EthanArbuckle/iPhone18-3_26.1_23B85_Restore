@interface MenuContaineeViewController
- (MenuContaineeViewController)initWithContentView:(id)a3;
- (MenuContaineeViewController)initWithContentViewController:(id)a3;
- (id)keyCommands;
- (void)dealloc;
- (void)escapePressed:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)returnPressed:(id)a3;
- (void)setTrackedScrollview:(id)a3;
- (void)viewDidLoad;
@end

@implementation MenuContaineeViewController

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &unk_10195E198 && ![(NSDictionary *)self->_change isEqualToDictionary:v12])
  {
    if (qword_10195E1A8 != -1)
    {
      dispatch_once(&qword_10195E1A8, &stru_101631F18);
    }

    v13 = qword_10195E1A0;
    if (os_log_type_enabled(qword_10195E1A0, OS_LOG_TYPE_INFO))
    {
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "keyPath - %@, object - %@, change - %@", &v19, 0x20u);
    }

    objc_storeStrong(&self->_change, a5);
    v14 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    [v14 CGSizeValue];
    v16 = v15;

    v17 = fmax(self->contentInsets.top + self->contentInsets.bottom + v16, 60.0);
    v18 = [(MenuContaineeViewController *)self view];
    [v18 setOverriddenIntrinsicHeight:v17];
    [v18 invalidateIntrinsicContentSize];
  }
}

- (void)setTrackedScrollview:(id)a3
{
  v5 = a3;
  trackedScrollview = self->_trackedScrollview;
  if (trackedScrollview != v5)
  {
    v13 = v5;
    [(UIScrollView *)trackedScrollview removeObserver:self forKeyPath:@"contentSize"];
    objc_storeStrong(&self->_trackedScrollview, a3);
    [(UIScrollView *)self->_trackedScrollview addObserver:self forKeyPath:@"contentSize" options:1 context:&unk_10195E198];
    v7 = sub_10000FA08(self->_trackedScrollview);
    v5 = v13;
    if (v7 == 5)
    {
      p_contentInsets = &self->contentInsets;
      [(UIScrollView *)v13 adjustedContentInset];
      v5 = v13;
      p_contentInsets->top = v9;
      p_contentInsets->left = v10;
      p_contentInsets->bottom = v11;
      p_contentInsets->right = v12;
    }
  }
}

- (void)returnPressed:(id)a3
{
  v4 = [(MenuContaineeViewController *)self trackedScrollview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MenuContaineeViewController *)self trackedScrollview];
    v7 = [v6 indexPathForSelectedRow];

    if (v7)
    {
      v8 = [v6 delegate];
      v9 = [v6 indexPathForSelectedRow];
      [v8 tableView:v6 didSelectRowAtIndexPath:v9];
    }
  }

  v10 = [(MenuContaineeViewController *)self trackedScrollview];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v16 = [(MenuContaineeViewController *)self trackedScrollview];
    v12 = [v16 indexPathsForSelectedItems];

    if (v12)
    {
      v13 = [v16 delegate];
      v14 = [v16 indexPathsForSelectedItems];
      v15 = [v14 firstObject];
      [v13 collectionView:v16 didSelectItemAtIndexPath:v15];
    }
  }
}

- (void)escapePressed:(id)a3
{
  v3 = [(ContaineeViewController *)self macMenuPresentationController];
  [v3 dismissAnimated:1 completion:0];
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"escapePressed:"];
  [v2 setWantsPriorityOverSystemBehavior:1];
  v3 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"returnPressed:"];
  [v3 setWantsPriorityOverSystemBehavior:1];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = MenuContaineeViewController;
  [(ContaineeViewController *)&v11 viewDidLoad];
  v3 = [(MenuContaineeViewController *)self view];
  if (self->_contentViewController)
  {
    [(MenuContaineeViewController *)self addChildViewController:?];
    v4 = [(UIViewController *)self->_contentViewController view];
    [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  }

  else
  {
    v4 = self->_contentView;
  }

  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 bounds];
  [(UIView *)v4 setFrame:?];
  v5 = [v3 contentView];
  [v5 addSubview:v4];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [v3 contentView];
  LODWORD(v8) = 1148846080;
  v9 = [(UIView *)v4 _maps_constraintsEqualToEdgesOfView:v7 priority:v8];
  v10 = [v9 allConstraints];
  [v6 addObjectsFromArray:v10];

  [NSLayoutConstraint activateConstraints:v6];
}

- (void)loadView
{
  v3 = [[CardView alloc] initWithThickBlur];
  [(CardView *)v3 setLayoutStyle:6];
  [(MenuContaineeViewController *)self setView:v3];
}

- (void)dealloc
{
  [(UIScrollView *)self->_trackedScrollview removeObserver:self forKeyPath:@"contentSize"];
  v3.receiver = self;
  v3.super_class = MenuContaineeViewController;
  [(MenuContaineeViewController *)&v3 dealloc];
}

- (MenuContaineeViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MenuContaineeViewController;
  v6 = [(MenuContaineeViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
    [(ContaineeViewController *)v7 setPreferredPresentationStyle:4];
    v8 = *&UIEdgeInsetsZero.bottom;
    *&v7->contentInsets.top = *&UIEdgeInsetsZero.top;
    *&v7->contentInsets.bottom = v8;
  }

  return v7;
}

- (MenuContaineeViewController)initWithContentView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MenuContaineeViewController;
  v6 = [(MenuContaineeViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    [(ContaineeViewController *)v7 setPreferredPresentationStyle:4];
    v8 = *&UIEdgeInsetsZero.bottom;
    *&v7->contentInsets.top = *&UIEdgeInsetsZero.top;
    *&v7->contentInsets.bottom = v8;
  }

  return v7;
}

@end
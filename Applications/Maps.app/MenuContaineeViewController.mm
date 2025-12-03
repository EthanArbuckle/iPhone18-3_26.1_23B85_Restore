@interface MenuContaineeViewController
- (MenuContaineeViewController)initWithContentView:(id)view;
- (MenuContaineeViewController)initWithContentViewController:(id)controller;
- (id)keyCommands;
- (void)dealloc;
- (void)escapePressed:(id)pressed;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)returnPressed:(id)pressed;
- (void)setTrackedScrollview:(id)scrollview;
- (void)viewDidLoad;
@end

@implementation MenuContaineeViewController

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &unk_10195E198 && ![(NSDictionary *)self->_change isEqualToDictionary:changeCopy])
  {
    if (qword_10195E1A8 != -1)
    {
      dispatch_once(&qword_10195E1A8, &stru_101631F18);
    }

    v13 = qword_10195E1A0;
    if (os_log_type_enabled(qword_10195E1A0, OS_LOG_TYPE_INFO))
    {
      v19 = 138412802;
      v20 = pathCopy;
      v21 = 2112;
      v22 = objectCopy;
      v23 = 2112;
      v24 = changeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "keyPath - %@, object - %@, change - %@", &v19, 0x20u);
    }

    objc_storeStrong(&self->_change, change);
    v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    [v14 CGSizeValue];
    v16 = v15;

    v17 = fmax(self->contentInsets.top + self->contentInsets.bottom + v16, 60.0);
    view = [(MenuContaineeViewController *)self view];
    [view setOverriddenIntrinsicHeight:v17];
    [view invalidateIntrinsicContentSize];
  }
}

- (void)setTrackedScrollview:(id)scrollview
{
  scrollviewCopy = scrollview;
  trackedScrollview = self->_trackedScrollview;
  if (trackedScrollview != scrollviewCopy)
  {
    v13 = scrollviewCopy;
    [(UIScrollView *)trackedScrollview removeObserver:self forKeyPath:@"contentSize"];
    objc_storeStrong(&self->_trackedScrollview, scrollview);
    [(UIScrollView *)self->_trackedScrollview addObserver:self forKeyPath:@"contentSize" options:1 context:&unk_10195E198];
    v7 = sub_10000FA08(self->_trackedScrollview);
    scrollviewCopy = v13;
    if (v7 == 5)
    {
      p_contentInsets = &self->contentInsets;
      [(UIScrollView *)v13 adjustedContentInset];
      scrollviewCopy = v13;
      p_contentInsets->top = v9;
      p_contentInsets->left = v10;
      p_contentInsets->bottom = v11;
      p_contentInsets->right = v12;
    }
  }
}

- (void)returnPressed:(id)pressed
{
  trackedScrollview = [(MenuContaineeViewController *)self trackedScrollview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    trackedScrollview2 = [(MenuContaineeViewController *)self trackedScrollview];
    indexPathForSelectedRow = [trackedScrollview2 indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      delegate = [trackedScrollview2 delegate];
      indexPathForSelectedRow2 = [trackedScrollview2 indexPathForSelectedRow];
      [delegate tableView:trackedScrollview2 didSelectRowAtIndexPath:indexPathForSelectedRow2];
    }
  }

  trackedScrollview3 = [(MenuContaineeViewController *)self trackedScrollview];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    trackedScrollview4 = [(MenuContaineeViewController *)self trackedScrollview];
    indexPathsForSelectedItems = [trackedScrollview4 indexPathsForSelectedItems];

    if (indexPathsForSelectedItems)
    {
      delegate2 = [trackedScrollview4 delegate];
      indexPathsForSelectedItems2 = [trackedScrollview4 indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems2 firstObject];
      [delegate2 collectionView:trackedScrollview4 didSelectItemAtIndexPath:firstObject];
    }
  }
}

- (void)escapePressed:(id)pressed
{
  macMenuPresentationController = [(ContaineeViewController *)self macMenuPresentationController];
  [macMenuPresentationController dismissAnimated:1 completion:0];
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
  view = [(MenuContaineeViewController *)self view];
  if (self->_contentViewController)
  {
    [(MenuContaineeViewController *)self addChildViewController:?];
    view2 = [(UIViewController *)self->_contentViewController view];
    [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  }

  else
  {
    view2 = self->_contentView;
  }

  [(UIView *)view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view bounds];
  [(UIView *)view2 setFrame:?];
  contentView = [view contentView];
  [contentView addSubview:view2];

  v6 = objc_alloc_init(NSMutableArray);
  contentView2 = [view contentView];
  LODWORD(v8) = 1148846080;
  v9 = [(UIView *)view2 _maps_constraintsEqualToEdgesOfView:contentView2 priority:v8];
  allConstraints = [v9 allConstraints];
  [v6 addObjectsFromArray:allConstraints];

  [NSLayoutConstraint activateConstraints:v6];
}

- (void)loadView
{
  initWithThickBlur = [[CardView alloc] initWithThickBlur];
  [(CardView *)initWithThickBlur setLayoutStyle:6];
  [(MenuContaineeViewController *)self setView:initWithThickBlur];
}

- (void)dealloc
{
  [(UIScrollView *)self->_trackedScrollview removeObserver:self forKeyPath:@"contentSize"];
  v3.receiver = self;
  v3.super_class = MenuContaineeViewController;
  [(MenuContaineeViewController *)&v3 dealloc];
}

- (MenuContaineeViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = MenuContaineeViewController;
  v6 = [(MenuContaineeViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, controller);
    [(ContaineeViewController *)v7 setPreferredPresentationStyle:4];
    v8 = *&UIEdgeInsetsZero.bottom;
    *&v7->contentInsets.top = *&UIEdgeInsetsZero.top;
    *&v7->contentInsets.bottom = v8;
  }

  return v7;
}

- (MenuContaineeViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = MenuContaineeViewController;
  v6 = [(MenuContaineeViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
    [(ContaineeViewController *)v7 setPreferredPresentationStyle:4];
    v8 = *&UIEdgeInsetsZero.bottom;
    *&v7->contentInsets.top = *&UIEdgeInsetsZero.top;
    *&v7->contentInsets.bottom = v8;
  }

  return v7;
}

@end
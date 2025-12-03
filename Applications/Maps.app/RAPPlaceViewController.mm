@interface RAPPlaceViewController
- (RAPPlaceViewController)initWithMapItem:(id)item;
- (void)viewDidLoad;
@end

@implementation RAPPlaceViewController

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = RAPPlaceViewController;
  [(RAPPlaceViewController *)&v35 viewDidLoad];
  name = [(MKMapItem *)self->_mapItem name];
  [(RAPPlaceViewController *)self setTitle:name];

  v4 = +[UIColor systemGroupedBackgroundColor];
  view = [(RAPPlaceViewController *)self view];
  [view setBackgroundColor:v4];

  v34 = objc_alloc_init(MUPlaceViewControllerConfiguration);
  [v34 setOptions:35658312];
  v6 = [[MUPlaceViewController alloc] initWithConfiguration:v34];
  placeViewController = self->_placeViewController;
  self->_placeViewController = v6;

  [(MUPlaceViewController *)self->_placeViewController setMapItem:self->_mapItem];
  view2 = [(MUPlaceViewController *)self->_placeViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(RAPPlaceViewController *)self addChildViewController:self->_placeViewController];
  view3 = [(RAPPlaceViewController *)self view];
  view4 = [(MUPlaceViewController *)self->_placeViewController view];
  [view3 addSubview:view4];

  [(MUPlaceViewController *)self->_placeViewController didMoveToParentViewController:self];
  view5 = [(MUPlaceViewController *)self->_placeViewController view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(RAPPlaceViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v29;
  view7 = [(MUPlaceViewController *)self->_placeViewController view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(RAPPlaceViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v24;
  view9 = [(MUPlaceViewController *)self->_placeViewController view];
  topAnchor = [view9 topAnchor];
  view10 = [(RAPPlaceViewController *)self view];
  topAnchor2 = [view10 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[2] = v13;
  view11 = [(MUPlaceViewController *)self->_placeViewController view];
  bottomAnchor = [view11 bottomAnchor];
  view12 = [(RAPPlaceViewController *)self view];
  bottomAnchor2 = [view12 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[3] = v18;
  v19 = [NSArray arrayWithObjects:v36 count:4];
  [NSLayoutConstraint activateConstraints:v19];

  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"actionButtonTapped:"];
  navigationItem = [(RAPPlaceViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v20];
}

- (RAPPlaceViewController)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = RAPPlaceViewController;
  v6 = [(RAPPlaceViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end
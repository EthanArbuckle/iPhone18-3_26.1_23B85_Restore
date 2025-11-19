@interface RAPPlaceViewController
- (RAPPlaceViewController)initWithMapItem:(id)a3;
- (void)viewDidLoad;
@end

@implementation RAPPlaceViewController

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = RAPPlaceViewController;
  [(RAPPlaceViewController *)&v35 viewDidLoad];
  v3 = [(MKMapItem *)self->_mapItem name];
  [(RAPPlaceViewController *)self setTitle:v3];

  v4 = +[UIColor systemGroupedBackgroundColor];
  v5 = [(RAPPlaceViewController *)self view];
  [v5 setBackgroundColor:v4];

  v34 = objc_alloc_init(MUPlaceViewControllerConfiguration);
  [v34 setOptions:35658312];
  v6 = [[MUPlaceViewController alloc] initWithConfiguration:v34];
  placeViewController = self->_placeViewController;
  self->_placeViewController = v6;

  [(MUPlaceViewController *)self->_placeViewController setMapItem:self->_mapItem];
  v8 = [(MUPlaceViewController *)self->_placeViewController view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(RAPPlaceViewController *)self addChildViewController:self->_placeViewController];
  v9 = [(RAPPlaceViewController *)self view];
  v10 = [(MUPlaceViewController *)self->_placeViewController view];
  [v9 addSubview:v10];

  [(MUPlaceViewController *)self->_placeViewController didMoveToParentViewController:self];
  v33 = [(MUPlaceViewController *)self->_placeViewController view];
  v31 = [v33 leadingAnchor];
  v32 = [(RAPPlaceViewController *)self view];
  v30 = [v32 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v36[0] = v29;
  v28 = [(MUPlaceViewController *)self->_placeViewController view];
  v26 = [v28 trailingAnchor];
  v27 = [(RAPPlaceViewController *)self view];
  v25 = [v27 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v36[1] = v24;
  v23 = [(MUPlaceViewController *)self->_placeViewController view];
  v22 = [v23 topAnchor];
  v11 = [(RAPPlaceViewController *)self view];
  v12 = [v11 topAnchor];
  v13 = [v22 constraintEqualToAnchor:v12];
  v36[2] = v13;
  v14 = [(MUPlaceViewController *)self->_placeViewController view];
  v15 = [v14 bottomAnchor];
  v16 = [(RAPPlaceViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v36[3] = v18;
  v19 = [NSArray arrayWithObjects:v36 count:4];
  [NSLayoutConstraint activateConstraints:v19];

  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"actionButtonTapped:"];
  v21 = [(RAPPlaceViewController *)self navigationItem];
  [v21 setRightBarButtonItem:v20];
}

- (RAPPlaceViewController)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPPlaceViewController;
  v6 = [(RAPPlaceViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end
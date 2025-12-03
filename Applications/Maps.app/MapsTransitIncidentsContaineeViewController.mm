@interface MapsTransitIncidentsContaineeViewController
- (MapsTransitIncidentsContaineeViewController)initWithTransitIncidents:(id)incidents;
- (void)macFooterViewRightButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation MapsTransitIncidentsContaineeViewController

- (void)macFooterViewRightButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];

  if (containeeDelegate)
  {
    rightButton = [tappedCopy rightButton];
    [(ContaineeViewController *)self handleDismissAction:rightButton];
  }

  else
  {
    [(MapsTransitIncidentsContaineeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidLoad
{
  v74.receiver = self;
  v74.super_class = MapsTransitIncidentsContaineeViewController;
  [(ContaineeViewController *)&v74 viewDidLoad];
  if (sub_10000FA08(self) == 5)
  {
    view = [(MapsTransitIncidentsContaineeViewController *)self view];
    v4 = [[ContainerHeaderView alloc] initWithCardButtonType:2];
    containerHeaderView = self->_containerHeaderView;
    self->_containerHeaderView = v4;

    [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
    incidentsTitle = [(MKIncidentsViewController *)self->_incidentsViewController incidentsTitle];
    [(ContainerHeaderView *)self->_containerHeaderView setTitle:incidentsTitle];

    [(ContainerHeaderView *)self->_containerHeaderView setButtonHidden:1];
    [view addSubview:self->_containerHeaderView];
    view2 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v63 = view;
    [view addSubview:view3];

    [(MapsTransitIncidentsContaineeViewController *)self addChildViewController:self->_incidentsViewController];
    v9 = [[MacFooterView alloc] initWithRightButtonType:8];
    footerView = self->_footerView;
    self->_footerView = v9;

    [(MacFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MacFooterView *)self->_footerView setRightButtonEnabled:1];
    [(MacFooterView *)self->_footerView setDelegate:self];
    v11 = +[UIColor secondarySystemBackgroundColor];
    [(MacFooterView *)self->_footerView setBackgroundColor:v11];

    [view addSubview:self->_footerView];
    leadingAnchor = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
    view4 = [(MapsTransitIncidentsContaineeViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v76[0] = v73;
    trailingAnchor = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
    view5 = [(MapsTransitIncidentsContaineeViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v69 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v76[1] = v69;
    topAnchor = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
    view6 = [(MapsTransitIncidentsContaineeViewController *)self view];
    topAnchor2 = [view6 topAnchor];
    v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v76[2] = v65;
    view7 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    leadingAnchor3 = [view7 leadingAnchor];
    view8 = [(MapsTransitIncidentsContaineeViewController *)self view];
    leadingAnchor4 = [view8 leadingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v76[3] = v58;
    view9 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    trailingAnchor3 = [view9 trailingAnchor];
    view10 = [(MapsTransitIncidentsContaineeViewController *)self view];
    trailingAnchor4 = [view10 trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v76[4] = v51;
    view11 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    topAnchor3 = [view11 topAnchor];
    bottomAnchor = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
    v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v76[5] = v47;
    topAnchor4 = [(MacFooterView *)self->_footerView topAnchor];
    view12 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    bottomAnchor2 = [view12 bottomAnchor];
    v43 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
    v76[6] = v43;
    bottomAnchor3 = [(MacFooterView *)self->_footerView bottomAnchor];
    view13 = [(MapsTransitIncidentsContaineeViewController *)self view];
    bottomAnchor4 = [view13 bottomAnchor];
    v12 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v76[7] = v12;
    leadingAnchor5 = [(MacFooterView *)self->_footerView leadingAnchor];
    view14 = [(MapsTransitIncidentsContaineeViewController *)self view];
    leadingAnchor6 = [view14 leadingAnchor];
    v16 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v76[8] = v16;
    trailingAnchor5 = [(MacFooterView *)self->_footerView trailingAnchor];
    view15 = [(MapsTransitIncidentsContaineeViewController *)self view];
    trailingAnchor6 = [view15 trailingAnchor];
    v20 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v76[9] = v20;
    v21 = [NSArray arrayWithObjects:v76 count:10];
    [NSLayoutConstraint activateConstraints:v21];

    incidentsTitle3 = view4;
    containerHeaderView = leadingAnchor2;

    v24 = v63;
    v25 = leadingAnchor;
  }

  else
  {
    v26 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
    v27 = self->_containerHeaderView;
    self->_containerHeaderView = v26;

    [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
    incidentsTitle2 = [(MKIncidentsViewController *)self->_incidentsViewController incidentsTitle];
    [(ContainerHeaderView *)self->_containerHeaderView setTitle:incidentsTitle2];

    [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
    view16 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    [view16 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(ContaineeViewController *)self contentView];
    view17 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    [contentView addSubview:view17];

    [(MapsTransitIncidentsContaineeViewController *)self addChildViewController:self->_incidentsViewController];
    v32 = [MUEdgeLayout alloc];
    view18 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    contentView2 = [(ContaineeViewController *)self contentView];
    v24 = [v32 initWithItem:view18 container:contentView2];

    headerView = [(ContaineeViewController *)self headerView];
    [headerView addSubview:self->_containerHeaderView];

    v36 = [MUEdgeLayout alloc];
    v37 = self->_containerHeaderView;
    headerView2 = [(ContaineeViewController *)self headerView];
    v25 = [v36 initWithItem:v37 container:headerView2];

    v75[0] = v24;
    v75[1] = v25;
    v39 = [NSArray arrayWithObjects:v75 count:2];
    [NSLayoutConstraint _mapsui_activateLayouts:v39];

    incidentsTitle3 = [(MKIncidentsViewController *)self->_incidentsViewController incidentsTitle];
    containerHeaderView = [(MapsTransitIncidentsContaineeViewController *)self containerHeaderView];
    [containerHeaderView setTitle:incidentsTitle3];
  }
}

- (MapsTransitIncidentsContaineeViewController)initWithTransitIncidents:(id)incidents
{
  incidentsCopy = incidents;
  v9.receiver = self;
  v9.super_class = MapsTransitIncidentsContaineeViewController;
  v5 = [(MapsTransitIncidentsContaineeViewController *)&v9 init];
  if (v5)
  {
    v6 = [[MapsIncidentsViewController alloc] initWithTransitIncidents:incidentsCopy];
    incidentsViewController = v5->_incidentsViewController;
    v5->_incidentsViewController = v6;
  }

  return v5;
}

@end
@interface MapsTransitIncidentsContaineeViewController
- (MapsTransitIncidentsContaineeViewController)initWithTransitIncidents:(id)a3;
- (void)macFooterViewRightButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation MapsTransitIncidentsContaineeViewController

- (void)macFooterViewRightButtonTapped:(id)a3
{
  v6 = a3;
  v4 = [(ContaineeViewController *)self containeeDelegate];

  if (v4)
  {
    v5 = [v6 rightButton];
    [(ContaineeViewController *)self handleDismissAction:v5];
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
    v3 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v4 = [[ContainerHeaderView alloc] initWithCardButtonType:2];
    containerHeaderView = self->_containerHeaderView;
    self->_containerHeaderView = v4;

    [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
    v6 = [(MKIncidentsViewController *)self->_incidentsViewController incidentsTitle];
    [(ContainerHeaderView *)self->_containerHeaderView setTitle:v6];

    [(ContainerHeaderView *)self->_containerHeaderView setButtonHidden:1];
    [v3 addSubview:self->_containerHeaderView];
    v7 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v63 = v3;
    [v3 addSubview:v8];

    [(MapsTransitIncidentsContaineeViewController *)self addChildViewController:self->_incidentsViewController];
    v9 = [[MacFooterView alloc] initWithRightButtonType:8];
    footerView = self->_footerView;
    self->_footerView = v9;

    [(MacFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MacFooterView *)self->_footerView setRightButtonEnabled:1];
    [(MacFooterView *)self->_footerView setDelegate:self];
    v11 = +[UIColor secondarySystemBackgroundColor];
    [(MacFooterView *)self->_footerView setBackgroundColor:v11];

    [v3 addSubview:self->_footerView];
    v60 = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
    v55 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v56 = [v55 leadingAnchor];
    v73 = [v60 constraintEqualToAnchor:v56];
    v76[0] = v73;
    v71 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
    v72 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v70 = [v72 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v76[1] = v69;
    v67 = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
    v68 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v66 = [v68 topAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v76[2] = v65;
    v64 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v61 = [v64 leadingAnchor];
    v62 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v59 = [v62 leadingAnchor];
    v58 = [v61 constraintEqualToAnchor:v59];
    v76[3] = v58;
    v57 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v53 = [v57 trailingAnchor];
    v54 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v52 = [v54 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v76[4] = v51;
    v50 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v49 = [v50 topAnchor];
    v48 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v76[5] = v47;
    v45 = [(MacFooterView *)self->_footerView topAnchor];
    v46 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v44 = [v46 bottomAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v76[6] = v43;
    v41 = [(MacFooterView *)self->_footerView bottomAnchor];
    v42 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v40 = [v42 bottomAnchor];
    v12 = [v41 constraintEqualToAnchor:v40];
    v76[7] = v12;
    v13 = [(MacFooterView *)self->_footerView leadingAnchor];
    v14 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v15 = [v14 leadingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v76[8] = v16;
    v17 = [(MacFooterView *)self->_footerView trailingAnchor];
    v18 = [(MapsTransitIncidentsContaineeViewController *)self view];
    v19 = [v18 trailingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v76[9] = v20;
    v21 = [NSArray arrayWithObjects:v76 count:10];
    [NSLayoutConstraint activateConstraints:v21];

    v22 = v55;
    v23 = v56;

    v24 = v63;
    v25 = v60;
  }

  else
  {
    v26 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
    v27 = self->_containerHeaderView;
    self->_containerHeaderView = v26;

    [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
    v28 = [(MKIncidentsViewController *)self->_incidentsViewController incidentsTitle];
    [(ContainerHeaderView *)self->_containerHeaderView setTitle:v28];

    [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
    v29 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(ContaineeViewController *)self contentView];
    v31 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    [v30 addSubview:v31];

    [(MapsTransitIncidentsContaineeViewController *)self addChildViewController:self->_incidentsViewController];
    v32 = [MUEdgeLayout alloc];
    v33 = [(MKIncidentsViewController *)self->_incidentsViewController view];
    v34 = [(ContaineeViewController *)self contentView];
    v24 = [v32 initWithItem:v33 container:v34];

    v35 = [(ContaineeViewController *)self headerView];
    [v35 addSubview:self->_containerHeaderView];

    v36 = [MUEdgeLayout alloc];
    v37 = self->_containerHeaderView;
    v38 = [(ContaineeViewController *)self headerView];
    v25 = [v36 initWithItem:v37 container:v38];

    v75[0] = v24;
    v75[1] = v25;
    v39 = [NSArray arrayWithObjects:v75 count:2];
    [NSLayoutConstraint _mapsui_activateLayouts:v39];

    v22 = [(MKIncidentsViewController *)self->_incidentsViewController incidentsTitle];
    v23 = [(MapsTransitIncidentsContaineeViewController *)self containerHeaderView];
    [v23 setTitle:v22];
  }
}

- (MapsTransitIncidentsContaineeViewController)initWithTransitIncidents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsTransitIncidentsContaineeViewController;
  v5 = [(MapsTransitIncidentsContaineeViewController *)&v9 init];
  if (v5)
  {
    v6 = [[MapsIncidentsViewController alloc] initWithTransitIncidents:v4];
    incidentsViewController = v5->_incidentsViewController;
    v5->_incidentsViewController = v6;
  }

  return v5;
}

@end
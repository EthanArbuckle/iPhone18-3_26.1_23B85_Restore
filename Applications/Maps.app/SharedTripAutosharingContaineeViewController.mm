@interface SharedTripAutosharingContaineeViewController
- (NSArray)contacts;
- (SharedTripAutosharingContaineeViewController)initWithContacts:(id)contacts;
- (SharedTripAutosharingContaineeViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addContact:(id)contact;
- (void)_deleteContact:(id)contact;
- (void)_updateImage:(id)image forContact:(id)contact;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)setContacts:(id)contacts;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SharedTripAutosharingContaineeViewController

- (SharedTripAutosharingContaineeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deleteContact:(id)contact
{
  v4 = [(NSMutableArray *)self->_contacts indexOfObject:contact];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_contacts removeObjectAtIndex:v4];
    tableView = self->_tableView;
    v7 = [NSIndexPath indexPathForRow:v5 inSection:0];
    v9 = v7;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [(UITableView *)tableView deleteRowsAtIndexPaths:v8 withRowAnimation:100];
  }
}

- (void)_addContact:(id)contact
{
  [(NSMutableArray *)self->_contacts addObject:contact];
  tableView = self->_tableView;
  v5 = [NSIndexPath indexPathForRow:[(NSMutableArray *)self->_contacts count]- 1 inSection:0];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v6 withRowAnimation:100];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  if (v8 >= [(NSMutableArray *)self->_contacts count])
  {
    objc_initWeak(&location, self);
    delegate = [(SharedTripAutosharingContaineeViewController *)self delegate];
    contacts = self->_contacts;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100CF5878;
    v14 = &unk_101650DD8;
    objc_copyWeak(&v15, &location);
    [delegate autosharingController:self wantsToSearchWithExistingContacts:contacts selectionHandler:&v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v11, v12, v13, v14}];
}

- (void)_updateImage:(id)image forContact:(id)contact
{
  imageCopy = image;
  v6 = [(NSMutableArray *)self->_contacts indexOfObject:contact];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = self->_tableView;
    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    v9 = [(UITableView *)tableView cellForRowAtIndexPath:v8];

    if (v9)
    {
      contentConfiguration = [v9 contentConfiguration];
      [contentConfiguration setImage:imageCopy];
      [v9 setContentConfiguration:contentConfiguration];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[UIListContentConfiguration cellConfiguration];
  [v7 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  imageProperties = [v7 imageProperties];
  [imageProperties setReservedLayoutSize:{35.0, 35.0}];

  v9 = [pathCopy row];
  if (v9 >= [(NSMutableArray *)self->_contacts count])
  {
    v36 = [viewCopy dequeueReusableCellWithIdentifier:@"AddPerson" forIndexPath:pathCopy];
    theme = [(SharedTripAutosharingContaineeViewController *)self theme];
    keyColor = [theme keyColor];
    v51[0] = keyColor;
    v26 = +[UIColor quaternarySystemFillColor];
    v51[1] = v26;
    v27 = [NSArray arrayWithObjects:v51 count:2];
    v28 = [UIImageSymbolConfiguration configurationWithPaletteColors:v27];

    v29 = [UIImageSymbolConfiguration configurationWithPointSize:35.0];
    v22 = [v28 configurationByApplyingConfiguration:v29];

    v12 = [UIImage systemImageNamed:@"magnifyingglass.circle.fill"];
    [v7 setImage:v12];
    imageProperties2 = [v7 imageProperties];
    [imageProperties2 setPreferredSymbolConfiguration:v22];

    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"[Share ETA value:Autosharing] Add Person" table:{@"localized string not found", 0}];
    [v7 setText:v32];

    theme2 = [(SharedTripAutosharingContaineeViewController *)self theme];
    keyColor2 = [theme2 keyColor];
    textProperties = [v7 textProperties];
    [textProperties setColor:keyColor2];
  }

  else
  {
    v36 = [viewCopy dequeueReusableCellWithIdentifier:@"Contact" forIndexPath:pathCopy];
    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_contacts, "objectAtIndexedSubscript:", [pathCopy row]);
    displayName = [v10 displayName];
    [v7 setText:displayName];

    v12 = +[UIButtonConfiguration plainButtonConfiguration];
    [v12 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
    theme2 = +[UIImageSymbolConfiguration configurationPreferringMonochrome];
    imageProperties3 = [v7 imageProperties];
    [imageProperties3 setPreferredSymbolConfiguration:theme2];

    keyColor2 = [UIImage systemImageNamed:@"minus.circle.fill"];
    [v12 setImage:keyColor2];
    objc_initWeak(&location, self);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100CF6010;
    v47[3] = &unk_101660418;
    objc_copyWeak(&v49, &location);
    v16 = v10;
    v48 = v16;
    v17 = [UIAction actionWithHandler:v47];
    v18 = [UIButton buttonWithConfiguration:v12 primaryAction:v17];

    v19 = +[UIColor systemRedColor];
    [v18 setTintColor:v19];

    [v18 sizeToFit];
    [v36 setAccessoryView:v18];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_100CF6064;
    v45 = sub_100CF6074;
    v46 = v7;
    v20 = +[MapsUIImageCache sharedCache];
    contact = [v16 contact];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100CF607C;
    v37[3] = &unk_101650DB0;
    objc_copyWeak(&v40, &location);
    v39 = &v41;
    v22 = v16;
    v38 = v22;
    [v20 getImageForContact:contact size:v37 completion:35.0];

    v23 = v42[5];
    v42[5] = 0;

    objc_destroyWeak(&v40);
    _Block_object_dispose(&v41, 8);

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  [v36 setContentConfiguration:v7];

  return v36;
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v6 = [(SharedTripAutosharingContaineeViewController *)self delegate:tapped];
  v5 = [(NSMutableArray *)self->_contacts copy];
  [v6 autosharingController:self didUpdateContacts:v5];
}

- (void)viewDidLoad
{
  v44.receiver = self;
  v44.super_class = SharedTripAutosharingContaineeViewController;
  [(ContaineeViewController *)&v44 viewDidLoad];
  v43 = objc_alloc_init(NSMutableArray);
  v3 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
  headerView = self->_headerView;
  self->_headerView = v3;

  [(ContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Share ETA value:Autosharing] Title" table:{@"localized string not found", 0}];
  [(ContainerHeaderView *)self->_headerView setTitle:v6];

  [(ContainerHeaderView *)self->_headerView setDelegate:self];
  [(ContainerHeaderView *)self->_headerView setHairLineAlpha:0.0];
  v7 = +[UIFont system28Bold];
  [(ContainerHeaderView *)self->_headerView setCustomTitleFont:v7];

  [(ContainerHeaderView *)self->_headerView setVerticalAlignmentOffset:4.0];
  view = [(SharedTripAutosharingContaineeViewController *)self view];
  [view addSubview:self->_headerView];

  v9 = [UITableView alloc];
  contentView = [(SharedTripAutosharingContaineeViewController *)self contentView];
  [contentView bounds];
  v11 = [v9 initWithFrame:2 style:?];
  tableView = self->_tableView;
  self->_tableView = v11;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v13 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v13];

  [(UITableView *)self->_tableView _setTopPadding:12.0];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Contact"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AddPerson"];
  view2 = [(SharedTripAutosharingContaineeViewController *)self view];
  [view2 addSubview:self->_tableView];

  topAnchor = [(ContainerHeaderView *)self->_headerView topAnchor];
  view3 = [(SharedTripAutosharingContaineeViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[0] = v39;
  leadingAnchor = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  view4 = [(SharedTripAutosharingContaineeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[1] = v35;
  view5 = [(SharedTripAutosharingContaineeViewController *)self view];
  trailingAnchor = [view5 trailingAnchor];
  trailingAnchor2 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[2] = v31;
  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor = [(ContainerHeaderView *)self->_headerView bottomAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v45[3] = v28;
  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  view6 = [(SharedTripAutosharingContaineeViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v45[4] = v15;
  view7 = [(SharedTripAutosharingContaineeViewController *)self view];
  trailingAnchor3 = [view7 trailingAnchor];
  trailingAnchor4 = [(UITableView *)self->_tableView trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v45[5] = v19;
  view8 = [(SharedTripAutosharingContaineeViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  bottomAnchor3 = [(UITableView *)self->_tableView bottomAnchor];
  v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v45[6] = v23;
  v24 = [NSArray arrayWithObjects:v45 count:7];
  [v43 addObjectsFromArray:v24];

  [NSLayoutConstraint activateConstraints:v43];
}

- (void)setContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  contacts = self->_contacts;
  self->_contacts = v4;

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (NSArray)contacts
{
  v2 = [(NSMutableArray *)self->_contacts copy];

  return v2;
}

- (SharedTripAutosharingContaineeViewController)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v9.receiver = self;
  v9.super_class = SharedTripAutosharingContaineeViewController;
  v5 = [(SharedTripAutosharingContaineeViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [contactsCopy mutableCopy];
    contacts = v5->_contacts;
    v5->_contacts = v6;
  }

  return v5;
}

@end
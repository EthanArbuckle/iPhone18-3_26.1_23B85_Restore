@interface SharedTripAutosharingContaineeViewController
- (NSArray)contacts;
- (SharedTripAutosharingContaineeViewController)initWithContacts:(id)a3;
- (SharedTripAutosharingContaineeViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addContact:(id)a3;
- (void)_deleteContact:(id)a3;
- (void)_updateImage:(id)a3 forContact:(id)a4;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)setContacts:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SharedTripAutosharingContaineeViewController

- (SharedTripAutosharingContaineeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deleteContact:(id)a3
{
  v4 = [(NSMutableArray *)self->_contacts indexOfObject:a3];
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

- (void)_addContact:(id)a3
{
  [(NSMutableArray *)self->_contacts addObject:a3];
  tableView = self->_tableView;
  v5 = [NSIndexPath indexPathForRow:[(NSMutableArray *)self->_contacts count]- 1 inSection:0];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v6 withRowAnimation:100];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 >= [(NSMutableArray *)self->_contacts count])
  {
    objc_initWeak(&location, self);
    v9 = [(SharedTripAutosharingContaineeViewController *)self delegate];
    contacts = self->_contacts;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100CF5878;
    v14 = &unk_101650DD8;
    objc_copyWeak(&v15, &location);
    [v9 autosharingController:self wantsToSearchWithExistingContacts:contacts selectionHandler:&v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  [v6 deselectRowAtIndexPath:v7 animated:{1, v11, v12, v13, v14}];
}

- (void)_updateImage:(id)a3 forContact:(id)a4
{
  v11 = a3;
  v6 = [(NSMutableArray *)self->_contacts indexOfObject:a4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = self->_tableView;
    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    v9 = [(UITableView *)tableView cellForRowAtIndexPath:v8];

    if (v9)
    {
      v10 = [v9 contentConfiguration];
      [v10 setImage:v11];
      [v9 setContentConfiguration:v10];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v35 = a3;
  v6 = a4;
  v7 = +[UIListContentConfiguration cellConfiguration];
  [v7 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  v8 = [v7 imageProperties];
  [v8 setReservedLayoutSize:{35.0, 35.0}];

  v9 = [v6 row];
  if (v9 >= [(NSMutableArray *)self->_contacts count])
  {
    v36 = [v35 dequeueReusableCellWithIdentifier:@"AddPerson" forIndexPath:v6];
    v24 = [(SharedTripAutosharingContaineeViewController *)self theme];
    v25 = [v24 keyColor];
    v51[0] = v25;
    v26 = +[UIColor quaternarySystemFillColor];
    v51[1] = v26;
    v27 = [NSArray arrayWithObjects:v51 count:2];
    v28 = [UIImageSymbolConfiguration configurationWithPaletteColors:v27];

    v29 = [UIImageSymbolConfiguration configurationWithPointSize:35.0];
    v22 = [v28 configurationByApplyingConfiguration:v29];

    v12 = [UIImage systemImageNamed:@"magnifyingglass.circle.fill"];
    [v7 setImage:v12];
    v30 = [v7 imageProperties];
    [v30 setPreferredSymbolConfiguration:v22];

    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"[Share ETA value:Autosharing] Add Person" table:{@"localized string not found", 0}];
    [v7 setText:v32];

    v13 = [(SharedTripAutosharingContaineeViewController *)self theme];
    v15 = [v13 keyColor];
    v33 = [v7 textProperties];
    [v33 setColor:v15];
  }

  else
  {
    v36 = [v35 dequeueReusableCellWithIdentifier:@"Contact" forIndexPath:v6];
    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_contacts, "objectAtIndexedSubscript:", [v6 row]);
    v11 = [v10 displayName];
    [v7 setText:v11];

    v12 = +[UIButtonConfiguration plainButtonConfiguration];
    [v12 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
    v13 = +[UIImageSymbolConfiguration configurationPreferringMonochrome];
    v14 = [v7 imageProperties];
    [v14 setPreferredSymbolConfiguration:v13];

    v15 = [UIImage systemImageNamed:@"minus.circle.fill"];
    [v12 setImage:v15];
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
    v21 = [v16 contact];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100CF607C;
    v37[3] = &unk_101650DB0;
    objc_copyWeak(&v40, &location);
    v39 = &v41;
    v22 = v16;
    v38 = v22;
    [v20 getImageForContact:v21 size:v37 completion:35.0];

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

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v6 = [(SharedTripAutosharingContaineeViewController *)self delegate:a3];
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
  v8 = [(SharedTripAutosharingContaineeViewController *)self view];
  [v8 addSubview:self->_headerView];

  v9 = [UITableView alloc];
  v10 = [(SharedTripAutosharingContaineeViewController *)self contentView];
  [v10 bounds];
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
  v14 = [(SharedTripAutosharingContaineeViewController *)self view];
  [v14 addSubview:self->_tableView];

  v41 = [(ContainerHeaderView *)self->_headerView topAnchor];
  v42 = [(SharedTripAutosharingContaineeViewController *)self view];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v45[0] = v39;
  v37 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  v38 = [(SharedTripAutosharingContaineeViewController *)self view];
  v36 = [v38 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v45[1] = v35;
  v34 = [(SharedTripAutosharingContaineeViewController *)self view];
  v33 = [v34 trailingAnchor];
  v32 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v45[2] = v31;
  v30 = [(UITableView *)self->_tableView topAnchor];
  v29 = [(ContainerHeaderView *)self->_headerView bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v45[3] = v28;
  v26 = [(UITableView *)self->_tableView leadingAnchor];
  v27 = [(SharedTripAutosharingContaineeViewController *)self view];
  v25 = [v27 leadingAnchor];
  v15 = [v26 constraintEqualToAnchor:v25];
  v45[4] = v15;
  v16 = [(SharedTripAutosharingContaineeViewController *)self view];
  v17 = [v16 trailingAnchor];
  v18 = [(UITableView *)self->_tableView trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v45[5] = v19;
  v20 = [(SharedTripAutosharingContaineeViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [(UITableView *)self->_tableView bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v45[6] = v23;
  v24 = [NSArray arrayWithObjects:v45 count:7];
  [v43 addObjectsFromArray:v24];

  [NSLayoutConstraint activateConstraints:v43];
}

- (void)setContacts:(id)a3
{
  v4 = [a3 mutableCopy];
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

- (SharedTripAutosharingContaineeViewController)initWithContacts:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SharedTripAutosharingContaineeViewController;
  v5 = [(SharedTripAutosharingContaineeViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    contacts = v5->_contacts;
    v5->_contacts = v6;
  }

  return v5;
}

@end
@interface HKBridgeSetupEmergencyContactsController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKBridgeSetupEmergencyContactsController)initWithConfiguration:(id)configuration;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addEmergencyContactToData:(id)data;
- (void)_presentEmergencyContactPicker;
- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact;
- (void)emergencyContactFlowDidCancel:(id)cancel;
- (void)emergencyContactRelationshipPicker:(id)picker didChooseRelationshipNamed:(id)named;
- (void)emergencyContactRelationshipPickerDidCancel:(id)cancel;
- (void)suggestedButtonPressed:(id)pressed;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTableViewHeight;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HKBridgeSetupEmergencyContactsController

- (HKBridgeSetupEmergencyContactsController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v42 = [NSBundle bundleForClass:objc_opt_class()];
  v40 = [v42 localizedStringForKey:@"TINKER_EMERGENCY_CONTACTS_TITLE_%@" value:&stru_C4D8 table:@"Localizable-tinker"];
  familyMember = [configurationCopy familyMember];
  firstName = [familyMember firstName];
  v5 = [NSString stringWithFormat:v40, firstName];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TINKER_EMERGENCY_CONTACTS_DETAIL_%@_%@" value:&stru_C4D8 table:@"Localizable-tinker"];
  familyMember2 = [configurationCopy familyMember];
  firstName2 = [familyMember2 firstName];
  familyMember3 = [configurationCopy familyMember];
  firstName3 = [familyMember3 firstName];
  v12 = [NSString stringWithFormat:v7, firstName2, firstName3];
  v43.receiver = self;
  v43.super_class = HKBridgeSetupEmergencyContactsController;
  v13 = [(HKBridgeSetupEmergencyContactsController *)&v43 initWithTitle:v5 detailText:v12 icon:0 adoptTableViewScrollView:0];

  if (v13)
  {
    v14 = [configurationCopy copy];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    healthStore = [(_HKBridgeSetupConfiguration *)v13->_configuration healthStore];
    healthStore = v13->_healthStore;
    v13->_healthStore = healthStore;

    medicalIDStore = [(_HKBridgeSetupConfiguration *)v13->_configuration medicalIDStore];
    medicalIDStore = v13->_medicalIDStore;
    v13->_medicalIDStore = medicalIDStore;

    v20 = objc_alloc_init(_HKMedicalIDData);
    medicalIDData = v13->_medicalIDData;
    v13->_medicalIDData = v20;

    v13->_tableViewHeight = 0.0;
    v22 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(HKBridgeSetupEmergencyContactsController *)v13 setTableView:v22];

    tableView = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView setDataSource:v13];

    tableView2 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView2 setDelegate:v13];

    tableView3 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = +[UIColor clearColor];
    tableView4 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView4 setBackgroundColor:v26];

    v28 = objc_alloc_init(UIView);
    tableView5 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView5 setTableHeaderView:v28];

    v30 = objc_alloc_init(UIView);
    tableView6 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView6 setTableFooterView:v30];

    tableView7 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    heightAnchor = [tableView7 heightAnchor];
    tableView8 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [tableView8 contentSize];
    v36 = [heightAnchor constraintEqualToConstant:v35];
    tableHeightAnchor = v13->_tableHeightAnchor;
    v13->_tableHeightAnchor = v36;

    [(NSLayoutConstraint *)v13->_tableHeightAnchor setActive:1];
  }

  return v13;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HKBridgeSetupEmergencyContactsController;
  [(HKBridgeSetupEmergencyContactsController *)&v8 viewDidLoad];
  [(_HKMedicalIDData *)self->_medicalIDData updateEmergencyContactsAutopopulateForSecondaryProfileIfEmpty:1];
  v3 = +[OBBoldTrayButton boldButton];
  v4 = BPSPillSelectedColor();
  [v3 setTintColor:v4];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HEALTH_SUGGESTED_BUTTON_CONTINUE" value:&stru_C4D8 table:@"Localizable-tinker"];
  [v3 setTitle:v6 forState:0];

  [v3 addTarget:self action:"suggestedButtonPressed:" forControlEvents:64];
  buttonTray = [(HKBridgeSetupEmergencyContactsController *)self buttonTray];
  [buttonTray addButton:v3];
}

- (void)viewDidLayoutSubviews
{
  tableView = [(HKBridgeSetupEmergencyContactsController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  tableViewHeight = self->_tableViewHeight;

  if (v5 != tableViewHeight)
  {
    [(HKBridgeSetupEmergencyContactsController *)self updateTableViewHeight];
  }

  v7.receiver = self;
  v7.super_class = HKBridgeSetupEmergencyContactsController;
  [(HKBridgeSetupEmergencyContactsController *)&v7 viewDidLayoutSubviews];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  v10 = [emergencyContacts count];

  if (v8 == v10)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"HKBridgeSetupAddContactTableViewCellIdentifier"];

    if (!v11)
    {
      v11 = [[HKBridgeSetupAddContactCell alloc] initWithStyle:0 reuseIdentifier:@"HKBridgeSetupAddContactTableViewCellIdentifier"];
    }
  }

  else
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"HKBridgeSetupContactTableViewCellIdentifier"];

    if (!v11)
    {
      v11 = [[HKBridgeSetupContactCell alloc] initWithStyle:1 reuseIdentifier:@"HKBridgeSetupContactTableViewCellIdentifier"];
    }

    emergencyContacts2 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v13 = [emergencyContacts2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    name = [v13 name];
    textLabel = [(HKBridgeSetupAddContactCell *)v11 textLabel];
    [textLabel setText:name];

    phoneNumber = [v13 phoneNumber];
    detailTextLabel = [(HKBridgeSetupAddContactCell *)v11 detailTextLabel];
    [detailTextLabel setText:phoneNumber];
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [path row];
  emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  v7 = [emergencyContacts count];

  if (v5 == v7)
  {

    [(HKBridgeSetupEmergencyContactsController *)self _presentEmergencyContactPicker];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [path row];
  emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  v7 = v5 != [emergencyContacts count];

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = pathCopy;
  if (style == 1)
  {
    v11 = [pathCopy row];
    emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v13 = [emergencyContacts count];

    if (v11 != v13)
    {
      emergencyContacts2 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
      v15 = [NSMutableArray arrayWithArray:emergencyContacts2];

      [v15 removeObjectAtIndex:{objc_msgSend(v10, "row")}];
      [(_HKMedicalIDData *)self->_medicalIDData setEmergencyContacts:v15];
      [viewCopy beginUpdates];
      v17 = v10;
      v16 = [NSArray arrayWithObjects:&v17 count:1];
      [viewCopy deleteRowsAtIndexPaths:v16 withRowAnimation:0];

      [viewCopy endUpdates];
    }
  }
}

- (void)suggestedButtonPressed:(id)pressed
{
  [(HKMedicalIDStore *)self->_medicalIDStore updateMedicalIDData:self->_medicalIDData completion:0];
  miniFlowDelegate = [(HKBridgeSetupEmergencyContactsController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)emergencyContactRelationshipPicker:(id)picker didChooseRelationshipNamed:(id)named
{
  [(_HKEmergencyContact *)self->_selectedContact setRelationship:named];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  presentedViewController = [(HKBridgeSetupEmergencyContactsController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)emergencyContactRelationshipPickerDidCancel:(id)cancel
{
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  presentedViewController = [(HKBridgeSetupEmergencyContactsController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact
{
  [(HKBridgeSetupEmergencyContactsController *)self _addEmergencyContactToData:contact];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
}

- (void)emergencyContactFlowDidCancel:(id)cancel
{
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
  _objc_release_x1();
}

- (void)updateTableViewHeight
{
  view = [(HKBridgeSetupEmergencyContactsController *)self view];
  [view layoutIfNeeded];

  tableView = [(HKBridgeSetupEmergencyContactsController *)self tableView];
  [tableView contentSize];
  self->_tableViewHeight = v5;

  tableViewHeight = self->_tableViewHeight;
  tableHeightAnchor = self->_tableHeightAnchor;

  [(NSLayoutConstraint *)tableHeightAnchor setConstant:tableViewHeight];
}

- (void)_presentEmergencyContactPicker
{
  v3 = [[HKMedicalIDEmergencyContactFlow alloc] initWithPresentingViewController:self forMedicalIDData:self->_medicalIDData];
  contactPicker = self->_contactPicker;
  self->_contactPicker = v3;

  [(HKMedicalIDEmergencyContactFlow *)self->_contactPicker setIsSecondaryProfile:1];
  [(HKMedicalIDEmergencyContactFlow *)self->_contactPicker setDelegate:self];
  v5 = self->_contactPicker;

  [(HKMedicalIDEmergencyContactFlow *)v5 presentEmergencyContactFlow];
}

- (void)_addEmergencyContactToData:(id)data
{
  dataCopy = data;
  emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  if (emergencyContacts)
  {
    v6 = emergencyContacts;
    v7 = [emergencyContacts arrayByAddingObject:dataCopy];
  }

  else
  {
    v9 = dataCopy;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  [(_HKMedicalIDData *)self->_medicalIDData setEmergencyContacts:v7];
  [(HKMedicalIDStore *)self->_medicalIDStore updateMedicalIDData:self->_medicalIDData completion:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3818;
  block[3] = &unk_C400;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
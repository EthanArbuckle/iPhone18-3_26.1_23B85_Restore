@interface HKBridgeSetupEmergencyContactsController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKBridgeSetupEmergencyContactsController)initWithConfiguration:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addEmergencyContactToData:(id)a3;
- (void)_presentEmergencyContactPicker;
- (void)emergencyContactFlow:(id)a3 didSelectContact:(id)a4;
- (void)emergencyContactFlowDidCancel:(id)a3;
- (void)emergencyContactRelationshipPicker:(id)a3 didChooseRelationshipNamed:(id)a4;
- (void)emergencyContactRelationshipPickerDidCancel:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTableViewHeight;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HKBridgeSetupEmergencyContactsController

- (HKBridgeSetupEmergencyContactsController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v42 = [NSBundle bundleForClass:objc_opt_class()];
  v40 = [v42 localizedStringForKey:@"TINKER_EMERGENCY_CONTACTS_TITLE_%@" value:&stru_C4D8 table:@"Localizable-tinker"];
  v41 = [v4 familyMember];
  v39 = [v41 firstName];
  v5 = [NSString stringWithFormat:v40, v39];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TINKER_EMERGENCY_CONTACTS_DETAIL_%@_%@" value:&stru_C4D8 table:@"Localizable-tinker"];
  v8 = [v4 familyMember];
  v9 = [v8 firstName];
  v10 = [v4 familyMember];
  v11 = [v10 firstName];
  v12 = [NSString stringWithFormat:v7, v9, v11];
  v43.receiver = self;
  v43.super_class = HKBridgeSetupEmergencyContactsController;
  v13 = [(HKBridgeSetupEmergencyContactsController *)&v43 initWithTitle:v5 detailText:v12 icon:0 adoptTableViewScrollView:0];

  if (v13)
  {
    v14 = [v4 copy];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    v16 = [(_HKBridgeSetupConfiguration *)v13->_configuration healthStore];
    healthStore = v13->_healthStore;
    v13->_healthStore = v16;

    v18 = [(_HKBridgeSetupConfiguration *)v13->_configuration medicalIDStore];
    medicalIDStore = v13->_medicalIDStore;
    v13->_medicalIDStore = v18;

    v20 = objc_alloc_init(_HKMedicalIDData);
    medicalIDData = v13->_medicalIDData;
    v13->_medicalIDData = v20;

    v13->_tableViewHeight = 0.0;
    v22 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(HKBridgeSetupEmergencyContactsController *)v13 setTableView:v22];

    v23 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v23 setDataSource:v13];

    v24 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v24 setDelegate:v13];

    v25 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = +[UIColor clearColor];
    v27 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v27 setBackgroundColor:v26];

    v28 = objc_alloc_init(UIView);
    v29 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v29 setTableHeaderView:v28];

    v30 = objc_alloc_init(UIView);
    v31 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v31 setTableFooterView:v30];

    v32 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    v33 = [v32 heightAnchor];
    v34 = [(HKBridgeSetupEmergencyContactsController *)v13 tableView];
    [v34 contentSize];
    v36 = [v33 constraintEqualToConstant:v35];
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
  v7 = [(HKBridgeSetupEmergencyContactsController *)self buttonTray];
  [v7 addButton:v3];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(HKBridgeSetupEmergencyContactsController *)self tableView];
  [v3 contentSize];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts:a3];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 row];
  v9 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  v10 = [v9 count];

  if (v8 == v10)
  {
    v11 = [v7 dequeueReusableCellWithIdentifier:@"HKBridgeSetupAddContactTableViewCellIdentifier"];

    if (!v11)
    {
      v11 = [[HKBridgeSetupAddContactCell alloc] initWithStyle:0 reuseIdentifier:@"HKBridgeSetupAddContactTableViewCellIdentifier"];
    }
  }

  else
  {
    v11 = [v7 dequeueReusableCellWithIdentifier:@"HKBridgeSetupContactTableViewCellIdentifier"];

    if (!v11)
    {
      v11 = [[HKBridgeSetupContactCell alloc] initWithStyle:1 reuseIdentifier:@"HKBridgeSetupContactTableViewCellIdentifier"];
    }

    v12 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v14 = [v13 name];
    v15 = [(HKBridgeSetupAddContactCell *)v11 textLabel];
    [v15 setText:v14];

    v16 = [v13 phoneNumber];
    v17 = [(HKBridgeSetupAddContactCell *)v11 detailTextLabel];
    [v17 setText:v16];
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  v6 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  v7 = [v6 count];

  if (v5 == v7)
  {

    [(HKBridgeSetupEmergencyContactsController *)self _presentEmergencyContactPicker];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  v6 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  v7 = v5 != [v6 count];

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 1)
  {
    v11 = [v9 row];
    v12 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v13 = [v12 count];

    if (v11 != v13)
    {
      v14 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
      v15 = [NSMutableArray arrayWithArray:v14];

      [v15 removeObjectAtIndex:{objc_msgSend(v10, "row")}];
      [(_HKMedicalIDData *)self->_medicalIDData setEmergencyContacts:v15];
      [v8 beginUpdates];
      v17 = v10;
      v16 = [NSArray arrayWithObjects:&v17 count:1];
      [v8 deleteRowsAtIndexPaths:v16 withRowAnimation:0];

      [v8 endUpdates];
    }
  }
}

- (void)suggestedButtonPressed:(id)a3
{
  [(HKMedicalIDStore *)self->_medicalIDStore updateMedicalIDData:self->_medicalIDData completion:0];
  v4 = [(HKBridgeSetupEmergencyContactsController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (void)emergencyContactRelationshipPicker:(id)a3 didChooseRelationshipNamed:(id)a4
{
  [(_HKEmergencyContact *)self->_selectedContact setRelationship:a4];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  v6 = [(HKBridgeSetupEmergencyContactsController *)self presentedViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)emergencyContactRelationshipPickerDidCancel:(id)a3
{
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;

  v5 = [(HKBridgeSetupEmergencyContactsController *)self presentedViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)emergencyContactFlow:(id)a3 didSelectContact:(id)a4
{
  [(HKBridgeSetupEmergencyContactsController *)self _addEmergencyContactToData:a4];
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
}

- (void)emergencyContactFlowDidCancel:(id)a3
{
  selectedContact = self->_selectedContact;
  self->_selectedContact = 0;
  _objc_release_x1();
}

- (void)updateTableViewHeight
{
  v3 = [(HKBridgeSetupEmergencyContactsController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(HKBridgeSetupEmergencyContactsController *)self tableView];
  [v4 contentSize];
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

- (void)_addEmergencyContactToData:(id)a3
{
  v4 = a3;
  v5 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 arrayByAddingObject:v4];
  }

  else
  {
    v9 = v4;
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
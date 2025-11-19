@interface CKVettingAddressSelectionController
- (CKVettingAddressSelectionController)init;
- (CKVettingAddressSelectionController)initWithParameters:(id)a3;
- (CKVettingAddressSelectionController)initWithParticipants:(id)a3 sharedItem:(id)a4 shareURL:(id)a5;
- (id)_buttonWithText:(id)a3 maxWidth:(double)a4;
- (id)_labelWithText:(id)a3 maxWidth:(double)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_initiateVettingForParticipantID:(id)a3 address:(id)a4 andThen:(id)a5;
- (void)_setupBarButtons;
- (void)_setupSectionFooter:(id)a3;
- (void)_setupSectionHeader:(id)a3;
- (void)_showInitiateFailureAlert:(id)a3 shareTitle:(id)a4 cell:(id)a5;
- (void)fetchShareMetadata:(id)a3 andThen:(id)a4;
- (void)handleCancel;
- (void)handleSelectedCell:(id)a3;
- (void)handleSendEmail;
- (void)setParameters:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CKVettingAddressSelectionController

- (CKVettingAddressSelectionController)init
{
  v7.receiver = self;
  v7.super_class = CKVettingAddressSelectionController;
  v2 = [(CKVettingAddressSelectionController *)&v7 initWithStyle:1];
  v3 = v2;
  if (v2)
  {
    [(CKVettingAddressSelectionController *)v2 setSelectedRowPath:0];
    v4 = [(CKVettingAddressSelectionController *)v3 tableView];
    [v4 setSectionHeaderHeight:0.0];

    v5 = [(CKVettingAddressSelectionController *)v3 tableView];
    [v5 setSectionFooterHeight:0.0];
  }

  return v3;
}

- (CKVettingAddressSelectionController)initWithParticipants:(id)a3 sharedItem:(id)a4 shareURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKVettingAddressSelectionController *)self init];
  v12 = v11;
  if (v11)
  {
    [(CKVettingAddressSelectionController *)v11 setTripples:v8];
    [(CKVettingAddressSelectionController *)v12 setSharedItem:v9];
    [(CKVettingAddressSelectionController *)v12 setShareURL:v10];
  }

  return v12;
}

- (CKVettingAddressSelectionController)initWithParameters:(id)a3
{
  v4 = a3;
  if ([v4 count] == &dword_0 + 3)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [v4 objectAtIndexedSubscript:2];
    self = [(CKVettingAddressSelectionController *)self initWithParticipants:v5 sharedItem:v6 shareURL:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setParameters:(id)a3
{
  v9 = a3;
  if ([v9 count] != &dword_0 + 3)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CKVettingAddressSelectionController.m" lineNumber:138 description:{@"Expected an array of 3 items, actual array: %@", v9}];
  }

  v5 = [v9 objectAtIndexedSubscript:0];
  [(CKVettingAddressSelectionController *)self setTripples:v5];

  v6 = [v9 objectAtIndexedSubscript:1];
  [(CKVettingAddressSelectionController *)self setSharedItem:v6];

  v7 = [v9 objectAtIndexedSubscript:2];
  [(CKVettingAddressSelectionController *)self setShareURL:v7];
}

- (void)handleCancel
{
  v2 = [(CKVettingAddressSelectionController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)handleSendEmail
{
  v3 = [(CKVettingAddressSelectionController *)self selectedRowPath];

  if (v3)
  {
    v4 = [(CKVettingAddressSelectionController *)self tableView];
    v5 = [(CKVettingAddressSelectionController *)self selectedRowPath];
    v6 = [v4 cellForRowAtIndexPath:v5];

    [(CKVettingAddressSelectionController *)self handleSelectedCell:v6];
  }
}

- (void)handleSelectedCell:(id)a3
{
  v4 = a3;
  [v4 startSpinner];
  objc_initWeak(&location, self);
  v5 = [(CKVettingAddressSelectionController *)self shareURL];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9A34;
  v7[3] = &unk_14880;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(CKVettingAddressSelectionController *)self fetchShareMetadata:v5 andThen:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_showInitiateFailureAlert:(id)a3 shareTitle:(id)a4 cell:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 email];
  v11 = [v10 length] != 0;

  v12 = [v7 address];

  v13 = [CKVettingAlerts alertContentForInitiateVettingError:v9 shareTitle:v8 isEmail:v11 address:v12];

  [CKVettingAlerts showFailureAlert:v13 isSourceICS:0];
}

- (void)fetchShareMetadata:(id)a3 andThen:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CKFetchShareMetadataOperation alloc];
  v22 = v6;
  v9 = [NSArray arrayWithObjects:&v22 count:1];
  v10 = [v8 initWithShareURLs:v9];

  v11 = [v10 configuration];
  [v11 setDiscretionaryNetworkBehavior:0];

  v12 = [v10 configuration];
  [v12 setAutomaticallyRetryNetworkFailures:0];

  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_A258;
  v19[3] = &unk_148A8;
  objc_copyWeak(&v20, &location);
  [v10 setPerShareMetadataBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_A2B4;
  v17[3] = &unk_148D0;
  v13 = v7;
  v18 = v13;
  [v10 setFetchShareMetadataCompletionBlock:v17];
  v14 = [[CKContainerID alloc] initWithContainerIdentifier:@"com.apple.cloudkit" environment:1];
  v15 = [[CKContainer alloc] initWithContainerID:v14];
  [(CKVettingAddressSelectionController *)self setClouddContainer:v15];

  v16 = [(CKVettingAddressSelectionController *)self clouddContainer];
  [v16 addOperation:v10];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_initiateVettingForParticipantID:(id)a3 address:(id)a4 andThen:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_A540;
  v26[4] = sub_A550;
  v27 = 0;
  v11 = [CKInitiateParticipantVettingOperation alloc];
  v12 = [(CKVettingAddressSelectionController *)self shareMetadata];
  v13 = [v11 initWithShareMetadata:v12 participantID:v8 address:v9];

  v14 = [v13 configuration];
  [v14 setDiscretionaryNetworkBehavior:0];

  v15 = [v13 configuration];
  [v15 setAutomaticallyRetryNetworkFailures:0];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_A558;
  v25[3] = &unk_148F8;
  v25[4] = v26;
  [v13 setParticipantVettingInitiatedBlock:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_A568;
  v22[3] = &unk_14920;
  v24 = v26;
  v16 = v10;
  v23 = v16;
  [v13 setParticipantVettingInitiationCompletionBlock:v22];
  v17 = [CKContainer alloc];
  v18 = [(CKVettingAddressSelectionController *)self shareMetadata];
  v19 = [v18 containerID];
  v20 = [v17 initWithContainerID:v19];
  [(CKVettingAddressSelectionController *)self setMetadataIndicatedContainer:v20];

  v21 = [(CKVettingAddressSelectionController *)self metadataIndicatedContainer];
  [v21 addOperation:v13];

  _Block_object_dispose(v26, 8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a4;
  v5 = [(CKVettingAddressSelectionController *)self selectedRowPath];
  v6 = [v5 isEqual:v19];

  if ((v6 & 1) == 0)
  {
    v7 = [(CKVettingAddressSelectionController *)self selectedRowPath];

    if (!v7)
    {
      v8 = +[UIDevice currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if (v9)
      {
        v10 = [(CKVettingAddressSelectionController *)self sendEmailBarButton];
        v11 = [(CKVettingAddressSelectionController *)self navigationController];
        v12 = [v11 topViewController];
        v13 = [v12 navigationItem];
        [v13 setRightBarButtonItem:v10];
      }

      else
      {
        v10 = [(CKVettingAddressSelectionController *)self sendEmailButton];
        [v10 setEnabled:1];
      }
    }

    v14 = [(CKVettingAddressSelectionController *)self tableView];
    v15 = [(CKVettingAddressSelectionController *)self selectedRowPath];
    v16 = [v14 cellForRowAtIndexPath:v15];

    [v16 deselect];
    v17 = [(CKVettingAddressSelectionController *)self tableView];
    v18 = [v17 cellForRowAtIndexPath:v19];

    [v18 select];
    [(CKVettingAddressSelectionController *)self setSelectedRowPath:v19];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CKVettingAddressSelectionController *)self tripples:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKVettingAddressSelectionController *)self tripples];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [(CKVettingAddressSelectionController *)self tripples];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v11 = [v10 objectAtIndexedSubscript:1];

  v12 = [(CKVettingAddressSelectionController *)self tripples];
  v13 = [v5 row];

  v14 = [v12 objectAtIndexedSubscript:v13];
  v15 = [v14 objectAtIndexedSubscript:2];

  v16 = [[CKVettingAddressSelectionTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  [(CKVettingAddressSelectionTableViewCell *)v16 setSelectionStyle:0];
  [(CKVettingAddressSelectionTableViewCell *)v16 setParticipantID:v8];
  [(CKVettingAddressSelectionTableViewCell *)v16 setEmail:v11];
  [(CKVettingAddressSelectionTableViewCell *)v16 setNumber:v15];
  v17 = [(CKVettingAddressSelectionTableViewCell *)v16 address];
  v18 = [(CKVettingAddressSelectionTableViewCell *)v16 textLabel];
  [v18 setText:v17];

  return v16;
}

- (void)_setupBarButtons
{
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"handleCancel"];
  v3 = [(CKVettingAddressSelectionController *)self navigationController];
  v4 = [v3 topViewController];
  v5 = [v4 navigationItem];
  [v5 setLeftBarButtonItem:v15];

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    v8 = [UIBarButtonItem alloc];
    v9 = sub_16B8(@"CLOUDKIT_VETTING_FOOTER_SEND_EMAIL", &stru_14980);
    v10 = [v8 initWithTitle:v9 style:2 target:self action:"handleSendEmail"];

    [(CKVettingAddressSelectionController *)self setSendEmailBarButton:v10];
  }

  else
  {
    v10 = [(CKVettingAddressSelectionController *)self navigationController];
    v11 = [v10 topViewController];
    v12 = [v11 navigationItem];
    [v12 setRightBarButtonItem:0];
  }

  v13 = sub_16B8(@"CLOUDKIT_VETTING_TITLE", &stru_14980);
  v14 = [(CKVettingAddressSelectionController *)self navigationItem];
  [v14 setTitle:v13];
}

- (id)_labelWithText:(id)a3 maxWidth:(double)a4
{
  v5 = a3;
  v6 = [[UILabel alloc] initWithFrame:{0.0, 0.0, a4, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:v5];

  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];

  return v6;
}

- (id)_buttonWithText:(id)a3 maxWidth:(double)a4
{
  v5 = a3;
  v6 = [UIButton buttonWithType:1];
  [v6 setFrame:{0.0, 0.0, a4, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTitle:v5 forState:0];

  return v6;
}

- (void)_setupSectionHeader:(id)a3
{
  v4 = [@"CLOUDKIT_VETTING_HEADER_" stringByAppendingString:a3];
  v24 = [(CKVettingAddressSelectionController *)self sharedItem];
  v5 = sub_16B8(v4, @"%@");

  v6 = [(CKVettingAddressSelectionController *)self tableView];
  [v6 frame];
  v8 = [(CKVettingAddressSelectionController *)self _labelWithText:v5 maxWidth:v7 + -16.0];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v8 setFont:v9];

  v10 = +[UIColor labelColor];
  [v8 setTextColor:v10];

  [v8 frame];
  [v8 sizeThatFits:{v11, v12}];
  v25[0] = @"textHeight";
  v14 = [NSNumber numberWithDouble:v13];
  v25[1] = @"padding";
  v26[0] = v14;
  v26[1] = &off_16380;
  v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  v16 = [UIView alloc];
  v17 = [(CKVettingAddressSelectionController *)self tableView];
  [v17 frame];
  v18 = [v16 initWithFrame:{0.0, 0.0}];

  [v18 addSubview:v8];
  v19 = _NSDictionaryOfVariableBindings(@"t", v8, 0);
  v20 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(padding)-[t]-(padding)-|", 0, v15, v19);
  [v18 addConstraints:v20];

  v21 = [NSLayoutConstraint constraintWithItem:v8 attribute:9 relatedBy:0 toItem:v18 attribute:9 multiplier:1.0 constant:0.0];
  [v18 addConstraint:v21];

  v22 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(padding)-[t(textHeight)]-(padding)-|", 0, v15, v19);
  [v18 addConstraints:v22];

  [v18 setNeedsLayout];
  v23 = [(CKVettingAddressSelectionController *)self tableView];
  [v23 setTableHeaderView:v18];
}

- (void)_setupSectionFooter:(id)a3
{
  v4 = a3;
  v5 = [(CKVettingAddressSelectionController *)self tableView];
  [v5 frame];
  v7 = v6 + -16.0;

  v8 = [@"CLOUDKIT_VETTING_FOOTER_TEXT_" stringByAppendingString:v4];

  v9 = sub_16B8(v8, &stru_14980);
  v10 = [(CKVettingAddressSelectionController *)self _labelWithText:v9 maxWidth:v7];

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v10 setFont:v11];

  v12 = +[UIColor secondaryLabelColor];
  [v10 setTextColor:v12];

  v13 = sub_16B8(@"CLOUDKIT_VETTING_FOOTER_SEND_EMAIL", &stru_14980);
  v14 = [(CKVettingAddressSelectionController *)self _buttonWithText:v13 maxWidth:v7];

  [v14 addTarget:self action:"handleSendEmail" forControlEvents:64];
  [v14 setEnabled:0];
  [(CKVettingAddressSelectionController *)self setSendEmailButton:v14];
  v15 = +[UIDevice currentDevice];
  v16 = [v15 userInterfaceIdiom] == &dword_0 + 1;
  v17 = [(CKVettingAddressSelectionController *)self sendEmailButton];
  [v17 setHidden:v16];

  v48 = v10;
  [v10 frame];
  [v10 sizeThatFits:{v18, v19}];
  v21 = v20;
  [v14 frame];
  [v14 sizeThatFits:{v22, v23}];
  v25 = v24;
  v49[0] = @"textHeight";
  v26 = [NSNumber numberWithDouble:v21];
  v50[0] = v26;
  v49[1] = @"sendEmailHeight";
  v27 = [NSNumber numberWithDouble:v25];
  v50[1] = v27;
  v49[2] = @"sendEmailSpacing";
  v28 = [NSNumber numberWithDouble:v25 + 8.0];
  v49[3] = @"padding";
  v50[2] = v28;
  v50[3] = &off_16380;
  v47 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];

  v29 = [(CKVettingAddressSelectionController *)self tableView];
  [v29 frame];
  v30 = +[UIApplication sharedApplication];
  [v30 statusBarFrame];
  v31 = [(CKVettingAddressSelectionController *)self navigationController];
  v32 = [v31 navigationBar];
  [v32 frame];
  v33 = [(CKVettingAddressSelectionController *)self tableView];
  v34 = [v33 tableHeaderView];
  [v34 frame];
  v35 = [(CKVettingAddressSelectionController *)self tripples];
  [v35 count];
  v36 = [(CKVettingAddressSelectionController *)self tableView];
  [v36 contentInset];

  v37 = [UIView alloc];
  v38 = [(CKVettingAddressSelectionController *)self tableView];
  [v38 frame];
  v39 = [v37 initWithFrame:{0.0, 0.0}];

  [v39 addSubview:v48];
  [v39 addSubview:v14];
  v40 = _NSDictionaryOfVariableBindings(@"text, sendEmail", v48, v14, 0);
  v41 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(padding)-[text]-(padding)-|", 0, v47, v40);
  [v39 addConstraints:v41];

  v42 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(padding)-[sendEmail]-(padding)-|", 0, v47, v40);
  [v39 addConstraints:v42];

  v43 = [NSLayoutConstraint constraintWithItem:v48 attribute:9 relatedBy:0 toItem:v39 attribute:9 multiplier:1.0 constant:0.0];
  [v39 addConstraint:v43];

  v44 = [NSLayoutConstraint constraintWithItem:v14 attribute:9 relatedBy:0 toItem:v39 attribute:9 multiplier:1.0 constant:0.0];
  [v39 addConstraint:v44];

  v45 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(padding)-[text(textHeight)]-(>=padding)-[sendEmail(sendEmailHeight)]-(sendEmailSpacing)-|", 0, v47, v40);
  [v39 addConstraints:v45];

  [v39 setNeedsLayout];
  v46 = [(CKVettingAddressSelectionController *)self tableView];
  [v46 setTableFooterView:v39];
}

@end
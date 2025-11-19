@interface PersonalAudioAudiogramViewController
- (PersonalAudioAudiogramViewController)initWithAudiograms:(id)a3 andDelegate:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (unint64_t)numberOfAudiograms;
- (void)addAudiogramTapped;
- (void)audiogramIngestionDidSaveAudiogram:(id)a3;
- (void)nextButtonTapped:(id)a3;
- (void)showAudiogramsInHealth:(id)a3;
- (void)skipButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTableViewHeight;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PersonalAudioAudiogramViewController

- (PersonalAudioAudiogramViewController)initWithAudiograms:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = paLocString();
  v9 = paLocString();
  v13.receiver = self;
  v13.super_class = PersonalAudioAudiogramViewController;
  v10 = [(PersonalAudioAudiogramViewController *)&v13 initWithTitle:v8 detailText:v9 icon:0];

  if (v10)
  {
    [(PersonalAudioAudiogramViewController *)v10 setAudiograms:v6];
    [(PersonalAudioAudiogramViewController *)v10 setDelegate:v7];
    if ([v6 count])
    {
      v11 = [NSIndexPath indexPathForRow:0 inSection:0];
      [(PersonalAudioAudiogramViewController *)v10 setSelectedIndexPath:v11];
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = PersonalAudioAudiogramViewController;
  [(PersonalAudioAudiogramViewController *)&v58 viewDidLoad];
  v3 = +[OBBoldTrayButton boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = v3;

  v5 = [(PersonalAudioAudiogramViewController *)self buttonTray];
  [v5 addButton:self->_nextButton];

  v6 = +[OBLinkTrayButton linkButton];
  linkButton = self->_linkButton;
  self->_linkButton = v6;

  v8 = self->_linkButton;
  v9 = paLocString();
  [(OBLinkTrayButton *)v8 setTitle:v9 forState:0];

  [(OBLinkTrayButton *)self->_linkButton addTarget:self action:"skipButtonTapped:" forControlEvents:64];
  v10 = [(PersonalAudioAudiogramViewController *)self buttonTray];
  [v10 addButton:self->_linkButton];

  v11 = paLocString();
  v12 = [PersonalAudioLinkControl linkWithTitle:v11];
  healthLink = self->_healthLink;
  self->_healthLink = v12;

  [(PersonalAudioLinkControl *)self->_healthLink setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PersonalAudioLinkControl *)self->_healthLink addTarget:self action:"showAudiogramsInHealth:" forControlEvents:64];
  v14 = [(PersonalAudioAudiogramViewController *)self contentView];
  [v14 addSubview:self->_healthLink];

  v15 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v15;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  v17 = self->_tableView;
  v18 = +[UIColor systemBackgroundColor];
  [(UITableView *)v17 setBackgroundColor:v18];

  [(UITableView *)self->_tableView setSeparatorStyle:1];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"PAAudiogramHeaderReuseID"];
  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(PersonalAudioAudiogramViewController *)self contentView];
  [v19 addSubview:self->_tableView];

  v56 = [(PersonalAudioLinkControl *)self->_healthLink topAnchor];
  v57 = [(PersonalAudioAudiogramViewController *)self contentView];
  v55 = [v57 topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v59[0] = v54;
  v52 = [(PersonalAudioLinkControl *)self->_healthLink leadingAnchor];
  v53 = [(PersonalAudioAudiogramViewController *)self contentView];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v59[1] = v50;
  v48 = [(PersonalAudioLinkControl *)self->_healthLink trailingAnchor];
  v49 = [(PersonalAudioAudiogramViewController *)self contentView];
  v47 = [v49 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v59[2] = v46;
  v45 = [(UITableView *)self->_tableView topAnchor];
  v44 = [(PersonalAudioLinkControl *)self->_healthLink bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v59[3] = v43;
  v41 = [(UITableView *)self->_tableView leadingAnchor];
  v42 = [(PersonalAudioAudiogramViewController *)self view];
  v40 = [v42 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v59[4] = v39;
  v20 = [(UITableView *)self->_tableView trailingAnchor];
  v21 = [(PersonalAudioAudiogramViewController *)self view];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v59[5] = v23;
  v24 = [(UITableView *)self->_tableView bottomAnchor];
  v25 = [(PersonalAudioAudiogramViewController *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v59[6] = v27;
  v28 = [NSArray arrayWithObjects:v59 count:7];
  [NSLayoutConstraint activateConstraints:v28];

  [(PersonalAudioAudiogramViewController *)self updateTableViewHeight];
  v29 = [(PersonalAudioAudiogramViewController *)self audiograms];
  v30 = [v29 count];

  v31 = [(PersonalAudioAudiogramViewController *)self headerView];
  if (v30)
  {
    v32 = &selRef_nextButtonTapped_;
  }

  else
  {
    v32 = &selRef_addAudiogramTapped;
  }

  v33 = paLocString();
  [v31 setTitle:v33];

  v34 = [(PersonalAudioAudiogramViewController *)self headerView];
  v35 = paLocString();
  [v34 setDetailText:v35];

  v36 = self->_nextButton;
  v37 = paLocString();
  [(OBTrayButton *)v36 setTitle:v37 forState:0];

  [(OBTrayButton *)self->_nextButton addTarget:self action:*v32 forControlEvents:64];
  v38 = [(PersonalAudioAudiogramViewController *)self scrollView];
  [v38 _addScrollViewScrollObserver:self];
}

- (void)viewDidLayoutSubviews
{
  [(PersonalAudioAudiogramViewController *)self updateTableViewHeight];
  v3.receiver = self;
  v3.super_class = PersonalAudioAudiogramViewController;
  [(PersonalAudioAudiogramViewController *)&v3 viewDidLayoutSubviews];
}

- (void)updateTableViewHeight
{
  [(UITableView *)self->_tableView contentSize];
  v4 = v3;
  tableViewHeightConstraint = self->_tableViewHeightConstraint;
  if (tableViewHeightConstraint || (tableView = self->_tableView) == 0)
  {
    [(NSLayoutConstraint *)tableViewHeightConstraint constant];
    if (v4 != v6)
    {
      v11 = [(PersonalAudioAudiogramViewController *)self tableViewHeightConstraint];
      [v11 setConstant:v4];
    }
  }

  else
  {
    v8 = [NSLayoutConstraint constraintWithItem:tableView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v3];
    v9 = self->_tableViewHeightConstraint;
    self->_tableViewHeightConstraint = v8;

    v10 = self->_tableViewHeightConstraint;

    [(NSLayoutConstraint *)v10 setActive:1];
  }
}

- (void)nextButtonTapped:(id)a3
{
  v4 = [(PersonalAudioAudiogramViewController *)self audiograms];
  v5 = [v4 count];
  v6 = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];
  v7 = ~[v6 row];

  v8 = [(PersonalAudioAudiogramViewController *)self audiograms];
  v10 = [v8 objectAtIndex:&v5[v7]];

  v9 = [(PersonalAudioAudiogramViewController *)self delegate];
  [v9 didSelectAudiogram:v10];
}

- (void)skipButtonTapped:(id)a3
{
  v3 = [(PersonalAudioAudiogramViewController *)self delegate];
  [v3 didSelectAudiogram:0];
}

- (void)showAudiogramsInHealth:(id)a3
{
  v4 = [NSURL URLWithString:@"x-apple-health://SampleType/HKDataTypeIdentifierAudiogram"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)addAudiogramTapped
{
  v3 = [[AIAudiogramEnrollmentViewController alloc] initWithDelegate:self];
  [v3 setAnalyticsClient:1];
  [(PersonalAudioAudiogramViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (unint64_t)numberOfAudiograms
{
  v2 = [(PersonalAudioAudiogramViewController *)self audiograms];
  v3 = [v2 count];

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PersonalAudioAudiogramViewController *)self audiograms];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(PersonalAudioAudiogramViewController *)self numberOfAudiograms];
  if ([v6 row] >= v9)
  {
    v10 = [v7 dequeueReusableCellWithIdentifier:@"PAAddAudiogramCellReuseID"];

    if (v10)
    {
      goto LABEL_10;
    }

    v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PAAddAudiogramCellReuseID"];
    v24 = [v10 textLabel];
    v25 = paLocString();
    [v24 setText:v25];

    v26 = [v10 textLabel];
    v27 = +[UIColor systemBlueColor];
    [v26 setTextColor:v27];

    v28 = [v10 imageView];
    v29 = [v10 _checkmarkImage:0];
    [v28 setImage:v29];

    v20 = [v10 imageView];
    [v20 setHidden:1];
  }

  else
  {
    v10 = [v7 dequeueReusableCellWithIdentifier:@"PAAudiogramCellReuseID"];

    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PAAudiogramCellReuseID"];
      v11 = [v10 imageView];
      [v11 setContentMode:1];

      v12 = [v10 imageView];
      v13 = [v10 _checkmarkImage:0];
      [v12 setImage:v13];

      v14 = [v10 imageView];
      v15 = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];
      [v14 setHidden:v15 != v6];
    }

    v16 = [(PersonalAudioAudiogramViewController *)self audiograms];
    v17 = [v16 count];
    v18 = ~[v6 row];

    v19 = [(PersonalAudioAudiogramViewController *)self audiograms];
    v20 = [v19 objectAtIndex:&v17[v18]];

    v21 = [v20 startDate];
    if (!v21)
    {
      v21 = +[NSDate date];
    }

    v22 = [v10 textLabel];
    v23 = [NSDateFormatter localizedStringFromDate:v21 dateStyle:3 timeStyle:0];
    [v22 setText:v23];
  }

LABEL_10:

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"PAAudiogramHeaderReuseID", a4}];
  v5 = [v4 contentView];
  v6 = +[UIColor systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [v7 row];
  if (v8 >= [(PersonalAudioAudiogramViewController *)self numberOfAudiograms])
  {
    [(PersonalAudioAudiogramViewController *)self addAudiogramTapped];
  }

  else
  {
    v9 = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];

    if (v9 != v7)
    {
      v10 = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];
      [(PersonalAudioAudiogramViewController *)self setSelectedIndexPath:v7];
      v12[0] = v10;
      v12[1] = v7;
      v11 = [NSArray arrayWithObjects:v12 count:2];
      [v6 reloadRowsAtIndexPaths:v11 withRowAnimation:100];
    }
  }
}

- (void)audiogramIngestionDidSaveAudiogram:(id)a3
{
  v4 = a3;
  v5 = [(PersonalAudioAudiogramViewController *)self delegate];
  [v5 didSelectAudiogram:v4];
}

@end
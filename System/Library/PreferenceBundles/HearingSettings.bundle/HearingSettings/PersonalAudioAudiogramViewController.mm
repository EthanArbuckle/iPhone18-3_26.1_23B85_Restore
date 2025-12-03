@interface PersonalAudioAudiogramViewController
- (PersonalAudioAudiogramViewController)initWithAudiograms:(id)audiograms andDelegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (unint64_t)numberOfAudiograms;
- (void)addAudiogramTapped;
- (void)audiogramIngestionDidSaveAudiogram:(id)audiogram;
- (void)nextButtonTapped:(id)tapped;
- (void)showAudiogramsInHealth:(id)health;
- (void)skipButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTableViewHeight;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PersonalAudioAudiogramViewController

- (PersonalAudioAudiogramViewController)initWithAudiograms:(id)audiograms andDelegate:(id)delegate
{
  audiogramsCopy = audiograms;
  delegateCopy = delegate;
  v8 = paLocString();
  v9 = paLocString();
  v13.receiver = self;
  v13.super_class = PersonalAudioAudiogramViewController;
  v10 = [(PersonalAudioAudiogramViewController *)&v13 initWithTitle:v8 detailText:v9 icon:0];

  if (v10)
  {
    [(PersonalAudioAudiogramViewController *)v10 setAudiograms:audiogramsCopy];
    [(PersonalAudioAudiogramViewController *)v10 setDelegate:delegateCopy];
    if ([audiogramsCopy count])
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

  buttonTray = [(PersonalAudioAudiogramViewController *)self buttonTray];
  [buttonTray addButton:self->_nextButton];

  v6 = +[OBLinkTrayButton linkButton];
  linkButton = self->_linkButton;
  self->_linkButton = v6;

  v8 = self->_linkButton;
  v9 = paLocString();
  [(OBLinkTrayButton *)v8 setTitle:v9 forState:0];

  [(OBLinkTrayButton *)self->_linkButton addTarget:self action:"skipButtonTapped:" forControlEvents:64];
  buttonTray2 = [(PersonalAudioAudiogramViewController *)self buttonTray];
  [buttonTray2 addButton:self->_linkButton];

  v11 = paLocString();
  v12 = [PersonalAudioLinkControl linkWithTitle:v11];
  healthLink = self->_healthLink;
  self->_healthLink = v12;

  [(PersonalAudioLinkControl *)self->_healthLink setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PersonalAudioLinkControl *)self->_healthLink addTarget:self action:"showAudiogramsInHealth:" forControlEvents:64];
  contentView = [(PersonalAudioAudiogramViewController *)self contentView];
  [contentView addSubview:self->_healthLink];

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
  contentView2 = [(PersonalAudioAudiogramViewController *)self contentView];
  [contentView2 addSubview:self->_tableView];

  topAnchor = [(PersonalAudioLinkControl *)self->_healthLink topAnchor];
  contentView3 = [(PersonalAudioAudiogramViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v59[0] = v54;
  leadingAnchor = [(PersonalAudioLinkControl *)self->_healthLink leadingAnchor];
  contentView4 = [(PersonalAudioAudiogramViewController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v59[1] = v50;
  trailingAnchor = [(PersonalAudioLinkControl *)self->_healthLink trailingAnchor];
  contentView5 = [(PersonalAudioAudiogramViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[2] = v46;
  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor = [(PersonalAudioLinkControl *)self->_healthLink bottomAnchor];
  v43 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v59[3] = v43;
  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  view = [(PersonalAudioAudiogramViewController *)self view];
  leadingAnchor4 = [view leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v59[4] = v39;
  trailingAnchor3 = [(UITableView *)self->_tableView trailingAnchor];
  view2 = [(PersonalAudioAudiogramViewController *)self view];
  trailingAnchor4 = [view2 trailingAnchor];
  v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v59[5] = v23;
  bottomAnchor2 = [(UITableView *)self->_tableView bottomAnchor];
  contentView6 = [(PersonalAudioAudiogramViewController *)self contentView];
  bottomAnchor3 = [contentView6 bottomAnchor];
  v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v59[6] = v27;
  v28 = [NSArray arrayWithObjects:v59 count:7];
  [NSLayoutConstraint activateConstraints:v28];

  [(PersonalAudioAudiogramViewController *)self updateTableViewHeight];
  audiograms = [(PersonalAudioAudiogramViewController *)self audiograms];
  v30 = [audiograms count];

  headerView = [(PersonalAudioAudiogramViewController *)self headerView];
  if (v30)
  {
    v32 = &selRef_nextButtonTapped_;
  }

  else
  {
    v32 = &selRef_addAudiogramTapped;
  }

  v33 = paLocString();
  [headerView setTitle:v33];

  headerView2 = [(PersonalAudioAudiogramViewController *)self headerView];
  v35 = paLocString();
  [headerView2 setDetailText:v35];

  v36 = self->_nextButton;
  v37 = paLocString();
  [(OBTrayButton *)v36 setTitle:v37 forState:0];

  [(OBTrayButton *)self->_nextButton addTarget:self action:*v32 forControlEvents:64];
  scrollView = [(PersonalAudioAudiogramViewController *)self scrollView];
  [scrollView _addScrollViewScrollObserver:self];
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
      tableViewHeightConstraint = [(PersonalAudioAudiogramViewController *)self tableViewHeightConstraint];
      [tableViewHeightConstraint setConstant:v4];
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

- (void)nextButtonTapped:(id)tapped
{
  audiograms = [(PersonalAudioAudiogramViewController *)self audiograms];
  v5 = [audiograms count];
  selectedIndexPath = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];
  v7 = ~[selectedIndexPath row];

  audiograms2 = [(PersonalAudioAudiogramViewController *)self audiograms];
  v10 = [audiograms2 objectAtIndex:&v5[v7]];

  delegate = [(PersonalAudioAudiogramViewController *)self delegate];
  [delegate didSelectAudiogram:v10];
}

- (void)skipButtonTapped:(id)tapped
{
  delegate = [(PersonalAudioAudiogramViewController *)self delegate];
  [delegate didSelectAudiogram:0];
}

- (void)showAudiogramsInHealth:(id)health
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
  audiograms = [(PersonalAudioAudiogramViewController *)self audiograms];
  v3 = [audiograms count];

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  audiograms = [(PersonalAudioAudiogramViewController *)self audiograms];
  v4 = [audiograms count] != 0;

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_new();
  numberOfAudiograms = [(PersonalAudioAudiogramViewController *)self numberOfAudiograms];
  if ([pathCopy row] >= numberOfAudiograms)
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PAAddAudiogramCellReuseID"];

    if (v10)
    {
      goto LABEL_10;
    }

    v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PAAddAudiogramCellReuseID"];
    textLabel = [v10 textLabel];
    v25 = paLocString();
    [textLabel setText:v25];

    textLabel2 = [v10 textLabel];
    v27 = +[UIColor systemBlueColor];
    [textLabel2 setTextColor:v27];

    imageView = [v10 imageView];
    v29 = [v10 _checkmarkImage:0];
    [imageView setImage:v29];

    imageView2 = [v10 imageView];
    [imageView2 setHidden:1];
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PAAudiogramCellReuseID"];

    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PAAudiogramCellReuseID"];
      imageView3 = [v10 imageView];
      [imageView3 setContentMode:1];

      imageView4 = [v10 imageView];
      v13 = [v10 _checkmarkImage:0];
      [imageView4 setImage:v13];

      imageView5 = [v10 imageView];
      selectedIndexPath = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];
      [imageView5 setHidden:selectedIndexPath != pathCopy];
    }

    audiograms = [(PersonalAudioAudiogramViewController *)self audiograms];
    v17 = [audiograms count];
    v18 = ~[pathCopy row];

    audiograms2 = [(PersonalAudioAudiogramViewController *)self audiograms];
    imageView2 = [audiograms2 objectAtIndex:&v17[v18]];

    startDate = [imageView2 startDate];
    if (!startDate)
    {
      startDate = +[NSDate date];
    }

    textLabel3 = [v10 textLabel];
    v23 = [NSDateFormatter localizedStringFromDate:startDate dateStyle:3 timeStyle:0];
    [textLabel3 setText:v23];
  }

LABEL_10:

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"PAAudiogramHeaderReuseID", section}];
  contentView = [v4 contentView];
  v6 = +[UIColor systemBackgroundColor];
  [contentView setBackgroundColor:v6];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [pathCopy row];
  if (v8 >= [(PersonalAudioAudiogramViewController *)self numberOfAudiograms])
  {
    [(PersonalAudioAudiogramViewController *)self addAudiogramTapped];
  }

  else
  {
    selectedIndexPath = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];

    if (selectedIndexPath != pathCopy)
    {
      selectedIndexPath2 = [(PersonalAudioAudiogramViewController *)self selectedIndexPath];
      [(PersonalAudioAudiogramViewController *)self setSelectedIndexPath:pathCopy];
      v12[0] = selectedIndexPath2;
      v12[1] = pathCopy;
      v11 = [NSArray arrayWithObjects:v12 count:2];
      [viewCopy reloadRowsAtIndexPaths:v11 withRowAnimation:100];
    }
  }
}

- (void)audiogramIngestionDidSaveAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  delegate = [(PersonalAudioAudiogramViewController *)self delegate];
  [delegate didSelectAudiogram:audiogramCopy];
}

@end
@interface SetupChoiceController
+ (id)cloudConfigSkipKey;
- (BFFFlowItemDelegate)delegate;
- (BOOL)_useTableLayout;
- (SetupChoice)selectedChoice;
- (SetupChoiceController)init;
- (double)heightForFooterInTableView:(id)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_footerIcon;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)viewForFooterInTableView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_primaryButtonPressed;
- (void)_secondaryButtonPressed;
- (void)_updateSelectedChoiceCheckmark;
- (void)checkChoiceValid;
- (void)choiceCancelled:(id)cancelled;
- (void)choiceConfirmed:(id)confirmed;
- (void)configureCell:(id)cell atIndexPath:(id)path;
- (void)controllerDone;
- (void)finishWithChoiceForIdentifier:(id)identifier;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)loadView;
- (void)setChoices:(id)choices;
- (void)setSelectedChoice:(id)choice;
- (void)setSelectedChoiceIndex:(unint64_t)index;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SetupChoiceController

+ (id)cloudConfigSkipKey
{
  selfCopy = self;
  aSelector = a2;
  oslog = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = NSStringFromSelector(aSelector);
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v4, "Subclasses must implement %@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  return 0;
}

- (SetupChoiceController)init
{
  v11 = a2;
  location = 0;
  v10.receiver = self;
  v10.super_class = SetupChoiceController;
  location = [(SetupChoiceController *)&v10 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    if ([location isMemberOfClass:objc_opt_class()])
    {
      v2 = +[NSAssertionHandler currentHandler];
      [(NSAssertionHandler *)v2 handleFailureInMethod:v11 object:location file:@"SetupChoiceController.m" lineNumber:128 description:@"Do not instantiate SetupChoiceController directly, subclass instead", 0];
    }

    if ([location wantsNextButton])
    {
      v3 = [UIBarButtonItem alloc];
      v4 = +[NSBundle mainBundle];
      v5 = [(NSBundle *)v4 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
      v9 = [v3 initWithTitle:v5 style:2 target:location action:"checkChoiceValid"];

      [v9 setEnabled:0];
      navigationItem = [location navigationItem];
      [navigationItem setRightBarButtonItem:v9];

      objc_storeStrong(&v9, 0);
    }
  }

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (id)_footerIcon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SetupChoiceController *)self footerIcon];
  if (!location[0])
  {
    footerIconName = [(SetupChoiceController *)selfCopy footerIconName];
    if (footerIconName)
    {
      v2 = [UIImage imageNamed:footerIconName];
      v3 = location[0];
      location[0] = v2;
    }

    objc_storeStrong(&footerIconName, 0);
  }

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)loadView
{
  selfCopy = self;
  v55 = a2;
  v54.receiver = self;
  v54.super_class = SetupChoiceController;
  [(BuddyTableViewController *)&v54 loadView];
  objc_storeStrong(&selfCopy->_serviceFooterView, 0);
  objc_storeStrong(&selfCopy->_learnMoreView, 0);
  footerTitleText = [(SetupChoiceController *)selfCopy footerTitleText];
  footerDetailText = [(SetupChoiceController *)selfCopy footerDetailText];
  learnMoreButtonText = [(SetupChoiceController *)selfCopy learnMoreButtonText];
  _footerIcon = [(SetupChoiceController *)selfCopy _footerIcon];
  if ([footerTitleText length] || objc_msgSend(footerDetailText, "length") || objc_msgSend(learnMoreButtonText, "length") || _footerIcon)
  {
    if ([(SetupChoiceController *)selfCopy _useTableLayout])
    {
      if ([footerTitleText length] || objc_msgSend(footerDetailText, "length"))
      {
        v2 = [[BuddyAppleIDTableHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        serviceFooterView = selfCopy->_serviceFooterView;
        selfCopy->_serviceFooterView = v2;

        if ([footerTitleText length])
        {
          v4 = [NSAttributedString alloc];
          v5 = +[BuddyAppleIDTableHeaderView defaultTitleTextAttributes];
          v6 = [v4 initWithString:footerTitleText attributes:v5];
          textLabel = [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView textLabel];
          [(UILabel *)textLabel setAttributedText:v6];
        }

        if ([footerDetailText length])
        {
          v8 = [NSAttributedString alloc];
          v9 = +[BuddyAppleIDTableHeaderView defaultDetailTextAttributes];
          v10 = [v8 initWithString:footerDetailText attributes:v9];
          detailTextLabel = [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView detailTextLabel];
          [(UILabel *)detailTextLabel setAttributedText:v10];
        }
      }

      if ([learnMoreButtonText length])
      {
        v12 = [[BuddyAppleIDLinkView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        learnMoreView = selfCopy->_learnMoreView;
        selfCopy->_learnMoreView = v12;

        [(BuddyAppleIDLinkView *)selfCopy->_learnMoreView setButtonTopPadding:15.0];
        linkButton = [(BuddyAppleIDLinkView *)selfCopy->_learnMoreView linkButton];
        [(UIButton *)linkButton setTitle:learnMoreButtonText forState:0];

        linkButton2 = [(BuddyAppleIDLinkView *)selfCopy->_learnMoreView linkButton];
        [(UIButton *)linkButton2 addTarget:selfCopy action:"learnMoreButtonTapped:" forControlEvents:64];
      }

      [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView setLinkButtonTopPadding:10.0];
      topIconName = [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView topIconName];
      v17 = [(NSString *)topIconName length];

      if (v17)
      {
        [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView setBottomPadding:2.0];
      }

      else
      {
        [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView setBottomPadding:20.0];
      }
    }

    else
    {
      objc_initWeak(&location, selfCopy);
      if ([footerDetailText length])
      {
        headerView = [(BuddyTableViewController *)selfCopy headerView];
        detailTextLabel2 = [(BFFPaneHeaderView *)headerView detailTextLabel];
        [detailTextLabel2 setText:footerDetailText];
      }

      if ([learnMoreButtonText length])
      {
        headerView2 = [(BuddyTableViewController *)selfCopy headerView];
        v21 = learnMoreButtonText;
        v44 = _NSConcreteStackBlock;
        v45 = 3221225472;
        v46 = sub_1000FBE64;
        v47 = &unk_10032AF58;
        objc_copyWeak(&v48, &location);
        [(BFFPaneHeaderView *)headerView2 setLinkText:v21 handler:&v44];

        objc_destroyWeak(&v48);
      }

      objc_destroyWeak(&location);
    }

    if (_footerIcon)
    {
      headerView3 = [(BuddyTableViewController *)selfCopy headerView];
      [(BFFPaneHeaderView *)headerView3 setIcon:_footerIcon];
    }
  }

  if (![(SetupChoiceController *)selfCopy _useTableLayout:v44])
  {
    choices = [(SetupChoiceController *)selfCopy choices];
    v24 = [(NSArray *)choices count];

    if (v24)
    {
      v25 = +[BFFStyle sharedStyle];
      choices2 = [(SetupChoiceController *)selfCopy choices];
      firstObject = [(NSArray *)choices2 firstObject];
      localizedTitle = [firstObject localizedTitle];
      tableView = [(BuddyTableViewController *)selfCopy tableView];
      v30 = [v25 continueButtonWithTitle:localizedTitle inView:tableView];
      primaryChoiceButton = selfCopy->_primaryChoiceButton;
      selfCopy->_primaryChoiceButton = v30;

      [(UIButton *)selfCopy->_primaryChoiceButton addTarget:selfCopy action:"_primaryButtonPressed" forControlEvents:0x2000];
    }

    choices3 = [(SetupChoiceController *)selfCopy choices];
    v33 = [(NSArray *)choices3 count];

    if (v33 > 1)
    {
      v34 = [UIButton buttonWithType:1];
      secondaryChoiceButton = selfCopy->_secondaryChoiceButton;
      selfCopy->_secondaryChoiceButton = v34;

      v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      titleLabel = [(UIButton *)selfCopy->_secondaryChoiceButton titleLabel];
      [(UILabel *)titleLabel setFont:v36];

      titleLabel2 = [(UIButton *)selfCopy->_secondaryChoiceButton titleLabel];
      [(UILabel *)titleLabel2 setAdjustsFontSizeToFitWidth:1];

      v39 = selfCopy->_secondaryChoiceButton;
      choices4 = [(SetupChoiceController *)selfCopy choices];
      lastObject = [(NSArray *)choices4 lastObject];
      localizedTitle2 = [lastObject localizedTitle];
      [(UIButton *)v39 setTitle:localizedTitle2 forState:0];

      [(UIButton *)selfCopy->_secondaryChoiceButton addTarget:selfCopy action:"_secondaryButtonPressed" forControlEvents:0x2000];
      tableView2 = [(BuddyTableViewController *)selfCopy tableView];
      [(UITableView *)tableView2 addSubview:selfCopy->_secondaryChoiceButton];
    }
  }

  objc_storeStrong(&_footerIcon, 0);
  objc_storeStrong(&learnMoreButtonText, 0);
  objc_storeStrong(&footerDetailText, 0);
  objc_storeStrong(&footerTitleText, 0);
}

- (void)_primaryButtonPressed
{
  choices = [(SetupChoiceController *)self choices];
  v3 = [(NSArray *)choices count];

  if (v3)
  {
    choices2 = [(SetupChoiceController *)self choices];
    v5 = [(NSArray *)choices2 objectAtIndexedSubscript:0];
    objc_storeWeak(&self->_selectedChoice, v5);

    [(SetupChoiceController *)self checkChoiceValid];
  }
}

- (void)_secondaryButtonPressed
{
  choices = [(SetupChoiceController *)self choices];
  v3 = [(NSArray *)choices count];

  if (v3 > 1)
  {
    choices2 = [(SetupChoiceController *)self choices];
    v5 = [(NSArray *)choices2 objectAtIndexedSubscript:1];
    objc_storeWeak(&self->_selectedChoice, v5);

    [(SetupChoiceController *)self checkChoiceValid];
  }
}

- (void)setChoices:(id)choices
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choices);
  if (selfCopy->_choices != location[0])
  {
    memset(__b, 0, sizeof(__b));
    v3 = location[0];
    v4 = [v3 countByEnumeratingWithState:__b objects:v18 count:16];
    if (v4)
    {
      v5 = *__b[2];
      do
      {
        for (i = 0; i < v4; ++i)
        {
          if (*__b[2] != v5)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(__b[1] + 8 * i);
          [v14 setChoiceController:0];
        }

        v4 = [v3 countByEnumeratingWithState:__b objects:v18 count:16];
      }

      while (v4);
    }

    objc_storeStrong(&selfCopy->_choices, location[0]);
    memset(v11, 0, sizeof(v11));
    v7 = selfCopy->_choices;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:v11 objects:v17 count:16];
    if (v8)
    {
      v9 = *v11[2];
      do
      {
        for (j = 0; j < v8; ++j)
        {
          if (*v11[2] != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(v11[1] + 8 * j);
          [v12 setChoiceController:selfCopy];
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:v11 objects:v17 count:16];
      }

      while (v8);
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_useTableLayout
{
  choices = [(SetupChoiceController *)self choices];
  if ([(NSArray *)choices count]< 3)
  {
    useTableLayout = [(SetupChoiceController *)self useTableLayout];
  }

  else
  {
    useTableLayout = 1;
  }

  v4 = useTableLayout != 0;

  return v4;
}

- (void)learnMoreButtonTapped:(id)tapped
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  objc_storeStrong(location, 0);
}

- (void)finishWithChoiceForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  for (i = 0; ; ++i)
  {
    v3 = i;
    choices = [(SetupChoiceController *)selfCopy choices];
    v5 = [(NSArray *)choices count];

    if (v3 >= v5)
    {
      break;
    }

    choices2 = [(SetupChoiceController *)selfCopy choices];
    v11 = [(NSArray *)choices2 objectAtIndex:i];

    identifier = [v11 identifier];
    v8 = [identifier isEqual:location[0]];

    if (v8)
    {
      [(SetupChoiceController *)selfCopy setSelectedChoiceIndex:i];
      [(SetupChoiceController *)selfCopy controllerDone];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v11, 0);
    if (v10)
    {
      goto LABEL_11;
    }
  }

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100078180(buf, selfCopy, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@ cannot finish with controller identifier choice %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v10 = 0;
LABEL_11:
  objc_storeStrong(location, 0);
}

- (void)_updateSelectedChoiceCheckmark
{
  selfCopy = self;
  v15 = a2;
  WeakRetained = objc_loadWeakRetained(&self->_selectedChoice);

  if (WeakRetained)
  {
    choices = selfCopy->_choices;
    v4 = objc_loadWeakRetained(&selfCopy->_selectedChoice);
    v5 = [(NSArray *)choices indexOfObject:v4];

    v14 = v5;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [NSIndexPath indexPathForRow:v14 inSection:0];
      tableView = [(BuddyTableViewController *)selfCopy tableView];
      location = [(UITableView *)tableView cellForRowAtIndexPath:v13];

      [location setAccessoryType:3];
      textLabel = [location textLabel];
      v8 = +[UIColor tableCellBlueTextColor];
      [textLabel setTextColor:v8];

      [location setNeedsLayout];
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v13, 0);
    }
  }

  if ([(SetupChoiceController *)selfCopy wantsNextButton])
  {
    navigationItem = [(SetupChoiceController *)selfCopy navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    v11 = objc_loadWeakRetained(&selfCopy->_selectedChoice);
    [rightBarButtonItem setEnabled:v11 != 0];
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  [(SetupChoiceController *)self _updateSelectedChoiceCheckmark];
  v2.receiver = selfCopy;
  v2.super_class = SetupChoiceController;
  [(SetupChoiceController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SetupChoiceController;
  [(SetupChoiceController *)&v6 viewDidAppear:appear];
  if (![(SetupChoiceController *)selfCopy wantsNextButton])
  {
    tableView = [(BuddyTableViewController *)selfCopy tableView];
    indexPathForSelectedRow = [(UITableView *)tableView indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      tableView2 = [(BuddyTableViewController *)selfCopy tableView];
      [(UITableView *)tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
    }

    objc_storeStrong(&indexPathForSelectedRow, 0);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  if (([(SetupChoiceController *)self isMovingFromParentViewController]& 1) != 0)
  {
    [(SetupChoiceController *)selfCopy controllerBack];
  }

  v3.receiver = selfCopy;
  v3.super_class = SetupChoiceController;
  [(SetupChoiceController *)&v3 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v114 = a2;
  traitCollection = [(SetupChoiceController *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 1;

  v113 = v3;
  [(SetupChoiceController *)selfCopy choiceButtonsBottomInset];
  v112 = v4 + 24.0;
  v5 = 120.0;
  if (v3)
  {
    v5 = 40.0;
  }

  v111 = v112 + v5;
  v110.receiver = selfCopy;
  v110.super_class = SetupChoiceController;
  [(BuddyTableViewController *)&v110 viewDidLayoutSubviews];
  tableView = [(BuddyTableViewController *)selfCopy tableView];
  [(UITableView *)tableView bounds];
  v109.origin.y = v7;
  v109.origin.x = v8;
  v109.size.height = v9;
  v109.size.width = v10;

  headerView = [(BuddyTableViewController *)selfCopy headerView];
  [(BFFPaneHeaderView *)headerView frame];
  v108.origin.y = v12;
  v108.origin.x = v13;
  v108.size.height = v14;
  v108.size.width = v15;

  memset(__b, 0, sizeof(__b));
  v16 = +[BFFStyle sharedStyle];
  tableView2 = [(BuddyTableViewController *)selfCopy tableView];
  [v16 edgeInsetsForTable:tableView2];
  __b[0] = v18;
  __b[1] = v19;
  __b[2] = v20;
  __b[3] = v21;

  v22 = +[BFFStyle sharedStyle];
  view = [(SetupChoiceController *)selfCopy view];
  [v22 horizontalMarginForView:view];
  v105 = 0;
  v103 = 0;
  if (v24 * 2.0 - *&__b[1] - *&__b[3] >= 0.0)
  {
    v106 = +[BFFStyle sharedStyle];
    v105 = 1;
    view2 = [(SetupChoiceController *)selfCopy view];
    v103 = 1;
    [v106 horizontalMarginForView:?];
    v25 = v26 * 2.0 - *&__b[1] - *&__b[3];
  }

  else
  {
    v25 = 0.0;
  }

  if (v103)
  {
  }

  if (v105)
  {
  }

  v101 = 0;
  if (!v113)
  {
    tableView3 = [(BuddyTableViewController *)selfCopy tableView];
    v101 = 1;
    [(UITableView *)tableView3 separatorInset];
  }

  if (v101)
  {
  }

  v100 = v109.size.width - v25;
  [(UIButton *)selfCopy->_primaryChoiceButton frame];
  rect.origin.y = v27;
  rect.origin.x = v28;
  rect.size.height = v29;
  rect.size.width = v30;
  if (selfCopy->_primaryChoiceButton)
  {
    v31 = +[BFFStyle sharedStyle];
    view3 = [(SetupChoiceController *)selfCopy view];
    [v31 sizeForContinueButtonInAncestor:view3];
    v98.width = v33;
    v98.height = v34;
    rect.size = v98;

    UIRoundToViewScale();
    rect.origin.x = v35;
    view4 = [(SetupChoiceController *)selfCopy view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v39 = v38 - v98.height - v111;
    v96 = 0;
    v94 = 0;
    if (v39 <= CGRectGetMaxY(v108) + 14.0)
    {
      v41 = CGRectGetMaxY(v108) + 14.0;
    }

    else
    {
      view5 = [(SetupChoiceController *)selfCopy view];
      v96 = 1;
      safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
      v94 = 1;
      [safeAreaLayoutGuide2 layoutFrame];
      v41 = v40 - v98.height - v111;
    }

    rect.origin.y = v41;
    if (v94)
    {
    }

    if (v96)
    {
    }

    [(UIButton *)selfCopy->_primaryChoiceButton setFrame:rect.origin.x, rect.origin.y, v98];
  }

  if (selfCopy->_secondaryChoiceButton)
  {
    titleLabel = [(UIButton *)selfCopy->_secondaryChoiceButton titleLabel];
    sub_1000FD4C0();
    [(UILabel *)titleLabel sizeThatFits:v43, v44];
    v93.size.width = v45;
    v93.size.height = v46;

    if (v93.size.width >= v100)
    {
      width = v100;
    }

    else
    {
      width = v93.size.width;
    }

    v93.size.width = width;
    UIRoundToViewScale();
    v93.origin.x = v48;
    view6 = [(SetupChoiceController *)selfCopy view];
    safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 layoutFrame];
    v52 = v51;
    titleLabel2 = [(UIButton *)selfCopy->_secondaryChoiceButton titleLabel];
    [(UILabel *)titleLabel2 _firstLineBaselineOffsetFromBoundsTop];
    v55 = v52 - v54 - v112;
    v91 = 0;
    v89 = 0;
    v87 = 0;
    if (v55 <= CGRectGetMaxY(rect) + 4.0)
    {
      v59 = CGRectGetMaxY(rect) + 4.0;
    }

    else
    {
      view7 = [(SetupChoiceController *)selfCopy view];
      v91 = 1;
      safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
      v89 = 1;
      [safeAreaLayoutGuide4 layoutFrame];
      v57 = v56;
      titleLabel3 = [(UIButton *)selfCopy->_secondaryChoiceButton titleLabel];
      v87 = 1;
      [(UILabel *)titleLabel3 _firstLineBaselineOffsetFromBoundsTop];
      v59 = v57 - v58 - v112;
    }

    v93.origin.y = v59;
    if (v87)
    {
    }

    if (v89)
    {
    }

    if (v91)
    {
    }

    [(UIButton *)selfCopy->_secondaryChoiceButton setFrame:v93.origin.x, v93.origin.y, v93.size.width, v93.size.height];
    MaxY = CGRectGetMaxY(v93);
    if (MaxY > CGRectGetMaxY(v109))
    {
      headerView2 = [(BuddyTableViewController *)selfCopy headerView];
      icon = [(BFFPaneHeaderView *)headerView2 icon];

      if (icon)
      {
        headerView3 = [(BuddyTableViewController *)selfCopy headerView];
        detailTextLabel = [(BFFPaneHeaderView *)headerView3 detailTextLabel];
        headerView4 = [(BuddyTableViewController *)selfCopy headerView];
        detailTextLabel2 = [(BFFPaneHeaderView *)headerView4 detailTextLabel];
        font = [detailTextLabel2 font];
        headerView5 = [(BuddyTableViewController *)selfCopy headerView];
        detailTextLabel3 = [(BFFPaneHeaderView *)headerView5 detailTextLabel];
        font2 = [detailTextLabel3 font];
        [font2 pointSize];
        v72 = [font fontWithSize:v71 - 1.0];
        [detailTextLabel setFont:v72];

        headerView6 = [(BuddyTableViewController *)selfCopy headerView];
        [(BFFPaneHeaderView *)headerView6 setIcon:0];

        tableView4 = [(BuddyTableViewController *)selfCopy tableView];
        [(UITableView *)tableView4 reloadData];

        view8 = [(SetupChoiceController *)selfCopy view];
        [(UITableView *)view8 setNeedsLayout];
      }

      else
      {
        v76 = [(BuddyTableViewController *)selfCopy tableView:0];
        [(UITableView *)v76 frame];
        v83 = v77;
        v82 = v78;
        v85 = v79;
        v84 = v80;

        v81 = CGRectGetMaxY(v93);
        v86 = v85 + v81 - CGRectGetMaxY(v109);
        view8 = [(BuddyTableViewController *)selfCopy tableView:v82];
        [(UITableView *)view8 setContentSize:v84, v86];
      }
    }
  }
}

- (void)setSelectedChoiceIndex:(unint64_t)index
{
  v4 = [(NSArray *)self->_choices objectAtIndexedSubscript:index];
  [(SetupChoiceController *)self setSelectedChoice:v4];
}

- (void)setSelectedChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_selectedChoice);
  v4 = location[0];

  if (WeakRetained != v4)
  {
    wantsNextButton = [(SetupChoiceController *)selfCopy wantsNextButton];
    v5 = objc_loadWeakRetained(&selfCopy->_selectedChoice);

    if (v5 && (wantsNextButton & 1) != 0)
    {
      tableView = [(BuddyTableViewController *)selfCopy tableView];
      choices = selfCopy->_choices;
      v8 = objc_loadWeakRetained(&selfCopy->_selectedChoice);
      v9 = [NSIndexPath indexPathForRow:[(NSArray *)choices indexOfObject:v8] inSection:0];
      v12 = [(UITableView *)tableView cellForRowAtIndexPath:v9];

      [v12 setAccessoryType:0];
      textLabel = [v12 textLabel];
      v11 = +[UIColor _labelColor];
      [textLabel setTextColor:v11];

      objc_storeStrong(&v12, 0);
    }

    objc_storeWeak(&selfCopy->_selectedChoice, location[0]);
    if (wantsNextButton)
    {
      [(SetupChoiceController *)selfCopy _updateSelectedChoiceCheckmark];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)checkChoiceValid
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedChoice);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(&self->_selectedChoice);
    [v3 runConfirmationIfNeeded];
  }

  else
  {
    [(SetupChoiceController *)self controllerDone];
  }
}

- (void)choiceConfirmed:(id)confirmed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, confirmed);
  [(SetupChoiceController *)selfCopy controllerDone];
  objc_storeStrong(location, 0);
}

- (void)choiceCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  tableView = [(BuddyTableViewController *)selfCopy tableView];
  choices = selfCopy->_choices;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_selectedChoice);
  v6 = [NSIndexPath indexPathForRow:[(NSArray *)choices indexOfObject:WeakRetained] inSection:0];
  [(UITableView *)tableView deselectRowAtIndexPath:v6 animated:1];

  [(SetupChoiceController *)selfCopy setSelectedChoice:0];
  objc_storeStrong(location, 0);
}

- (void)controllerDone
{
  delegate = [(SetupChoiceController *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_selectedChoice);
  -[BFFFlowItemDelegate flowItemDone:nextItemClass:](delegate, "flowItemDone:nextItemClass:", self, [WeakRetained nextControllerClass]);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(SetupChoiceController *)selfCopy _useTableLayout])
  {
    v7 = [(NSArray *)selfCopy->_choices count];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (void)configureCell:(id)cell atIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v15 = 0;
  objc_storeStrong(&v15, path);
  textLabel = [location[0] textLabel];
  v6 = -[NSArray objectAtIndexedSubscript:](selfCopy->_choices, "objectAtIndexedSubscript:", [v15 row]);
  localizedTitle = [v6 localizedTitle];
  [textLabel setText:localizedTitle];

  v13 = 0;
  v8 = 0;
  if ([(SetupChoiceController *)selfCopy wantsNextButton])
  {
    v9 = [v15 row];
    choices = selfCopy->_choices;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_selectedChoice);
    v13 = 1;
    v8 = v9 == [(NSArray *)choices indexOfObject:?];
  }

  if (v13)
  {
  }

  if (v8)
  {
    [location[0] setAccessoryType:3];
    textLabel2 = [location[0] textLabel];
    v12 = +[UIColor tableCellBlueTextColor];
    [textLabel2 setTextColor:v12];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, cell);
  v7 = 0;
  objc_storeStrong(&v7, path);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  v7 = [location[0] dequeueReusableCellWithIdentifier:@"CELL"];
  if (!v7)
  {
    v7 = [[BuddySetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"CELL"];
  }

  [(SetupChoiceController *)selfCopy configureCell:v7 atIndexPath:v8];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, path);
  v5 = [(SetupChoiceController *)selfCopy tableView:location[0] cellForRowAtIndexPath:v14];
  [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v6;
  v8 = +[BFFStyle sharedStyle];
  [v8 tallRowHeight];
  v10 = v9;

  if (v7 <= v10)
  {
    v11 = +[BFFStyle sharedStyle];
    [v11 tallRowHeight];
    v17 = v12;
  }

  else
  {
    v17 = UITableViewAutomaticDimension;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v17;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = 0;
  objc_storeStrong(&v5, path);
  -[SetupChoiceController setSelectedChoiceIndex:](selfCopy, "setSelectedChoiceIndex:", [v5 row]);
  if ([(SetupChoiceController *)selfCopy wantsNextButton])
  {
    [location[0] deselectRowAtIndexPath:v5 animated:1];
  }

  else
  {
    [(SetupChoiceController *)selfCopy checkChoiceValid];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v4 = selfCopy->_serviceFooterView;
  objc_storeStrong(location, 0);
  return v4;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (selfCopy->_serviceFooterView)
  {
    tableView = [(BuddyTableViewController *)selfCopy tableView];
    [(UITableView *)tableView separatorInset];
    [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView setLeftPadding:v5];

    if ((BFFIsiPad() & 1) == 0)
    {
      tableView2 = [(BuddyTableViewController *)selfCopy tableView];
      [(UITableView *)tableView2 separatorInset];
      [(BuddyAppleIDTableHeaderView *)selfCopy->_serviceFooterView setRightPadding:v7];
    }

    serviceFooterView = selfCopy->_serviceFooterView;
    [location[0] bounds];
    sub_1000FD4C0();
    [(BuddyAppleIDTableHeaderView *)serviceFooterView sizeThatFits:v9, v10];
    v15 = v11;
  }

  else
  {
    v15 = UITableViewAutomaticDimension;
  }

  objc_storeStrong(location, 0);
  return v15;
}

- (id)viewForFooterInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v3 = selfCopy->_learnMoreView;
  objc_storeStrong(location, 0);
  return v3;
}

- (double)heightForFooterInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  tableView = [(BuddyTableViewController *)selfCopy tableView];
  [(UITableView *)tableView separatorInset];
  [(BuddyAppleIDLinkView *)selfCopy->_learnMoreView setSidePadding:v4];

  if (selfCopy->_learnMoreView)
  {
    learnMoreView = selfCopy->_learnMoreView;
    [location[0] bounds];
    sub_1000FD4C0();
    [(BuddyAppleIDLinkView *)learnMoreView sizeThatFits:v6, v7];
    v9 = v8 + 40.0;
  }

  else
  {
    v9 = 0.0;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (SetupChoice)selectedChoice
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedChoice);

  return WeakRetained;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
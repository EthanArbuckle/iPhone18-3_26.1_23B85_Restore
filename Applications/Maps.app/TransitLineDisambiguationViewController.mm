@interface TransitLineDisambiguationViewController
- (BOOL)hasStatusMessageToShow;
- (BOOL)isLoading;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)titleForSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_determineShieldsFromLines;
- (void)handleDismissAction:(id)action;
- (void)headerViewTapped:(id)tapped;
- (void)setLines:(id)lines;
- (void)setStatusMessage:(id)message;
- (void)setTitleMessage:(id)message;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TransitLineDisambiguationViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  section = [pathCopy section];
  linesBySystem = [(TransitLineDisambiguationViewController *)self linesBySystem];
  v10 = [linesBySystem objectAtIndexedSubscript:section];

  if (v7 >= [v10 count])
  {
    lineSelectionBlock = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];

    if (!lineSelectionBlock)
    {
      goto LABEL_7;
    }

    lineSelectionBlock2 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];
    lineSelectionBlock2[2](lineSelectionBlock2, 0);
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    lineSelectionBlock2 = [v10 objectAtIndexedSubscript:v7];
    v12 = +[MKMapService sharedService];
    currentUITargetForAnalytics = [(TransitLineDisambiguationViewController *)self currentUITargetForAnalytics];
    v14 = +[GEOPlaceActionDetails actionDetailsWithMapItem:timestamp:resultIndex:targetID:](GEOPlaceActionDetails, "actionDetailsWithMapItem:timestamp:resultIndex:targetID:", 0, v7, [lineSelectionBlock2 muid], 0.0);
    [v12 captureUserAction:1032 onTarget:currentUITargetForAnalytics eventValue:0 placeActionDetails:v14];

    lineSelectionBlock3 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];

    if (lineSelectionBlock3)
    {
      lineSelectionBlock4 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];
      lineSelectionBlock4[2](lineSelectionBlock4, lineSelectionBlock2);
    }
  }

LABEL_7:
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(TransitLineDisambiguationViewController *)self hasStatusMessageToShow]|| [(TransitLineDisambiguationViewController *)self isLoading])
  {
    v6 = 0;
  }

  else
  {
    v6 = pathCopy;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (sub_10000FA08(self) != 5)
  {
    [v10 set_mapkit_separatorStyleOverride:1];
  }

  if ([(TransitLineDisambiguationViewController *)self isLoading])
  {
    [v10 showSpinner];
    [v10 setLabelText:0];
LABEL_7:
    [v10 setShieldImage:0];
    [v10 setMaxWidth:0.0];
    goto LABEL_17;
  }

  if ([(TransitLineDisambiguationViewController *)self hasStatusMessageToShow])
  {
    statusMessage = [(TransitLineDisambiguationViewController *)self statusMessage];
    [v10 setLabelText:statusMessage];

    goto LABEL_7;
  }

  v12 = [pathCopy row];
  section = [pathCopy section];
  linesBySystem = [(TransitLineDisambiguationViewController *)self linesBySystem];
  v15 = [linesBySystem objectAtIndexedSubscript:section];

  if (v12 < [v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:v12];
    shieldsByLine = [(TransitLineDisambiguationViewController *)self shieldsByLine];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 muid]);
    v19 = [shieldsByLine objectForKeyedSubscript:v18];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [v10 setShieldImage:v20];
    v21 = v16;
    name = [v21 name];
    v23 = [name length];

    if (v23)
    {
      name2 = [v21 name];
    }

    else
    {
      system = [v21 system];
      name2 = [system name];
    }

    [v10 setLabelText:name2];
    [v10 setMaxWidth:self->_maxWidthOfShields];
  }

LABEL_17:

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if (![(TransitLineDisambiguationViewController *)self isLoading])
  {
    [cellCopy hideSpinner];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (sub_10000FA08(self) != 5)
  {
    return 1;
  }

  linesBySystem = [(TransitLineDisambiguationViewController *)self linesBySystem];
  if ([linesBySystem count] < 1)
  {
    v6 = 1;
  }

  else
  {
    linesBySystem2 = [(TransitLineDisambiguationViewController *)self linesBySystem];
    v6 = [linesBySystem2 count];
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(TransitLineDisambiguationViewController *)self hasStatusMessageToShow]|| [(TransitLineDisambiguationViewController *)self isLoading])
  {
    return 1;
  }

  linesBySystem = [(TransitLineDisambiguationViewController *)self linesBySystem];
  v8 = [linesBySystem objectAtIndexedSubscript:section];

  v9 = [v8 count];
  return v9;
}

- (id)titleForSection:(int64_t)section
{
  if ([(TransitLineDisambiguationViewController *)self isLoading])
  {
    titleMessage = [(TransitLineDisambiguationViewController *)self titleMessage];
  }

  else
  {
    linesBySystem = [(TransitLineDisambiguationViewController *)self linesBySystem];
    v7 = [linesBySystem objectAtIndexedSubscript:section];

    firstObject = [v7 firstObject];
    system = [firstObject system];
    name = [system name];

    v11 = [v7 count];
    v12 = [name length];
    v13 = +[NSBundle mainBundle];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 localizedStringForKey:@"number_of_disambiguation_lines_with_system_name" value:@"localized string not found" table:0];

      [NSString localizedStringWithFormat:v15, v11, name];
    }

    else
    {
      v15 = [v13 localizedStringForKey:@"number_of_disambiguation_lines" value:@"localized string not found" table:0];

      [NSString localizedStringWithFormat:v15, v11, v17];
    }
    titleMessage = ;
  }

  return titleMessage;
}

- (BOOL)hasStatusMessageToShow
{
  statusMessage = [(TransitLineDisambiguationViewController *)self statusMessage];
  if ([statusMessage length])
  {
    allLines = [(TransitLineDisambiguationViewController *)self allLines];
    v5 = [allLines count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLoading
{
  statusMessage = [(TransitLineDisambiguationViewController *)self statusMessage];
  if ([statusMessage length])
  {
    v4 = 0;
  }

  else
  {
    allLines = [(TransitLineDisambiguationViewController *)self allLines];
    v4 = [allLines count] == 0;
  }

  return v4;
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[TransitLineDisambiguationViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6.receiver = self;
  v6.super_class = TransitLineDisambiguationViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:actionCopy];
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (void)_determineShieldsFromLines
{
  v3 = +[NSMutableDictionary dictionary];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (sub_10000FA08(self) == 5)
  {
    v4 = 6;
  }

  else
  {
    v4 = 7;
  }

  view = [(TransitLineDisambiguationViewController *)self view];
  window = [view window];
  screen = [window screen];
  v8 = screen;
  if (!screen)
  {
    v8 = +[UIScreen mainScreen];
  }

  [v8 scale];
  v10 = v9;
  if (!screen)
  {
  }

  allLines = [(TransitLineDisambiguationViewController *)self allLines];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100CDEA8C;
  v20[3] = &unk_101650A60;
  v23 = v4;
  v24 = v10;
  v12 = v3;
  v21 = v12;
  v22 = &v25;
  [allLines enumerateObjectsUsingBlock:v20];

  allLines2 = [(TransitLineDisambiguationViewController *)self allLines];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100CDEBAC;
  v16[3] = &unk_101650A88;
  v14 = v12;
  v17 = v14;
  v18 = &v25;
  v19 = v10;
  [allLines2 enumerateObjectsUsingBlock:v16];

  *&self->_maxWidthOfShields = v26[3];
  v15 = [v14 copy];
  [(TransitLineDisambiguationViewController *)self setShieldsByLine:v15];

  _Block_object_dispose(&v25, 8);
}

- (void)setLines:(id)lines
{
  linesCopy = lines;
  if (![(NSArray *)self->_allLines isEqualToArray:linesCopy])
  {
    v5 = [linesCopy copy];
    allLines = self->_allLines;
    self->_allLines = v5;

    if (sub_10000FA08(self) == 5)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = linesCopy;
      v8 = linesCopy;
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            system = [v13 system];
            name = [system name];

            v16 = [v7 objectForKeyedSubscript:name];
            if (!v16)
            {
              v16 = +[NSMutableArray array];
              [v7 setObject:v16 forKeyedSubscript:name];
            }

            [v16 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v10);
      }

      +[NSMutableArray array];
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100CDF04C;
      v28 = v27 = &unk_101650A38;
      v17 = v28;
      [v7 enumerateKeysAndObjectsUsingBlock:&v24];
      v18 = [v17 copy];
      linesBySystem = self->_linesBySystem;
      self->_linesBySystem = v18;

      linesCopy = v23;
    }

    else
    {
      v20 = self->_allLines;
      if (v20)
      {
        v33 = self->_allLines;
        v7 = [NSArray arrayWithObjects:&v33 count:1];
      }

      else
      {
        v7 = 0;
      }

      objc_storeStrong(&self->_linesBySystem, v7);
      if (!v20)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    [(TransitLineDisambiguationViewController *)self _determineShieldsFromLines:v23];
    tableView = [(TransitLineDisambiguationViewController *)self tableView];
    [tableView reloadData];

    tableView2 = [(TransitLineDisambiguationViewController *)self tableView];
    [tableView2 layoutIfNeeded];
  }
}

- (void)setStatusMessage:(id)message
{
  messageCopy = message;
  v6 = self->_statusMessage;
  v7 = messageCopy;
  if (v7 | v6)
  {
    v10 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v10;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_statusMessage, message);
      tableView = [(TransitLineDisambiguationViewController *)self tableView];
      [tableView reloadData];

      v7 = v10;
    }
  }
}

- (void)setTitleMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy copy];
  titleMessage = self->_titleMessage;
  self->_titleMessage = v5;

  titleHeaderView = [(TransitLineDisambiguationViewController *)self titleHeaderView];
  [titleHeaderView setTitle:messageCopy];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = TransitLineDisambiguationViewController;
  [(ContaineeViewController *)&v72 viewDidLoad];
  v3 = +[NSMutableArray array];
  v71 = v3;
  if (sub_10000FA08(self) == 5)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    v8 = [ContainerHeaderView alloc];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(ContainerHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
    titleHeaderView = self->_titleHeaderView;
    self->_titleHeaderView = height;

    [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
    [(ContainerHeaderView *)self->_titleHeaderView setPreservesSuperviewLayoutMargins:1];
    [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(TransitLineDisambiguationViewController *)self view];
    [view addSubview:self->_titleHeaderView];

    trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
    view2 = [(TransitLineDisambiguationViewController *)self view];
    trailingAnchor2 = [view2 trailingAnchor];
    v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v75[0] = v63;
    topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
    view3 = [(TransitLineDisambiguationViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[1] = v14;
    leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
    view4 = [(TransitLineDisambiguationViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v75[2] = v18;
    v19 = [NSArray arrayWithObjects:v75 count:3];
    [v3 addObjectsFromArray:v19];
  }

  height2 = [[MapsThemeTableView alloc] initWithFrame:sub_10000FA08(self) == 5 style:x, y, width, height];
  [(TransitLineDisambiguationViewController *)self setTableView:height2];

  tableView = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView3 setSectionHeaderHeight:UITableViewAutomaticDimension];

  tableView4 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView4 _setAutomaticContentOffsetAdjustmentEnabled:0];

  v25 = [[UIView alloc] initWithFrame:{x, y, width, height}];
  tableView5 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView5 setTableFooterView:v25];

  tableView6 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView6 setDelegate:self];

  tableView7 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView7 setDataSource:self];

  tableView8 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView8 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];

  tableView9 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView9 setEstimatedRowHeight:79.0];

  v31 = +[UIColor clearColor];
  tableView10 = [(TransitLineDisambiguationViewController *)self tableView];
  [tableView10 setBackgroundColor:v31];

  tableView11 = [(TransitLineDisambiguationViewController *)self tableView];
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  [tableView11 registerClass:v34 forCellReuseIdentifier:v36];

  tableView12 = [(TransitLineDisambiguationViewController *)self tableView];
  v38 = objc_opt_class();
  v39 = +[TransitLineDisambiguationSectionHeaderView identifier];
  [tableView12 registerClass:v38 forHeaderFooterViewReuseIdentifier:v39];

  view5 = [(TransitLineDisambiguationViewController *)self view];
  tableView13 = [(TransitLineDisambiguationViewController *)self tableView];
  [view5 addSubview:tableView13];

  v42 = sub_10000FA08(self);
  trailingAnchor3 = [(MapsThemeTableView *)self->_tableView trailingAnchor];
  view6 = [(TransitLineDisambiguationViewController *)self view];
  trailingAnchor4 = [view6 trailingAnchor];
  v44 = [trailingAnchor3 constraintEqualToAnchor:?];
  v66 = v44;
  if (v42 == 5)
  {
    v74[0] = v44;
    topAnchor3 = [(MapsThemeTableView *)self->_tableView topAnchor];
    view7 = [(TransitLineDisambiguationViewController *)self view];
    topAnchor4 = [view7 topAnchor];
    v60 = [topAnchor3 constraintEqualToAnchor:?];
    v74[1] = v60;
    leadingAnchor3 = [(MapsThemeTableView *)self->_tableView leadingAnchor];
    view8 = [(TransitLineDisambiguationViewController *)self view];
    leadingAnchor4 = [view8 leadingAnchor];
    view10 = leadingAnchor3;
    bottomAnchor3 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v74[2] = bottomAnchor3;
    bottomAnchor = [(MapsThemeTableView *)self->_tableView bottomAnchor];
    view9 = [(TransitLineDisambiguationViewController *)self view];
    bottomAnchor2 = [view9 bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v52;
    [NSArray arrayWithObjects:v74 count:4];
    v54 = v53 = trailingAnchor3;
    v55 = v71;
    [v71 addObjectsFromArray:v54];

    trailingAnchor3 = v53;
    topAnchor5 = topAnchor3;
  }

  else
  {
    v73[0] = v44;
    topAnchor5 = [(MapsThemeTableView *)self->_tableView topAnchor];
    view7 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
    topAnchor4 = [topAnchor5 constraintEqualToAnchor:?];
    v73[1] = topAnchor4;
    leadingAnchor5 = [(MapsThemeTableView *)self->_tableView leadingAnchor];
    view10 = [(TransitLineDisambiguationViewController *)self view];
    view8 = [view10 leadingAnchor];
    v60 = leadingAnchor5;
    leadingAnchor4 = [leadingAnchor5 constraintEqualToAnchor:view8];
    v73[2] = leadingAnchor4;
    bottomAnchor3 = [(MapsThemeTableView *)self->_tableView bottomAnchor];
    bottomAnchor = [(TransitLineDisambiguationViewController *)self view];
    view9 = [bottomAnchor bottomAnchor];
    bottomAnchor2 = [bottomAnchor3 constraintEqualToAnchor:view9];
    v73[3] = bottomAnchor2;
    v52 = [NSArray arrayWithObjects:v73 count:4];
    v55 = v71;
    [v71 addObjectsFromArray:v52];
  }

  [NSLayoutConstraint activateConstraints:v55];
}

@end
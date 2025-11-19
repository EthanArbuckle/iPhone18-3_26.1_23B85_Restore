@interface TransitLineDisambiguationViewController
- (BOOL)hasStatusMessageToShow;
- (BOOL)isLoading;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)titleForSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_determineShieldsFromLines;
- (void)handleDismissAction:(id)a3;
- (void)headerViewTapped:(id)a3;
- (void)setLines:(id)a3;
- (void)setStatusMessage:(id)a3;
- (void)setTitleMessage:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation TransitLineDisambiguationViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [v6 section];
  v9 = [(TransitLineDisambiguationViewController *)self linesBySystem];
  v10 = [v9 objectAtIndexedSubscript:v8];

  if (v7 >= [v10 count])
  {
    v17 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];

    if (!v17)
    {
      goto LABEL_7;
    }

    v11 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];
    v11[2](v11, 0);
  }

  else
  {
    [v18 deselectRowAtIndexPath:v6 animated:1];
    v11 = [v10 objectAtIndexedSubscript:v7];
    v12 = +[MKMapService sharedService];
    v13 = [(TransitLineDisambiguationViewController *)self currentUITargetForAnalytics];
    v14 = +[GEOPlaceActionDetails actionDetailsWithMapItem:timestamp:resultIndex:targetID:](GEOPlaceActionDetails, "actionDetailsWithMapItem:timestamp:resultIndex:targetID:", 0, v7, [v11 muid], 0.0);
    [v12 captureUserAction:1032 onTarget:v13 eventValue:0 placeActionDetails:v14];

    v15 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];

    if (v15)
    {
      v16 = [(TransitLineDisambiguationViewController *)self lineSelectionBlock];
      v16[2](v16, v11);
    }
  }

LABEL_7:
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(TransitLineDisambiguationViewController *)self hasStatusMessageToShow]|| [(TransitLineDisambiguationViewController *)self isLoading])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

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
    v11 = [(TransitLineDisambiguationViewController *)self statusMessage];
    [v10 setLabelText:v11];

    goto LABEL_7;
  }

  v12 = [v6 row];
  v13 = [v6 section];
  v14 = [(TransitLineDisambiguationViewController *)self linesBySystem];
  v15 = [v14 objectAtIndexedSubscript:v13];

  if (v12 < [v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:v12];
    v17 = [(TransitLineDisambiguationViewController *)self shieldsByLine];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 muid]);
    v19 = [v17 objectForKeyedSubscript:v18];

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
    v22 = [v21 name];
    v23 = [v22 length];

    if (v23)
    {
      v24 = [v21 name];
    }

    else
    {
      v25 = [v21 system];
      v24 = [v25 name];
    }

    [v10 setLabelText:v24];
    [v10 setMaxWidth:self->_maxWidthOfShields];
  }

LABEL_17:

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  if (![(TransitLineDisambiguationViewController *)self isLoading])
  {
    [v6 hideSpinner];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (sub_10000FA08(self) != 5)
  {
    return 1;
  }

  v4 = [(TransitLineDisambiguationViewController *)self linesBySystem];
  if ([v4 count] < 1)
  {
    v6 = 1;
  }

  else
  {
    v5 = [(TransitLineDisambiguationViewController *)self linesBySystem];
    v6 = [v5 count];
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(TransitLineDisambiguationViewController *)self hasStatusMessageToShow]|| [(TransitLineDisambiguationViewController *)self isLoading])
  {
    return 1;
  }

  v7 = [(TransitLineDisambiguationViewController *)self linesBySystem];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 count];
  return v9;
}

- (id)titleForSection:(int64_t)a3
{
  if ([(TransitLineDisambiguationViewController *)self isLoading])
  {
    v5 = [(TransitLineDisambiguationViewController *)self titleMessage];
  }

  else
  {
    v6 = [(TransitLineDisambiguationViewController *)self linesBySystem];
    v7 = [v6 objectAtIndexedSubscript:a3];

    v8 = [v7 firstObject];
    v9 = [v8 system];
    v10 = [v9 name];

    v11 = [v7 count];
    v12 = [v10 length];
    v13 = +[NSBundle mainBundle];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 localizedStringForKey:@"number_of_disambiguation_lines_with_system_name" value:@"localized string not found" table:0];

      [NSString localizedStringWithFormat:v15, v11, v10];
    }

    else
    {
      v15 = [v13 localizedStringForKey:@"number_of_disambiguation_lines" value:@"localized string not found" table:0];

      [NSString localizedStringWithFormat:v15, v11, v17];
    }
    v5 = ;
  }

  return v5;
}

- (BOOL)hasStatusMessageToShow
{
  v3 = [(TransitLineDisambiguationViewController *)self statusMessage];
  if ([v3 length])
  {
    v4 = [(TransitLineDisambiguationViewController *)self allLines];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLoading
{
  v3 = [(TransitLineDisambiguationViewController *)self statusMessage];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TransitLineDisambiguationViewController *)self allLines];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[TransitLineDisambiguationViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6.receiver = self;
  v6.super_class = TransitLineDisambiguationViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:v4];
}

- (void)headerViewTapped:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsExpandLayout];
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

  v5 = [(TransitLineDisambiguationViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 screen];
  v8 = v7;
  if (!v7)
  {
    v8 = +[UIScreen mainScreen];
  }

  [v8 scale];
  v10 = v9;
  if (!v7)
  {
  }

  v11 = [(TransitLineDisambiguationViewController *)self allLines];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100CDEA8C;
  v20[3] = &unk_101650A60;
  v23 = v4;
  v24 = v10;
  v12 = v3;
  v21 = v12;
  v22 = &v25;
  [v11 enumerateObjectsUsingBlock:v20];

  v13 = [(TransitLineDisambiguationViewController *)self allLines];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100CDEBAC;
  v16[3] = &unk_101650A88;
  v14 = v12;
  v17 = v14;
  v18 = &v25;
  v19 = v10;
  [v13 enumerateObjectsUsingBlock:v16];

  *&self->_maxWidthOfShields = v26[3];
  v15 = [v14 copy];
  [(TransitLineDisambiguationViewController *)self setShieldsByLine:v15];

  _Block_object_dispose(&v25, 8);
}

- (void)setLines:(id)a3
{
  v4 = a3;
  if (![(NSArray *)self->_allLines isEqualToArray:v4])
  {
    v5 = [v4 copy];
    allLines = self->_allLines;
    self->_allLines = v5;

    if (sub_10000FA08(self) == 5)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = v4;
      v8 = v4;
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
            v14 = [v13 system];
            v15 = [v14 name];

            v16 = [v7 objectForKeyedSubscript:v15];
            if (!v16)
            {
              v16 = +[NSMutableArray array];
              [v7 setObject:v16 forKeyedSubscript:v15];
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

      v4 = v23;
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
    v21 = [(TransitLineDisambiguationViewController *)self tableView];
    [v21 reloadData];

    v22 = [(TransitLineDisambiguationViewController *)self tableView];
    [v22 layoutIfNeeded];
  }
}

- (void)setStatusMessage:(id)a3
{
  v5 = a3;
  v6 = self->_statusMessage;
  v7 = v5;
  if (v7 | v6)
  {
    v10 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v10;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_statusMessage, a3);
      v9 = [(TransitLineDisambiguationViewController *)self tableView];
      [v9 reloadData];

      v7 = v10;
    }
  }
}

- (void)setTitleMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  titleMessage = self->_titleMessage;
  self->_titleMessage = v5;

  v7 = [(TransitLineDisambiguationViewController *)self titleHeaderView];
  [v7 setTitle:v4];
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
    v9 = [(ContainerHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
    titleHeaderView = self->_titleHeaderView;
    self->_titleHeaderView = v9;

    [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
    [(ContainerHeaderView *)self->_titleHeaderView setPreservesSuperviewLayoutMargins:1];
    [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(TransitLineDisambiguationViewController *)self view];
    [v11 addSubview:self->_titleHeaderView];

    v67 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
    v69 = [(TransitLineDisambiguationViewController *)self view];
    v65 = [v69 trailingAnchor];
    v63 = [v67 constraintEqualToAnchor:v65];
    v75[0] = v63;
    v61 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
    v12 = [(TransitLineDisambiguationViewController *)self view];
    v13 = [v12 topAnchor];
    v14 = [v61 constraintEqualToAnchor:v13];
    v75[1] = v14;
    v15 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
    v16 = [(TransitLineDisambiguationViewController *)self view];
    v17 = [v16 leadingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v75[2] = v18;
    v19 = [NSArray arrayWithObjects:v75 count:3];
    [v3 addObjectsFromArray:v19];
  }

  v20 = [[MapsThemeTableView alloc] initWithFrame:sub_10000FA08(self) == 5 style:x, y, width, height];
  [(TransitLineDisambiguationViewController *)self setTableView:v20];

  v21 = [(TransitLineDisambiguationViewController *)self tableView];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(TransitLineDisambiguationViewController *)self tableView];
  [v22 setRowHeight:UITableViewAutomaticDimension];

  v23 = [(TransitLineDisambiguationViewController *)self tableView];
  [v23 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v24 = [(TransitLineDisambiguationViewController *)self tableView];
  [v24 _setAutomaticContentOffsetAdjustmentEnabled:0];

  v25 = [[UIView alloc] initWithFrame:{x, y, width, height}];
  v26 = [(TransitLineDisambiguationViewController *)self tableView];
  [v26 setTableFooterView:v25];

  v27 = [(TransitLineDisambiguationViewController *)self tableView];
  [v27 setDelegate:self];

  v28 = [(TransitLineDisambiguationViewController *)self tableView];
  [v28 setDataSource:self];

  v29 = [(TransitLineDisambiguationViewController *)self tableView];
  [v29 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];

  v30 = [(TransitLineDisambiguationViewController *)self tableView];
  [v30 setEstimatedRowHeight:79.0];

  v31 = +[UIColor clearColor];
  v32 = [(TransitLineDisambiguationViewController *)self tableView];
  [v32 setBackgroundColor:v31];

  v33 = [(TransitLineDisambiguationViewController *)self tableView];
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  [v33 registerClass:v34 forCellReuseIdentifier:v36];

  v37 = [(TransitLineDisambiguationViewController *)self tableView];
  v38 = objc_opt_class();
  v39 = +[TransitLineDisambiguationSectionHeaderView identifier];
  [v37 registerClass:v38 forHeaderFooterViewReuseIdentifier:v39];

  v40 = [(TransitLineDisambiguationViewController *)self view];
  v41 = [(TransitLineDisambiguationViewController *)self tableView];
  [v40 addSubview:v41];

  v42 = sub_10000FA08(self);
  v43 = [(MapsThemeTableView *)self->_tableView trailingAnchor];
  v70 = [(TransitLineDisambiguationViewController *)self view];
  v68 = [v70 trailingAnchor];
  v44 = [v43 constraintEqualToAnchor:?];
  v66 = v44;
  if (v42 == 5)
  {
    v74[0] = v44;
    v58 = [(MapsThemeTableView *)self->_tableView topAnchor];
    v64 = [(TransitLineDisambiguationViewController *)self view];
    v62 = [v64 topAnchor];
    v60 = [v58 constraintEqualToAnchor:?];
    v74[1] = v60;
    v45 = [(MapsThemeTableView *)self->_tableView leadingAnchor];
    v46 = [(TransitLineDisambiguationViewController *)self view];
    v47 = [v46 leadingAnchor];
    v59 = v45;
    v48 = [v45 constraintEqualToAnchor:v47];
    v74[2] = v48;
    v49 = [(MapsThemeTableView *)self->_tableView bottomAnchor];
    v50 = [(TransitLineDisambiguationViewController *)self view];
    v51 = [v50 bottomAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    v74[3] = v52;
    [NSArray arrayWithObjects:v74 count:4];
    v54 = v53 = v43;
    v55 = v71;
    [v71 addObjectsFromArray:v54];

    v43 = v53;
    v56 = v58;
  }

  else
  {
    v73[0] = v44;
    v56 = [(MapsThemeTableView *)self->_tableView topAnchor];
    v64 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
    v62 = [v56 constraintEqualToAnchor:?];
    v73[1] = v62;
    v57 = [(MapsThemeTableView *)self->_tableView leadingAnchor];
    v59 = [(TransitLineDisambiguationViewController *)self view];
    v46 = [v59 leadingAnchor];
    v60 = v57;
    v47 = [v57 constraintEqualToAnchor:v46];
    v73[2] = v47;
    v48 = [(MapsThemeTableView *)self->_tableView bottomAnchor];
    v49 = [(TransitLineDisambiguationViewController *)self view];
    v50 = [v49 bottomAnchor];
    v51 = [v48 constraintEqualToAnchor:v50];
    v73[3] = v51;
    v52 = [NSArray arrayWithObjects:v73 count:4];
    v55 = v71;
    [v71 addObjectsFromArray:v52];
  }

  [NSLayoutConstraint activateConstraints:v55];
}

@end
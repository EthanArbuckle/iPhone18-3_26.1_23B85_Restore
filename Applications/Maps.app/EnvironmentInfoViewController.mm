@interface EnvironmentInfoViewController
- (EnvironmentInfoViewController)initWithStyle:(int64_t)style environment:(id)environment editable:(BOOL)editable;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_urlStringForIndexPath:(id)path isFromManifest:(BOOL *)manifest isFromOverrides:(BOOL *)overrides;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_beginEditing:(id)editing;
- (void)_endEditing:(id)editing;
- (void)_titleTapGestureRecognizerFired:(id)fired;
- (void)_updateNavigationItem;
- (void)_updateTitleLabel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)urlCell:(id)cell didChangeURLString:(id)string;
@end

@implementation EnvironmentInfoViewController

- (void)urlCell:(id)cell didChangeURLString:(id)string
{
  stringCopy = string;
  urlType = [cell urlType];
  overrideURLs = self->_overrideURLs;
  v9 = [NSNumber numberWithUnsignedInteger:urlType];
  [(NSMapTable *)overrideURLs setObject:stringCopy forKey:v9];

  tableView = [(EnvironmentInfoViewController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section < [(NSArray *)self->_urlTypes count])
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [pathCopy section]);
    integerValue = [v9 integerValue];

    if (integerValue == 1 && [pathCopy row] == 1)
    {
      v11 = [ActiveTileGroupDebugController alloc];
      resourceManifest = [(GEOEnvironmentInfo *)self->_environment resourceManifest];
      v13 = [(ActiveTileGroupDebugController *)v11 initWithResourceManifest:resourceManifest];

      navigationController = [(EnvironmentInfoViewController *)self navigationController];
      [navigationController pushViewController:v13 animated:1];

LABEL_9:
      goto LABEL_10;
    }
  }

  if (self->_editing)
  {
    section2 = [pathCopy section];
    if (section2 == [(NSArray *)self->_urlTypes count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [UIAlertController alertControllerWithTitle:@"Delete Environment" message:@"Are you sure you want to delete this custom environment?" preferredStyle:0];
        v16 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
        [(ActiveTileGroupDebugController *)v13 addAction:v16];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100F7D4A4;
        v18[3] = &unk_10165F220;
        v18[4] = self;
        v17 = [UIAlertAction actionWithTitle:@"Delete" style:2 handler:v18];
        [(ActiveTileGroupDebugController *)v13 addAction:v17];

        [(EnvironmentInfoViewController *)self presentViewController:v13 animated:1 completion:0];
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_editing)
  {
    section = [pathCopy section];
    if (section == [(NSArray *)self->_urlTypes count])
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v11 = +[UIColor systemRedColor];
      [(_EnvironmentURLTableViewCell *)v10 setBackgroundColor:v11];

      v12 = +[UIColor systemRedColor];
      v13 = [v12 colorWithAlphaComponent:0.800000012];
      [(_EnvironmentURLTableViewCell *)v10 setSelectionTintColor:v13];

      v14 = +[UIColor whiteColor];
      textLabel = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel setTextColor:v14];

      textLabel2 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel2 setText:@"Delete Environment"];

      textLabel3 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel3 setTextAlignment:1];
LABEL_21:

      goto LABEL_22;
    }
  }

  v18 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [v8 section]);
  integerValue = [v18 integerValue];

  if (self->_editing)
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"EnvironmentInfoServiceURLEditingCell"];
    if (!v10)
    {
      v10 = [[_EnvironmentURLTableViewCell alloc] initWithReuseIdentifier:@"EnvironmentInfoServiceURLEditingCell"];
    }

    [(_EnvironmentURLTableViewCell *)v10 setDelegate:self];
    v36 = 0;
    v20 = [(EnvironmentInfoViewController *)self _urlStringForIndexPath:v8 isFromManifest:&v36 + 1 isFromOverrides:&v36];
    editableTextField = [(_EnvironmentURLTableViewCell *)v10 editableTextField];
    [editableTextField setText:v20];

    [(_EnvironmentURLTableViewCell *)v10 setUrlType:integerValue];
  }

  else
  {
    if (integerValue == 1 && [v8 row] == 1)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      textLabel4 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel4 setText:@"Tile Groups"];

      [(_EnvironmentURLTableViewCell *)v10 setAccessoryType:1];
      goto LABEL_22;
    }

    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"EnvironmentInfoServiceURLCell"];
    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"EnvironmentInfoServiceURLCell"];
      textLabel5 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel5 setLineBreakMode:1];

      textLabel6 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel6 setNumberOfLines:0];

      [(_EnvironmentURLTableViewCell *)v10 setSelectionStyle:0];
    }

    v35 = 0;
    v25 = [(EnvironmentInfoViewController *)self _urlStringForIndexPath:v8 isFromManifest:&v35 + 1 isFromOverrides:&v35];
    textLabel7 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
    [textLabel7 setText:v25];

    if (v35 == 1)
    {
      v27 = +[UIColor systemBlueColor];
    }

    else
    {
      if (HIBYTE(v35) == 1)
      {
        +[UIColor purpleColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v27 = ;
    }

    v28 = v27;
    textLabel8 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
    [textLabel8 setTextColor:v28];

    textLabel9 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
    text = [textLabel9 text];

    if (!text)
    {
      textLabel10 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel10 setText:@"(none)"];

      textLabel3 = +[UIColor secondaryLabelColor];
      textLabel11 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [textLabel11 setTextColor:textLabel3];

      goto LABEL_21;
    }
  }

LABEL_22:

  return v10;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_editing || (-[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [pathCopy section]), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "integerValue"), v13, v14 == 1) && objc_msgSend(v8, "row") == 1)
  {
    v9 = +[UIListContentConfiguration cellConfiguration];
    traitCollection = [viewCopy traitCollection];
    [(__CFString *)v9 _minimumHeightForTraitCollection:traitCollection];
    v12 = v11;
  }

  else
  {
    v15 = [(EnvironmentInfoViewController *)self _urlStringForIndexPath:v8 isFromManifest:0 isFromOverrides:0];
    if (v15)
    {
      v9 = v15;
    }

    else
    {
      v9 = @"(none)";
    }

    v16 = +[NSParagraphStyle defaultParagraphStyle];
    traitCollection = [v16 mutableCopy];

    [traitCollection setLineBreakMode:1];
    tableView = [(EnvironmentInfoViewController *)self tableView];
    [tableView bounds];
    v19 = v18 + -40.0;
    v31[0] = NSFontAttributeName;
    +[UIFont labelFontSize];
    v20 = [UIFont systemFontOfSize:?];
    v31[1] = NSParagraphStyleAttributeName;
    v32[0] = v20;
    v32[1] = traitCollection;
    v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    [(__CFString *)v9 boundingRectWithSize:1 options:v21 attributes:0 context:v19, 1.79769313e308];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v33.origin.x = v23;
    v33.origin.y = v25;
    v33.size.width = v27;
    v33.size.height = v29;
    v12 = CGRectGetMaxY(v33) + 20.0;
  }

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_editing && [(NSDictionary *)self->_urlStrings count]== section)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_urlTypes objectAtIndexedSubscript:section];
    integerValue = [v8 integerValue];

    if (integerValue > 0x42)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_10165EF88[integerValue];
    }

    proxyRequirements = self->_proxyRequirements;
    v12 = [NSNumber numberWithUnsignedInteger:integerValue];
    v13 = [(NSDictionary *)proxyRequirements objectForKeyedSubscript:v12];
    bOOLValue = [v13 BOOLValue];

    v15 = "NO";
    if (bOOLValue)
    {
      v15 = "YES";
    }

    v7 = [NSString stringWithFormat:@"%@ - Auth: %s", v10, v15];
  }

  return v7;
}

- (id)_urlStringForIndexPath:(id)path isFromManifest:(BOOL *)manifest isFromOverrides:(BOOL *)overrides
{
  pathCopy = path;
  if (([pathCopy section] & 0x8000000000000000) != 0 || (v9 = objc_msgSend(pathCopy, "section"), v9 >= -[NSDictionary count](self->_urlStrings, "count")))
  {
    v14 = 0;
    goto LABEL_12;
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v10 integerValue];

  overrideURLs = self->_overrideURLs;
  v13 = [NSNumber numberWithUnsignedInteger:integerValue];
  v14 = [(NSMapTable *)overrideURLs objectForKey:v13];

  v15 = [v14 length];
  if (v15 || [v14 length])
  {
LABEL_7:
    v19 = 0;
    if (!manifest)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  urlStrings = self->_urlStrings;
  v17 = [NSNumber numberWithUnsignedInteger:integerValue];
  v18 = [(NSDictionary *)urlStrings objectForKeyedSubscript:v17];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = GEOURLStringIgnoringManifest();

    goto LABEL_7;
  }

  v19 = 1;
  v14 = v18;
  if (manifest)
  {
LABEL_8:
    *manifest = v19;
  }

LABEL_9:
  if (overrides)
  {
    *overrides = v15 != 0;
  }

LABEL_12:

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1 && !self->_editing)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_urlStrings)
  {
    return [(NSArray *)self->_urlTypes count]+ self->_editing;
  }

  else
  {
    return 0;
  }
}

- (void)_endEditing:(id)editing
{
  self->_editing = 0;
  [(EnvironmentInfoViewController *)self _updateNavigationItem];
  tableView = [(EnvironmentInfoViewController *)self tableView];
  [tableView reloadData];

  environment = self->_environment;
  overrideURLs = self->_overrideURLs;

  [(GEOEnvironmentInfo *)environment updateWithURLs:overrideURLs];
}

- (void)_beginEditing:(id)editing
{
  self->_editing = 1;
  [(EnvironmentInfoViewController *)self _updateNavigationItem];
  tableView = [(EnvironmentInfoViewController *)self tableView];
  [tableView reloadData];
}

- (void)_updateNavigationItem
{
  if (self->_editable)
  {
    editing = self->_editing;
    v4 = [UIBarButtonItem alloc];
    if (editing)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = &selRef__endEditing_;
    if (!editing)
    {
      v6 = &selRef__beginEditing_;
    }

    v9 = [v4 initWithBarButtonSystemItem:v5 target:self action:*v6];
  }

  else
  {
    v9 = 0;
  }

  navigationItem = [(EnvironmentInfoViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v9];

  v8 = self->_editable && self->_editing;
  [(UILabel *)self->_titleLabel setUserInteractionEnabled:v8];
}

- (void)_updateTitleLabel
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:UIFontWeightSemibold];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = self->_editable && self->_editing;
  [(UILabel *)self->_titleLabel setUserInteractionEnabled:v6];
  displayName = [(GEOEnvironmentInfo *)self->_environment displayName];
  [(UILabel *)self->_titleLabel setText:displayName];

  v8 = self->_titleLabel;
  navigationItem = [(EnvironmentInfoViewController *)self navigationItem];
  [navigationItem setTitleView:v8];

  if (self->_editable)
  {
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_titleTapGestureRecognizerFired:"];
    [v10 setNumberOfTouchesRequired:1];
    [(UILabel *)self->_titleLabel addGestureRecognizer:v10];
  }
}

- (void)_titleTapGestureRecognizerFired:(id)fired
{
  firedCopy = fired;
  objc_initWeak(&location, self);
  displayName = [(GEOEnvironmentInfo *)self->_environment displayName];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100F7E644;
  v10 = &unk_10165EF68;
  objc_copyWeak(&v11, &location);
  v6 = [EnvironmentsCreationAlertController alertControllerWithTitle:@"Rename environment" message:@"What would you like to change the display name to?" confirmActionTitle:@"Confirm" placeholderText:displayName nameSelectionHandler:&v7];

  [(EnvironmentInfoViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (EnvironmentInfoViewController)initWithStyle:(int64_t)style environment:(id)environment editable:(BOOL)editable
{
  environmentCopy = environment;
  v28.receiver = self;
  v28.super_class = EnvironmentInfoViewController;
  v10 = [(EnvironmentInfoViewController *)&v28 initWithStyle:style];
  v11 = v10;
  if (v10)
  {
    tableView = [(EnvironmentInfoViewController *)v10 tableView];
    [tableView setRowHeight:UITableViewAutomaticDimension];

    tableView2 = [(EnvironmentInfoViewController *)v11 tableView];
    [tableView2 setSectionFooterHeight:UITableViewAutomaticDimension];

    tableView3 = [(EnvironmentInfoViewController *)v11 tableView];
    [tableView3 setSectionHeaderHeight:UITableViewAutomaticDimension];

    objc_storeStrong(&v11->_environment, environment);
    v11->_editable = editable;
    displayName = [(GEOEnvironmentInfo *)v11->_environment displayName];
    [(EnvironmentInfoViewController *)v11 setTitle:displayName];

    serviceURLs = [(GEOEnvironmentInfo *)v11->_environment serviceURLs];
    urlStrings = v11->_urlStrings;
    v11->_urlStrings = serviceURLs;

    useProxyAuth = [(GEOEnvironmentInfo *)v11->_environment useProxyAuth];
    proxyRequirements = v11->_proxyRequirements;
    v11->_proxyRequirements = useProxyAuth;

    allKeys = [(NSDictionary *)v11->_urlStrings allKeys];
    v21 = [allKeys sortedArrayUsingComparator:&stru_10165EF40];
    urlTypes = v11->_urlTypes;
    v11->_urlTypes = v21;

    overrideURLs = [environmentCopy overrideURLs];
    v24 = [overrideURLs copy];
    overrideURLs = v11->_overrideURLs;
    v11->_overrideURLs = v24;

    [(EnvironmentInfoViewController *)v11 _updateTitleLabel];
    [(EnvironmentInfoViewController *)v11 _updateNavigationItem];
    v26 = v11;
  }

  return v11;
}

@end
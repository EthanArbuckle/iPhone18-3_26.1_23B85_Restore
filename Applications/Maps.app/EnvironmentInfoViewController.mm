@interface EnvironmentInfoViewController
- (EnvironmentInfoViewController)initWithStyle:(int64_t)a3 environment:(id)a4 editable:(BOOL)a5;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_urlStringForIndexPath:(id)a3 isFromManifest:(BOOL *)a4 isFromOverrides:(BOOL *)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_beginEditing:(id)a3;
- (void)_endEditing:(id)a3;
- (void)_titleTapGestureRecognizerFired:(id)a3;
- (void)_updateNavigationItem;
- (void)_updateTitleLabel;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)urlCell:(id)a3 didChangeURLString:(id)a4;
@end

@implementation EnvironmentInfoViewController

- (void)urlCell:(id)a3 didChangeURLString:(id)a4
{
  v6 = a4;
  v7 = [a3 urlType];
  overrideURLs = self->_overrideURLs;
  v9 = [NSNumber numberWithUnsignedInteger:v7];
  [(NSMapTable *)overrideURLs setObject:v6 forKey:v9];

  v10 = [(EnvironmentInfoViewController *)self tableView];
  [v10 reloadData];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 < [(NSArray *)self->_urlTypes count])
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [v7 section]);
    v10 = [v9 integerValue];

    if (v10 == 1 && [v7 row] == 1)
    {
      v11 = [ActiveTileGroupDebugController alloc];
      v12 = [(GEOEnvironmentInfo *)self->_environment resourceManifest];
      v13 = [(ActiveTileGroupDebugController *)v11 initWithResourceManifest:v12];

      v14 = [(EnvironmentInfoViewController *)self navigationController];
      [v14 pushViewController:v13 animated:1];

LABEL_9:
      goto LABEL_10;
    }
  }

  if (self->_editing)
  {
    v15 = [v7 section];
    if (v15 == [(NSArray *)self->_urlTypes count])
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
        [v6 deselectRowAtIndexPath:v7 animated:1];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_editing)
  {
    v9 = [v7 section];
    if (v9 == [(NSArray *)self->_urlTypes count])
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v11 = +[UIColor systemRedColor];
      [(_EnvironmentURLTableViewCell *)v10 setBackgroundColor:v11];

      v12 = +[UIColor systemRedColor];
      v13 = [v12 colorWithAlphaComponent:0.800000012];
      [(_EnvironmentURLTableViewCell *)v10 setSelectionTintColor:v13];

      v14 = +[UIColor whiteColor];
      v15 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v15 setTextColor:v14];

      v16 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v16 setText:@"Delete Environment"];

      v17 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v17 setTextAlignment:1];
LABEL_21:

      goto LABEL_22;
    }
  }

  v18 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [v8 section]);
  v19 = [v18 integerValue];

  if (self->_editing)
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"EnvironmentInfoServiceURLEditingCell"];
    if (!v10)
    {
      v10 = [[_EnvironmentURLTableViewCell alloc] initWithReuseIdentifier:@"EnvironmentInfoServiceURLEditingCell"];
    }

    [(_EnvironmentURLTableViewCell *)v10 setDelegate:self];
    v36 = 0;
    v20 = [(EnvironmentInfoViewController *)self _urlStringForIndexPath:v8 isFromManifest:&v36 + 1 isFromOverrides:&v36];
    v21 = [(_EnvironmentURLTableViewCell *)v10 editableTextField];
    [v21 setText:v20];

    [(_EnvironmentURLTableViewCell *)v10 setUrlType:v19];
  }

  else
  {
    if (v19 == 1 && [v8 row] == 1)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v22 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v22 setText:@"Tile Groups"];

      [(_EnvironmentURLTableViewCell *)v10 setAccessoryType:1];
      goto LABEL_22;
    }

    v10 = [v6 dequeueReusableCellWithIdentifier:@"EnvironmentInfoServiceURLCell"];
    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"EnvironmentInfoServiceURLCell"];
      v23 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v23 setLineBreakMode:1];

      v24 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v24 setNumberOfLines:0];

      [(_EnvironmentURLTableViewCell *)v10 setSelectionStyle:0];
    }

    v35 = 0;
    v25 = [(EnvironmentInfoViewController *)self _urlStringForIndexPath:v8 isFromManifest:&v35 + 1 isFromOverrides:&v35];
    v26 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
    [v26 setText:v25];

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
    v29 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
    [v29 setTextColor:v28];

    v30 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
    v31 = [v30 text];

    if (!v31)
    {
      v32 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v32 setText:@"(none)"];

      v17 = +[UIColor secondaryLabelColor];
      v33 = [(_EnvironmentURLTableViewCell *)v10 textLabel];
      [v33 setTextColor:v17];

      goto LABEL_21;
    }
  }

LABEL_22:

  return v10;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_editing || (-[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [v7 section]), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "integerValue"), v13, v14 == 1) && objc_msgSend(v8, "row") == 1)
  {
    v9 = +[UIListContentConfiguration cellConfiguration];
    v10 = [v6 traitCollection];
    [(__CFString *)v9 _minimumHeightForTraitCollection:v10];
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
    v10 = [v16 mutableCopy];

    [v10 setLineBreakMode:1];
    v17 = [(EnvironmentInfoViewController *)self tableView];
    [v17 bounds];
    v19 = v18 + -40.0;
    v31[0] = NSFontAttributeName;
    +[UIFont labelFontSize];
    v20 = [UIFont systemFontOfSize:?];
    v31[1] = NSParagraphStyleAttributeName;
    v32[0] = v20;
    v32[1] = v10;
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_editing && [(NSDictionary *)self->_urlStrings count]== a4)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_urlTypes objectAtIndexedSubscript:a4];
    v9 = [v8 integerValue];

    if (v9 > 0x42)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_10165EF88[v9];
    }

    proxyRequirements = self->_proxyRequirements;
    v12 = [NSNumber numberWithUnsignedInteger:v9];
    v13 = [(NSDictionary *)proxyRequirements objectForKeyedSubscript:v12];
    v14 = [v13 BOOLValue];

    v15 = "NO";
    if (v14)
    {
      v15 = "YES";
    }

    v7 = [NSString stringWithFormat:@"%@ - Auth: %s", v10, v15];
  }

  return v7;
}

- (id)_urlStringForIndexPath:(id)a3 isFromManifest:(BOOL *)a4 isFromOverrides:(BOOL *)a5
{
  v8 = a3;
  if (([v8 section] & 0x8000000000000000) != 0 || (v9 = objc_msgSend(v8, "section"), v9 >= -[NSDictionary count](self->_urlStrings, "count")))
  {
    v14 = 0;
    goto LABEL_12;
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [v8 section]);
  v11 = [v10 integerValue];

  overrideURLs = self->_overrideURLs;
  v13 = [NSNumber numberWithUnsignedInteger:v11];
  v14 = [(NSMapTable *)overrideURLs objectForKey:v13];

  v15 = [v14 length];
  if (v15 || [v14 length])
  {
LABEL_7:
    v19 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  urlStrings = self->_urlStrings;
  v17 = [NSNumber numberWithUnsignedInteger:v11];
  v18 = [(NSDictionary *)urlStrings objectForKeyedSubscript:v17];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = GEOURLStringIgnoringManifest();

    goto LABEL_7;
  }

  v19 = 1;
  v14 = v18;
  if (a4)
  {
LABEL_8:
    *a4 = v19;
  }

LABEL_9:
  if (a5)
  {
    *a5 = v15 != 0;
  }

LABEL_12:

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 == 1 && !self->_editing)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (void)_endEditing:(id)a3
{
  self->_editing = 0;
  [(EnvironmentInfoViewController *)self _updateNavigationItem];
  v4 = [(EnvironmentInfoViewController *)self tableView];
  [v4 reloadData];

  environment = self->_environment;
  overrideURLs = self->_overrideURLs;

  [(GEOEnvironmentInfo *)environment updateWithURLs:overrideURLs];
}

- (void)_beginEditing:(id)a3
{
  self->_editing = 1;
  [(EnvironmentInfoViewController *)self _updateNavigationItem];
  v4 = [(EnvironmentInfoViewController *)self tableView];
  [v4 reloadData];
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

  v7 = [(EnvironmentInfoViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v9];

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
  v7 = [(GEOEnvironmentInfo *)self->_environment displayName];
  [(UILabel *)self->_titleLabel setText:v7];

  v8 = self->_titleLabel;
  v9 = [(EnvironmentInfoViewController *)self navigationItem];
  [v9 setTitleView:v8];

  if (self->_editable)
  {
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_titleTapGestureRecognizerFired:"];
    [v10 setNumberOfTouchesRequired:1];
    [(UILabel *)self->_titleLabel addGestureRecognizer:v10];
  }
}

- (void)_titleTapGestureRecognizerFired:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(GEOEnvironmentInfo *)self->_environment displayName];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100F7E644;
  v10 = &unk_10165EF68;
  objc_copyWeak(&v11, &location);
  v6 = [EnvironmentsCreationAlertController alertControllerWithTitle:@"Rename environment" message:@"What would you like to change the display name to?" confirmActionTitle:@"Confirm" placeholderText:v5 nameSelectionHandler:&v7];

  [(EnvironmentInfoViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (EnvironmentInfoViewController)initWithStyle:(int64_t)a3 environment:(id)a4 editable:(BOOL)a5
{
  v9 = a4;
  v28.receiver = self;
  v28.super_class = EnvironmentInfoViewController;
  v10 = [(EnvironmentInfoViewController *)&v28 initWithStyle:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [(EnvironmentInfoViewController *)v10 tableView];
    [v12 setRowHeight:UITableViewAutomaticDimension];

    v13 = [(EnvironmentInfoViewController *)v11 tableView];
    [v13 setSectionFooterHeight:UITableViewAutomaticDimension];

    v14 = [(EnvironmentInfoViewController *)v11 tableView];
    [v14 setSectionHeaderHeight:UITableViewAutomaticDimension];

    objc_storeStrong(&v11->_environment, a4);
    v11->_editable = a5;
    v15 = [(GEOEnvironmentInfo *)v11->_environment displayName];
    [(EnvironmentInfoViewController *)v11 setTitle:v15];

    v16 = [(GEOEnvironmentInfo *)v11->_environment serviceURLs];
    urlStrings = v11->_urlStrings;
    v11->_urlStrings = v16;

    v18 = [(GEOEnvironmentInfo *)v11->_environment useProxyAuth];
    proxyRequirements = v11->_proxyRequirements;
    v11->_proxyRequirements = v18;

    v20 = [(NSDictionary *)v11->_urlStrings allKeys];
    v21 = [v20 sortedArrayUsingComparator:&stru_10165EF40];
    urlTypes = v11->_urlTypes;
    v11->_urlTypes = v21;

    v23 = [v9 overrideURLs];
    v24 = [v23 copy];
    overrideURLs = v11->_overrideURLs;
    v11->_overrideURLs = v24;

    [(EnvironmentInfoViewController *)v11 _updateTitleLabel];
    [(EnvironmentInfoViewController *)v11 _updateNavigationItem];
    v26 = v11;
  }

  return v11;
}

@end
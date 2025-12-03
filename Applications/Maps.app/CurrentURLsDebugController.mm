@interface CurrentURLsDebugController
- (CurrentURLsDebugController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation CurrentURLsDebugController

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  if (([pathCopy section] & 0x8000000000000000) != 0 || (v7 = objc_msgSend(pathCopy, "section"), v7 >= -[NSArray count](self->_urlTypes, "count")))
  {
    v10 = 0;
  }

  else
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [pathCopy section]);
    [v8 integerValue];

    GEOURLString();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100ABF498;
    v13 = v12[3] = &unk_101660440;
    v9 = v13;
    v10 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:&stru_101636FC0 actionProvider:v12];
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = 0.0;
  if (([pathCopy section] & 0x8000000000000000) == 0)
  {
    section = [pathCopy section];
    if (section < [(NSArray *)self->_urlTypes count])
    {
      v8 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [pathCopy section]);
      [v8 integerValue];

      v9 = GEOURLString();
      if (![(__CFString *)v9 length])
      {

        v9 = @"(none)";
      }

      v10 = +[NSParagraphStyle defaultParagraphStyle];
      v11 = [v10 mutableCopy];

      [v11 setLineBreakMode:1];
      tableView = [(CurrentURLsDebugController *)self tableView];
      [tableView bounds];
      v14 = v13 + -40.0;
      v26[0] = NSFontAttributeName;
      +[UIFont labelFontSize];
      v15 = [UIFont systemFontOfSize:?];
      v26[1] = NSParagraphStyleAttributeName;
      v27[0] = v15;
      v27[1] = v11;
      v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      [(__CFString *)v9 boundingRectWithSize:1 options:v16 attributes:0 context:v14, 1.79769313e308];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v28.origin.x = v18;
      v28.origin.y = v20;
      v28.size.width = v22;
      v28.size.height = v24;
      v6 = CGRectGetMaxY(v28) + 20.0;
    }
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([pathCopy section] & 0x8000000000000000) != 0 || (v8 = objc_msgSend(pathCopy, "section"), v8 >= -[NSArray count](self->_urlTypes, "count")))
  {
    v10 = 0;
  }

  else
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_urlTypes, "objectAtIndexedSubscript:", [pathCopy section]);
    [v9 integerValue];

    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"URLDebugCell"];
    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"URLDebugCell"];
      textLabel = [v10 textLabel];
      [textLabel setLineBreakMode:1];

      textLabel2 = [v10 textLabel];
      [textLabel2 setNumberOfLines:0];

      [v10 setSelectionStyle:0];
      +[UIFont labelFontSize];
      v13 = [UIFont systemFontOfSize:?];
      textLabel3 = [v10 textLabel];
      [textLabel3 setFont:v13];
    }

    v15 = GEOURLStringWithSource();
    if ([(__CFString *)v15 length])
    {
      v16 = v15;
    }

    else
    {
      v16 = @"(none)";
    }

    textLabel4 = [v10 textLabel];
    [textLabel4 setText:v16];

    v18 = +[UIColor secondaryLabelColor];
    textLabel5 = [v10 textLabel];
    [textLabel5 setTextColor:v18];
  }

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section < 0 || [(NSArray *)self->_urlTypes count]<= section)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_urlTypes objectAtIndexedSubscript:section];
    integerValue = [v7 integerValue];

    if (integerValue > 0x42)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_101636FE0[integerValue];
    }

    v11 = GEOURLNeedsAuthForURLType();
    v12 = "NO";
    if (v11)
    {
      v12 = "YES";
    }

    v10 = [NSString stringWithFormat:@"%@ - Auth: %s", v9, v12];
  }

  return v10;
}

- (CurrentURLsDebugController)init
{
  v38.receiver = self;
  v38.super_class = CurrentURLsDebugController;
  v2 = [(AuxiliaryDebugViewController *)&v38 init];
  if (v2)
  {
    v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 300.0, 200.0}];
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    +[UIFont systemFontSize];
    v5 = [UIFont systemFontOfSize:?];
    [v4 setFont:v5];

    [v4 setText:@"Where did a URL come from?"];
    [v4 setOpaque:0];
    [v4 setBackgroundColor:0];
    v6 = +[UIColor secondaryLabelColor];
    [v4 setTextColor:v6];

    [v4 sizeToFit];
    [v4 frame];
    v8 = v7;
    v10 = v9;
    [v3 bounds];
    v12 = v11 - v8;
    [v4 setFrame:{floorf(v12 * 0.5), 20.0, v8, v10}];
    [v3 addSubview:v4];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    [v4 frame];
    *&v36[3] = CGRectGetMaxY(v39) + 20.0;
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100AC00FC;
    v32 = &unk_101636F80;
    v34 = v37;
    v35 = v36;
    v13 = v3;
    v33 = v13;
    v14 = objc_retainBlock(&v29);
    v15 = [UIColor labelColor:v29];
    (v14[2])(v14, @"Default", v15);

    v16 = +[UIColor purpleColor];
    (v14[2])(v14, @"Resource Manifest", v16);

    v17 = +[UIColor systemBlueColor];
    (v14[2])(v14, @"User Defaults", v17);

    v18 = +[UIColor systemOrangeColor];
    (v14[2])(v14, @"Network Defaults", v18);

    v19 = +[UIColor systemTealColor];
    (v14[2])(v14, @"Remote Config", v19);

    v20 = +[UIColor systemRedColor];
    (v14[2])(v14, @"Profile", v20);

    v21 = +[UIColor systemGreenColor];
    (v14[2])(v14, @"Custom Environment", v21);

    [v13 bounds];
    [v13 setBounds:{0.0, 0.0}];
    tableView = [(CurrentURLsDebugController *)v2 tableView];
    [tableView setTableHeaderView:v13];

    v23 = +[NSMutableArray array];
    for (i = 0; i != 67; ++i)
    {
      if (i - 23 < 0x2C || i <= 0x15 && ((1 << i) & 0x3DDE27) != 0)
      {
        v25 = [NSNumber numberWithUnsignedInteger:i];
        [(NSArray *)v23 addObject:v25];
      }
    }

    urlTypes = v2->_urlTypes;
    v2->_urlTypes = v23;

    v27 = v2;
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v37, 8);
  }

  return v2;
}

@end
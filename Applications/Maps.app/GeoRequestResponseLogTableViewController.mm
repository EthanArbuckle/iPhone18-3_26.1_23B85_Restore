@interface GeoRequestResponseLogTableViewController
- (GeoRequestResponseLogTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_confirmFlushDB;
- (void)_reallyFlushDB;
- (void)_rebuildComplete:(unsigned int)a3 error:(id)a4;
- (void)_rebuildDB;
- (void)_reloadLogsAsync;
- (void)_reloadLogsSync;
- (void)_showDatePickerFrom:(id)a3;
- (void)_showError:(id)a3 forTask:(id)a4;
- (void)_toggleLogging;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GeoRequestResponseLogTableViewController

- (void)_showDatePickerFrom:(id)a3
{
  v4 = a3;
  v5 = [(GeoRequestResponseLogTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  v7 = [(GeoRequestResponseLogTableViewController *)self title];
  v8 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:0];

  v9 = objc_alloc_init(GeoRequestResponseLogDatePickerViewController);
  v10 = GEOConfigGetDate();
  v11 = [(GeoRequestResponseLogDatePickerViewController *)v9 datePicker];
  [v11 setDate:v10];

  [v8 setContentViewController:v9];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1005C494C;
  v25[3] = &unk_101630B88;
  v12 = v9;
  v26 = v12;
  v27 = self;
  v13 = v4;
  v28 = v13;
  v14 = [UIAlertAction actionWithTitle:@"Ok" style:0 handler:v25];
  [v8 addAction:v14];

  v15 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v8 addAction:v15];

  v16 = [v8 popoverPresentationController];
  v17 = [v6 contentView];
  [v17 bounds];
  [v16 setSourceRect:?];

  v18 = [v6 contentView];
  [v16 setSourceView:v18];

  v19 = v6;
  v20 = v19;
  if (v19)
  {
    v21 = v19;
    do
    {
      v22 = v21;
      v23 = [UIViewController viewControllerForView:v21];
      v21 = [v21 superview];

      if (v23)
      {
        v24 = 1;
      }

      else
      {
        v24 = v21 == 0;
      }
    }

    while (!v24);
  }

  else
  {
    v23 = 0;
  }

  [v23 presentViewController:v8 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 section];
  if (v7 == 1)
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_logEntries, "objectAtIndexedSubscript:", [v6 row]);
    v10 = [[GeoRequestResponseLogDetailViewController alloc] initWithEvent:v9];
    v11 = [(GeoRequestResponseLogTableViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];

    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v8 = [v6 row];
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      [(GeoRequestResponseLogTableViewController *)self _showDatePickerFrom:v6];
      goto LABEL_17;
    }

    if (v8 != 2)
    {
      goto LABEL_17;
    }

    v9 = objc_alloc_init(GeoRequestResponseLogBundleIdTableViewController);
    v12 = [(GeoRequestResponseLogTableViewController *)self navigationController];
    [v12 pushViewController:v9 animated:1];

LABEL_9:
    goto LABEL_17;
  }

  if (v8 == 3)
  {
    [(GeoRequestResponseLogTableViewController *)self _reloadLogsAsync];
  }

  else
  {
    if (v8 == 5)
    {
      [(GeoRequestResponseLogTableViewController *)self _rebuildDB];
    }

    else
    {
      if (v8 != 6)
      {
        goto LABEL_17;
      }

      [(GeoRequestResponseLogTableViewController *)self _confirmFlushDB];
    }

    [v13 deselectRowAtIndexPath:v6 animated:1];
  }

LABEL_17:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == 1)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
    v12 = -[NSArray objectAtIndexedSubscript:](self->_logEntries, "objectAtIndexedSubscript:", [v5 row]);
    v20 = [v12 messageType];
    if (v20 > 57)
    {
      switch(v20)
      {
        case 1005:
          v21 = @"GEOPlaceSearchFeedback";
          goto LABEL_81;
        case 1006:
        case 1007:
        case 1008:
        case 1011:
        case 1012:
        case 1018:
        case 1019:
        case 1020:
        case 1022:
        case 1023:
          goto LABEL_66;
        case 1009:
          v21 = @"GEORPProblemCollection";
          goto LABEL_81;
        case 1010:
          v21 = @"GEORPProblemStatus";
          goto LABEL_81;
        case 1013:
          v21 = @"GEORPProblemOptIn";
          goto LABEL_81;
        case 1014:
          v21 = @"GEORPProblem";
          goto LABEL_81;
        case 1015:
          v21 = @"GEORPFeedback";
          goto LABEL_81;
        case 1016:
          v21 = @"GEOABAssignment";
          goto LABEL_81;
        case 1017:
          v21 = @"GEOLogCollection";
          goto LABEL_81;
        case 1021:
          v21 = @"GEOSpatialLookupBatch";
          goto LABEL_81;
        case 1024:
          v21 = @"GEOImageService";
          goto LABEL_81;
        case 1025:
          v21 = @"GEOWiFiQualityService";
          goto LABEL_81;
        case 1026:
          v21 = @"GEOTransitRouteUpdate";
          goto LABEL_81;
        case 1027:
          v21 = @"GEOAddressCorrectionTaggedLocation";
          goto LABEL_81;
        case 1028:
          v21 = @"GEOPBOfflineDataKeys";
          goto LABEL_81;
        default:
          if (v20 == 58)
          {
            v21 = @"GEOBusinessResolution";
          }

          else
          {
            if (v20 != 60)
            {
              goto LABEL_66;
            }

            v21 = @"GEOPDPlace";
          }

          break;
      }

      goto LABEL_81;
    }

    if (v20 > 48)
    {
      if (v20 <= 51)
      {
        if (v20 == 49)
        {
          v21 = @"GEOBatchRevGeocode";
          goto LABEL_81;
        }

        if (v20 == 50)
        {
          v21 = @"GEOPolyLocationShift";
          goto LABEL_81;
        }
      }

      else
      {
        switch(v20)
        {
          case '4':
            v21 = @"GEOETA";
            goto LABEL_81;
          case '5':
            v21 = @"GEOAddressCorrectionInit";
            goto LABEL_81;
          case '6':
            v21 = @"GEOAddressCorrectionUpdate";
            goto LABEL_81;
        }
      }
    }

    else if (v20 <= 43)
    {
      if (!v20)
      {
        v21 = @"Unknown";
        goto LABEL_81;
      }

      if (v20 == 43)
      {
        v21 = @"GEOPlaceSearch";
        goto LABEL_81;
      }
    }

    else
    {
      switch(v20)
      {
        case ',':
          v21 = @"GEODirections";
          goto LABEL_81;
        case '.':
          v21 = @"GEOLocationShift";
          goto LABEL_81;
        case '0':
          v21 = @"GEOETATrafficUpdate";
LABEL_81:
          v36 = [v12 eventType];
          if (v36 >= 3)
          {
            v37 = [NSString stringWithFormat:@"(unknown: %i)", v36];
          }

          else
          {
            v37 = *(&off_101622F20 + v36);
          }

          v38 = -[NSByteCountFormatter stringFromByteCount:](self->_byteFormatter, "stringFromByteCount:", [v12 size]);
          v39 = [NSString stringWithFormat:@"%@ - %@ %@", v21, v37, v38];
          v40 = [v8 textLabel];
          [v40 setText:v39];

          dateFormatter = self->_dateFormatter;
          v42 = [v12 timestamp];
          v43 = [(NSISO8601DateFormatter *)dateFormatter stringFromDate:v42];
          v44 = [v12 appId];
          v45 = [NSString stringWithFormat:@"%@ - %@", v43, v44];
          v46 = [v8 detailTextLabel];
          [v46 setText:v45];

LABEL_85:
          [v8 setAccessoryType:1];
          goto LABEL_89;
      }
    }

LABEL_66:
    v21 = [NSString stringWithFormat:@"(unknown: %i)", v20];
    goto LABEL_81;
  }

  if (v6)
  {
    v8 = 0;
    goto LABEL_90;
  }

  v7 = [v5 row];
  v8 = 0;
  if (v7 > 2)
  {
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        [v8 setSelectionStyle:3];
        v34 = [v8 textLabel];
        [v34 setText:@"Rebuild Database"];

        v28 = +[UIColor systemBlueColor];
      }

      else
      {
        if (v7 != 6)
        {
          goto LABEL_90;
        }

        v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        if ([(NSArray *)self->_logEntries count])
        {
          v26 = 3;
        }

        else
        {
          v26 = 0;
        }

        [v8 setSelectionStyle:v26];
        v27 = [v8 textLabel];
        [v27 setText:@"Delete All Logs"];

        if ([(NSArray *)self->_logEntries count])
        {
          +[UIColor systemRedColor];
        }

        else
        {
          +[UIColor systemGrayColor];
        }
        v28 = ;
      }

      v12 = v28;
      v33 = [v8 textLabel];
    }

    else
    {
      if (v7 != 3)
      {
        v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
        [v8 setSelectionStyle:0];
        v9 = self->_dateFormatter;
        v10 = [(NSArray *)self->_logEntries firstObject];
        v11 = [v10 timestamp];
        v12 = [(NSISO8601DateFormatter *)v9 stringFromDate:v11];

        v13 = self->_dateFormatter;
        v14 = [(NSArray *)self->_logEntries lastObject];
        v15 = [v14 timestamp];
        v16 = [(NSISO8601DateFormatter *)v13 stringFromDate:v15];

        v17 = [v8 textLabel];
        [v17 setText:@"Time Range"];

        if (v12 && v16)
        {
          v18 = [NSString stringWithFormat:@"%@ - %@", v12, v16];
          v19 = [v8 detailTextLabel];
          [v19 setText:v18];
        }

        else
        {
          v18 = [v8 detailTextLabel];
          [v18 setText:@"no logs found"];
        }

        goto LABEL_88;
      }

      v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      [v8 setSelectionStyle:3];
      v30 = [NSString stringWithFormat:@"Entries: %u", [(NSArray *)self->_logEntries count]];
      v31 = [v8 textLabel];
      [v31 setText:v30];

      v32 = [v8 detailTextLabel];
      [v32 setText:@"(tap to refresh)"];

      v12 = +[UIColor systemBlueColor];
      v33 = [v8 detailTextLabel];
    }

    v16 = v33;
    [(__CFString *)v33 setTextColor:v12];
LABEL_88:

    goto LABEL_89;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v35 = GEOConfigGetDate();
      v12 = v35;
      if (self->_isLoggingEnabled)
      {
        if (v35)
        {
          v16 = [(NSISO8601DateFormatter *)self->_dateFormatter stringFromDate:v35];
        }

        else
        {
          v16 = @"never";
        }
      }

      else
      {
        v16 = @"logging is off";
      }

      v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      [v8 setSelectionStyle:3];
      v47 = [NSString stringWithFormat:@"Turn off at: %@", v16];
      v48 = [v8 textLabel];
      [v48 setText:v47];

      [v8 setAccessoryType:1];
      goto LABEL_88;
    }

    if (v7 != 2)
    {
      goto LABEL_90;
    }

    v12 = GEOConfigGetSet();
    v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
    [v8 setSelectionStyle:3];
    v22 = [v8 textLabel];
    [v22 setText:@"Limit to BundleIds"];

    if ([v12 count])
    {
      v23 = [v12 allObjects];
      v24 = [v23 componentsJoinedByString:{@", "}];
      v25 = [v8 detailTextLabel];
      [v25 setText:v24];
    }

    else
    {
      v23 = [v8 detailTextLabel];
      [v23 setText:@"<all>"];
    }

    goto LABEL_85;
  }

  v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [v8 setSelectionStyle:0];
  v29 = [v8 textLabel];
  [v29 setText:@"Enable Full Request Response Logging"];

  v12 = objc_alloc_init(UISwitch);
  [v12 setOn:self->_isLoggingEnabled];
  [v12 addTarget:self action:"_toggleLogging" forControlEvents:4096];
  [v8 setAccessoryView:v12];
LABEL_89:

LABEL_90:

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    return @"Logs";
  }

  else
  {
    return 0;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v7 = [(NSArray *)self->_logEntries count];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 7;
  }

  return v7;
}

- (void)_showError:(id)a3 forTask:(id)a4
{
  v7 = [NSString stringWithFormat:@"Received error while %@: %@", a4, a3];
  v5 = [UIAlertController alertControllerWithTitle:@"Operation Failed" message:v7 preferredStyle:0];
  v6 = [UIAlertAction actionWithTitle:@"Ok" style:0 handler:0];
  [v5 addAction:v6];

  [(GeoRequestResponseLogTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_reallyFlushDB
{
  v3 = [(NSArray *)self->_logEntries lastObject];
  v4 = [v3 timestamp];
  v5 = [v4 dateByAddingTimeInterval:1.0];

  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005C785C;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_confirmFlushDB
{
  if ([(NSArray *)self->_logEntries count])
  {
    v3 = [UIAlertController alertControllerWithTitle:@"Delete All Logs?" message:@"Are you sure you want to delete ALL the logs?" preferredStyle:0];
    v4 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
    [v3 addAction:v4];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005C7A6C;
    v6[3] = &unk_10165F220;
    v6[4] = self;
    v5 = [UIAlertAction actionWithTitle:@"Delete" style:2 handler:v6];
    [v3 addAction:v5];

    [(GeoRequestResponseLogTableViewController *)self presentViewController:v3 animated:1 completion:0];
  }
}

- (void)_rebuildComplete:(unsigned int)a3 error:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v10 = v6;
  if (v6)
  {
    [(GeoRequestResponseLogTableViewController *)self _showError:v6 forTask:@"Rebuilding DB"];
  }

  else
  {
    if (v4)
    {
      v7 = [NSString stringWithFormat:@"Restored %u log messages", v4];
    }

    else
    {
      v7 = @"No missing logs found";
    }

    v8 = [UIAlertController alertControllerWithTitle:@"Complete" message:v7 preferredStyle:0];
    v9 = [UIAlertAction actionWithTitle:@"Ok" style:0 handler:0];
    [v8 addAction:v9];

    [(GeoRequestResponseLogTableViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_rebuildDB
{
  [UIAlertController alertControllerWithTitle:@"Rebuilding DB" message:@"This might take a minute..." preferredStyle:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005C7C44;
  v4[3] = &unk_101661A90;
  v5 = v4[4] = self;
  v3 = v5;
  [(GeoRequestResponseLogTableViewController *)self presentViewController:v3 animated:1 completion:v4];
}

- (void)_toggleLogging
{
  GEOConfigSetBOOL();
  v3 = [(GeoRequestResponseLogTableViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:1 inSection:0];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 reloadRowsAtIndexPaths:v5 withRowAnimation:100];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  self->_isLoggingEnabled = GEOConfigGetBOOL();
  v4 = [(GeoRequestResponseLogTableViewController *)self tableView];
  [v4 reloadData];
}

- (void)_reloadLogsSync
{
  if (!self->_logPersister)
  {
    v3 = [[GEORequestResponsePersister alloc] initWritable:1];
    logPersister = self->_logPersister;
    self->_logPersister = v3;
  }

  v5 = +[NSMutableArray array];
  v6 = self->_logPersister;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005C8124;
  v12[3] = &unk_101622EB0;
  v7 = v5;
  v13 = v7;
  v8 = [(GEORequestResponsePersister *)v6 enumerateAllEntriesWithBlock:v12];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C8148;
  block[3] = &unk_101661A90;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_reloadLogsAsync
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C8248;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GeoRequestResponseLogTableViewController;
  [(GeoRequestResponseLogTableViewController *)&v6 viewDidDisappear:a3];
  GEOConfigRemoveDelegateListenerForAllKeys();
  logPersister = self->_logPersister;
  self->_logPersister = 0;

  logEntries = self->_logEntries;
  self->_logEntries = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GeoRequestResponseLogTableViewController;
  [(GeoRequestResponseLogTableViewController *)&v4 viewWillAppear:a3];
  self->_isLoggingEnabled = GEOConfigGetBOOL();
  _GEOConfigAddDelegateListenerForKey();
  [(GeoRequestResponseLogTableViewController *)self _reloadLogsAsync];
}

- (GeoRequestResponseLogTableViewController)initWithStyle:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = GeoRequestResponseLogTableViewController;
  v3 = [(GeoRequestResponseLogTableViewController *)&v10 initWithStyle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NSISO8601DateFormatter);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v4;

    v6 = +[NSTimeZone localTimeZone];
    [(NSISO8601DateFormatter *)v3->_dateFormatter setTimeZone:v6];

    v7 = objc_alloc_init(NSByteCountFormatter);
    byteFormatter = v3->_byteFormatter;
    v3->_byteFormatter = v7;

    [(NSByteCountFormatter *)v3->_byteFormatter setAdaptive:1];
    [(NSByteCountFormatter *)v3->_byteFormatter setAllowedUnits:0];
  }

  return v3;
}

@end
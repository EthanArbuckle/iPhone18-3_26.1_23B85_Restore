@interface WatchDebugController
- (WatchDebugController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WatchDebugController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy section] == 1)
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v9 sizeToFit];
    [v8 setAccessoryView:v9];
    [v9 startAnimating];
    objc_initWeak(&location, self);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100BDB7E4;
    v26[3] = &unk_10165D238;
    objc_copyWeak(&v29, &location);
    v10 = v9;
    v27 = v10;
    v11 = v8;
    v28 = v11;
    v12 = objc_retainBlock(v26);
    connection = self->_connection;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100BDB8E0;
    v24[3] = &unk_1016610B8;
    v14 = v12;
    v25 = v14;
    v15 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v24];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100BDB98C;
    v19[3] = &unk_10164CFE0;
    objc_copyWeak(&v23, &location);
    v16 = v14;
    v22 = v16;
    v17 = v10;
    v20 = v17;
    v18 = v11;
    v21 = v18;
    [v15 _debug_fetchDiagnosticsString:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  section = [path section];
  if (section == 1)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [v6 setAccessoryView:0];
    v12 = +[UIColor blackColor];
    textLabel = [v6 textLabel];
    [textLabel setTextColor:v12];

    textLabel2 = [v6 textLabel];
    [textLabel2 setText:@"Copy Diagnostics"];
    goto LABEL_5;
  }

  if (!section)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [v6 setAccessoryView:0];
    v7 = +[UIColor blackColor];
    textLabel3 = [v6 textLabel];
    [textLabel3 setTextColor:v7];

    [v6 setSelectionStyle:0];
    textLabel2 = [(GEOActiveTileGroup *)self->_activeTileGroup releaseInfo];
    v10 = [NSString stringWithFormat:@"%@ - %i", textLabel2, [(GEOActiveTileGroup *)self->_activeTileGroup identifier]];
    textLabel4 = [v6 textLabel];
    [textLabel4 setText:v10];

LABEL_5:
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_101215590[section];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    uniqueIdentifier = @"Copy diagnostic information to the pasteboard. Maps must be in the foreground on the paired Watch";
  }

  else if (section)
  {
    uniqueIdentifier = 0;
  }

  else
  {
    uniqueIdentifier = [(GEOActiveTileGroup *)self->_activeTileGroup uniqueIdentifier];
  }

  return uniqueIdentifier;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return @"Active Tile Group";
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = WatchDebugController;
  [(MapsDebugValuesViewController *)&v4 dealloc];
}

- (WatchDebugController)init
{
  v28.receiver = self;
  v28.super_class = WatchDebugController;
  v2 = [(AuxiliaryDebugViewController *)&v28 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.nanomaps.xpc.Maps" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCDaemonControlling];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCAppControlling];
    [(NSXPCConnection *)v2->_connection setExportedInterface:v6];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    [(NSXPCConnection *)v2->_connection resume];
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v7 sizeToFit];
    tableView = [(WatchDebugController *)v2 tableView];
    [tableView setTableHeaderView:v7];

    [v7 startAnimating];
    objc_initWeak(&location, v2);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100BDC318;
    v24[3] = &unk_10165D288;
    objc_copyWeak(&v26, &location);
    v9 = v7;
    v25 = v9;
    v10 = objc_retainBlock(v24);
    v11 = v2->_connection;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100BDC4A8;
    v22[3] = &unk_1016610B8;
    v12 = v10;
    v23 = v12;
    v13 = [(NSXPCConnection *)v11 remoteObjectProxyWithErrorHandler:v22];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100BDC554;
    v18[3] = &unk_10164CF90;
    objc_copyWeak(&v21, &location);
    v14 = v12;
    v20 = v14;
    v15 = v9;
    v19 = v15;
    [v13 _debug_fetchServerConfiguration:v18];

    v16 = v2;
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

@end
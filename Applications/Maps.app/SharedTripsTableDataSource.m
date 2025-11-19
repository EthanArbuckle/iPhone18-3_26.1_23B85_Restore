@interface SharedTripsTableDataSource
- (GEOSharedNavState)selectedTrip;
- (SharedTripsTableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4 tableViewReloadEvent:(id)a5;
- (id)sharedTripAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_updateCellForSharedTrip:(id)a3;
- (void)_updateTableSelection:(BOOL)a3;
- (void)_updateTableView;
- (void)_updateTableViewWithTrip:(id)a3;
- (void)dealloc;
- (void)setSelectedTrip:(id)a3 animated:(BOOL)a4;
@end

@implementation SharedTripsTableDataSource

- (GEOSharedNavState)selectedTrip
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  return WeakRetained;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  cellProvider = self->_cellProvider;
  v7 = a4;
  v8 = a3;
  v9 = [(SharedTripsTableDataSource *)self sharedTripAtIndexPath:v7];
  v10 = cellProvider[2](cellProvider, v8, v7, v9);

  return v10;
}

- (void)_updateTableViewWithTrip:(id)a3
{
  v4 = a3;
  v5 = self->_sharedTrips;
  v6 = +[MSPSharedTripService sharedInstance];
  v7 = [v6 receivedTrips];

  v8 = [(NSArray *)v5 count];
  v9 = [v7 count];
  v10 = 1;
  if (v4 && v8 == v9)
  {
    if ([(NSArray *)self->_sharedTrips count])
    {
      v24 = v4;
      v11 = 0;
      while (1)
      {
        v12 = [(NSArray *)v5 objectAtIndexedSubscript:v11];
        v13 = [v7 objectAtIndexedSubscript:v11];
        v14 = [v13 groupIdentifier];
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = [v12 groupIdentifier];
        v17 = [v13 groupIdentifier];
        v18 = [v16 isEqualToString:v17];

        if ((v18 & 1) != 0 && ++v11 < [(NSArray *)self->_sharedTrips count])
        {
          continue;
        }

        v10 = v18 ^ 1;
        goto LABEL_11;
      }

      v10 = 1;
LABEL_11:
      v4 = v24;
    }

    else
    {
      v10 = 0;
    }
  }

  v19 = +[MSPSharedTripService sharedInstance];
  v20 = [v19 receivedTrips];
  sharedTrips = self->_sharedTrips;
  self->_sharedTrips = v20;

  v22 = sub_100B693E8();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = sub_100021DB0(self->_sharedTrips, &stru_10163B038);
    *buf = 134349314;
    v26 = self;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Updated shared trips: %@", buf, 0x16u);
  }

  if (v10)
  {
    [(SharedTripsTableDataSource *)self _updateTableView];
  }

  else
  {
    [(SharedTripsTableDataSource *)self _updateCellForSharedTrip:v4];
  }
}

- (void)_updateTableView
{
  [(UITableView *)self->_tableView reloadData];
  [(SharedTripsTableDataSource *)self _updateTableSelection:1];
  tableViewReloadEvent = self->_tableViewReloadEvent;
  if (tableViewReloadEvent)
  {
    v4 = *(tableViewReloadEvent + 2);

    v4();
  }
}

- (void)_updateCellForSharedTrip:(id)a3
{
  sharedTrips = self->_sharedTrips;
  v5 = [a3 equalityTest];
  v6 = [(NSArray *)sharedTrips indexOfObjectPassingTest:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSIndexPath indexPathForRow:v6 inSection:0];
    tableView = self->_tableView;
    v10 = v7;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v9 withRowAnimation:5];

    [(SharedTripsTableDataSource *)self _updateTableSelection:0];
  }
}

- (void)_updateTableSelection:(BOOL)a3
{
  v3 = a3;
  v11 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  v5 = [(SharedTripsTableDataSource *)self selectedTrip];
  if (v11)
  {

    if (!v5)
    {
      [(UITableView *)self->_tableView deselectRowAtIndexPath:v11 animated:v3];
    }
  }

  else if (v5)
  {
    v6 = [(NSArray *)self->_sharedTrips count];

    if (v6)
    {
      sharedTrips = self->_sharedTrips;
      v8 = [(SharedTripsTableDataSource *)self selectedTrip];
      v9 = [(NSArray *)sharedTrips indexOfObject:v8];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SharedTripsTableDataSource *)self setSelectedTrip:0];
      }

      else
      {
        v10 = [NSIndexPath indexPathForRow:v9 inSection:0];
        if (([0 isEqual:v10] & 1) == 0)
        {
          [(UITableView *)self->_tableView selectRowAtIndexPath:0 animated:v3 scrollPosition:1];
        }
      }
    }
  }
}

- (id)sharedTripAtIndexPath:(id)a3
{
  v4 = [a3 row];
  if (v4 >= [(NSArray *)self->_sharedTrips count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_sharedTrips objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)setSelectedTrip:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  if (WeakRetained != v6)
  {
    v8 = sub_100B693E8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 groupIdentifier];
      v10 = 134349314;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trip: %@", &v10, 0x16u);
    }

    objc_storeWeak(&self->_selectedTrip, v6);
    [(SharedTripsTableDataSource *)self _updateTableSelection:v4];
  }
}

- (void)dealloc
{
  v3 = sub_100B693E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SharedTripsTableDataSource;
  [(SharedTripsTableDataSource *)&v4 dealloc];
}

- (SharedTripsTableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4 tableViewReloadEvent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = SharedTripsTableDataSource;
  v12 = [(SharedTripsTableDataSource *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tableView, a3);
    [(UITableView *)v13->_tableView setDataSource:v13];
    v14 = [v10 copy];
    cellProvider = v13->_cellProvider;
    v13->_cellProvider = v14;

    if (v11)
    {
      v16 = [v11 copy];
      tableViewReloadEvent = v13->_tableViewReloadEvent;
      v13->_tableViewReloadEvent = v16;
    }

    v18 = +[MSPSharedTripService sharedInstance];
    v19 = [v18 receivedTrips];
    sharedTrips = v13->_sharedTrips;
    v13->_sharedTrips = v19;

    v21 = sub_100B693E8();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = sub_100021DB0(v13->_sharedTrips, &stru_10163B018);
      *buf = 134349314;
      v27 = v13;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with shared trips: %@", buf, 0x16u);
    }

    v23 = +[MSPSharedTripService sharedInstance];
    [v23 addReceivingObserver:v13];
  }

  return v13;
}

@end
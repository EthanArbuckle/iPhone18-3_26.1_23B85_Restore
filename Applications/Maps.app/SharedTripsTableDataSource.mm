@interface SharedTripsTableDataSource
- (GEOSharedNavState)selectedTrip;
- (SharedTripsTableDataSource)initWithTableView:(id)view cellProvider:(id)provider tableViewReloadEvent:(id)event;
- (id)sharedTripAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_updateCellForSharedTrip:(id)trip;
- (void)_updateTableSelection:(BOOL)selection;
- (void)_updateTableView;
- (void)_updateTableViewWithTrip:(id)trip;
- (void)dealloc;
- (void)setSelectedTrip:(id)trip animated:(BOOL)animated;
@end

@implementation SharedTripsTableDataSource

- (GEOSharedNavState)selectedTrip
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  return WeakRetained;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  cellProvider = self->_cellProvider;
  pathCopy = path;
  viewCopy = view;
  v9 = [(SharedTripsTableDataSource *)self sharedTripAtIndexPath:pathCopy];
  v10 = cellProvider[2](cellProvider, viewCopy, pathCopy, v9);

  return v10;
}

- (void)_updateTableViewWithTrip:(id)trip
{
  tripCopy = trip;
  v5 = self->_sharedTrips;
  v6 = +[MSPSharedTripService sharedInstance];
  receivedTrips = [v6 receivedTrips];

  v8 = [(NSArray *)v5 count];
  v9 = [receivedTrips count];
  v10 = 1;
  if (tripCopy && v8 == v9)
  {
    if ([(NSArray *)self->_sharedTrips count])
    {
      v24 = tripCopy;
      v11 = 0;
      while (1)
      {
        v12 = [(NSArray *)v5 objectAtIndexedSubscript:v11];
        v13 = [receivedTrips objectAtIndexedSubscript:v11];
        groupIdentifier = [v13 groupIdentifier];
        if (!groupIdentifier)
        {
          break;
        }

        v15 = groupIdentifier;
        groupIdentifier2 = [v12 groupIdentifier];
        groupIdentifier3 = [v13 groupIdentifier];
        v18 = [groupIdentifier2 isEqualToString:groupIdentifier3];

        if ((v18 & 1) != 0 && ++v11 < [(NSArray *)self->_sharedTrips count])
        {
          continue;
        }

        v10 = v18 ^ 1;
        goto LABEL_11;
      }

      v10 = 1;
LABEL_11:
      tripCopy = v24;
    }

    else
    {
      v10 = 0;
    }
  }

  v19 = +[MSPSharedTripService sharedInstance];
  receivedTrips2 = [v19 receivedTrips];
  sharedTrips = self->_sharedTrips;
  self->_sharedTrips = receivedTrips2;

  v22 = sub_100B693E8();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = sub_100021DB0(self->_sharedTrips, &stru_10163B038);
    *buf = 134349314;
    selfCopy = self;
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
    [(SharedTripsTableDataSource *)self _updateCellForSharedTrip:tripCopy];
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

- (void)_updateCellForSharedTrip:(id)trip
{
  sharedTrips = self->_sharedTrips;
  equalityTest = [trip equalityTest];
  v6 = [(NSArray *)sharedTrips indexOfObjectPassingTest:equalityTest];

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

- (void)_updateTableSelection:(BOOL)selection
{
  selectionCopy = selection;
  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  selectedTrip = [(SharedTripsTableDataSource *)self selectedTrip];
  if (indexPathForSelectedRow)
  {

    if (!selectedTrip)
    {
      [(UITableView *)self->_tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:selectionCopy];
    }
  }

  else if (selectedTrip)
  {
    v6 = [(NSArray *)self->_sharedTrips count];

    if (v6)
    {
      sharedTrips = self->_sharedTrips;
      selectedTrip2 = [(SharedTripsTableDataSource *)self selectedTrip];
      v9 = [(NSArray *)sharedTrips indexOfObject:selectedTrip2];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SharedTripsTableDataSource *)self setSelectedTrip:0];
      }

      else
      {
        v10 = [NSIndexPath indexPathForRow:v9 inSection:0];
        if (([0 isEqual:v10] & 1) == 0)
        {
          [(UITableView *)self->_tableView selectRowAtIndexPath:0 animated:selectionCopy scrollPosition:1];
        }
      }
    }
  }
}

- (id)sharedTripAtIndexPath:(id)path
{
  v4 = [path row];
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

- (void)setSelectedTrip:(id)trip animated:(BOOL)animated
{
  animatedCopy = animated;
  tripCopy = trip;
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  if (WeakRetained != tripCopy)
  {
    v8 = sub_100B693E8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      groupIdentifier = [tripCopy groupIdentifier];
      v10 = 134349314;
      selfCopy = self;
      v12 = 2112;
      v13 = groupIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trip: %@", &v10, 0x16u);
    }

    objc_storeWeak(&self->_selectedTrip, tripCopy);
    [(SharedTripsTableDataSource *)self _updateTableSelection:animatedCopy];
  }
}

- (void)dealloc
{
  v3 = sub_100B693E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SharedTripsTableDataSource;
  [(SharedTripsTableDataSource *)&v4 dealloc];
}

- (SharedTripsTableDataSource)initWithTableView:(id)view cellProvider:(id)provider tableViewReloadEvent:(id)event
{
  viewCopy = view;
  providerCopy = provider;
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = SharedTripsTableDataSource;
  v12 = [(SharedTripsTableDataSource *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tableView, view);
    [(UITableView *)v13->_tableView setDataSource:v13];
    v14 = [providerCopy copy];
    cellProvider = v13->_cellProvider;
    v13->_cellProvider = v14;

    if (eventCopy)
    {
      v16 = [eventCopy copy];
      tableViewReloadEvent = v13->_tableViewReloadEvent;
      v13->_tableViewReloadEvent = v16;
    }

    v18 = +[MSPSharedTripService sharedInstance];
    receivedTrips = [v18 receivedTrips];
    sharedTrips = v13->_sharedTrips;
    v13->_sharedTrips = receivedTrips;

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
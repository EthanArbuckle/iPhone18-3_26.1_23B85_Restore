@interface NTKCellularConnectivityComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
- (NTKCellularConnectivityComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKCellularConnectivityComplicationDataSource

- (NTKCellularConnectivityComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKCellularConnectivityComplicationDataSource;
  result = [(NTKCellularConnectivityComplicationDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5];
  if (result)
  {
    result->_pauseAnimations = 1;
    result->_cellularConnectivityState = 0;
  }

  return result;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (CLKComplicationFamilyCircularMedium == a3 || (v6 = 0, a3 <= 0xC) && ((1 << a3) & 0x1795) != 0)
  {
    v6 = [objc_opt_class() _isDeviceExplorer:v5];
  }

  return v6;
}

- (id)currentSwitcherTemplate
{
  v3 = objc_alloc_init(NTKCellularConnectivityTimelineEntryModel);
  [(NTKCellularConnectivityTimelineEntryModel *)v3 setCellularConnectivityState:1];
  v4 = [(NTKCellularConnectivityTimelineEntryModel *)v3 entryForComplicationFamily:[(NTKCellularConnectivityComplicationDataSource *)self family]];
  v5 = [v4 complicationTemplate];

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKCellularConnectivityComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (id)_currentTimelineEntry
{
  if ((CLKIsNTKDaemon() & 1) != 0 || CLKIsFaceSnapshotService())
  {
    v3 = objc_alloc_init(NTKCellularConnectivityTimelineEntryModel);
    [(NTKCellularConnectivityTimelineEntryModel *)v3 setCellularConnectivityState:1];
  }

  else
  {
    v3 = objc_alloc_init(NTKCellularConnectivityTimelineEntryModel);
    v4 = +[CLKDate complicationDate];
    [(NTKCellularConnectivityTimelineEntryModel *)v3 setEntryDate:v4];

    [(NTKCellularConnectivityTimelineEntryModel *)v3 setCellularConnectivityState:self->_cellularConnectivityState];
    [(NTKCellularConnectivityTimelineEntryModel *)v3 setPauseAnimations:self->_pauseAnimations];
  }

  v5 = [(NTKCellularConnectivityTimelineEntryModel *)v3 entryForComplicationFamily:[(NTKCellularConnectivityComplicationDataSource *)self family]];

  return v5;
}

@end
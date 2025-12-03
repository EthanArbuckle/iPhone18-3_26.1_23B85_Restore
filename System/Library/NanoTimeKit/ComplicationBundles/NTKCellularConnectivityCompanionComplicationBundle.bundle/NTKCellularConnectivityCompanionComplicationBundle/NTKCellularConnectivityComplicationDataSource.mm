@interface NTKCellularConnectivityComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (NTKCellularConnectivityComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKCellularConnectivityComplicationDataSource

- (NTKCellularConnectivityComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKCellularConnectivityComplicationDataSource;
  result = [(NTKCellularConnectivityComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
  if (result)
  {
    result->_pauseAnimations = 1;
    result->_cellularConnectivityState = 0;
  }

  return result;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (CLKComplicationFamilyCircularMedium == family || (v6 = 0, family <= 0xC) && ((1 << family) & 0x1795) != 0)
  {
    v6 = [objc_opt_class() _isDeviceExplorer:deviceCopy];
  }

  return v6;
}

- (id)currentSwitcherTemplate
{
  v3 = objc_alloc_init(NTKCellularConnectivityTimelineEntryModel);
  [(NTKCellularConnectivityTimelineEntryModel *)v3 setCellularConnectivityState:1];
  v4 = [(NTKCellularConnectivityTimelineEntryModel *)v3 entryForComplicationFamily:[(NTKCellularConnectivityComplicationDataSource *)self family]];
  complicationTemplate = [v4 complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKCellularConnectivityComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
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
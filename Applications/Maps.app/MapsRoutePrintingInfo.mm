@interface MapsRoutePrintingInfo
- (MapsRoutePrintingInfo)initWithNumberOfPages:(int64_t)pages routeStepCells:(id)cells routeStepCalloutCells:(id)calloutCells;
@end

@implementation MapsRoutePrintingInfo

- (MapsRoutePrintingInfo)initWithNumberOfPages:(int64_t)pages routeStepCells:(id)cells routeStepCalloutCells:(id)calloutCells
{
  cellsCopy = cells;
  calloutCellsCopy = calloutCells;
  v17.receiver = self;
  v17.super_class = MapsRoutePrintingInfo;
  v10 = [(MapsPrintingInfo *)&v17 initWithNumberOfPages:pages];
  if (v10)
  {
    v11 = [cellsCopy copy];
    routeStepCells = v10->_routeStepCells;
    v10->_routeStepCells = v11;

    v13 = [calloutCellsCopy copy];
    routeStepCalloutCells = v10->_routeStepCalloutCells;
    v10->_routeStepCalloutCells = v13;

    v15 = v10;
  }

  return v10;
}

@end
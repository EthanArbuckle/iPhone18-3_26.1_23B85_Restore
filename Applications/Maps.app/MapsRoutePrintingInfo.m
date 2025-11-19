@interface MapsRoutePrintingInfo
- (MapsRoutePrintingInfo)initWithNumberOfPages:(int64_t)a3 routeStepCells:(id)a4 routeStepCalloutCells:(id)a5;
@end

@implementation MapsRoutePrintingInfo

- (MapsRoutePrintingInfo)initWithNumberOfPages:(int64_t)a3 routeStepCells:(id)a4 routeStepCalloutCells:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MapsRoutePrintingInfo;
  v10 = [(MapsPrintingInfo *)&v17 initWithNumberOfPages:a3];
  if (v10)
  {
    v11 = [v8 copy];
    routeStepCells = v10->_routeStepCells;
    v10->_routeStepCells = v11;

    v13 = [v9 copy];
    routeStepCalloutCells = v10->_routeStepCalloutCells;
    v10->_routeStepCalloutCells = v13;

    v15 = v10;
  }

  return v10;
}

@end
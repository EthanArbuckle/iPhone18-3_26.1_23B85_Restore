@interface FMOOSAreaEntry
- (id)init:(id)init prevVisit:(id)visit curVisit:(id)curVisit entryLocation:(id)location prevCells:(id)cells registrationState:(id)state batteryLevel:(double)level clientPrediction:(id)self0;
@end

@implementation FMOOSAreaEntry

- (id)init:(id)init prevVisit:(id)visit curVisit:(id)curVisit entryLocation:(id)location prevCells:(id)cells registrationState:(id)state batteryLevel:(double)level clientPrediction:(id)self0
{
  initCopy = init;
  visitCopy = visit;
  curVisitCopy = curVisit;
  locationCopy = location;
  cellsCopy = cells;
  stateCopy = state;
  predictionCopy = prediction;
  v29.receiver = self;
  v29.super_class = FMOOSAreaEntry;
  v20 = [(FMOOSAreaEntry *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_timestamp, init);
    objc_storeStrong(&v21->_prevVisit, visit);
    objc_storeStrong(&v21->_curVisit, curVisit);
    objc_storeStrong(&v21->_entryLocation, location);
    objc_storeStrong(&v21->_prevCells, cells);
    objc_storeStrong(&v21->_registrationState, state);
    v21->_batteryLevel = level;
    objc_storeStrong(&v21->_clientPrediction, prediction);
    v22 = v21;
  }

  return v21;
}

@end
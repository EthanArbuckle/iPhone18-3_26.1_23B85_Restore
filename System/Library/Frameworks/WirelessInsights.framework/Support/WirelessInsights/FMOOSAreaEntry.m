@interface FMOOSAreaEntry
- (id)init:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 entryLocation:(id)a6 prevCells:(id)a7 registrationState:(id)a8 batteryLevel:(double)a9 clientPrediction:(id)a10;
@end

@implementation FMOOSAreaEntry

- (id)init:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 entryLocation:(id)a6 prevCells:(id)a7 registrationState:(id)a8 batteryLevel:(double)a9 clientPrediction:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v18 = a8;
  v19 = a10;
  v29.receiver = self;
  v29.super_class = FMOOSAreaEntry;
  v20 = [(FMOOSAreaEntry *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_timestamp, a3);
    objc_storeStrong(&v21->_prevVisit, a4);
    objc_storeStrong(&v21->_curVisit, a5);
    objc_storeStrong(&v21->_entryLocation, a6);
    objc_storeStrong(&v21->_prevCells, a7);
    objc_storeStrong(&v21->_registrationState, a8);
    v21->_batteryLevel = a9;
    objc_storeStrong(&v21->_clientPrediction, a10);
    v22 = v21;
  }

  return v21;
}

@end
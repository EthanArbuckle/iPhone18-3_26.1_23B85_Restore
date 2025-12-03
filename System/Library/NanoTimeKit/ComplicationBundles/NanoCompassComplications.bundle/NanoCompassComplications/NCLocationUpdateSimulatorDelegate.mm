@interface NCLocationUpdateSimulatorDelegate
- (NCLocationUpdateSimulatorDelegate)init;
- (void)endSession:(id)session;
- (void)updateLocation:(id)location error:(id)error;
@end

@implementation NCLocationUpdateSimulatorDelegate

- (NCLocationUpdateSimulatorDelegate)init
{
  v6.receiver = self;
  v6.super_class = NCLocationUpdateSimulatorDelegate;
  v2 = [(NCLocationUpdateBaseDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    locations = v2->_locations;
    v2->_locations = v3;
  }

  return v2;
}

- (void)updateLocation:(id)location error:(id)error
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = NCLocationUpdateSimulatorDelegate;
  [(NCLocationUpdateBaseDelegate *)&v9 updateLocation:locationCopy error:error];
  if (locationCopy && self->_inSession)
  {
    objc_msgSend_addObject_(self->_locations, v7, locationCopy, v8);
  }
}

- (void)endSession:(id)session
{
  self->_inSession = 0;
  locations = self->_locations;
  sessionCopy = session;
  objc_msgSend_removeAllObjects(locations, v4, v5, v6);
  sessionCopy[2]();
}

@end
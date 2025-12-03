@interface INRequestRideIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INRequestRideIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  pickupLocation = [self pickupLocation];
  location = [pickupLocation location];
  v7 = stringWithGeohash([location atx_locationHash]);
  [v4 setArg1:v7];

  dropOffLocation = [self dropOffLocation];
  location2 = [dropOffLocation location];
  v9 = stringWithGeohash([location2 atx_locationHash]);
  [v4 setArg2:v9];
}

@end
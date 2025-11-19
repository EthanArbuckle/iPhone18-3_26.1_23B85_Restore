@interface AFConnectionAvailabilityObserver
@end

@implementation AFConnectionAvailabilityObserver

void __68__AFConnectionAvailabilityObserver_networkAvailability_isAvailable___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"AFNetworkAvailabilityDidChangeNotification" object:0];
}

@end
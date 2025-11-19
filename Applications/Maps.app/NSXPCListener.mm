@interface NSXPCListener
+ (id)_maps_mapsConnectionBrokerEndpointConsumerListener;
+ (id)_maps_mapsConnectionBrokerEndpointSourceListener;
@end

@implementation NSXPCListener

+ (id)_maps_mapsConnectionBrokerEndpointConsumerListener
{
  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.Maps.xpc.connectionBroker.endpointProvider"];

  return v2;
}

+ (id)_maps_mapsConnectionBrokerEndpointSourceListener
{
  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.Maps.xpc.connectionBroker.endpointRecorder"];

  return v2;
}

@end
@interface NSXPCConnection
+ (id)_maps_mapsConnectionBrokerEndpointProviderConnection;
+ (id)_maps_mapsConnectionBrokerEndpointRecorderConnection;
@end

@implementation NSXPCConnection

+ (id)_maps_mapsConnectionBrokerEndpointProviderConnection
{
  v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.Maps.xpc.connectionBroker.endpointProvider" options:0];

  return v2;
}

+ (id)_maps_mapsConnectionBrokerEndpointRecorderConnection
{
  v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.Maps.xpc.connectionBroker.endpointRecorder" options:0];

  return v2;
}

@end
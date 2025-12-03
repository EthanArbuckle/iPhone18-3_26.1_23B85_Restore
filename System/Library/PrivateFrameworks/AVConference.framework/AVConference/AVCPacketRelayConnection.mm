@interface AVCPacketRelayConnection
+ (id)connectionWithIDSDestination:(id)destination;
+ (id)connectionWithIDSSocketDescriptor:(unsigned __int16)descriptor;
+ (id)connectionWithSocket:(unsigned __int16)socket;
+ (id)connectionWithSocket:(unsigned __int16)socket remoteAddress:(id)address;
+ (id)connectionWithSocket:(unsigned __int16)socket remoteAddress:(id)address packetFilter:(id)filter;
@end

@implementation AVCPacketRelayConnection

+ (id)connectionWithSocket:(unsigned __int16)socket
{
  v3 = [[AVCPacketRelaySocketConnection alloc] initWithSocket:socket remoteAddress:0 packetFilter:0];

  return v3;
}

+ (id)connectionWithSocket:(unsigned __int16)socket remoteAddress:(id)address
{
  v4 = [[AVCPacketRelaySocketConnection alloc] initWithSocket:socket remoteAddress:address packetFilter:0];

  return v4;
}

+ (id)connectionWithSocket:(unsigned __int16)socket remoteAddress:(id)address packetFilter:(id)filter
{
  v5 = [[AVCPacketRelaySocketConnection alloc] initWithSocket:socket remoteAddress:address packetFilter:filter];

  return v5;
}

+ (id)connectionWithIDSDestination:(id)destination
{
  v3 = [[AVCPacketRelayIDSConnection alloc] initWithIDSDestination:destination];

  return v3;
}

+ (id)connectionWithIDSSocketDescriptor:(unsigned __int16)descriptor
{
  v3 = [[AVCPacketRelayIDSConnection alloc] initWithIDSSocketDescriptor:descriptor];

  return v3;
}

@end
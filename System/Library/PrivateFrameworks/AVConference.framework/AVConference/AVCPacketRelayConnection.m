@interface AVCPacketRelayConnection
+ (id)connectionWithIDSDestination:(id)a3;
+ (id)connectionWithIDSSocketDescriptor:(unsigned __int16)a3;
+ (id)connectionWithSocket:(unsigned __int16)a3;
+ (id)connectionWithSocket:(unsigned __int16)a3 remoteAddress:(id)a4;
+ (id)connectionWithSocket:(unsigned __int16)a3 remoteAddress:(id)a4 packetFilter:(id)a5;
@end

@implementation AVCPacketRelayConnection

+ (id)connectionWithSocket:(unsigned __int16)a3
{
  v3 = [[AVCPacketRelaySocketConnection alloc] initWithSocket:a3 remoteAddress:0 packetFilter:0];

  return v3;
}

+ (id)connectionWithSocket:(unsigned __int16)a3 remoteAddress:(id)a4
{
  v4 = [[AVCPacketRelaySocketConnection alloc] initWithSocket:a3 remoteAddress:a4 packetFilter:0];

  return v4;
}

+ (id)connectionWithSocket:(unsigned __int16)a3 remoteAddress:(id)a4 packetFilter:(id)a5
{
  v5 = [[AVCPacketRelaySocketConnection alloc] initWithSocket:a3 remoteAddress:a4 packetFilter:a5];

  return v5;
}

+ (id)connectionWithIDSDestination:(id)a3
{
  v3 = [[AVCPacketRelayIDSConnection alloc] initWithIDSDestination:a3];

  return v3;
}

+ (id)connectionWithIDSSocketDescriptor:(unsigned __int16)a3
{
  v3 = [[AVCPacketRelayIDSConnection alloc] initWithIDSSocketDescriptor:a3];

  return v3;
}

@end
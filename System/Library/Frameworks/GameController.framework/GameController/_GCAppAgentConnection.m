@interface _GCAppAgentConnection
- (_GCAppAgentConnection)initWithMachServiceName:(id)a3;
@end

@implementation _GCAppAgentConnection

- (_GCAppAgentConnection)initWithMachServiceName:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithMachServiceName:v5 options:0];

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EB2BD0];
  [v6 setRemoteObjectInterface:v7];

  v10.receiver = self;
  v10.super_class = _GCAppAgentConnection;
  v8 = [(GCIPCRemoteOutgoingConnection *)&v10 initWithConnection:v6];

  return v8;
}

@end
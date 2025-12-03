@interface _GCAppAgentConnection
- (_GCAppAgentConnection)initWithMachServiceName:(id)name;
@end

@implementation _GCAppAgentConnection

- (_GCAppAgentConnection)initWithMachServiceName:(id)name
{
  v4 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v6 = [[v4 alloc] initWithMachServiceName:nameCopy options:0];

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EB2BD0];
  [v6 setRemoteObjectInterface:v7];

  v10.receiver = self;
  v10.super_class = _GCAppAgentConnection;
  v8 = [(GCIPCRemoteOutgoingConnection *)&v10 initWithConnection:v6];

  return v8;
}

@end
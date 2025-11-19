@interface NENetworkAgentSessionFileHandle
- (NENetworkAgentSessionFileHandle)initWithNetworkAgentSession:(id)a3 name:(id)a4;
- (id)description;
@end

@implementation NENetworkAgentSessionFileHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NEFileHandle *)self handle];
  v5 = [v4 fileDescriptor];
  v6 = [(NENetworkAgentSessionFileHandle *)self name];
  v7 = [v3 stringWithFormat:@"Network Agent Session socket (%d) %@", v5, v6];

  return v7;
}

- (NENetworkAgentSessionFileHandle)initWithNetworkAgentSession:(id)a3 name:(id)a4
{
  v7 = a4;
  v8 = [a3 dupSessionFileDescriptor];
  if ((v8 & 0x80000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v9 = v8;
    v14.receiver = self;
    v14.super_class = NENetworkAgentSessionFileHandle;
    v10 = [(NEFileHandle *)&v14 initWithFileDescriptor:v8 launchOwnerWhenReadable:1];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_name, a4);
    }

    else
    {
      close(v9);
    }

    self = v11;
    v12 = self;
  }

  return v12;
}

@end
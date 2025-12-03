@interface NENetworkAgentSessionFileHandle
- (NENetworkAgentSessionFileHandle)initWithNetworkAgentSession:(id)session name:(id)name;
- (id)description;
@end

@implementation NENetworkAgentSessionFileHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  handle = [(NEFileHandle *)self handle];
  fileDescriptor = [handle fileDescriptor];
  name = [(NENetworkAgentSessionFileHandle *)self name];
  v7 = [v3 stringWithFormat:@"Network Agent Session socket (%d) %@", fileDescriptor, name];

  return v7;
}

- (NENetworkAgentSessionFileHandle)initWithNetworkAgentSession:(id)session name:(id)name
{
  nameCopy = name;
  dupSessionFileDescriptor = [session dupSessionFileDescriptor];
  if ((dupSessionFileDescriptor & 0x80000000) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v9 = dupSessionFileDescriptor;
    v14.receiver = self;
    v14.super_class = NENetworkAgentSessionFileHandle;
    v10 = [(NEFileHandle *)&v14 initWithFileDescriptor:dupSessionFileDescriptor launchOwnerWhenReadable:1];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_name, name);
    }

    else
    {
      close(v9);
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end
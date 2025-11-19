@interface NEHotspotHelperCommand
- (NEHotspotHelperCommandType)commandType;
- (NEHotspotHelperResponse)createResponse:(NEHotspotHelperResult)result;
- (NEHotspotNetwork)network;
- (NSArray)networkList;
- (NWTCPConnection)createTCPConnection:(NWEndpoint *)endpoint;
- (NWUDPSession)createUDPSession:(NWEndpoint *)endpoint;
- (OS_nw_interface)interface;
- (id)description;
- (void)dealloc;
- (void)interfaceName;
@end

@implementation NEHotspotHelperCommand

- (NWUDPSession)createUDPSession:(NWEndpoint *)endpoint
{
  v4 = MEMORY[0x1E6977E30];
  v5 = endpoint;
  v6 = [v4 alloc];
  v7 = [(NEHotspotHelperCommand *)self interfaceName];
  v8 = [v6 initWithInterfaceName:v7];

  v9 = objc_alloc_init(MEMORY[0x1E6977E40]);
  [v9 setRequiredInterface:v8];
  v10 = [objc_alloc(MEMORY[0x1E6977E70]) initWithEndpoint:v5 parameters:v9];

  return v10;
}

- (void)interfaceName
{
  if (a1)
  {
    v2 = a1[1];
    a1 = CNPluginCommandGetInterfaceName();
    v1 = vars8;
  }

  return a1;
}

- (NWTCPConnection)createTCPConnection:(NWEndpoint *)endpoint
{
  v4 = MEMORY[0x1E6977E30];
  v5 = endpoint;
  v6 = [v4 alloc];
  v7 = [(NEHotspotHelperCommand *)self interfaceName];
  v8 = [v6 initWithInterfaceName:v7];

  v9 = objc_alloc_init(MEMORY[0x1E6977E40]);
  [v9 setRequiredInterface:v8];
  v10 = [objc_alloc(MEMORY[0x1E6977E68]) initWithEndpoint:v5 parameters:v9];

  return v10;
}

- (OS_nw_interface)interface
{
  v2 = [(NEHotspotHelperCommand *)self interfaceName];
  [v2 UTF8String];
  v3 = nw_interface_create_with_name();

  return v3;
}

- (NEHotspotHelperResponse)createResponse:(NEHotspotHelperResult)result
{
  if (self && self->_command && (v3 = CNPluginResponseCreate()) != 0)
  {
    v4 = v3;
    v5 = [NEHotspotHelperResponse alloc];
    if (v5)
    {
      v9.receiver = v5;
      v9.super_class = NEHotspotHelperResponse;
      v6 = [(NEHotspotHelperCommand *)&v9 init];
      if (v6)
      {
        CFRetain(v4);
        command = v6->_command;
        if (command)
        {
          CFRelease(command);
        }

        v6->_command = v4;
      }
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)networkList
{
  if (self && self->_command && (v2 = CNPluginCommandCopyNetworkList()) != 0)
  {
    v3 = v2;
    v4 = createHotspotNetworkArray(v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NEHotspotNetwork)network
{
  if (self && self->_command && (v2 = CNPluginCommandCopyCurrentNetwork()) != 0)
  {
    v3 = v2;
    v4 = [[NEHotspotNetwork alloc] initWithNetwork:v2];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NEHotspotHelperCommandType)commandType
{
  if (self)
  {
    command = self->_command;
  }

  return CNPluginCommandGetType();
}

- (void)dealloc
{
  if (self)
  {
    command = self->_command;
    if (command)
    {
      CFRelease(command);
    }

    self->_command = 0;
  }

  v4.receiver = self;
  v4.super_class = NEHotspotHelperCommand;
  [(NEHotspotHelperCommand *)&v4 dealloc];
}

- (id)description
{
  if (self)
  {
    self = self->_command;
  }

  v2 = CFCopyDescription(self);

  return v2;
}

@end
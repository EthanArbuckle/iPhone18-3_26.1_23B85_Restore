@interface MIDINetworkHost
+ (MIDINetworkHost)hostWithName:(NSString *)name address:(NSString *)address port:(NSUInteger)port;
+ (MIDINetworkHost)hostWithName:(NSString *)name netService:(NSNetService *)netService;
+ (MIDINetworkHost)hostWithName:(NSString *)name netServiceName:(NSString *)netServiceName netServiceDomain:(NSString *)netServiceDomain;
+ (id)fromAddressAsText:(id)text withName:(id)name;
- (BOOL)hasSameAddressAs:(MIDINetworkHost *)other;
- (MIDINetworkHost)init;
- (id)addressAsText;
- (id)description;
- (id)displayName;
- (void)dealloc;
@end

@implementation MIDINetworkHost

- (id)displayName
{
  imp = self->_imp;
  if (*imp && (v4 = [*imp length], imp = self->_imp, v4))
  {
    v5 = *imp;
  }

  else
  {
    v6 = imp[3];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = imp[1];
      if (v7)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%u", v7, imp[2]];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)addressAsText
{
  imp = self->_imp;
  v3 = imp[1];
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%u", v3, imp[2]];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@\t%@", imp[3], imp[4]];
  }
  v4 = ;

  return v4;
}

- (BOOL)hasSameAddressAs:(MIDINetworkHost *)other
{
  v4 = other;
  address = [(MIDINetworkHost *)self address];

  if (!address)
  {
    netServiceName = [(MIDINetworkHost *)self netServiceName];

    if (netServiceName)
    {
      netServiceName2 = [(MIDINetworkHost *)v4 netServiceName];
      if (!netServiceName2)
      {
        goto LABEL_13;
      }

      netServiceDomain = [(MIDINetworkHost *)self netServiceDomain];
      if (netServiceDomain)
      {
        netServiceDomain2 = [(MIDINetworkHost *)v4 netServiceDomain];
        if (netServiceDomain2)
        {
          netServiceName3 = [(MIDINetworkHost *)self netServiceName];
          netServiceName4 = [(MIDINetworkHost *)v4 netServiceName];
          if ([netServiceName3 isEqualToString:netServiceName4])
          {
            netServiceDomain3 = [(MIDINetworkHost *)self netServiceDomain];
            netServiceDomain4 = [(MIDINetworkHost *)v4 netServiceDomain];
            v10 = [netServiceDomain3 isEqualToString:netServiceDomain4];
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_19;
      }

      v10 = 0;
    }

    else
    {
      netServiceName2 = [(MIDINetworkHost *)v4 address];
      if (netServiceName2)
      {
        goto LABEL_13;
      }

      netServiceDomain = [(MIDINetworkHost *)v4 netServiceName];
      netServiceName2 = 0;
      v10 = netServiceDomain == 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  port = [(MIDINetworkHost *)v4 port];
  if (port == [(MIDINetworkHost *)self port])
  {
    netServiceName2 = [(MIDINetworkHost *)v4 address];
    if (netServiceName2)
    {
      netServiceDomain = [(MIDINetworkHost *)self address];
      netServiceDomain2 = [(MIDINetworkHost *)v4 address];
      v10 = [netServiceDomain isEqualToString:netServiceDomain2];
LABEL_19:

      goto LABEL_20;
    }

LABEL_13:
    v10 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<MIDINetworkHost %p %@ ", self, *self->_imp];
  imp = self->_imp;
  v5 = imp[1];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@:%d>", v3, v5, imp[2]];
  }

  else
  {
    v7 = imp[3];
    if (v7)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ netservice '%@'/'%@'>", v3, v7, imp[4]];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ no address>", v3];
    }
    v6 = ;
  }

  v8 = v6;

  return v8;
}

- (void)dealloc
{
  imp = self->_imp;
  if (imp)
  {

    MEMORY[0x2383C8250](imp, 0x1080C400F7E8713);
  }

  v4.receiver = self;
  v4.super_class = MIDINetworkHost;
  [(MIDINetworkHost *)&v4 dealloc];
}

- (MIDINetworkHost)init
{
  v3.receiver = self;
  v3.super_class = MIDINetworkHost;
  if ([(MIDINetworkHost *)&v3 init])
  {
    operator new();
  }

  return 0;
}

+ (id)fromAddressAsText:(id)text withName:(id)name
{
  textCopy = text;
  nameCopy = name;
  uTF8String = [textCopy UTF8String];
  v8 = uTF8String;
  if (!uTF8String)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if (*uTF8String == 9)
  {
    v9 = uTF8String + 1;
    v10 = strchr(uTF8String + 1, 9);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v9 length:v10 - v9 encoding:4];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10 + 1];
    v13 = [MIDINetworkHost hostWithName:nameCopy netServiceName:v11 netServiceDomain:v12];
  }

  else
  {
    v16 = 0;
    v14 = strrchr(uTF8String, 58);
    v13 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    sscanf(v14 + 1, "%u", &v16);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v8 length:v13 - v8 encoding:4];
    v13 = [MIDINetworkHost hostWithName:nameCopy address:v11 port:v16];
  }

LABEL_8:

  return v13;
}

+ (MIDINetworkHost)hostWithName:(NSString *)name netService:(NSNetService *)netService
{
  v5 = name;
  v6 = netService;
  name = [(NSNetService *)v6 name];
  domain = [(NSNetService *)v6 domain];
  v9 = [MIDINetworkHost hostWithName:v5 netServiceName:name netServiceDomain:domain];

  return v9;
}

+ (MIDINetworkHost)hostWithName:(NSString *)name netServiceName:(NSString *)netServiceName netServiceDomain:(NSString *)netServiceDomain
{
  v7 = name;
  v8 = netServiceName;
  v9 = netServiceDomain;
  v10 = objc_alloc_init(MIDINetworkHost);
  imp = v10->_imp;
  v12 = *imp;
  *imp = v7;
  v13 = v7;

  v14 = imp[3];
  imp[3] = v8;
  v15 = v8;

  v16 = imp[4];
  imp[4] = v9;

  return v10;
}

+ (MIDINetworkHost)hostWithName:(NSString *)name address:(NSString *)address port:(NSUInteger)port
{
  v7 = name;
  v8 = address;
  v9 = objc_alloc_init(MIDINetworkHost);
  imp = v9->_imp;
  v11 = *imp;
  *imp = v7;
  v12 = v7;

  v13 = imp[1];
  imp[1] = v8;
  v14 = v8;

  imp[2] = port;

  return v9;
}

@end
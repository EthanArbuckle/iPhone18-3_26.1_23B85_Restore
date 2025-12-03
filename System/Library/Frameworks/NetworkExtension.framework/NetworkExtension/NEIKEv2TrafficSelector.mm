@interface NEIKEv2TrafficSelector
+ (id)copyAllIPv4;
+ (id)copyAllIPv6;
+ (id)copyConstrainedTrafficSelectorsForRequest:(void *)request reply:;
- (NEIKEv2TrafficSelector)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)type;
@end

@implementation NEIKEv2TrafficSelector

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  startAddress = [(NEIKEv2TrafficSelector *)self startAddress];
  v6 = [startAddress copy];
  [v4 setStartAddress:v6];

  endAddress = [(NEIKEv2TrafficSelector *)self endAddress];
  v8 = [endAddress copy];
  [v4 setEndAddress:v8];

  [v4 setStartPort:{-[NEIKEv2TrafficSelector startPort](self, "startPort")}];
  [v4 setEndPort:{-[NEIKEv2TrafficSelector endPort](self, "endPort")}];
  [v4 setIpProtocol:{-[NEIKEv2TrafficSelector ipProtocol](self, "ipProtocol")}];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  startAddress = [(NEIKEv2TrafficSelector *)self startAddress];
  hostname = [startAddress hostname];
  startPort = [(NEIKEv2TrafficSelector *)self startPort];
  endAddress = [(NEIKEv2TrafficSelector *)self endAddress];
  hostname2 = [endAddress hostname];
  v9 = [v3 initWithFormat:@"%@ : %u -> %@ : %u (%u)", hostname, startPort, hostname2, -[NEIKEv2TrafficSelector endPort](self, "endPort"), -[NEIKEv2TrafficSelector ipProtocol](self, "ipProtocol")];

  return v9;
}

- (NEIKEv2TrafficSelector)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2TrafficSelector;
  v2 = [(NEIKEv2TrafficSelector *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

+ (id)copyAllIPv4
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[1] = 0;
  v8[0] = 528;
  v7[1] = 0;
  v7[0] = -4294966768;
  v2 = objc_alloc_init(NEIKEv2TrafficSelector);
  v3 = [MEMORY[0x1E6977E08] endpointWithAddress:v8];
  [(NEIKEv2TrafficSelector *)v2 setStartAddress:v3];

  v4 = [MEMORY[0x1E6977E08] endpointWithAddress:v7];
  [(NEIKEv2TrafficSelector *)v2 setEndAddress:v4];

  [(NEIKEv2TrafficSelector *)v2 setStartPort:0];
  [(NEIKEv2TrafficSelector *)v2 setEndPort:0xFFFFLL];
  [(NEIKEv2TrafficSelector *)v2 setIpProtocol:0];
  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)copyAllIPv6
{
  v8[1] = 0;
  v9 = 0;
  v8[2] = 0;
  v8[0] = 7708;
  LODWORD(v7) = 0;
  v2 = objc_alloc_init(NEIKEv2TrafficSelector);
  v3 = [MEMORY[0x1E6977E08] endpointWithAddress:{v8, 7708, -1, -1, v7}];
  [(NEIKEv2TrafficSelector *)v2 setStartAddress:v3];

  v4 = [MEMORY[0x1E6977E08] endpointWithAddress:&v6];
  [(NEIKEv2TrafficSelector *)v2 setEndAddress:v4];

  [(NEIKEv2TrafficSelector *)v2 setStartPort:0];
  [(NEIKEv2TrafficSelector *)v2 setEndPort:0xFFFFLL];
  [(NEIKEv2TrafficSelector *)v2 setIpProtocol:0];
  return v2;
}

- (uint64_t)type
{
  if (result)
  {
    v1 = result;
    startAddress = [result startAddress];
    if (startAddress)
    {
      v3 = startAddress;
      endAddress = [v1 endAddress];
      if (endAddress)
      {
        v5 = endAddress;
        startAddress2 = [v1 startAddress];
        addressFamily = [startAddress2 addressFamily];
        endAddress2 = [v1 endAddress];
        addressFamily2 = [endAddress2 addressFamily];

        if (addressFamily == addressFamily2)
        {
          startAddress3 = [v1 startAddress];
          addressFamily3 = [startAddress3 addressFamily];

          if (addressFamily3 == 2)
          {
            return 7;
          }

          startAddress4 = [v1 startAddress];
          addressFamily4 = [startAddress4 addressFamily];

          if (addressFamily4 == 30)
          {
            return 8;
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

+ (id)copyConstrainedTrafficSelectorsForRequest:(void *)request reply:
{
  v12 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objc_opt_self();
  if (!a2)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      v5 = 0;
      goto LABEL_4;
    }

    v10 = 136315138;
    v11 = "+[NEIKEv2TrafficSelector copyConstrainedTrafficSelectorsForRequest:reply:]";
    v9 = "%s called with null request";
LABEL_10:
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v9, &v10, 0xCu);
    goto LABEL_8;
  }

  if (!requestCopy)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v10 = 136315138;
    v11 = "+[NEIKEv2TrafficSelector copyConstrainedTrafficSelectorsForRequest:reply:]";
    v9 = "%s called with null reply";
    goto LABEL_10;
  }

  v5 = requestCopy;
LABEL_4:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
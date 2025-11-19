@interface NEIKEv2TrafficSelector
+ (id)copyAllIPv4;
+ (id)copyAllIPv6;
+ (id)copyConstrainedTrafficSelectorsForRequest:(void *)a3 reply:;
- (NEIKEv2TrafficSelector)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)type;
@end

@implementation NEIKEv2TrafficSelector

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEIKEv2TrafficSelector *)self startAddress];
  v6 = [v5 copy];
  [v4 setStartAddress:v6];

  v7 = [(NEIKEv2TrafficSelector *)self endAddress];
  v8 = [v7 copy];
  [v4 setEndAddress:v8];

  [v4 setStartPort:{-[NEIKEv2TrafficSelector startPort](self, "startPort")}];
  [v4 setEndPort:{-[NEIKEv2TrafficSelector endPort](self, "endPort")}];
  [v4 setIpProtocol:{-[NEIKEv2TrafficSelector ipProtocol](self, "ipProtocol")}];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NEIKEv2TrafficSelector *)self startAddress];
  v5 = [v4 hostname];
  v6 = [(NEIKEv2TrafficSelector *)self startPort];
  v7 = [(NEIKEv2TrafficSelector *)self endAddress];
  v8 = [v7 hostname];
  v9 = [v3 initWithFormat:@"%@ : %u -> %@ : %u (%u)", v5, v6, v8, -[NEIKEv2TrafficSelector endPort](self, "endPort"), -[NEIKEv2TrafficSelector ipProtocol](self, "ipProtocol")];

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
    v2 = [result startAddress];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 endAddress];
      if (v4)
      {
        v5 = v4;
        v6 = [v1 startAddress];
        v7 = [v6 addressFamily];
        v8 = [v1 endAddress];
        v9 = [v8 addressFamily];

        if (v7 == v9)
        {
          v10 = [v1 startAddress];
          v11 = [v10 addressFamily];

          if (v11 == 2)
          {
            return 7;
          }

          v12 = [v1 startAddress];
          v13 = [v12 addressFamily];

          if (v13 == 30)
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

+ (id)copyConstrainedTrafficSelectorsForRequest:(void *)a3 reply:
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  if (!v4)
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

  v5 = v4;
LABEL_4:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
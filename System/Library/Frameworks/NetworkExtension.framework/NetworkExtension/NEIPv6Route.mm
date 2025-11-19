@interface NEIPv6Route
+ (NEIPv6Route)defaultRoute;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isDefaultRoute;
- (NEIPv6Route)initWithCoder:(id)a3;
- (NEIPv6Route)initWithDestinationAddress:(NSString *)address networkPrefixLength:(NSNumber *)networkPrefixLength;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEIPv6Route

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v5 = [(NEIPv6Route *)self init];
  if (v5)
  {
    if (v4)
    {
      v6 = CFDICTIONARY_TYPE;
      if (CFGetTypeID(v4) == v6)
      {
        v7 = NEGetValueWithType(v4, *MEMORY[0x1E6982508], CFSTRING_TYPE);
        destinationAddress = v5->_destinationAddress;
        v5->_destinationAddress = v7;

        v9 = NEGetValueWithType(v4, *MEMORY[0x1E6982520], CFNUMBER_TYPE);
        destinationNetworkPrefixLength = v5->_destinationNetworkPrefixLength;
        v5->_destinationNetworkPrefixLength = v9;

        v11 = NEGetValueWithType(v4, *MEMORY[0x1E6982510], CFSTRING_TYPE);
        gatewayAddress = v5->_gatewayAddress;
        v5->_gatewayAddress = v11;
      }
    }
  }

  return v5;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NEIPv6Route *)self destinationAddress];

  if (v4)
  {
    v5 = [(NEIPv6Route *)self destinationAddress];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6982508]];
  }

  v6 = [(NEIPv6Route *)self destinationNetworkPrefixLength];

  if (v6)
  {
    v7 = [(NEIPv6Route *)self destinationNetworkPrefixLength];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982520]];
  }

  v8 = [(NEIPv6Route *)self gatewayAddress];

  if (v8)
  {
    v9 = [(NEIPv6Route *)self gatewayAddress];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6982510]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v17 = 0uLL;
  v5 = [(NEIPv6Route *)self destinationAddress];

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
    goto LABEL_9;
  }

  v6 = [(NEIPv6Route *)self destinationAddress];
  v7 = inet_pton(30, [v6 UTF8String], &v17);

  if (!v7)
  {
    v8 = @"Invalid NEIPv6Route Destination address";
LABEL_8:
    [NEConfiguration addError:v8 toList:v4];
    LOBYTE(v5) = 0;
    goto LABEL_9;
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v17, xmmword_1BAA4E590)))) & 1) == 0)
  {
    v8 = @"IPv6Route Destination address in loopback";
    goto LABEL_8;
  }

  LOBYTE(v5) = 1;
LABEL_9:
  v9 = [(NEIPv6Route *)self destinationNetworkPrefixLength];
  if (!v9 || (v10 = v9, -[NEIPv6Route destinationNetworkPrefixLength](self, "destinationNetworkPrefixLength"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 integerValue], v11, v10, v12 >= 129))
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v13 = [(NEIPv6Route *)self gatewayAddress];

  if (v13)
  {
    v14 = [(NEIPv6Route *)self gatewayAddress];
    v15 = inet_pton(30, [v14 UTF8String], &v17);

    if (!v15)
    {
      [NEConfiguration addError:v4 toList:?];
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIPv6Route allocWithZone:a3];
  v5 = [(NEIPv6Route *)self destinationAddress];
  v6 = [(NEIPv6Route *)self destinationNetworkPrefixLength];
  v7 = [(NEIPv6Route *)v4 initWithDestinationAddress:v5 networkPrefixLength:v6];

  v8 = [(NEIPv6Route *)self gatewayAddress];
  [(NEIPv6Route *)v7 setGatewayAddress:v8];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEIPv6Route *)self destinationAddress];
  [v4 encodeObject:v5 forKey:@"DestinationAddress"];

  v6 = [(NEIPv6Route *)self destinationNetworkPrefixLength];
  [v4 encodeObject:v6 forKey:@"DestinationPrefixLength"];

  v7 = [(NEIPv6Route *)self gatewayAddress];
  [v4 encodeObject:v7 forKey:@"RouteGatewayAddress"];
}

- (NEIPv6Route)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEIPv6Route;
  v5 = [(NEIPv6Route *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DestinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DestinationPrefixLength"];
    destinationNetworkPrefixLength = v5->_destinationNetworkPrefixLength;
    v5->_destinationNetworkPrefixLength = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RouteGatewayAddress"];
    gatewayAddress = v5->_gatewayAddress;
    v5->_gatewayAddress = v10;
  }

  return v5;
}

- (BOOL)isDefaultRoute
{
  v3 = +[NEIPv6Route defaultRoute];
  v4 = [(NEIPv6Route *)self destinationAddress];
  v5 = [v3 destinationAddress];
  if ([v4 isEqualToString:v5])
  {
    v6 = [(NEIPv6Route *)self destinationNetworkPrefixLength];
    v7 = [v3 destinationNetworkPrefixLength];
    v8 = [v6 isEqualToNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NEIPv6Route)initWithDestinationAddress:(NSString *)address networkPrefixLength:(NSNumber *)networkPrefixLength
{
  v7 = address;
  v8 = networkPrefixLength;
  v12.receiver = self;
  v12.super_class = NEIPv6Route;
  v9 = [(NEIPv6Route *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destinationAddress, address);
    objc_storeStrong(&v10->_destinationNetworkPrefixLength, networkPrefixLength);
  }

  return v10;
}

+ (NEIPv6Route)defaultRoute
{
  objc_opt_self();
  if (initGlobals_onceToken_16356 != -1)
  {
    dispatch_once(&initGlobals_onceToken_16356, &__block_literal_global_16357);
  }

  v2 = NEIPv6DefaultRoute;

  return v2;
}

uint64_t __26__NEIPv6Route_initGlobals__block_invoke()
{
  v0 = [[NEIPv6Route alloc] initWithDestinationAddress:@"::" networkPrefixLength:&unk_1F38BA598];
  v1 = NEIPv6DefaultRoute;
  NEIPv6DefaultRoute = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
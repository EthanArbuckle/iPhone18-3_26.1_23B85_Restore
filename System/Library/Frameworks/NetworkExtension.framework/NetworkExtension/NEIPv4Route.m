@interface NEIPv4Route
+ (NEIPv4Route)defaultRoute;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isDefaultRoute;
- (NEIPv4Route)initWithCoder:(id)a3;
- (NEIPv4Route)initWithDestinationAddress:(NSString *)address subnetMask:(NSString *)subnetMask;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEIPv4Route

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v5 = [(NEIPv4Route *)self init];
  if (v5)
  {
    if (v4)
    {
      v6 = CFDICTIONARY_TYPE;
      if (CFGetTypeID(v4) == v6)
      {
        v7 = NEGetValueWithType(v4, *MEMORY[0x1E69824A0], CFSTRING_TYPE);
        destinationAddress = v5->_destinationAddress;
        v5->_destinationAddress = v7;

        v9 = NEGetValueWithType(v4, *MEMORY[0x1E69824B8], CFSTRING_TYPE);
        destinationSubnetMask = v5->_destinationSubnetMask;
        v5->_destinationSubnetMask = v9;

        v11 = NEGetValueWithType(v4, *MEMORY[0x1E69824A8], CFSTRING_TYPE);
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
  v4 = [(NEIPv4Route *)self destinationAddress];

  if (v4)
  {
    v5 = [(NEIPv4Route *)self destinationAddress];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69824A0]];
  }

  v6 = [(NEIPv4Route *)self destinationSubnetMask];

  if (v6)
  {
    v7 = [(NEIPv4Route *)self destinationSubnetMask];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69824B8]];
  }

  v8 = [(NEIPv4Route *)self gatewayAddress];

  if (v8)
  {
    v9 = [(NEIPv4Route *)self gatewayAddress];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69824A8]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [(NEIPv4Route *)self destinationAddress];

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
    goto LABEL_9;
  }

  v6 = [(NEIPv4Route *)self destinationAddress];
  v7 = inet_pton(2, [v6 UTF8String], &v14);

  if (!v7)
  {
    v8 = @"Invalid IPv4Route Destination address";
    goto LABEL_7;
  }

  if (v14 == 127)
  {
    v8 = @"IPv4Route Destination address is loopback";
LABEL_7:
    [NEConfiguration addError:v8 toList:v4];
    LOBYTE(v5) = 0;
    goto LABEL_9;
  }

  LOBYTE(v5) = 1;
LABEL_9:
  v9 = [(NEIPv4Route *)self destinationSubnetMask];

  if (!v9)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v10 = [(NEIPv4Route *)self gatewayAddress];

  if (v10)
  {
    v11 = [(NEIPv4Route *)self gatewayAddress];
    v12 = inet_pton(2, [v11 UTF8String], &v14);

    if (!v12)
    {
      [NEConfiguration addError:v4 toList:?];
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIPv4Route allocWithZone:a3];
  v5 = [(NEIPv4Route *)self destinationAddress];
  v6 = [(NEIPv4Route *)self destinationSubnetMask];
  v7 = [(NEIPv4Route *)v4 initWithDestinationAddress:v5 subnetMask:v6];

  v8 = [(NEIPv4Route *)self gatewayAddress];
  [(NEIPv4Route *)v7 setGatewayAddress:v8];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEIPv4Route *)self destinationAddress];
  [v4 encodeObject:v5 forKey:@"DestinationAddress"];

  v6 = [(NEIPv4Route *)self destinationSubnetMask];
  [v4 encodeObject:v6 forKey:@"DestinationSubnetMask"];

  v7 = [(NEIPv4Route *)self gatewayAddress];
  [v4 encodeObject:v7 forKey:@"RouteGatewayAddress"];
}

- (NEIPv4Route)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEIPv4Route;
  v5 = [(NEIPv4Route *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DestinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DestinationSubnetMask"];
    destinationSubnetMask = v5->_destinationSubnetMask;
    v5->_destinationSubnetMask = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RouteGatewayAddress"];
    gatewayAddress = v5->_gatewayAddress;
    v5->_gatewayAddress = v10;
  }

  return v5;
}

- (BOOL)isDefaultRoute
{
  v3 = +[NEIPv4Route defaultRoute];
  v4 = [(NEIPv4Route *)self destinationAddress];
  v5 = [v3 destinationAddress];
  if ([v4 isEqualToString:v5])
  {
    v6 = [(NEIPv4Route *)self destinationSubnetMask];
    v7 = [v3 destinationSubnetMask];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NEIPv4Route)initWithDestinationAddress:(NSString *)address subnetMask:(NSString *)subnetMask
{
  v7 = address;
  v8 = subnetMask;
  v12.receiver = self;
  v12.super_class = NEIPv4Route;
  v9 = [(NEIPv4Route *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destinationAddress, address);
    objc_storeStrong(&v10->_destinationSubnetMask, subnetMask);
  }

  return v10;
}

+ (NEIPv4Route)defaultRoute
{
  objc_opt_self();
  if (initGlobals_onceToken != -1)
  {
    dispatch_once(&initGlobals_onceToken, &__block_literal_global_16114);
  }

  v2 = NEIPv4DefaultRoute;

  return v2;
}

uint64_t __26__NEIPv4Route_initGlobals__block_invoke()
{
  v0 = [[NEIPv4Route alloc] initWithDestinationAddress:@"0.0.0.0" subnetMask:@"0.0.0.0"];
  v1 = NEIPv4DefaultRoute;
  NEIPv4DefaultRoute = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
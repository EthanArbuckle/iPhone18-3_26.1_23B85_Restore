@interface NEIPv4Route
+ (NEIPv4Route)defaultRoute;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isDefaultRoute;
- (NEIPv4Route)initWithCoder:(id)coder;
- (NEIPv4Route)initWithDestinationAddress:(NSString *)address subnetMask:(NSString *)subnetMask;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEIPv4Route

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(NEIPv4Route *)self init];
  if (v5)
  {
    if (dictionaryCopy)
    {
      v6 = CFDICTIONARY_TYPE;
      if (CFGetTypeID(dictionaryCopy) == v6)
      {
        v7 = NEGetValueWithType(dictionaryCopy, *MEMORY[0x1E69824A0], CFSTRING_TYPE);
        destinationAddress = v5->_destinationAddress;
        v5->_destinationAddress = v7;

        v9 = NEGetValueWithType(dictionaryCopy, *MEMORY[0x1E69824B8], CFSTRING_TYPE);
        destinationSubnetMask = v5->_destinationSubnetMask;
        v5->_destinationSubnetMask = v9;

        v11 = NEGetValueWithType(dictionaryCopy, *MEMORY[0x1E69824A8], CFSTRING_TYPE);
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
  destinationAddress = [(NEIPv4Route *)self destinationAddress];

  if (destinationAddress)
  {
    destinationAddress2 = [(NEIPv4Route *)self destinationAddress];
    [v3 setObject:destinationAddress2 forKeyedSubscript:*MEMORY[0x1E69824A0]];
  }

  destinationSubnetMask = [(NEIPv4Route *)self destinationSubnetMask];

  if (destinationSubnetMask)
  {
    destinationSubnetMask2 = [(NEIPv4Route *)self destinationSubnetMask];
    [v3 setObject:destinationSubnetMask2 forKeyedSubscript:*MEMORY[0x1E69824B8]];
  }

  gatewayAddress = [(NEIPv4Route *)self gatewayAddress];

  if (gatewayAddress)
  {
    gatewayAddress2 = [(NEIPv4Route *)self gatewayAddress];
    [v3 setObject:gatewayAddress2 forKeyedSubscript:*MEMORY[0x1E69824A8]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v14 = 0;
  destinationAddress = [(NEIPv4Route *)self destinationAddress];

  if (!destinationAddress)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    goto LABEL_9;
  }

  destinationAddress2 = [(NEIPv4Route *)self destinationAddress];
  v7 = inet_pton(2, [destinationAddress2 UTF8String], &v14);

  if (!v7)
  {
    v8 = @"Invalid IPv4Route Destination address";
    goto LABEL_7;
  }

  if (v14 == 127)
  {
    v8 = @"IPv4Route Destination address is loopback";
LABEL_7:
    [NEConfiguration addError:v8 toList:errorsCopy];
    LOBYTE(destinationAddress) = 0;
    goto LABEL_9;
  }

  LOBYTE(destinationAddress) = 1;
LABEL_9:
  destinationSubnetMask = [(NEIPv4Route *)self destinationSubnetMask];

  if (!destinationSubnetMask)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  gatewayAddress = [(NEIPv4Route *)self gatewayAddress];

  if (gatewayAddress)
  {
    gatewayAddress2 = [(NEIPv4Route *)self gatewayAddress];
    v12 = inet_pton(2, [gatewayAddress2 UTF8String], &v14);

    if (!v12)
    {
      [NEConfiguration addError:errorsCopy toList:?];
      LOBYTE(destinationAddress) = 0;
    }
  }

  return destinationAddress;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEIPv4Route allocWithZone:zone];
  destinationAddress = [(NEIPv4Route *)self destinationAddress];
  destinationSubnetMask = [(NEIPv4Route *)self destinationSubnetMask];
  v7 = [(NEIPv4Route *)v4 initWithDestinationAddress:destinationAddress subnetMask:destinationSubnetMask];

  gatewayAddress = [(NEIPv4Route *)self gatewayAddress];
  [(NEIPv4Route *)v7 setGatewayAddress:gatewayAddress];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  destinationAddress = [(NEIPv4Route *)self destinationAddress];
  [coderCopy encodeObject:destinationAddress forKey:@"DestinationAddress"];

  destinationSubnetMask = [(NEIPv4Route *)self destinationSubnetMask];
  [coderCopy encodeObject:destinationSubnetMask forKey:@"DestinationSubnetMask"];

  gatewayAddress = [(NEIPv4Route *)self gatewayAddress];
  [coderCopy encodeObject:gatewayAddress forKey:@"RouteGatewayAddress"];
}

- (NEIPv4Route)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NEIPv4Route;
  v5 = [(NEIPv4Route *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DestinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DestinationSubnetMask"];
    destinationSubnetMask = v5->_destinationSubnetMask;
    v5->_destinationSubnetMask = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RouteGatewayAddress"];
    gatewayAddress = v5->_gatewayAddress;
    v5->_gatewayAddress = v10;
  }

  return v5;
}

- (BOOL)isDefaultRoute
{
  v3 = +[NEIPv4Route defaultRoute];
  destinationAddress = [(NEIPv4Route *)self destinationAddress];
  destinationAddress2 = [v3 destinationAddress];
  if ([destinationAddress isEqualToString:destinationAddress2])
  {
    destinationSubnetMask = [(NEIPv4Route *)self destinationSubnetMask];
    destinationSubnetMask2 = [v3 destinationSubnetMask];
    v8 = [destinationSubnetMask isEqualToString:destinationSubnetMask2];
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
@interface NEIPv6Route
+ (NEIPv6Route)defaultRoute;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isDefaultRoute;
- (NEIPv6Route)initWithCoder:(id)coder;
- (NEIPv6Route)initWithDestinationAddress:(NSString *)address networkPrefixLength:(NSNumber *)networkPrefixLength;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEIPv6Route

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(NEIPv6Route *)self init];
  if (v5)
  {
    if (dictionaryCopy)
    {
      v6 = CFDICTIONARY_TYPE;
      if (CFGetTypeID(dictionaryCopy) == v6)
      {
        v7 = NEGetValueWithType(dictionaryCopy, *MEMORY[0x1E6982508], CFSTRING_TYPE);
        destinationAddress = v5->_destinationAddress;
        v5->_destinationAddress = v7;

        v9 = NEGetValueWithType(dictionaryCopy, *MEMORY[0x1E6982520], CFNUMBER_TYPE);
        destinationNetworkPrefixLength = v5->_destinationNetworkPrefixLength;
        v5->_destinationNetworkPrefixLength = v9;

        v11 = NEGetValueWithType(dictionaryCopy, *MEMORY[0x1E6982510], CFSTRING_TYPE);
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
  destinationAddress = [(NEIPv6Route *)self destinationAddress];

  if (destinationAddress)
  {
    destinationAddress2 = [(NEIPv6Route *)self destinationAddress];
    [v3 setObject:destinationAddress2 forKeyedSubscript:*MEMORY[0x1E6982508]];
  }

  destinationNetworkPrefixLength = [(NEIPv6Route *)self destinationNetworkPrefixLength];

  if (destinationNetworkPrefixLength)
  {
    destinationNetworkPrefixLength2 = [(NEIPv6Route *)self destinationNetworkPrefixLength];
    [v3 setObject:destinationNetworkPrefixLength2 forKeyedSubscript:*MEMORY[0x1E6982520]];
  }

  gatewayAddress = [(NEIPv6Route *)self gatewayAddress];

  if (gatewayAddress)
  {
    gatewayAddress2 = [(NEIPv6Route *)self gatewayAddress];
    [v3 setObject:gatewayAddress2 forKeyedSubscript:*MEMORY[0x1E6982510]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v17 = 0uLL;
  destinationAddress = [(NEIPv6Route *)self destinationAddress];

  if (!destinationAddress)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    goto LABEL_9;
  }

  destinationAddress2 = [(NEIPv6Route *)self destinationAddress];
  v7 = inet_pton(30, [destinationAddress2 UTF8String], &v17);

  if (!v7)
  {
    v8 = @"Invalid NEIPv6Route Destination address";
LABEL_8:
    [NEConfiguration addError:v8 toList:errorsCopy];
    LOBYTE(destinationAddress) = 0;
    goto LABEL_9;
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v17, xmmword_1BAA4E590)))) & 1) == 0)
  {
    v8 = @"IPv6Route Destination address in loopback";
    goto LABEL_8;
  }

  LOBYTE(destinationAddress) = 1;
LABEL_9:
  destinationNetworkPrefixLength = [(NEIPv6Route *)self destinationNetworkPrefixLength];
  if (!destinationNetworkPrefixLength || (v10 = destinationNetworkPrefixLength, -[NEIPv6Route destinationNetworkPrefixLength](self, "destinationNetworkPrefixLength"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 integerValue], v11, v10, v12 >= 129))
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  gatewayAddress = [(NEIPv6Route *)self gatewayAddress];

  if (gatewayAddress)
  {
    gatewayAddress2 = [(NEIPv6Route *)self gatewayAddress];
    v15 = inet_pton(30, [gatewayAddress2 UTF8String], &v17);

    if (!v15)
    {
      [NEConfiguration addError:errorsCopy toList:?];
      LOBYTE(destinationAddress) = 0;
    }
  }

  return destinationAddress;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEIPv6Route allocWithZone:zone];
  destinationAddress = [(NEIPv6Route *)self destinationAddress];
  destinationNetworkPrefixLength = [(NEIPv6Route *)self destinationNetworkPrefixLength];
  v7 = [(NEIPv6Route *)v4 initWithDestinationAddress:destinationAddress networkPrefixLength:destinationNetworkPrefixLength];

  gatewayAddress = [(NEIPv6Route *)self gatewayAddress];
  [(NEIPv6Route *)v7 setGatewayAddress:gatewayAddress];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  destinationAddress = [(NEIPv6Route *)self destinationAddress];
  [coderCopy encodeObject:destinationAddress forKey:@"DestinationAddress"];

  destinationNetworkPrefixLength = [(NEIPv6Route *)self destinationNetworkPrefixLength];
  [coderCopy encodeObject:destinationNetworkPrefixLength forKey:@"DestinationPrefixLength"];

  gatewayAddress = [(NEIPv6Route *)self gatewayAddress];
  [coderCopy encodeObject:gatewayAddress forKey:@"RouteGatewayAddress"];
}

- (NEIPv6Route)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NEIPv6Route;
  v5 = [(NEIPv6Route *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DestinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DestinationPrefixLength"];
    destinationNetworkPrefixLength = v5->_destinationNetworkPrefixLength;
    v5->_destinationNetworkPrefixLength = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RouteGatewayAddress"];
    gatewayAddress = v5->_gatewayAddress;
    v5->_gatewayAddress = v10;
  }

  return v5;
}

- (BOOL)isDefaultRoute
{
  v3 = +[NEIPv6Route defaultRoute];
  destinationAddress = [(NEIPv6Route *)self destinationAddress];
  destinationAddress2 = [v3 destinationAddress];
  if ([destinationAddress isEqualToString:destinationAddress2])
  {
    destinationNetworkPrefixLength = [(NEIPv6Route *)self destinationNetworkPrefixLength];
    destinationNetworkPrefixLength2 = [v3 destinationNetworkPrefixLength];
    v8 = [destinationNetworkPrefixLength isEqualToNumber:destinationNetworkPrefixLength2];
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
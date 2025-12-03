@interface IPCStartNavigationMessage
+ (id)startNavigationMessageWithLoadDirectionsMessage:(id)message;
- (BOOL)matchesLoadDirectionsMessage:(id)message;
- (IPCStartNavigationMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCStartNavigationMessage

- (BOOL)matchesLoadDirectionsMessage:(id)message
{
  messageCopy = message;
  loadDirectionsMessage = [(IPCStartNavigationMessage *)self loadDirectionsMessage];
  routeContextData = [loadDirectionsMessage routeContextData];
  if (routeContextData && (v7 = routeContextData, [loadDirectionsMessage routeContextData], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(messageCopy, "routeContextData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToData:", v9), v9, v8, v7, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    v11 = [loadDirectionsMessage isEqual:messageCopy];
  }

  return v11;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCStartNavigationMessage;
  v3 = [(IPCStartNavigationMessage *)&v7 description];
  dictionaryValue = [(IPCStartNavigationMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

- (id)dictionaryValue
{
  v13.receiver = self;
  v13.super_class = IPCStartNavigationMessage;
  dictionaryValue = [(IPCMessageObject *)&v13 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  loadDirectionsMessage = [(IPCStartNavigationMessage *)self loadDirectionsMessage];
  dictionaryValue2 = [loadDirectionsMessage dictionaryValue];
  [v4 setObject:dictionaryValue2 forKeyedSubscript:@"kIPCStartNavigationMessageLoadDirectionsMessageKey"];

  v7 = [NSNumber numberWithBool:[(IPCStartNavigationMessage *)self originIsWatch]];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCStartNavigationMessageOriginIsWatchKey"];

  routeID = [(IPCStartNavigationMessage *)self routeID];
  v9 = [routeID copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCStartNavigationMessageRouteIDKey"];

  v10 = [NSNumber numberWithUnsignedInteger:[(IPCStartNavigationMessage *)self routeIndex]];
  [v4 setObject:v10 forKeyedSubscript:@"kIPCStartNavigationMessageRouteIndexKey"];

  v11 = [v4 copy];

  return v11;
}

- (IPCStartNavigationMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IPCStartNavigationMessage;
  v5 = [(IPCMessageObject *)&v16 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCStartNavigationMessageLoadDirectionsMessageKey"];

    if (v6)
    {
      v7 = [IPCLoadDirectionsMessage alloc];
      v8 = [dictionaryCopy objectForKeyedSubscript:@"kIPCStartNavigationMessageLoadDirectionsMessageKey"];
      v9 = [(IPCLoadDirectionsMessage *)v7 initWithDictionary:v8];
      [(IPCStartNavigationMessage *)v5 setLoadDirectionsMessage:v9];

      v10 = [dictionaryCopy objectForKeyedSubscript:@"kIPCStartNavigationMessageOriginIsWatchKey"];
      -[IPCStartNavigationMessage setOriginIsWatch:](v5, "setOriginIsWatch:", [v10 BOOLValue]);

      v11 = [dictionaryCopy objectForKeyedSubscript:@"kIPCStartNavigationMessageRouteIDKey"];
      [(IPCStartNavigationMessage *)v5 setRouteID:v11];

      v12 = [dictionaryCopy objectForKeyedSubscript:@"kIPCStartNavigationMessageRouteIndexKey"];
      v13 = v12;
      if (v12)
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(IPCStartNavigationMessage *)v5 setRouteIndex:unsignedIntegerValue];
    }
  }

  return v5;
}

+ (id)startNavigationMessageWithLoadDirectionsMessage:(id)message
{
  if (message)
  {
    messageCopy = message;
    v5 = objc_alloc_init(self);
    [v5 setLoadDirectionsMessage:messageCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
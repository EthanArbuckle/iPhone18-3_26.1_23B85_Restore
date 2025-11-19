@interface IPCStartNavigationMessage
+ (id)startNavigationMessageWithLoadDirectionsMessage:(id)a3;
- (BOOL)matchesLoadDirectionsMessage:(id)a3;
- (IPCStartNavigationMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCStartNavigationMessage

+ (id)startNavigationMessageWithLoadDirectionsMessage:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(a1);
    [v5 setLoadDirectionsMessage:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IPCStartNavigationMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IPCStartNavigationMessage;
  v5 = [(IPCMessageObject *)&v16 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCStartNavigationMessageLoadDirectionsMessageKey"];

    if (v6)
    {
      v7 = [IPCLoadDirectionsMessage alloc];
      v8 = [v4 objectForKeyedSubscript:@"kIPCStartNavigationMessageLoadDirectionsMessageKey"];
      v9 = [(IPCLoadDirectionsMessage *)v7 initWithDictionary:v8];
      [(IPCStartNavigationMessage *)v5 setLoadDirectionsMessage:v9];

      v10 = [v4 objectForKeyedSubscript:@"kIPCStartNavigationMessageOriginIsWatchKey"];
      -[IPCStartNavigationMessage setOriginIsWatch:](v5, "setOriginIsWatch:", [v10 BOOLValue]);

      v11 = [v4 objectForKeyedSubscript:@"kIPCStartNavigationMessageRouteIDKey"];
      [(IPCStartNavigationMessage *)v5 setRouteID:v11];

      v12 = [v4 objectForKeyedSubscript:@"kIPCStartNavigationMessageRouteIndexKey"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 unsignedIntegerValue];
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(IPCStartNavigationMessage *)v5 setRouteIndex:v14];
    }
  }

  return v5;
}

- (id)dictionaryValue
{
  v13.receiver = self;
  v13.super_class = IPCStartNavigationMessage;
  v3 = [(IPCMessageObject *)&v13 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [(IPCStartNavigationMessage *)self loadDirectionsMessage];
  v6 = [v5 dictionaryValue];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCStartNavigationMessageLoadDirectionsMessageKey"];

  v7 = [NSNumber numberWithBool:[(IPCStartNavigationMessage *)self originIsWatch]];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCStartNavigationMessageOriginIsWatchKey"];

  v8 = [(IPCStartNavigationMessage *)self routeID];
  v9 = [v8 copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCStartNavigationMessageRouteIDKey"];

  v10 = [NSNumber numberWithUnsignedInteger:[(IPCStartNavigationMessage *)self routeIndex]];
  [v4 setObject:v10 forKeyedSubscript:@"kIPCStartNavigationMessageRouteIndexKey"];

  v11 = [v4 copy];

  return v11;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCStartNavigationMessage;
  v3 = [(IPCStartNavigationMessage *)&v7 description];
  v4 = [(IPCStartNavigationMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (BOOL)matchesLoadDirectionsMessage:(id)a3
{
  v4 = a3;
  v5 = [(IPCStartNavigationMessage *)self loadDirectionsMessage];
  v6 = [v5 routeContextData];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = [v5 routeContextData];
  v9 = [v4 routeContextData];
  v10 = [v8 isEqualToData:v9];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
LABEL_4:
    v11 = [v5 isEqual:v4];
  }

  return v11;
}

@end
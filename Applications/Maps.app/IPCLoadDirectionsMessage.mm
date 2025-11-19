@interface IPCLoadDirectionsMessage
- (IPCLoadDirectionsMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCLoadDirectionsMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCLoadDirectionsMessage;
  v3 = [(IPCLoadDirectionsMessage *)&v7 description];
  v4 = [(IPCLoadDirectionsMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryValue
{
  v14.receiver = self;
  v14.super_class = IPCLoadDirectionsMessage;
  v3 = [(IPCMessageObject *)&v14 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [(IPCLoadDirectionsMessage *)self url];
  v6 = [v5 absoluteString];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCLoadDirectionsMessageURL"];

  v7 = [NSNumber numberWithBool:[(IPCLoadDirectionsMessage *)self originIsWatch]];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCLoadDirectionsMessageOriginIsWatch"];

  v8 = [(IPCLoadDirectionsMessage *)self routeContextData];
  v9 = [v8 copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCLoadDirectionsMessageRouteContextData"];

  v10 = [(IPCLoadDirectionsMessage *)self routePersistentData];
  v11 = [v10 copy];
  [v4 setObject:v11 forKeyedSubscript:@"kIPCLoadDirectionsMessageRoutePersistentData"];

  v12 = [v4 copy];

  return v12;
}

- (IPCLoadDirectionsMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IPCLoadDirectionsMessage;
  v5 = [(IPCMessageObject *)&v13 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCLoadDirectionsMessageURL"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"kIPCLoadDirectionsMessageURL"];
      v8 = [NSURL URLWithString:v7];
      [(IPCLoadDirectionsMessage *)v5 setUrl:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"kIPCLoadDirectionsMessageOriginIsWatch"];
    -[IPCLoadDirectionsMessage setOriginIsWatch:](v5, "setOriginIsWatch:", [v9 BOOLValue]);

    v10 = [v4 objectForKeyedSubscript:@"kIPCLoadDirectionsMessageRouteContextData"];
    [(IPCLoadDirectionsMessage *)v5 setRouteContextData:v10];

    v11 = [v4 objectForKeyedSubscript:@"kIPCLoadDirectionsMessageRoutePersistentData"];
    [(IPCLoadDirectionsMessage *)v5 setRoutePersistentData:v11];
  }

  return v5;
}

@end
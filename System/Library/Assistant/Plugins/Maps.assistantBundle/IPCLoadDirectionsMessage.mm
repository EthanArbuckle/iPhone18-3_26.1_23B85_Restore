@interface IPCLoadDirectionsMessage
- (IPCLoadDirectionsMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCLoadDirectionsMessage

- (IPCLoadDirectionsMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IPCLoadDirectionsMessage;
  v5 = [(IPCMessageObject *)&v13 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsMessageURL"];

    if (v6)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsMessageURL"];
      v8 = [NSURL URLWithString:v7];
      [(IPCLoadDirectionsMessage *)v5 setUrl:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsMessageOriginIsWatch"];
    -[IPCLoadDirectionsMessage setOriginIsWatch:](v5, "setOriginIsWatch:", [v9 BOOLValue]);

    v10 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsMessageRouteContextData"];
    [(IPCLoadDirectionsMessage *)v5 setRouteContextData:v10];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsMessageRoutePersistentData"];
    [(IPCLoadDirectionsMessage *)v5 setRoutePersistentData:v11];
  }

  return v5;
}

- (id)dictionaryValue
{
  v14.receiver = self;
  v14.super_class = IPCLoadDirectionsMessage;
  dictionaryValue = [(IPCMessageObject *)&v14 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [(IPCLoadDirectionsMessage *)self url];
  absoluteString = [v5 absoluteString];
  [v4 setObject:absoluteString forKeyedSubscript:@"kIPCLoadDirectionsMessageURL"];

  v7 = [NSNumber numberWithBool:[(IPCLoadDirectionsMessage *)self originIsWatch]];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCLoadDirectionsMessageOriginIsWatch"];

  routeContextData = [(IPCLoadDirectionsMessage *)self routeContextData];
  v9 = [routeContextData copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCLoadDirectionsMessageRouteContextData"];

  routePersistentData = [(IPCLoadDirectionsMessage *)self routePersistentData];
  v11 = [routePersistentData copy];
  [v4 setObject:v11 forKeyedSubscript:@"kIPCLoadDirectionsMessageRoutePersistentData"];

  v12 = [v4 copy];

  return v12;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCLoadDirectionsMessage;
  v3 = [(IPCLoadDirectionsMessage *)&v7 description];
  dictionaryValue = [(IPCLoadDirectionsMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

@end
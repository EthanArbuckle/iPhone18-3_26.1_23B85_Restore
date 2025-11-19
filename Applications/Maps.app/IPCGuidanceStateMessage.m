@interface IPCGuidanceStateMessage
- (IPCGuidanceStateMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCGuidanceStateMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCGuidanceStateMessage;
  v3 = [(IPCGuidanceStateMessage *)&v7 description];
  v4 = [(IPCGuidanceStateMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryValue
{
  v8.receiver = self;
  v8.super_class = IPCGuidanceStateMessage;
  v3 = [(IPCMessageObject *)&v8 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(IPCGuidanceStateMessage *)self includeRoute]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCGuidanceStateMessageIncludeRouteKey"];

  v6 = [v4 copy];

  return v6;
}

- (IPCGuidanceStateMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IPCGuidanceStateMessage;
  v5 = [(IPCMessageObject *)&v8 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateMessageIncludeRouteKey"];
    -[IPCGuidanceStateMessage setIncludeRoute:](v5, "setIncludeRoute:", [v6 BOOLValue]);
  }

  return v5;
}

@end
@interface IPCHandleTrafficAlertMessage
- (IPCHandleTrafficAlertMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCHandleTrafficAlertMessage

- (IPCHandleTrafficAlertMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = IPCHandleTrafficAlertMessage;
  v5 = [(IPCMessageObject *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCHandTrafficAlertMessageShouldRerouteKey"];
    -[IPCHandleTrafficAlertMessage setShouldReroute:](v5, "setShouldReroute:", [v6 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryValue
{
  v8.receiver = self;
  v8.super_class = IPCHandleTrafficAlertMessage;
  dictionaryValue = [(IPCMessageObject *)&v8 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [NSNumber numberWithBool:[(IPCHandleTrafficAlertMessage *)self shouldReroute]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCHandTrafficAlertMessageShouldRerouteKey"];

  v6 = [v4 copy];

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCHandleTrafficAlertMessage;
  v3 = [(IPCHandleTrafficAlertMessage *)&v7 description];
  dictionaryValue = [(IPCHandleTrafficAlertMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

@end
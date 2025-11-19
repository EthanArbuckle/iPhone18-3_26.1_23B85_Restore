@interface IPCTrafficIncidentAlertMessage
- (IPCTrafficIncidentAlertMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCTrafficIncidentAlertMessage

- (id)description
{
  v11.receiver = self;
  v11.super_class = IPCTrafficIncidentAlertMessage;
  v3 = [(IPCTrafficIncidentAlertMessage *)&v11 description];
  v4 = [NSNumber numberWithUnsignedInteger:[(IPCTrafficIncidentAlertMessage *)self type]];
  v5 = [(IPCTrafficIncidentAlertMessage *)self title];
  v6 = [(IPCTrafficIncidentAlertMessage *)self subtitle];
  v7 = [(IPCTrafficIncidentAlertMessage *)self identifier];
  v8 = [(IPCTrafficIncidentAlertMessage *)self incident];
  v9 = [NSString stringWithFormat:@"%@             type : {%@}             title : {%@}             subtitle : {%@}             identifier : {%@}             incident : {%@}", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (id)dictionaryValue
{
  v16.receiver = self;
  v16.super_class = IPCTrafficIncidentAlertMessage;
  v3 = [(IPCMessageObject *)&v16 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithUnsignedInteger:[(IPCTrafficIncidentAlertMessage *)self type]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTypeKey"];

  v6 = [(IPCTrafficIncidentAlertMessage *)self title];
  v7 = [v6 copy];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTitleKey"];

  v8 = [(IPCTrafficIncidentAlertMessage *)self subtitle];
  v9 = [v8 copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageSubtitleKey"];

  v10 = [(IPCTrafficIncidentAlertMessage *)self identifier];
  v11 = [v10 copy];
  [v4 setObject:v11 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIdentifierKey"];

  v12 = [(IPCTrafficIncidentAlertMessage *)self incident];
  v13 = [v12 copy];
  [v4 setObject:v13 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIncidentKey"];

  v14 = [v4 copy];

  return v14;
}

- (IPCTrafficIncidentAlertMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IPCTrafficIncidentAlertMessage;
  v5 = [(IPCMessageObject *)&v12 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTypeKey"];
    -[IPCTrafficIncidentAlertMessage setType:](v5, "setType:", [v6 unsignedIntegerValue]);

    v7 = [v4 objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTitleKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setTitle:v7];

    v8 = [v4 objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageSubtitleKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setSubtitle:v8];

    v9 = [v4 objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIdentifierKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setIdentifier:v9];

    v10 = [v4 objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIncidentKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setIncident:v10];
  }

  return v5;
}

@end
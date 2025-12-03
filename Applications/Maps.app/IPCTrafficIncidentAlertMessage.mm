@interface IPCTrafficIncidentAlertMessage
- (IPCTrafficIncidentAlertMessage)initWithDictionary:(id)dictionary;
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
  title = [(IPCTrafficIncidentAlertMessage *)self title];
  subtitle = [(IPCTrafficIncidentAlertMessage *)self subtitle];
  identifier = [(IPCTrafficIncidentAlertMessage *)self identifier];
  incident = [(IPCTrafficIncidentAlertMessage *)self incident];
  v9 = [NSString stringWithFormat:@"%@             type : {%@}             title : {%@}             subtitle : {%@}             identifier : {%@}             incident : {%@}", v3, v4, title, subtitle, identifier, incident];

  return v9;
}

- (id)dictionaryValue
{
  v16.receiver = self;
  v16.super_class = IPCTrafficIncidentAlertMessage;
  dictionaryValue = [(IPCMessageObject *)&v16 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [NSNumber numberWithUnsignedInteger:[(IPCTrafficIncidentAlertMessage *)self type]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTypeKey"];

  title = [(IPCTrafficIncidentAlertMessage *)self title];
  v7 = [title copy];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTitleKey"];

  subtitle = [(IPCTrafficIncidentAlertMessage *)self subtitle];
  v9 = [subtitle copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageSubtitleKey"];

  identifier = [(IPCTrafficIncidentAlertMessage *)self identifier];
  v11 = [identifier copy];
  [v4 setObject:v11 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIdentifierKey"];

  incident = [(IPCTrafficIncidentAlertMessage *)self incident];
  v13 = [incident copy];
  [v4 setObject:v13 forKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIncidentKey"];

  v14 = [v4 copy];

  return v14;
}

- (IPCTrafficIncidentAlertMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IPCTrafficIncidentAlertMessage;
  v5 = [(IPCMessageObject *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTypeKey"];
    -[IPCTrafficIncidentAlertMessage setType:](v5, "setType:", [v6 unsignedIntegerValue]);

    v7 = [dictionaryCopy objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageTitleKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setTitle:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageSubtitleKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setSubtitle:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIdentifierKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setIdentifier:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"kIPCTrafficIncidentAlertMessageIncidentKey"];
    [(IPCTrafficIncidentAlertMessage *)v5 setIncident:v10];
  }

  return v5;
}

@end
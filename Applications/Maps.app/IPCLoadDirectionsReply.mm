@interface IPCLoadDirectionsReply
- (IPCLoadDirectionsReply)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCLoadDirectionsReply

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCLoadDirectionsReply;
  v3 = [(IPCLoadDirectionsReply *)&v7 description];
  dictionaryValue = [(IPCLoadDirectionsReply *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

- (id)dictionaryValue
{
  v12.receiver = self;
  v12.super_class = IPCLoadDirectionsReply;
  dictionaryValue = [(IPCMessageObject *)&v12 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [NSNumber numberWithUnsignedInteger:[(IPCLoadDirectionsReply *)self navigationState]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCLoadDirectionsReplyState"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IPCLoadDirectionsReply *)self safetyWarningType]];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCLoadDirectionsReplySafetyWarningType"];

  error = [(IPCLoadDirectionsReply *)self error];

  if (error)
  {
    error2 = [(IPCLoadDirectionsReply *)self error];
    v9 = _geo_NSErrorDictionaryRepresentationCopy();
    [v4 setObject:v9 forKeyedSubscript:@"kIPCLoadDirectionsReplyError"];
  }

  v10 = [v4 copy];

  return v10;
}

- (IPCLoadDirectionsReply)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IPCLoadDirectionsReply;
  v5 = [(IPCMessageObject *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsReplyState"];
    -[IPCLoadDirectionsReply setNavigationState:](v5, "setNavigationState:", [v6 unsignedIntegerValue]);

    v7 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsReplySafetyWarningType"];
    -[IPCLoadDirectionsReply setSafetyWarningType:](v5, "setSafetyWarningType:", [v7 unsignedIntegerValue]);

    v8 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsReplyError"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLoadDirectionsReplyError"];
      v10 = _geo_NSErrorFromDictionaryRepresentationCopy();
      [(IPCLoadDirectionsReply *)v5 setError:v10];
    }
  }

  return v5;
}

@end
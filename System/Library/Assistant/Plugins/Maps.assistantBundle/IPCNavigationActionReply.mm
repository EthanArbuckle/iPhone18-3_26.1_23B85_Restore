@interface IPCNavigationActionReply
- (IPCNavigationActionReply)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCNavigationActionReply

- (IPCNavigationActionReply)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IPCNavigationActionReply;
  v5 = [(IPCMessageObject *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCNavigationActionReplySuccessKey"];
    -[IPCNavigationActionReply setSuccess:](v5, "setSuccess:", [v6 BOOLValue]);

    v7 = [dictionaryCopy objectForKeyedSubscript:@"kIPCNavigationActionReplyNavigationActionErrorKey"];
    -[IPCNavigationActionReply setNavigationActionError:](v5, "setNavigationActionError:", [v7 unsignedIntegerValue]);
  }

  return v5;
}

- (id)dictionaryValue
{
  v9.receiver = self;
  v9.super_class = IPCNavigationActionReply;
  dictionaryValue = [(IPCMessageObject *)&v9 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [NSNumber numberWithBool:[(IPCNavigationActionReply *)self success]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCNavigationActionReplySuccessKey"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IPCNavigationActionReply *)self navigationActionError]];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCNavigationActionReplyNavigationActionErrorKey"];

  v7 = [v4 copy];

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCNavigationActionReply;
  v3 = [(IPCNavigationActionReply *)&v7 description];
  dictionaryValue = [(IPCNavigationActionReply *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

@end
@interface CalInviteEmail
- (CalInviteEmail)initWithDictionary:(id)dictionary;
- (id)description;
- (id)toDictionary;
@end

@implementation CalInviteEmail

- (CalInviteEmail)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CalInviteEmail;
  v5 = [(CalInviteEmail *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"send"];
    v5->_send = [v8 BOOLValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"receive"];
    receive = v5->_receive;
    v5->_receive = v9;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  address = [(CalInviteEmail *)self address];
  [v3 setValue:address forKey:@"address"];

  v5 = [NSNumber numberWithBool:[(CalInviteEmail *)self send]];
  [v3 setValue:v5 forKey:@"send"];

  receive = [(CalInviteEmail *)self receive];
  [v3 setValue:receive forKey:@"receive"];

  return v3;
}

- (id)description
{
  address = [(CalInviteEmail *)self address];
  v4 = [NSNumber numberWithBool:[(CalInviteEmail *)self send]];
  receive = [(CalInviteEmail *)self receive];
  v6 = [NSString stringWithFormat:@"address => %@ send => %@ receive=> %@", address, v4, receive];

  return v6;
}

@end
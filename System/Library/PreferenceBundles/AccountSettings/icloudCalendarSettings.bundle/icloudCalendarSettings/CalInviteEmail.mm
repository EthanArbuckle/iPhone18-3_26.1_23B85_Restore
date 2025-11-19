@interface CalInviteEmail
- (CalInviteEmail)initWithDictionary:(id)a3;
- (id)description;
- (id)toDictionary;
@end

@implementation CalInviteEmail

- (CalInviteEmail)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CalInviteEmail;
  v5 = [(CalInviteEmail *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 objectForKeyedSubscript:@"send"];
    v5->_send = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"receive"];
    receive = v5->_receive;
    v5->_receive = v9;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CalInviteEmail *)self address];
  [v3 setValue:v4 forKey:@"address"];

  v5 = [NSNumber numberWithBool:[(CalInviteEmail *)self send]];
  [v3 setValue:v5 forKey:@"send"];

  v6 = [(CalInviteEmail *)self receive];
  [v3 setValue:v6 forKey:@"receive"];

  return v3;
}

- (id)description
{
  v3 = [(CalInviteEmail *)self address];
  v4 = [NSNumber numberWithBool:[(CalInviteEmail *)self send]];
  v5 = [(CalInviteEmail *)self receive];
  v6 = [NSString stringWithFormat:@"address => %@ send => %@ receive=> %@", v3, v4, v5];

  return v6;
}

@end
@interface ADRoutingInfoMessage
- (ADRoutingInfoMessage)initWithRoutingType:(unint64_t)type preferencesStore:(id)store;
- (NSString)environmentURL;
- (NSString)payload;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation ADRoutingInfoMessage

- (ADRoutingInfoMessage)initWithRoutingType:(unint64_t)type preferencesStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ADRoutingInfoMessage;
  v8 = [(ADRoutingInfoMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_routingInfoType = type;
    objc_storeStrong(&v8->_storage, store);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADRoutingInfoMessage;
  v4 = [(ADRoutingInfoMessage *)&v8 description];
  dictionaryRepresentation = [(ADRoutingInfoMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)environmentURL
{
  routingInfoType = [(ADRoutingInfoMessage *)self routingInfoType];
  if (routingInfoType)
  {
    if (routingInfoType != 1)
    {
      goto LABEL_6;
    }

    v5 = @"GibraltarAdServerURL";
  }

  else
  {
    v5 = @"ToroAdServerURL";
  }

  storage = [(ADRoutingInfoMessage *)self storage];
  v2 = [storage stringForKey:v5];

LABEL_6:

  return v2;
}

- (id)dictionaryRepresentation
{
  if (MGGetBoolAnswer())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    environmentURL = [(ADRoutingInfoMessage *)self environmentURL];
    if (environmentURL)
    {
      [dictionary setObject:environmentURL forKey:@"environmentUrl"];
    }

    dictionary2 = [dictionary copy];
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary2;
}

- (NSString)payload
{
  dictionaryRepresentation = [(ADRoutingInfoMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v15 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:&v15];
    v4 = v3;
    if (v15)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v5 stringWithFormat:@"[%@] RoutingInfo dictionary failed to serialize", v7];
      _ADLog(@"iAdServerRequestLogging", v8, 16);

      v9 = @"{}";
    }

    else
    {
      v9 = [v3 base64EncodedStringWithOptions:0];
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"[%@] RoutingInfo dictionary isn't a valid dictionary", v12];
    _ADLog(@"iAdServerRequestLogging", v13, 16);

    v9 = @"{}";
  }

  return v9;
}

@end
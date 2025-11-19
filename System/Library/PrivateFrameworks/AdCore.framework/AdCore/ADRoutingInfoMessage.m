@interface ADRoutingInfoMessage
- (ADRoutingInfoMessage)initWithRoutingType:(unint64_t)a3 preferencesStore:(id)a4;
- (NSString)environmentURL;
- (NSString)payload;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation ADRoutingInfoMessage

- (ADRoutingInfoMessage)initWithRoutingType:(unint64_t)a3 preferencesStore:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ADRoutingInfoMessage;
  v8 = [(ADRoutingInfoMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_routingInfoType = a3;
    objc_storeStrong(&v8->_storage, a4);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADRoutingInfoMessage;
  v4 = [(ADRoutingInfoMessage *)&v8 description];
  v5 = [(ADRoutingInfoMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (NSString)environmentURL
{
  v4 = [(ADRoutingInfoMessage *)self routingInfoType];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = @"GibraltarAdServerURL";
  }

  else
  {
    v5 = @"ToroAdServerURL";
  }

  v6 = [(ADRoutingInfoMessage *)self storage];
  v2 = [v6 stringForKey:v5];

LABEL_6:

  return v2;
}

- (id)dictionaryRepresentation
{
  if (MGGetBoolAnswer())
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [(ADRoutingInfoMessage *)self environmentURL];
    if (v4)
    {
      [v3 setObject:v4 forKey:@"environmentUrl"];
    }

    v5 = [v3 copy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return v5;
}

- (NSString)payload
{
  v2 = [(ADRoutingInfoMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v15 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:&v15];
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
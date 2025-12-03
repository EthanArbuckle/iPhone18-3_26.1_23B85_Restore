@interface APUIAirPlaySetupPayload
- (APUIAirPlaySetupPayload)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APUIAirPlaySetupPayload

- (APUIAirPlaySetupPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = APUIAirPlaySetupPayload;
  v5 = [(APUIAirPlaySetupPayload *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wifiSSID"];
    [(APUIAirPlaySetupPayload *)v5 setWifiSSID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wifiPassphrase"];
    [(APUIAirPlaySetupPayload *)v5 setWifiPassphrase:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brokerToken"];
    [(APUIAirPlaySetupPayload *)v5 setBrokerToken:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverToken"];
    [(APUIAirPlaySetupPayload *)v5 setReceiverToken:v9];

    -[APUIAirPlaySetupPayload setIsNetworkHidden:](v5, "setIsNetworkHidden:", [coderCopy decodeBoolForKey:@"isNetworkHidden"]);
    -[APUIAirPlaySetupPayload setRouteToReceiver:](v5, "setRouteToReceiver:", [coderCopy decodeBoolForKey:@"routeToReceiver"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captivePortalAuthToken"];
    [(APUIAirPlaySetupPayload *)v5 setCaptivePortalAuthToken:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  wifiSSID = [(APUIAirPlaySetupPayload *)self wifiSSID];
  [coderCopy encodeObject:wifiSSID forKey:@"wifiSSID"];

  wifiPassphrase = [(APUIAirPlaySetupPayload *)self wifiPassphrase];
  [coderCopy encodeObject:wifiPassphrase forKey:@"wifiPassphrase"];

  brokerToken = [(APUIAirPlaySetupPayload *)self brokerToken];
  [coderCopy encodeObject:brokerToken forKey:@"brokerToken"];

  receiverToken = [(APUIAirPlaySetupPayload *)self receiverToken];
  [coderCopy encodeObject:receiverToken forKey:@"receiverToken"];

  [coderCopy encodeBool:-[APUIAirPlaySetupPayload isNetworkHidden](self forKey:{"isNetworkHidden"), @"isNetworkHidden"}];
  [coderCopy encodeBool:-[APUIAirPlaySetupPayload routeToReceiver](self forKey:{"routeToReceiver"), @"routeToReceiver"}];
  captivePortalAuthToken = [(APUIAirPlaySetupPayload *)self captivePortalAuthToken];
  [coderCopy encodeObject:captivePortalAuthToken forKey:@"captivePortalAuthToken"];
}

- (id)description
{
  v26 = objc_opt_class();
  wifiSSID = [(APUIAirPlaySetupPayload *)self wifiSSID];
  if (wifiSSID && !IsAppleInternalBuild())
  {
    v5 = 0;
    wifiSSID2 = @"#Redacted#";
  }

  else
  {
    wifiSSID2 = [(APUIAirPlaySetupPayload *)self wifiSSID];
    v5 = 1;
  }

  wifiPassphrase = [(APUIAirPlaySetupPayload *)self wifiPassphrase];
  if (wifiPassphrase && !IsAppleInternalBuild())
  {
    v25 = 0;
    wifiPassphrase2 = @"#Redacted#";
  }

  else
  {
    wifiPassphrase2 = [(APUIAirPlaySetupPayload *)self wifiPassphrase];
    v25 = 1;
  }

  brokerToken = [(APUIAirPlaySetupPayload *)self brokerToken];
  if (brokerToken && !IsAppleInternalBuild())
  {
    v22 = 0;
    brokerToken2 = @"#Redacted#";
  }

  else
  {
    brokerToken2 = [(APUIAirPlaySetupPayload *)self brokerToken];
    v22 = 1;
  }

  receiverToken = [(APUIAirPlaySetupPayload *)self receiverToken];
  if (receiverToken && !IsAppleInternalBuild())
  {
    v20 = 0;
    receiverToken2 = @"#Redacted#";
  }

  else
  {
    receiverToken2 = [(APUIAirPlaySetupPayload *)self receiverToken];
    v20 = 1;
  }

  routeToReceiver = [(APUIAirPlaySetupPayload *)self routeToReceiver];
  isNetworkHidden = [(APUIAirPlaySetupPayload *)self isNetworkHidden];
  captivePortalAuthToken = [(APUIAirPlaySetupPayload *)self captivePortalAuthToken];
  if (captivePortalAuthToken && !IsAppleInternalBuild())
  {
    v19 = routeToReceiver;
    v15 = brokerToken2;
    v16 = [NSString stringWithFormat:@"<%@ %p wifiSSID=%@ wifiPassphrase=%@ brokerToken=%@ receiverToken=%@ routeToReceiver=%d isNetworkHidden=%d captivePortalAuthToken=%@>", v26, self, wifiSSID2, wifiPassphrase2, brokerToken2, receiverToken2, v19, isNetworkHidden, @"#Redacted#"];
  }

  else
  {
    [(APUIAirPlaySetupPayload *)self captivePortalAuthToken];
    v11 = wifiPassphrase;
    v12 = v5;
    v14 = v13 = wifiSSID;
    v18 = routeToReceiver;
    v15 = brokerToken2;
    v16 = [NSString stringWithFormat:@"<%@ %p wifiSSID=%@ wifiPassphrase=%@ brokerToken=%@ receiverToken=%@ routeToReceiver=%d isNetworkHidden=%d captivePortalAuthToken=%@>", v26, self, wifiSSID2, wifiPassphrase2, brokerToken2, receiverToken2, v18, isNetworkHidden, v14];

    wifiSSID = v13;
    v5 = v12;
    wifiPassphrase = v11;
  }

  if (v20)
  {
  }

  if (v22)
  {
  }

  if (v25)
  {
  }

  if (v5)
  {
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy || (NSClassFromString(@"APUIAirPlaySetupPayload"), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = 0;
    v8 = 0;
    goto LABEL_48;
  }

  v7 = equalCopy;
  v8 = v7;
  wifiSSID = self->_wifiSSID;
  if (!wifiSSID)
  {
    wifiSSID = [v7 wifiSSID];
    if (!wifiSSID)
    {
      goto LABEL_12;
    }

    isNetworkHidden = wifiSSID;
    if (!self->_wifiSSID)
    {
      goto LABEL_46;
    }
  }

  wifiSSID2 = [v8 wifiSSID];
  if (!wifiSSID2)
  {
    goto LABEL_45;
  }

  v11 = wifiSSID2;
  v12 = self->_wifiSSID;
  [v8 wifiSSID];
  objc_claimAutoreleasedReturnValue();
  v13 = [sub_100004F40() isEqualToString:?];

  if (wifiSSID)
  {
    if (!v13)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_12:
  wifiSSID = self->_wifiPassphrase;
  if (!wifiSSID)
  {
    wifiPassphrase = [v8 wifiPassphrase];
    if (!wifiPassphrase)
    {
      goto LABEL_21;
    }

    isNetworkHidden = wifiPassphrase;
    if (!self->_wifiPassphrase)
    {
      goto LABEL_46;
    }
  }

  wifiPassphrase2 = [v8 wifiPassphrase];
  if (!wifiPassphrase2)
  {
    goto LABEL_45;
  }

  v16 = wifiPassphrase2;
  wifiPassphrase = self->_wifiPassphrase;
  [v8 wifiPassphrase];
  objc_claimAutoreleasedReturnValue();
  v18 = [sub_100004F40() isEqualToString:?];

  if (wifiSSID)
  {
    if (!v18)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if ((v18 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_21:
  wifiSSID = self->_captivePortalAuthToken;
  if (!wifiSSID)
  {
    captivePortalAuthToken = [v8 captivePortalAuthToken];
    if (!captivePortalAuthToken)
    {
      goto LABEL_30;
    }

    isNetworkHidden = captivePortalAuthToken;
    if (!self->_captivePortalAuthToken)
    {
      goto LABEL_46;
    }
  }

  captivePortalAuthToken2 = [v8 captivePortalAuthToken];
  if (!captivePortalAuthToken2)
  {
    goto LABEL_45;
  }

  v21 = captivePortalAuthToken2;
  captivePortalAuthToken = self->_captivePortalAuthToken;
  [v8 captivePortalAuthToken];
  objc_claimAutoreleasedReturnValue();
  v23 = [sub_100004F40() isEqual:?];

  if (wifiSSID)
  {
    if (!v23)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if ((v23 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_30:
  isNetworkHidden = self->_isNetworkHidden;
  if (isNetworkHidden != [v8 isNetworkHidden])
  {
    goto LABEL_47;
  }

  wifiSSID = self->_brokerToken;
  if (!wifiSSID)
  {
    brokerToken = [v8 brokerToken];
    if (!brokerToken)
    {
      goto LABEL_40;
    }

    isNetworkHidden = brokerToken;
    if (!self->_brokerToken)
    {
      goto LABEL_46;
    }
  }

  brokerToken2 = [v8 brokerToken];
  if (!brokerToken2)
  {
    goto LABEL_45;
  }

  v26 = brokerToken2;
  brokerToken = self->_brokerToken;
  [v8 brokerToken];
  objc_claimAutoreleasedReturnValue();
  v28 = [sub_100004F40() isEqualToString:?];

  if (wifiSSID)
  {
    if (!v28)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_40:
  wifiSSID = self->_receiverToken;
  if (!wifiSSID)
  {
    receiverToken = [v8 receiverToken];
    if (!receiverToken)
    {
      goto LABEL_53;
    }

    isNetworkHidden = receiverToken;
    if (!self->_receiverToken)
    {
LABEL_46:

      goto LABEL_47;
    }
  }

  receiverToken2 = [v8 receiverToken];
  if (!receiverToken2)
  {
LABEL_45:
    if (wifiSSID)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v31 = receiverToken2;
  receiverToken = self->_receiverToken;
  [v8 receiverToken];
  objc_claimAutoreleasedReturnValue();
  v33 = [sub_100004F40() isEqualToString:?];

  if (!wifiSSID)
  {

    if ((v33 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_53:
    routeToReceiver = self->_routeToReceiver;
    v34 = routeToReceiver == [v8 routeToReceiver];
    goto LABEL_48;
  }

  if (v33)
  {
    goto LABEL_53;
  }

LABEL_47:
  v34 = 0;
LABEL_48:

  return v34;
}

@end
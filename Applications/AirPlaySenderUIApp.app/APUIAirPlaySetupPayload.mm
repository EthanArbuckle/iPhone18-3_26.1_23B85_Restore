@interface APUIAirPlaySetupPayload
- (APUIAirPlaySetupPayload)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APUIAirPlaySetupPayload

- (APUIAirPlaySetupPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = APUIAirPlaySetupPayload;
  v5 = [(APUIAirPlaySetupPayload *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wifiSSID"];
    [(APUIAirPlaySetupPayload *)v5 setWifiSSID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wifiPassphrase"];
    [(APUIAirPlaySetupPayload *)v5 setWifiPassphrase:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brokerToken"];
    [(APUIAirPlaySetupPayload *)v5 setBrokerToken:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverToken"];
    [(APUIAirPlaySetupPayload *)v5 setReceiverToken:v9];

    -[APUIAirPlaySetupPayload setIsNetworkHidden:](v5, "setIsNetworkHidden:", [v4 decodeBoolForKey:@"isNetworkHidden"]);
    -[APUIAirPlaySetupPayload setRouteToReceiver:](v5, "setRouteToReceiver:", [v4 decodeBoolForKey:@"routeToReceiver"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"captivePortalAuthToken"];
    [(APUIAirPlaySetupPayload *)v5 setCaptivePortalAuthToken:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APUIAirPlaySetupPayload *)self wifiSSID];
  [v4 encodeObject:v5 forKey:@"wifiSSID"];

  v6 = [(APUIAirPlaySetupPayload *)self wifiPassphrase];
  [v4 encodeObject:v6 forKey:@"wifiPassphrase"];

  v7 = [(APUIAirPlaySetupPayload *)self brokerToken];
  [v4 encodeObject:v7 forKey:@"brokerToken"];

  v8 = [(APUIAirPlaySetupPayload *)self receiverToken];
  [v4 encodeObject:v8 forKey:@"receiverToken"];

  [v4 encodeBool:-[APUIAirPlaySetupPayload isNetworkHidden](self forKey:{"isNetworkHidden"), @"isNetworkHidden"}];
  [v4 encodeBool:-[APUIAirPlaySetupPayload routeToReceiver](self forKey:{"routeToReceiver"), @"routeToReceiver"}];
  v9 = [(APUIAirPlaySetupPayload *)self captivePortalAuthToken];
  [v4 encodeObject:v9 forKey:@"captivePortalAuthToken"];
}

- (id)description
{
  v26 = objc_opt_class();
  v3 = [(APUIAirPlaySetupPayload *)self wifiSSID];
  if (v3 && !IsAppleInternalBuild())
  {
    v5 = 0;
    v4 = @"#Redacted#";
  }

  else
  {
    v4 = [(APUIAirPlaySetupPayload *)self wifiSSID];
    v5 = 1;
  }

  v6 = [(APUIAirPlaySetupPayload *)self wifiPassphrase];
  if (v6 && !IsAppleInternalBuild())
  {
    v25 = 0;
    v7 = @"#Redacted#";
  }

  else
  {
    v7 = [(APUIAirPlaySetupPayload *)self wifiPassphrase];
    v25 = 1;
  }

  v24 = [(APUIAirPlaySetupPayload *)self brokerToken];
  if (v24 && !IsAppleInternalBuild())
  {
    v22 = 0;
    v23 = @"#Redacted#";
  }

  else
  {
    v23 = [(APUIAirPlaySetupPayload *)self brokerToken];
    v22 = 1;
  }

  v21 = [(APUIAirPlaySetupPayload *)self receiverToken];
  if (v21 && !IsAppleInternalBuild())
  {
    v20 = 0;
    v27 = @"#Redacted#";
  }

  else
  {
    v27 = [(APUIAirPlaySetupPayload *)self receiverToken];
    v20 = 1;
  }

  v8 = [(APUIAirPlaySetupPayload *)self routeToReceiver];
  v9 = [(APUIAirPlaySetupPayload *)self isNetworkHidden];
  v10 = [(APUIAirPlaySetupPayload *)self captivePortalAuthToken];
  if (v10 && !IsAppleInternalBuild())
  {
    v19 = v8;
    v15 = v23;
    v16 = [NSString stringWithFormat:@"<%@ %p wifiSSID=%@ wifiPassphrase=%@ brokerToken=%@ receiverToken=%@ routeToReceiver=%d isNetworkHidden=%d captivePortalAuthToken=%@>", v26, self, v4, v7, v23, v27, v19, v9, @"#Redacted#"];
  }

  else
  {
    [(APUIAirPlaySetupPayload *)self captivePortalAuthToken];
    v11 = v6;
    v12 = v5;
    v14 = v13 = v3;
    v18 = v8;
    v15 = v23;
    v16 = [NSString stringWithFormat:@"<%@ %p wifiSSID=%@ wifiPassphrase=%@ brokerToken=%@ receiverToken=%@ routeToReceiver=%d isNetworkHidden=%d captivePortalAuthToken=%@>", v26, self, v4, v7, v23, v27, v18, v9, v14];

    v3 = v13;
    v5 = v12;
    v6 = v11;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (!v6 || (NSClassFromString(@"APUIAirPlaySetupPayload"), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = 0;
    v8 = 0;
    goto LABEL_48;
  }

  v7 = v6;
  v8 = v7;
  wifiSSID = self->_wifiSSID;
  if (!wifiSSID)
  {
    v14 = [v7 wifiSSID];
    if (!v14)
    {
      goto LABEL_12;
    }

    isNetworkHidden = v14;
    if (!self->_wifiSSID)
    {
      goto LABEL_46;
    }
  }

  v10 = [v8 wifiSSID];
  if (!v10)
  {
    goto LABEL_45;
  }

  v11 = v10;
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
    v19 = [v8 wifiPassphrase];
    if (!v19)
    {
      goto LABEL_21;
    }

    isNetworkHidden = v19;
    if (!self->_wifiPassphrase)
    {
      goto LABEL_46;
    }
  }

  v15 = [v8 wifiPassphrase];
  if (!v15)
  {
    goto LABEL_45;
  }

  v16 = v15;
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
    v24 = [v8 captivePortalAuthToken];
    if (!v24)
    {
      goto LABEL_30;
    }

    isNetworkHidden = v24;
    if (!self->_captivePortalAuthToken)
    {
      goto LABEL_46;
    }
  }

  v20 = [v8 captivePortalAuthToken];
  if (!v20)
  {
    goto LABEL_45;
  }

  v21 = v20;
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
    v29 = [v8 brokerToken];
    if (!v29)
    {
      goto LABEL_40;
    }

    isNetworkHidden = v29;
    if (!self->_brokerToken)
    {
      goto LABEL_46;
    }
  }

  v25 = [v8 brokerToken];
  if (!v25)
  {
    goto LABEL_45;
  }

  v26 = v25;
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
    v36 = [v8 receiverToken];
    if (!v36)
    {
      goto LABEL_53;
    }

    isNetworkHidden = v36;
    if (!self->_receiverToken)
    {
LABEL_46:

      goto LABEL_47;
    }
  }

  v30 = [v8 receiverToken];
  if (!v30)
  {
LABEL_45:
    if (wifiSSID)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v31 = v30;
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
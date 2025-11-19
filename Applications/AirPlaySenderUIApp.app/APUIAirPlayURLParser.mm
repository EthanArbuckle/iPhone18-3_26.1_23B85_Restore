@interface APUIAirPlayURLParser
+ (id)setupPayloadFromAirPlayURL:(id)a3;
@end

@implementation APUIAirPlayURLParser

+ (id)setupPayloadFromAirPlayURL:(id)a3
{
  v3 = a3;
  if (dword_100022680 <= 50 && (dword_100022680 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C7C0(v3);
  }

  v4 = [NSURLComponents componentsWithString:v3];
  if (!v4)
  {
    sub_10000C90C();
LABEL_56:
    v9 = 0;
    goto LABEL_50;
  }

  if (dword_100022680 <= 50 && (dword_100022680 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C824(v4);
  }

  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"airplay"];

  if ((v6 & 1) == 0)
  {
    sub_10000C884();
    goto LABEL_56;
  }

  if (dword_100022680 <= 50 && (dword_100022680 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C898(v4);
  }

  v7 = [v4 host];
  v8 = [v7 isEqualToString:@"setup"];

  if ((v8 & 1) == 0)
  {
    sub_10000C8F8();
    goto LABEL_56;
  }

  v9 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v4 queryItems];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v21 = v4;
    v22 = v3;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 name];
        v17 = [v15 value];
        v18 = [v17 lengthOfBytesUsingEncoding:4];
        if (!v18)
        {
LABEL_47:
          APSLogErrorAt();

          v9 = 0;
          goto LABEL_48;
        }

        v19 = v18;
        if ([v16 isEqualToString:@"bt"])
        {
          if (v19 > 0x80)
          {
            goto LABEL_47;
          }

          [v9 setBrokerToken:v17];
        }

        else if ([v16 isEqualToString:@"rp"])
        {
          if (v19 > 0x80)
          {
            goto LABEL_47;
          }

          [v9 setReceiverToken:v17];
        }

        else if ([v16 isEqualToString:@"rr"])
        {
          [v9 setRouteToReceiver:{objc_msgSend(v17, "isEqualToString:", @"1"}];
        }

        else if ([v16 isEqualToString:@"wid"])
        {
          if (v19 > 0x20)
          {
            goto LABEL_47;
          }

          [v9 setWifiSSID:v17];
        }

        else if ([v16 isEqualToString:@"wp"])
        {
          if (v19 > 0x80)
          {
            goto LABEL_47;
          }

          [v9 setWifiPassphrase:v17];
        }

        else if ([v16 isEqualToString:@"ca"])
        {
          if (v19 > 0x400)
          {
            goto LABEL_47;
          }

          [v9 setCaptivePortalAuthToken:v17];
        }

        else if ([v16 isEqualToString:@"h"])
        {
          [v9 setIsNetworkHidden:{objc_msgSend(v17, "isEqualToString:", @"1"}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_48:
    v4 = v21;
    v3 = v22;
  }

LABEL_50:

  return v9;
}

@end
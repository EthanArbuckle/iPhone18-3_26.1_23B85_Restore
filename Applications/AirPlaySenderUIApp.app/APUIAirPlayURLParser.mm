@interface APUIAirPlayURLParser
+ (id)setupPayloadFromAirPlayURL:(id)l;
@end

@implementation APUIAirPlayURLParser

+ (id)setupPayloadFromAirPlayURL:(id)l
{
  lCopy = l;
  if (dword_100022680 <= 50 && (dword_100022680 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C7C0(lCopy);
  }

  v4 = [NSURLComponents componentsWithString:lCopy];
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

  scheme = [v4 scheme];
  v6 = [scheme isEqualToString:@"airplay"];

  if ((v6 & 1) == 0)
  {
    sub_10000C884();
    goto LABEL_56;
  }

  if (dword_100022680 <= 50 && (dword_100022680 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C898(v4);
  }

  host = [v4 host];
  v8 = [host isEqualToString:@"setup"];

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
  queryItems = [v4 queryItems];
  v11 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v21 = v4;
    v22 = lCopy;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(queryItems);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        name = [v15 name];
        value = [v15 value];
        v18 = [value lengthOfBytesUsingEncoding:4];
        if (!v18)
        {
LABEL_47:
          APSLogErrorAt();

          v9 = 0;
          goto LABEL_48;
        }

        v19 = v18;
        if ([name isEqualToString:@"bt"])
        {
          if (v19 > 0x80)
          {
            goto LABEL_47;
          }

          [v9 setBrokerToken:value];
        }

        else if ([name isEqualToString:@"rp"])
        {
          if (v19 > 0x80)
          {
            goto LABEL_47;
          }

          [v9 setReceiverToken:value];
        }

        else if ([name isEqualToString:@"rr"])
        {
          [v9 setRouteToReceiver:{objc_msgSend(value, "isEqualToString:", @"1"}];
        }

        else if ([name isEqualToString:@"wid"])
        {
          if (v19 > 0x20)
          {
            goto LABEL_47;
          }

          [v9 setWifiSSID:value];
        }

        else if ([name isEqualToString:@"wp"])
        {
          if (v19 > 0x80)
          {
            goto LABEL_47;
          }

          [v9 setWifiPassphrase:value];
        }

        else if ([name isEqualToString:@"ca"])
        {
          if (v19 > 0x400)
          {
            goto LABEL_47;
          }

          [v9 setCaptivePortalAuthToken:value];
        }

        else if ([name isEqualToString:@"h"])
        {
          [v9 setIsNetworkHidden:{objc_msgSend(value, "isEqualToString:", @"1"}];
        }
      }

      v12 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_48:
    v4 = v21;
    lCopy = v22;
  }

LABEL_50:

  return v9;
}

@end
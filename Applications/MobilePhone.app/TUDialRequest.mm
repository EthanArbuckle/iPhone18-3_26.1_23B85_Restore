@interface TUDialRequest
+ (id)dialRequestForCallProvider:(id)a3 handle:(id)a4;
+ (id)dialRequestForUserActivity:(id)a3 callProviderManager:(id)a4;
- (BOOL)canMakeEmergencyCallForSenderIdentity:(id)a3;
- (id)dialRequestByResolvingDialTypeUsingSenderIdentityClient:(id)a3;
@end

@implementation TUDialRequest

+ (id)dialRequestForCallProvider:(id)a3 handle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 type];
  if ([v5 supportsHandleType:v7])
  {
    v8 = [[TUDialRequest alloc] initWithProvider:v5];
    [v8 setHandle:v6];
    [v8 setOriginatingUIType:1];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TUDialRequest(PhoneKit) *)v5 dialRequestForCallProvider:v7 handle:v9];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)dialRequestForUserActivity:(id)a3 callProviderManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for user activity (%@)", &v16, 0xCu);
  }

  v9 = [v6 userInfo];
  if (v9)
  {
    v10 = [v6 callProviderIdentifier];
    if (v10)
    {
      v11 = [v7 providerWithIdentifier:v10];
      v12 = [v6 handle];
      LOBYTE(v16) = 0;
      if ((v11 || ([v7 providerWithService:objc_msgSend(v6 video:{"callService"), &v16}], (v11 = objc_claimAutoreleasedReturnValue()) != 0)) && v12)
      {
        v13 = [a1 dialRequestForCallProvider:v11 handle:v12];
        [v13 setVideo:v16];
        [v13 setOriginatingUIType:37];
      }

      else
      {
        v14 = PHDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [TUDialRequest(PhoneKit) dialRequestForUserActivity:v10 callProviderManager:v14];
        }

        v13 = 0;
      }
    }

    else
    {
      v11 = PHDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TUDialRequest(PhoneKit) dialRequestForUserActivity:v11 callProviderManager:?];
      }

      v13 = 0;
    }
  }

  else
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TUDialRequest(PhoneKit) dialRequestForUserActivity:v10 callProviderManager:?];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)canMakeEmergencyCallForSenderIdentity:(id)a3
{
  v3 = a3;
  if (PHIsInAirplaneMode())
  {
    v4 = [v3 UUID];
    v5 = [TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:v4];

    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"cannot";
      if (v5)
      {
        v7 = @"can";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is in airplane mode and %@ make an emergency call using sender identity %@", &v9, 0x16u);
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)dialRequestByResolvingDialTypeUsingSenderIdentityClient:(id)a3
{
  v4 = a3;
  v5 = [(TUDialRequest *)self copy];
  v6 = [(TUDialRequest *)self handle];
  v7 = [v6 value];
  if ([v7 length])
  {
  }

  else
  {
    v8 = [(TUDialRequest *)self dialType];

    if (v8 != 1)
    {
      goto LABEL_23;
    }
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __83__TUDialRequest_PhoneKit__dialRequestByResolvingDialTypeUsingSenderIdentityClient___block_invoke;
  v28[3] = &unk_100285BE0;
  v29 = v4;
  v30 = self;
  v9 = objc_retainBlock(v28);
  v10 = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [(TUDialRequest *)self provider];
  v12 = [v11 senderIdentityForAccountUUID:v10];

  if (!v12)
  {
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not find a sender identity that contains account UUID %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v13 = (v9[2])(v9, v5, v12);

  if (!v13)
  {
LABEL_11:
    v15 = [(TUDialRequest *)self provider];
    v16 = [v15 prioritizedSenderIdentities];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = (v9[2])(v9, v5, *(*(&v24 + 1) + 8 * i));
          if (v22)
          {
            v13 = v22;
            goto LABEL_21;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_21:
  }

LABEL_23:

  return v5;
}

id __83__TUDialRequest_PhoneKit__dialRequestByResolvingDialTypeUsingSenderIdentityClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 handle];
  v8 = [v7 value];

  if ([v8 length])
  {
    v9 = *(a1 + 32);
    v10 = [v6 UUID];
    LODWORD(v9) = [v9 isEmergencyNumberForDigits:v8 senderIdentityUUID:v10];

    if (v9)
    {
      [v5 setDialType:1];
    }
  }

  if ([v5 dialType] == 1 && objc_msgSend(*(a1 + 40), "canMakeEmergencyCallForSenderIdentity:", v6))
  {
    v11 = v6;
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating emergency dial request %@ to use sender identity %@", &v16, 0x16u);
    }

    v13 = [v11 UUID];
    [v5 setLocalSenderIdentityUUID:v13];

    v14 = [v11 accountUUID];
    [v5 setLocalSenderIdentityAccountUUID:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
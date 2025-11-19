@interface AALoginResponseiCloudTokens
- (AALoginResponseiCloudTokens)initWithTokens:(id)a3;
@end

@implementation AALoginResponseiCloudTokens

- (AALoginResponseiCloudTokens)initWithTokens:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = AALoginResponseiCloudTokens;
  v5 = [(AALoginResponseiCloudTokens *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"mmeAuthToken"];
    authToken = v5->_authToken;
    v5->_authToken = v6;

    v8 = [v4 objectForKey:@"mmeFMIPToken"];
    fmipAuthToken = v5->_fmipAuthToken;
    v5->_fmipAuthToken = v8;

    v10 = [v4 objectForKey:@"mmeFMIPAppToken"];
    fmipAppToken = v5->_fmipAppToken;
    v5->_fmipAppToken = v10;

    v12 = [v4 objectForKey:@"lostModeExitAuthToken"];
    fmipLostModeToken = v5->_fmipLostModeToken;
    v5->_fmipLostModeToken = v12;

    v14 = [v4 objectForKey:@"mmeFMIPSiriToken"];
    fmipSiriToken = v5->_fmipSiriToken;
    v5->_fmipSiriToken = v14;

    v16 = [v4 objectForKey:@"mmeFMFToken"];
    fmfToken = v5->_fmfToken;
    v5->_fmfToken = v16;

    v18 = [v4 objectForKey:@"mmeFMFAppToken"];
    fmfAppToken = v5->_fmfAppToken;
    v5->_fmfAppToken = v18;

    v20 = [v4 objectForKey:@"cloudKitToken"];
    cloudKitToken = v5->_cloudKitToken;
    v5->_cloudKitToken = v20;

    v22 = [v4 objectForKey:@"mdmServerToken"];
    mdmServerToken = v5->_mdmServerToken;
    v5->_mdmServerToken = v22;

    v24 = [v4 objectForKey:@"mapsToken"];
    mapsToken = v5->_mapsToken;
    v5->_mapsToken = v24;

    v26 = [v4 objectForKey:@"searchPartyToken"];
    searchPartyToken = v5->_searchPartyToken;
    v5->_searchPartyToken = v26;

    v28 = [v4 objectForKey:@"keyTransparencyToken"];
    keyTransparencyToken = v5->_keyTransparencyToken;
    v5->_keyTransparencyToken = v28;
  }

  return v5;
}

@end
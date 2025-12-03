@interface AALoginResponseiCloudTokens
- (AALoginResponseiCloudTokens)initWithTokens:(id)tokens;
@end

@implementation AALoginResponseiCloudTokens

- (AALoginResponseiCloudTokens)initWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v31.receiver = self;
  v31.super_class = AALoginResponseiCloudTokens;
  v5 = [(AALoginResponseiCloudTokens *)&v31 init];
  if (v5)
  {
    v6 = [tokensCopy objectForKey:@"mmeAuthToken"];
    authToken = v5->_authToken;
    v5->_authToken = v6;

    v8 = [tokensCopy objectForKey:@"mmeFMIPToken"];
    fmipAuthToken = v5->_fmipAuthToken;
    v5->_fmipAuthToken = v8;

    v10 = [tokensCopy objectForKey:@"mmeFMIPAppToken"];
    fmipAppToken = v5->_fmipAppToken;
    v5->_fmipAppToken = v10;

    v12 = [tokensCopy objectForKey:@"lostModeExitAuthToken"];
    fmipLostModeToken = v5->_fmipLostModeToken;
    v5->_fmipLostModeToken = v12;

    v14 = [tokensCopy objectForKey:@"mmeFMIPSiriToken"];
    fmipSiriToken = v5->_fmipSiriToken;
    v5->_fmipSiriToken = v14;

    v16 = [tokensCopy objectForKey:@"mmeFMFToken"];
    fmfToken = v5->_fmfToken;
    v5->_fmfToken = v16;

    v18 = [tokensCopy objectForKey:@"mmeFMFAppToken"];
    fmfAppToken = v5->_fmfAppToken;
    v5->_fmfAppToken = v18;

    v20 = [tokensCopy objectForKey:@"cloudKitToken"];
    cloudKitToken = v5->_cloudKitToken;
    v5->_cloudKitToken = v20;

    v22 = [tokensCopy objectForKey:@"mdmServerToken"];
    mdmServerToken = v5->_mdmServerToken;
    v5->_mdmServerToken = v22;

    v24 = [tokensCopy objectForKey:@"mapsToken"];
    mapsToken = v5->_mapsToken;
    v5->_mapsToken = v24;

    v26 = [tokensCopy objectForKey:@"searchPartyToken"];
    searchPartyToken = v5->_searchPartyToken;
    v5->_searchPartyToken = v26;

    v28 = [tokensCopy objectForKey:@"keyTransparencyToken"];
    keyTransparencyToken = v5->_keyTransparencyToken;
    v5->_keyTransparencyToken = v28;
  }

  return v5;
}

@end
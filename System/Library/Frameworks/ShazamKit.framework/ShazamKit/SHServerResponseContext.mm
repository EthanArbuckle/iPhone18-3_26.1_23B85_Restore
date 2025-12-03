@interface SHServerResponseContext
- (SHServerResponseContext)init;
- (void)sh_setCampaignTokenForClientIdentifier:(id)identifier completion:(id)completion;
- (void)sh_setDefaultValuesWithCompletion:(id)completion;
@end

@implementation SHServerResponseContext

- (void)sh_setDefaultValuesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = +[SHRemoteConfiguration sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007048;
  v7[3] = &unk_10007CF28;
  v6 = completionCopy;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 defaultValuesWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sh_setCampaignTokenForClientIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = +[SHRemoteConfiguration sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000071E4;
  v11[3] = &unk_10007CF50;
  v9 = completionCopy;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  v10 = identifierCopy;
  v12 = v10;
  [v8 campaignTokenWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (SHServerResponseContext)init
{
  v6.receiver = self;
  v6.super_class = SHServerResponseContext;
  v2 = [(SHServerResponseContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = SHRecordingSignatureOffsetDefaultValue;
    *&v2->_defaultRecordingIntermissionInSeconds = SHRecordingIntermissionDefaultValue;
    v2->_defaultRecordingSignatureOffsetInSeconds = v4;
    objc_storeStrong(&v2->_campaignToken, SHCampaignTokenDefaultCampaignValue);
  }

  return v3;
}

@end
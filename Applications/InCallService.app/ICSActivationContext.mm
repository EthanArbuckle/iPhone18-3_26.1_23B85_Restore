@interface ICSActivationContext
- (ICSActivationContext)initWithReason:(id)a3 userInfo:(id)a4;
- (ICSActivationContext)initWithVideoMessageURL:(id)a3;
- (TUFilteredRequest)pendingRestrictedScreenTimeRequest;
- (id)description;
@end

@implementation ICSActivationContext

- (ICSActivationContext)initWithReason:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICSActivationContext;
  v9 = [(ICSActivationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, a3);
    objc_storeStrong(&v10->_userInfo, a4);
  }

  return v10;
}

- (ICSActivationContext)initWithVideoMessageURL:(id)a3
{
  v5 = a3;
  v6 = [(ICSActivationContext *)self initWithReason:@"ICSSceneActivationReasonVideoMessagePlayback" userInfo:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoMessageURL, a3);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(ICSActivationContext *)self reason];
  v5 = [(ICSActivationContext *)self userInfo];
  v6 = [NSString stringWithFormat:@"<%@ %p reason=%@ userInfo=%@>", v3, self, v4, v5];

  return v6;
}

- (TUFilteredRequest)pendingRestrictedScreenTimeRequest
{
  v3 = [(ICSActivationContext *)self reason];
  v4 = SOSRemoteAlertActivationReasonActivatingForScreenTime;

  if (v3 == v4)
  {
    v6 = [(ICSActivationContext *)self userInfo];
    v7 = [v6 objectForKeyedSubscript:SOSRemoteAlertActivationContextUserInfoRequestURLStringKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [NSURL URLWithString:v7];
      if (v8)
      {
        v5 = [[TUDialRequest alloc] initWithURL:v8];
        if (!v5)
        {
          v5 = [[TUJoinConversationRequest alloc] initWithURL:v8];
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
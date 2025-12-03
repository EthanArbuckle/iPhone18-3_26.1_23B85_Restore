@interface ICSActivationContext
- (ICSActivationContext)initWithReason:(id)reason userInfo:(id)info;
- (ICSActivationContext)initWithVideoMessageURL:(id)l;
- (TUFilteredRequest)pendingRestrictedScreenTimeRequest;
- (id)description;
@end

@implementation ICSActivationContext

- (ICSActivationContext)initWithReason:(id)reason userInfo:(id)info
{
  reasonCopy = reason;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = ICSActivationContext;
  v9 = [(ICSActivationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, reason);
    objc_storeStrong(&v10->_userInfo, info);
  }

  return v10;
}

- (ICSActivationContext)initWithVideoMessageURL:(id)l
{
  lCopy = l;
  v6 = [(ICSActivationContext *)self initWithReason:@"ICSSceneActivationReasonVideoMessagePlayback" userInfo:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoMessageURL, l);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  reason = [(ICSActivationContext *)self reason];
  userInfo = [(ICSActivationContext *)self userInfo];
  v6 = [NSString stringWithFormat:@"<%@ %p reason=%@ userInfo=%@>", v3, self, reason, userInfo];

  return v6;
}

- (TUFilteredRequest)pendingRestrictedScreenTimeRequest
{
  reason = [(ICSActivationContext *)self reason];
  v4 = SOSRemoteAlertActivationReasonActivatingForScreenTime;

  if (reason == v4)
  {
    userInfo = [(ICSActivationContext *)self userInfo];
    v7 = [userInfo objectForKeyedSubscript:SOSRemoteAlertActivationContextUserInfoRequestURLStringKey];

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
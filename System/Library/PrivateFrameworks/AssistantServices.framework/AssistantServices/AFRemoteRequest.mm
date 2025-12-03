@interface AFRemoteRequest
- (AFRemoteRequest)initWithInfo:(id)info;
- (void)sendWithCompletion:(id)completion;
@end

@implementation AFRemoteRequest

- (void)sendWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(AFSettingsConnection);
  info = self->_info;
  peerIdentifier = self->_peerIdentifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AFRemoteRequest_sendWithCompletion___block_invoke;
  v10[3] = &unk_1E7346690;
  v11 = v5;
  v12 = completionCopy;
  v10[4] = self;
  v8 = v5;
  v9 = completionCopy;
  [(AFSettingsConnection *)v8 startRemoteRequest:info onPeer:peerIdentifier completion:v10];
}

uint64_t __38__AFRemoteRequest_sendWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0, a2);
  }

  return result;
}

- (AFRemoteRequest)initWithInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = AFRemoteRequest;
  v6 = [(AFRemoteRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_info, info);
  }

  return v7;
}

@end
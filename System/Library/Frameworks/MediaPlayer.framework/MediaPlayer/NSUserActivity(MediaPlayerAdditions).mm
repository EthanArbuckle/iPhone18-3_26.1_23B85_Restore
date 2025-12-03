@interface NSUserActivity(MediaPlayerAdditions)
- (id)_externalMediaContentBundleIdentifier;
- (id)externalMediaContentIdentifier;
- (void)_setExternalMediaContentBundleIdentifier:()MediaPlayerAdditions;
- (void)setExternalMediaContentIdentifier:()MediaPlayerAdditions;
@end

@implementation NSUserActivity(MediaPlayerAdditions)

- (void)_setExternalMediaContentBundleIdentifier:()MediaPlayerAdditions
{
  v4 = a3;
  _internalUserActivity = [self _internalUserActivity];
  v6 = [_internalUserActivity objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
  v7 = v6;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__NSUserActivity_MediaPlayerAdditions___setExternalMediaContentBundleIdentifier___block_invoke;
    v8[3] = &unk_1E76821F8;
    v9 = v4;
    [_internalUserActivity setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier" object:v9 withBlock:v8];
  }

  else if (v6)
  {
    [_internalUserActivity setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier" object:0 withBlock:0];
  }
}

- (id)_externalMediaContentBundleIdentifier
{
  _internalUserActivity = [self _internalUserActivity];
  v2 = [_internalUserActivity objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
  if (!v2)
  {
    v3 = [_internalUserActivity payloadForIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
    if (v3)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
      if (v2)
      {
        [_internalUserActivity setPayload:v3 object:v2 identifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [v2 copy];

  return v4;
}

- (void)setExternalMediaContentIdentifier:()MediaPlayerAdditions
{
  v4 = a3;
  _internalUserActivity = [self _internalUserActivity];
  v6 = [_internalUserActivity objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
  v7 = v6;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__NSUserActivity_MediaPlayerAdditions__setExternalMediaContentIdentifier___block_invoke;
    v10[3] = &unk_1E76821F8;
    v11 = v4;
    [_internalUserActivity setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier" object:v11 withBlock:v10];
  }

  else if (v6)
  {
    [_internalUserActivity setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier" object:0 withBlock:0];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    [self _setExternalMediaContentBundleIdentifier:bundleIdentifier];
  }
}

- (id)externalMediaContentIdentifier
{
  _internalUserActivity = [self _internalUserActivity];
  v2 = [_internalUserActivity objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
  if (!v2)
  {
    v3 = [_internalUserActivity payloadForIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
    if (v3)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
      if (v2)
      {
        [_internalUserActivity setPayload:v3 object:v2 identifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [v2 copy];

  return v4;
}

@end
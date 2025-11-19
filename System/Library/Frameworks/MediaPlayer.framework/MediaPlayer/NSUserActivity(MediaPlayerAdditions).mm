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
  v5 = [a1 _internalUserActivity];
  v6 = [v5 objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
  v7 = v6;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__NSUserActivity_MediaPlayerAdditions___setExternalMediaContentBundleIdentifier___block_invoke;
    v8[3] = &unk_1E76821F8;
    v9 = v4;
    [v5 setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier" object:v9 withBlock:v8];
  }

  else if (v6)
  {
    [v5 setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier" object:0 withBlock:0];
  }
}

- (id)_externalMediaContentBundleIdentifier
{
  v1 = [a1 _internalUserActivity];
  v2 = [v1 objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
  if (!v2)
  {
    v3 = [v1 payloadForIdentifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
    if (v3)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
      if (v2)
      {
        [v1 setPayload:v3 object:v2 identifier:@"UAPayloadIdentifierExternalMediaContentBundleIdentifier"];
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
  v5 = [a1 _internalUserActivity];
  v6 = [v5 objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
  v7 = v6;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__NSUserActivity_MediaPlayerAdditions__setExternalMediaContentIdentifier___block_invoke;
    v10[3] = &unk_1E76821F8;
    v11 = v4;
    [v5 setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier" object:v11 withBlock:v10];
  }

  else if (v6)
  {
    [v5 setPayloadIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier" object:0 withBlock:0];
  }

  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    [a1 _setExternalMediaContentBundleIdentifier:v9];
  }
}

- (id)externalMediaContentIdentifier
{
  v1 = [a1 _internalUserActivity];
  v2 = [v1 objectForIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
  if (!v2)
  {
    v3 = [v1 payloadForIdentifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
    if (v3)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
      if (v2)
      {
        [v1 setPayload:v3 object:v2 identifier:@"UAPayloadIdentifierExternalMediaContentIdentifier"];
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
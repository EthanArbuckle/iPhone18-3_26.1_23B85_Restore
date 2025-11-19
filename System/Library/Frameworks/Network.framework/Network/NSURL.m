@interface NSURL
- (BOOL)_NW_isHTTPish;
- (BOOL)_NW_isWebSocket;
@end

@implementation NSURL

- (BOOL)_NW_isHTTPish
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 scheme];
  v2 = [v1 length];
  v3 = 0;
  if (v2 > 6)
  {
    if (v2 > 8)
    {
      if (v2 == 9)
      {
        if (isWebKitNetworking_onceToken != -1)
        {
          dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
        }

        if ((isWebKitNetworking_result & 1) == 0)
        {
          v4 = @"http+unix";
          goto LABEL_33;
        }
      }

      else
      {
        if (v2 != 10)
        {
          goto LABEL_34;
        }

        if (isWebKitNetworking_onceToken != -1)
        {
          dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
        }

        if ((isWebKitNetworking_result & 1) == 0)
        {
          v4 = @"https+unix";
          goto LABEL_33;
        }
      }
    }

    else if (v2 == 7)
    {
      if (isWebKitNetworking_onceToken != -1)
      {
        dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
      }

      if ((isWebKitNetworking_result & 1) == 0)
      {
        v4 = @"ws+unix";
        goto LABEL_33;
      }
    }

    else
    {
      if (isWebKitNetworking_onceToken != -1)
      {
        dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
      }

      if ((isWebKitNetworking_result & 1) == 0)
      {
        v4 = @"wss+unix";
        goto LABEL_33;
      }
    }

    v3 = 0;
    goto LABEL_34;
  }

  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v4 = @"http";
      goto LABEL_33;
    }

    if (v2 == 5)
    {
      v4 = @"https";
      goto LABEL_33;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v4 = @"ws";
      goto LABEL_33;
    }

    if (v2 == 3)
    {
      v4 = @"wss";
LABEL_33:
      v3 = [v1 caseInsensitiveCompare:v4] == 0;
    }
  }

LABEL_34:

  return v3;
}

- (BOOL)_NW_isWebSocket
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 scheme];
  v2 = [v1 length];
  v3 = 0;
  if (v2 > 6)
  {
    if (v2 == 7)
    {
      if (isWebKitNetworking_onceToken != -1)
      {
        dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
      }

      if ((isWebKitNetworking_result & 1) == 0)
      {
        v4 = @"ws+unix";
        goto LABEL_18;
      }
    }

    else
    {
      if (v2 != 8)
      {
        goto LABEL_19;
      }

      if (isWebKitNetworking_onceToken != -1)
      {
        dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
      }

      if ((isWebKitNetworking_result & 1) == 0)
      {
        v4 = @"wss+unix";
        goto LABEL_18;
      }
    }

    v3 = 0;
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    v4 = @"ws";
    goto LABEL_18;
  }

  if (v2 == 3)
  {
    v4 = @"wss";
LABEL_18:
    v3 = [v1 caseInsensitiveCompare:v4] == 0;
  }

LABEL_19:

  return v3;
}

@end
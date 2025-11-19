@interface NWURLSessionDelegateWrapper
- (id)delegateFor_didCreateTask;
- (id)delegateFor_didFinishCollectingMetrics;
- (id)delegateFor_sessionDidReceiveChallenge;
- (id)delegateFor_willCacheResponse;
- (void)delegateFor_didReceiveChallenge;
@end

@implementation NWURLSessionDelegateWrapper

- (id)delegateFor_didCreateTask
{
  if (a1)
  {
    if ((*(a1 + 8) & 8) != 0)
    {
      if ((*(a1 + 12) & 8) != 0)
      {
LABEL_4:
        a1 = objc_getProperty(a1, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = a1;
      objc_getProperty(a1, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      a1 = v3;
      if (v4)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      v3[12] = v3[12] & 0xF7 | v5;
      v3[8] |= 8u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    a1 = [(NWURLSessionDelegateWrapper *)*(a1 + 4) delegateFor_didCreateTask];
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

- (id)delegateFor_sessionDidReceiveChallenge
{
  if (a1)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      if ((*(a1 + 12) & 2) != 0)
      {
LABEL_4:
        a1 = objc_getProperty(a1, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = a1;
      objc_getProperty(a1, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      a1 = v3;
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v3[12] = v3[12] & 0xFD | v5;
      v3[8] |= 2u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    a1 = [(NWURLSessionDelegateWrapper *)*(a1 + 4) delegateFor_sessionDidReceiveChallenge];
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

- (void)delegateFor_didReceiveChallenge
{
  if (a1)
  {
    if (a1[1] < 0)
    {
      if ((*(a1 + 12) & 0x80) == 0)
      {
LABEL_4:
        a1 = [(NWURLSessionDelegateWrapper *)a1[4] delegateFor_didReceiveChallenge];
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = a1;
      objc_getProperty(a1, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      a1 = v3;
      if (v4)
      {
        v5 = 0x80;
      }

      else
      {
        v5 = 0;
      }

      v6 = v5 & 0x80 | v3[12] & 0x7F;
      v3[12] = v6;
      v3[8] |= 0x80u;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }
    }

    a1 = objc_getProperty(a1, a2, 24, 1);
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

- (id)delegateFor_willCacheResponse
{
  if (a1)
  {
    if ((*(a1 + 10) & 0x20) != 0)
    {
      if ((*(a1 + 14) & 0x20) != 0)
      {
LABEL_4:
        a1 = objc_getProperty(a1, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = a1;
      objc_getProperty(a1, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      a1 = v3;
      if (v4)
      {
        v5 = 32;
      }

      else
      {
        v5 = 0;
      }

      v3[14] = v3[14] & 0xDF | v5;
      v3[10] |= 0x20u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    a1 = [(NWURLSessionDelegateWrapper *)*(a1 + 4) delegateFor_willCacheResponse];
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

- (id)delegateFor_didFinishCollectingMetrics
{
  if (a1)
  {
    if ((*(a1 + 9) & 8) != 0)
    {
      if ((*(a1 + 13) & 8) != 0)
      {
LABEL_4:
        a1 = objc_getProperty(a1, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = a1;
      objc_getProperty(a1, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      a1 = v3;
      if (v4)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      v3[13] = v3[13] & 0xF7 | v5;
      v3[9] |= 8u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    a1 = [(NWURLSessionDelegateWrapper *)*(a1 + 4) delegateFor_didFinishCollectingMetrics];
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

@end
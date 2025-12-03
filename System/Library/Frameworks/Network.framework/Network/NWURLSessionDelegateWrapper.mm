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
  if (self)
  {
    if ((*(self + 8) & 8) != 0)
    {
      if ((*(self + 12) & 8) != 0)
      {
LABEL_4:
        self = objc_getProperty(self, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      selfCopy = self;
      objc_getProperty(self, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      self = selfCopy;
      if (v4)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      selfCopy[12] = selfCopy[12] & 0xF7 | v5;
      selfCopy[8] |= 8u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    self = [(NWURLSessionDelegateWrapper *)*(self + 4) delegateFor_didCreateTask];
    goto LABEL_10;
  }

LABEL_11:

  return self;
}

- (id)delegateFor_sessionDidReceiveChallenge
{
  if (self)
  {
    if ((*(self + 8) & 2) != 0)
    {
      if ((*(self + 12) & 2) != 0)
      {
LABEL_4:
        self = objc_getProperty(self, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      selfCopy = self;
      objc_getProperty(self, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      self = selfCopy;
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      selfCopy[12] = selfCopy[12] & 0xFD | v5;
      selfCopy[8] |= 2u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    self = [(NWURLSessionDelegateWrapper *)*(self + 4) delegateFor_sessionDidReceiveChallenge];
    goto LABEL_10;
  }

LABEL_11:

  return self;
}

- (void)delegateFor_didReceiveChallenge
{
  if (self)
  {
    if (self[1] < 0)
    {
      if ((*(self + 12) & 0x80) == 0)
      {
LABEL_4:
        self = [(NWURLSessionDelegateWrapper *)self[4] delegateFor_didReceiveChallenge];
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      selfCopy = self;
      objc_getProperty(self, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      self = selfCopy;
      if (v4)
      {
        v5 = 0x80;
      }

      else
      {
        v5 = 0;
      }

      v6 = v5 & 0x80 | selfCopy[12] & 0x7F;
      selfCopy[12] = v6;
      selfCopy[8] |= 0x80u;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }
    }

    self = objc_getProperty(self, a2, 24, 1);
    goto LABEL_10;
  }

LABEL_11:

  return self;
}

- (id)delegateFor_willCacheResponse
{
  if (self)
  {
    if ((*(self + 10) & 0x20) != 0)
    {
      if ((*(self + 14) & 0x20) != 0)
      {
LABEL_4:
        self = objc_getProperty(self, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      selfCopy = self;
      objc_getProperty(self, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      self = selfCopy;
      if (v4)
      {
        v5 = 32;
      }

      else
      {
        v5 = 0;
      }

      selfCopy[14] = selfCopy[14] & 0xDF | v5;
      selfCopy[10] |= 0x20u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    self = [(NWURLSessionDelegateWrapper *)*(self + 4) delegateFor_willCacheResponse];
    goto LABEL_10;
  }

LABEL_11:

  return self;
}

- (id)delegateFor_didFinishCollectingMetrics
{
  if (self)
  {
    if ((*(self + 9) & 8) != 0)
    {
      if ((*(self + 13) & 8) != 0)
      {
LABEL_4:
        self = objc_getProperty(self, a2, 24, 1);
LABEL_10:
        v2 = vars8;
        goto LABEL_11;
      }
    }

    else
    {
      selfCopy = self;
      objc_getProperty(self, a2, 24, 1);
      v4 = objc_opt_respondsToSelector();
      self = selfCopy;
      if (v4)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      selfCopy[13] = selfCopy[13] & 0xF7 | v5;
      selfCopy[9] |= 8u;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    self = [(NWURLSessionDelegateWrapper *)*(self + 4) delegateFor_didFinishCollectingMetrics];
    goto LABEL_10;
  }

LABEL_11:

  return self;
}

@end
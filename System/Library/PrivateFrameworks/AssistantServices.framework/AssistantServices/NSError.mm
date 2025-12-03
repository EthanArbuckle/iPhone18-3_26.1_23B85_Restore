@interface NSError
+ (id)_ad_alarmStoreErrorWithCode:(int64_t)code;
+ (id)_ad_timerStoreErrorWithCode:(int64_t)code;
+ (id)ad_siriTaskHandlerErrorWithCode:(int64_t)code;
- (BOOL)ad_isAssistantNotReadyError;
- (BOOL)ad_isInAssistantErrorDomain;
- (BOOL)ad_isNetworkDownError;
- (BOOL)ad_isPeerConnectionError;
- (BOOL)ad_isPeerNotNearbyError;
- (BOOL)ad_isPeerRemoteError;
- (BOOL)ad_isRetryableConnectionError;
- (BOOL)ad_isRetryableSessionError;
- (BOOL)ad_isStricterRetryableConnectionError;
- (BOOL)ad_isStricterUnreachableError;
- (BOOL)ad_isUnreachableError;
- (BOOL)ad_isUnrecoverablePeerError;
- (BOOL)ad_requiresDampedRetry:(int64_t *)retry;
@end

@implementation NSError

+ (id)_ad_timerStoreErrorWithCode:(int64_t)code
{
  v3 = [[self alloc] initWithDomain:@"com.apple.siri.TimerStore" code:code userInfo:&__NSDictionary0__struct];

  return v3;
}

- (BOOL)ad_isNetworkDownError
{
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKey:NSUnderlyingErrorKey];
  v5 = v4;
  if (v4)
  {
    selfCopy = v4;
  }

  else
  {
    selfCopy = self;
  }

  v7 = selfCopy;

  if ([(NSError *)v7 code]== 50)
  {
    domain = [(NSError *)v7 domain];
    if ([domain isEqualToString:kNWErrorDomainPOSIX])
    {

LABEL_8:
      sn_isNetworkDown = 1;
      goto LABEL_10;
    }

    domain2 = [(NSError *)v7 domain];
    v10 = [domain2 isEqualToString:NSPOSIXErrorDomain];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  sn_isNetworkDown = [(NSError *)self sn_isNetworkDown];
LABEL_10:
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    v15 = 136315650;
    v16 = "[NSError(ADSiriUtilities) ad_isNetworkDownError]";
    v17 = 2112;
    selfCopy2 = self;
    if (sn_isNetworkDown)
    {
      v13 = @"YES";
    }

    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Error %@ is network down: %@", &v15, 0x20u);
  }

  return sn_isNetworkDown;
}

- (BOOL)ad_requiresDampedRetry:(int64_t *)retry
{
  domain = [(NSError *)self domain];
  if (([domain isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(domain, "isEqualToString:", kNWErrorDomainPOSIX))
  {
    code = [(NSError *)self code];
    if (code <= 0x37 && ((1 << code) & 0xC4000000000000) != 0)
    {
      if (retry)
      {
        *retry = [(NSError *)self code];
      }

      goto LABEL_7;
    }
  }

  else
  {
    userInfo = [(NSError *)self userInfo];
    v9 = [userInfo objectForKey:NSUnderlyingErrorKey];

    if (v9)
    {
      v10 = [v9 ad_requiresDampedRetry:retry];

      if (v10)
      {
LABEL_7:
        sn_isNetworkConnectionRetryableAfterDelay = 1;
        goto LABEL_11;
      }
    }
  }

  sn_isNetworkConnectionRetryableAfterDelay = [(NSError *)self sn_isNetworkConnectionRetryableAfterDelay];
LABEL_11:
  v11 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    v14 = 136315650;
    v15 = "[NSError(ADSiriUtilities) ad_requiresDampedRetry:]";
    v16 = 2112;
    selfCopy = self;
    if (sn_isNetworkConnectionRetryableAfterDelay)
    {
      v12 = @"YES";
    }

    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Error %@ requires damped retry: %@", &v14, 0x20u);
  }

  return sn_isNetworkConnectionRetryableAfterDelay;
}

- (BOOL)ad_isPeerRemoteError
{
  ad_isUnreachableError = [(NSError *)self ad_isUnreachableError];
  domain = [(NSError *)self domain];
  v5 = domain;
  if (ad_isUnreachableError)
  {
    v6 = 1;
  }

  else if (([domain isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", kNWErrorDomainPOSIX))
  {
    code = [(NSError *)self code];
    v6 = code == 54 || code == 32;
  }

  else
  {
    v6 = 0;
  }

  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    v12 = 136315650;
    v13 = "[NSError(ADSiriUtilities) ad_isPeerRemoteError]";
    v14 = 2112;
    selfCopy = self;
    if (v6)
    {
      v10 = @"YES";
    }

    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Error %@ is peerRemoteError: %@", &v12, 0x20u);
  }

  return v6;
}

- (BOOL)ad_isPeerNotNearbyError
{
  domain = [(NSError *)self domain];
  if (([(NSError *)self code]& 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [domain isEqualToString:@"ADPeerStreamConnectionErrorDomain"];
  }

  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    v8 = 136315650;
    v9 = "[NSError(ADSiriUtilities) ad_isPeerNotNearbyError]";
    v10 = 2112;
    selfCopy = self;
    if (v4)
    {
      v6 = @"YES";
    }

    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Error %@ is PeerNotNearbyError: %@", &v8, 0x20u);
  }

  return v4;
}

- (BOOL)ad_isPeerConnectionError
{
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  if ([domain isEqualToString:@"ADPeerStreamConnectionErrorDomain"] & 1) != 0 || (objc_msgSend(domain, "isEqualToString:", IDSErrorDomain))
  {
    v5 = 1;
  }

  else
  {
    if ([domain isEqualToString:SiriCoreSiriConnectionErrorDomain])
    {
      v6 = code > 0x1C;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x10030010u >> code;
    }
  }

  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    v10 = 136315650;
    v11 = "[NSError(ADSiriUtilities) ad_isPeerConnectionError]";
    v12 = 2112;
    selfCopy = self;
    if (v5)
    {
      v8 = @"YES";
    }

    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Error %@ is peerError: %@", &v10, 0x20u);
  }

  return v5 & 1;
}

- (BOOL)ad_isRetryableSessionError
{
  ad_isRetryableConnectionError = [(NSError *)self ad_isRetryableConnectionError];
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  if (ad_isRetryableConnectionError)
  {
    v6 = code;
    if ((([domain isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(domain, "isEqualToString:", kNWErrorDomainPOSIX)) && v6 == 60)
    {
      ad_isRetryableConnectionError = 0;
    }

    else if (![domain isEqualToString:kAFAssistantErrorDomain] || ((ad_isRetryableConnectionError = 0, v6 > 0x19) || ((1 << v6) & 0x2000042) == 0) && v6 - 300 >= 2 && v6 != 7000)
    {
      ad_isRetryableConnectionError = [(NSError *)self sn_isNetworkOperationRetryable];
    }
  }

  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    v10 = 136315650;
    v11 = "[NSError(ADSiriUtilities) ad_isRetryableSessionError]";
    v12 = 2112;
    selfCopy = self;
    if (ad_isRetryableConnectionError)
    {
      v8 = @"YES";
    }

    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Error %@ is retryable session error: %@", &v10, 0x20u);
  }

  return ad_isRetryableConnectionError;
}

- (BOOL)ad_isUnrecoverablePeerError
{
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  v5 = [domain isEqualToString:@"ADPeerStreamConnectionErrorDomain"];
  if ((code & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (BOOL)ad_isStricterRetryableConnectionError
{
  domain = [(NSError *)self domain];
  if (-[NSError ad_isStricterUnreachableError](self, "ad_isStricterUnreachableError") || [domain isEqualToString:SiriCoreSiriConnectionErrorDomain] && (-[NSError userInfo](self, "userInfo"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", NSUnderlyingErrorKey), v6 = objc_claimAutoreleasedReturnValue(), v5, v6) && (v7 = objc_msgSend(v6, "ad_isStricterUnreachableError"), v6, (v7 & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSError *)self sn_isNetworkUnreachableForServerCause]^ 1;
  }

  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    v11 = 136315650;
    v12 = "[NSError(ADSiriUtilities) ad_isStricterRetryableConnectionError]";
    v13 = 2112;
    selfCopy = self;
    if (v4)
    {
      v9 = @"YES";
    }

    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Error %@ is stricter retryable: %@", &v11, 0x20u);
  }

  return v4;
}

- (BOOL)ad_isStricterUnreachableError
{
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  if ((([domain isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(domain, "isEqualToString:", kNWErrorDomainPOSIX)) && code <= 0x3D && ((1 << code) & 0x2060000000000000) != 0 || (objc_msgSend(domain, "isEqualToString:", SiriCoreSiriConnectionErrorDomain) ? (v5 = code - 5 >= 2) : (v5 = 1), !v5))
  {
    sn_isNetworkUnreachableForServerCause = 1;
  }

  else
  {
    sn_isNetworkUnreachableForServerCause = [(NSError *)self sn_isNetworkUnreachableForServerCause];
  }

  return sn_isNetworkUnreachableForServerCause;
}

- (BOOL)ad_isRetryableConnectionError
{
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  if ([(NSError *)self ad_isUnreachableError])
  {
    goto LABEL_2;
  }

  if ([domain isEqualToString:kAFAssistantErrorDomain])
  {
    if ((code & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
    {
      userInfo = [(NSError *)self userInfo];
      v7 = [userInfo objectForKey:NSUnderlyingErrorKey];

      if (v7)
      {
        if ([v7 ad_isUnrecoverablePeerError])
        {

LABEL_2:
          sn_isNetworkConnectionRetryable = 0;
          goto LABEL_13;
        }

        ad_isUnreachableError = [v7 ad_isUnreachableError];

        if (ad_isUnreachableError)
        {
          goto LABEL_2;
        }
      }
    }
  }

  if ([domain isEqualToString:SiriCoreSiriConnectionErrorDomain])
  {
    userInfo2 = [(NSError *)self userInfo];
    v10 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

    if (v10)
    {
      ad_isUnreachableError2 = [v10 ad_isUnreachableError];

      if (ad_isUnreachableError2)
      {
        goto LABEL_2;
      }
    }
  }

  sn_isNetworkConnectionRetryable = [(NSError *)self sn_isNetworkConnectionRetryable];
LABEL_13:
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    v15 = 136315650;
    v16 = "[NSError(ADSiriUtilities) ad_isRetryableConnectionError]";
    v17 = 2112;
    selfCopy = self;
    if (sn_isNetworkConnectionRetryable)
    {
      v13 = @"YES";
    }

    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Error %@ is retryable: %@", &v15, 0x20u);
  }

  return sn_isNetworkConnectionRetryable;
}

- (BOOL)ad_isUnreachableError
{
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  if ((([domain isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(domain, "isEqualToString:", kNWErrorDomainPOSIX)) && ((code - 49) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    goto LABEL_25;
  }

  if (![domain isEqualToString:kNWErrorDomainDNS] || (sn_isNetworkUnreachable = 1, code != -65554) && code != -65537)
  {
    if ([domain isEqualToString:kCFErrorDomainCFNetwork])
    {
      v6 = (code - 1) >= 2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      goto LABEL_25;
    }

    if ([domain isEqualToString:SiriCoreSiriConnectionErrorDomain])
    {
      sn_isNetworkUnreachable = 1;
      if (code > 21)
      {
        if ((code - 22) < 2)
        {
          goto LABEL_26;
        }
      }

      else if (code)
      {
        if (code == 4 || code == 16 && [(NSError *)self ad_isNetworkDownError])
        {
          goto LABEL_26;
        }
      }

      else
      {
        userInfo = [(NSError *)self userInfo];
        v8 = [userInfo objectForKey:SiriCoreSiriConnectionHTTPErrorStatusCodeKey];
        intValue = [v8 intValue];

        sn_isNetworkUnreachable = 1;
        if (intValue == 406 || intValue == 503)
        {
          goto LABEL_26;
        }
      }
    }

    if ([domain isEqualToString:kAFAssistantErrorDomain] && code == 14)
    {
LABEL_25:
      sn_isNetworkUnreachable = 1;
      goto LABEL_26;
    }

    sn_isNetworkUnreachable = [(NSError *)self sn_isNetworkUnreachable];
  }

LABEL_26:
  v10 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    v13 = 136315650;
    v14 = "[NSError(ADSiriUtilities) ad_isUnreachableError]";
    v15 = 2112;
    selfCopy = self;
    if (sn_isNetworkUnreachable)
    {
      v11 = @"YES";
    }

    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Error %@ is unreachable: %@", &v13, 0x20u);
  }

  return sn_isNetworkUnreachable;
}

- (BOOL)ad_isAssistantNotReadyError
{
  ad_isInAssistantErrorDomain = [(NSError *)self ad_isInAssistantErrorDomain];
  if (ad_isInAssistantErrorDomain)
  {
    LOBYTE(ad_isInAssistantErrorDomain) = [(NSError *)self code]== 6;
  }

  return ad_isInAssistantErrorDomain;
}

- (BOOL)ad_isInAssistantErrorDomain
{
  domain = [(NSError *)self domain];
  v3 = [domain isEqualToString:kAFAssistantErrorDomain];

  return v3;
}

+ (id)_ad_alarmStoreErrorWithCode:(int64_t)code
{
  v3 = [[self alloc] initWithDomain:@"com.apple.siri.AlarmStore" code:code userInfo:&__NSDictionary0__struct];

  return v3;
}

+ (id)ad_siriTaskHandlerErrorWithCode:(int64_t)code
{
  v3 = [[self alloc] initWithDomain:@"com.apple.siri.TaskServiceErrorDomain" code:code userInfo:0];

  return v3;
}

@end
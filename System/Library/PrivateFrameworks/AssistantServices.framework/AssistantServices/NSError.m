@interface NSError
+ (id)_ad_alarmStoreErrorWithCode:(int64_t)a3;
+ (id)_ad_timerStoreErrorWithCode:(int64_t)a3;
+ (id)ad_siriTaskHandlerErrorWithCode:(int64_t)a3;
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
- (BOOL)ad_requiresDampedRetry:(int64_t *)a3;
@end

@implementation NSError

+ (id)_ad_timerStoreErrorWithCode:(int64_t)a3
{
  v3 = [[a1 alloc] initWithDomain:@"com.apple.siri.TimerStore" code:a3 userInfo:&__NSDictionary0__struct];

  return v3;
}

- (BOOL)ad_isNetworkDownError
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKey:NSUnderlyingErrorKey];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = self;
  }

  v7 = v6;

  if ([(NSError *)v7 code]== 50)
  {
    v8 = [(NSError *)v7 domain];
    if ([v8 isEqualToString:kNWErrorDomainPOSIX])
    {

LABEL_8:
      v11 = 1;
      goto LABEL_10;
    }

    v9 = [(NSError *)v7 domain];
    v10 = [v9 isEqualToString:NSPOSIXErrorDomain];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(NSError *)self sn_isNetworkDown];
LABEL_10:
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    v15 = 136315650;
    v16 = "[NSError(ADSiriUtilities) ad_isNetworkDownError]";
    v17 = 2112;
    v18 = self;
    if (v11)
    {
      v13 = @"YES";
    }

    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Error %@ is network down: %@", &v15, 0x20u);
  }

  return v11;
}

- (BOOL)ad_requiresDampedRetry:(int64_t *)a3
{
  v5 = [(NSError *)self domain];
  if (([v5 isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", kNWErrorDomainPOSIX))
  {
    v6 = [(NSError *)self code];
    if (v6 <= 0x37 && ((1 << v6) & 0xC4000000000000) != 0)
    {
      if (a3)
      {
        *a3 = [(NSError *)self code];
      }

      goto LABEL_7;
    }
  }

  else
  {
    v8 = [(NSError *)self userInfo];
    v9 = [v8 objectForKey:NSUnderlyingErrorKey];

    if (v9)
    {
      v10 = [v9 ad_requiresDampedRetry:a3];

      if (v10)
      {
LABEL_7:
        v7 = 1;
        goto LABEL_11;
      }
    }
  }

  v7 = [(NSError *)self sn_isNetworkConnectionRetryableAfterDelay];
LABEL_11:
  v11 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    v14 = 136315650;
    v15 = "[NSError(ADSiriUtilities) ad_requiresDampedRetry:]";
    v16 = 2112;
    v17 = self;
    if (v7)
    {
      v12 = @"YES";
    }

    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Error %@ requires damped retry: %@", &v14, 0x20u);
  }

  return v7;
}

- (BOOL)ad_isPeerRemoteError
{
  v3 = [(NSError *)self ad_isUnreachableError];
  v4 = [(NSError *)self domain];
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else if (([v4 isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", kNWErrorDomainPOSIX))
  {
    v7 = [(NSError *)self code];
    v6 = v7 == 54 || v7 == 32;
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
    v15 = self;
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
  v3 = [(NSError *)self domain];
  if (([(NSError *)self code]& 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ADPeerStreamConnectionErrorDomain"];
  }

  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    v8 = 136315650;
    v9 = "[NSError(ADSiriUtilities) ad_isPeerNotNearbyError]";
    v10 = 2112;
    v11 = self;
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
  v3 = [(NSError *)self domain];
  v4 = [(NSError *)self code];
  if ([v3 isEqualToString:@"ADPeerStreamConnectionErrorDomain"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", IDSErrorDomain))
  {
    v5 = 1;
  }

  else
  {
    if ([v3 isEqualToString:SiriCoreSiriConnectionErrorDomain])
    {
      v6 = v4 > 0x1C;
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
      v5 = 0x10030010u >> v4;
    }
  }

  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    v10 = 136315650;
    v11 = "[NSError(ADSiriUtilities) ad_isPeerConnectionError]";
    v12 = 2112;
    v13 = self;
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
  v3 = [(NSError *)self ad_isRetryableConnectionError];
  v4 = [(NSError *)self domain];
  v5 = [(NSError *)self code];
  if (v3)
  {
    v6 = v5;
    if ((([v4 isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", kNWErrorDomainPOSIX)) && v6 == 60)
    {
      v3 = 0;
    }

    else if (![v4 isEqualToString:kAFAssistantErrorDomain] || ((v3 = 0, v6 > 0x19) || ((1 << v6) & 0x2000042) == 0) && v6 - 300 >= 2 && v6 != 7000)
    {
      v3 = [(NSError *)self sn_isNetworkOperationRetryable];
    }
  }

  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    v10 = 136315650;
    v11 = "[NSError(ADSiriUtilities) ad_isRetryableSessionError]";
    v12 = 2112;
    v13 = self;
    if (v3)
    {
      v8 = @"YES";
    }

    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Error %@ is retryable session error: %@", &v10, 0x20u);
  }

  return v3;
}

- (BOOL)ad_isUnrecoverablePeerError
{
  v3 = [(NSError *)self domain];
  v4 = [(NSError *)self code];
  v5 = [v3 isEqualToString:@"ADPeerStreamConnectionErrorDomain"];
  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
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
  v3 = [(NSError *)self domain];
  if (-[NSError ad_isStricterUnreachableError](self, "ad_isStricterUnreachableError") || [v3 isEqualToString:SiriCoreSiriConnectionErrorDomain] && (-[NSError userInfo](self, "userInfo"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", NSUnderlyingErrorKey), v6 = objc_claimAutoreleasedReturnValue(), v5, v6) && (v7 = objc_msgSend(v6, "ad_isStricterUnreachableError"), v6, (v7 & 1) != 0))
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
    v14 = self;
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
  v3 = [(NSError *)self domain];
  v4 = [(NSError *)self code];
  if ((([v3 isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", kNWErrorDomainPOSIX)) && v4 <= 0x3D && ((1 << v4) & 0x2060000000000000) != 0 || (objc_msgSend(v3, "isEqualToString:", SiriCoreSiriConnectionErrorDomain) ? (v5 = v4 - 5 >= 2) : (v5 = 1), !v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSError *)self sn_isNetworkUnreachableForServerCause];
  }

  return v6;
}

- (BOOL)ad_isRetryableConnectionError
{
  v3 = [(NSError *)self domain];
  v4 = [(NSError *)self code];
  if ([(NSError *)self ad_isUnreachableError])
  {
    goto LABEL_2;
  }

  if ([v3 isEqualToString:kAFAssistantErrorDomain])
  {
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
    {
      v6 = [(NSError *)self userInfo];
      v7 = [v6 objectForKey:NSUnderlyingErrorKey];

      if (v7)
      {
        if ([v7 ad_isUnrecoverablePeerError])
        {

LABEL_2:
          v5 = 0;
          goto LABEL_13;
        }

        v8 = [v7 ad_isUnreachableError];

        if (v8)
        {
          goto LABEL_2;
        }
      }
    }
  }

  if ([v3 isEqualToString:SiriCoreSiriConnectionErrorDomain])
  {
    v9 = [(NSError *)self userInfo];
    v10 = [v9 objectForKey:NSUnderlyingErrorKey];

    if (v10)
    {
      v11 = [v10 ad_isUnreachableError];

      if (v11)
      {
        goto LABEL_2;
      }
    }
  }

  v5 = [(NSError *)self sn_isNetworkConnectionRetryable];
LABEL_13:
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    v15 = 136315650;
    v16 = "[NSError(ADSiriUtilities) ad_isRetryableConnectionError]";
    v17 = 2112;
    v18 = self;
    if (v5)
    {
      v13 = @"YES";
    }

    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Error %@ is retryable: %@", &v15, 0x20u);
  }

  return v5;
}

- (BOOL)ad_isUnreachableError
{
  v3 = [(NSError *)self domain];
  v4 = [(NSError *)self code];
  if ((([v3 isEqualToString:NSPOSIXErrorDomain] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", kNWErrorDomainPOSIX)) && ((v4 - 49) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    goto LABEL_25;
  }

  if (![v3 isEqualToString:kNWErrorDomainDNS] || (v5 = 1, v4 != -65554) && v4 != -65537)
  {
    if ([v3 isEqualToString:kCFErrorDomainCFNetwork])
    {
      v6 = (v4 - 1) >= 2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      goto LABEL_25;
    }

    if ([v3 isEqualToString:SiriCoreSiriConnectionErrorDomain])
    {
      v5 = 1;
      if (v4 > 21)
      {
        if ((v4 - 22) < 2)
        {
          goto LABEL_26;
        }
      }

      else if (v4)
      {
        if (v4 == 4 || v4 == 16 && [(NSError *)self ad_isNetworkDownError])
        {
          goto LABEL_26;
        }
      }

      else
      {
        v7 = [(NSError *)self userInfo];
        v8 = [v7 objectForKey:SiriCoreSiriConnectionHTTPErrorStatusCodeKey];
        v9 = [v8 intValue];

        v5 = 1;
        if (v9 == 406 || v9 == 503)
        {
          goto LABEL_26;
        }
      }
    }

    if ([v3 isEqualToString:kAFAssistantErrorDomain] && v4 == 14)
    {
LABEL_25:
      v5 = 1;
      goto LABEL_26;
    }

    v5 = [(NSError *)self sn_isNetworkUnreachable];
  }

LABEL_26:
  v10 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    v13 = 136315650;
    v14 = "[NSError(ADSiriUtilities) ad_isUnreachableError]";
    v15 = 2112;
    v16 = self;
    if (v5)
    {
      v11 = @"YES";
    }

    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Error %@ is unreachable: %@", &v13, 0x20u);
  }

  return v5;
}

- (BOOL)ad_isAssistantNotReadyError
{
  v3 = [(NSError *)self ad_isInAssistantErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 6;
  }

  return v3;
}

- (BOOL)ad_isInAssistantErrorDomain
{
  v2 = [(NSError *)self domain];
  v3 = [v2 isEqualToString:kAFAssistantErrorDomain];

  return v3;
}

+ (id)_ad_alarmStoreErrorWithCode:(int64_t)a3
{
  v3 = [[a1 alloc] initWithDomain:@"com.apple.siri.AlarmStore" code:a3 userInfo:&__NSDictionary0__struct];

  return v3;
}

+ (id)ad_siriTaskHandlerErrorWithCode:(int64_t)a3
{
  v3 = [[a1 alloc] initWithDomain:@"com.apple.siri.TaskServiceErrorDomain" code:a3 userInfo:0];

  return v3;
}

@end
@interface SHLError
+ (BOOL)canRetryForError:(id)error;
+ (BOOL)canRetryForPartialError:(id)error;
+ (double)retrySecondsForError:(id)error;
+ (id)errorCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithUnderlyingError:(id)error;
+ (id)localizedDescriptionForSyncError:(int64_t)error;
+ (id)localizedFailureReasonForSyncError:(int64_t)error;
+ (id)localizedRecoverySuggestionForSyncError:(int64_t)error;
+ (id)userInfoForErrorCode:(int64_t)code withUnderlyingError:(id)error;
+ (int64_t)errorCodeForError:(id)error;
@end

@implementation SHLError

+ (id)errorWithUnderlyingError:(id)error
{
  errorCopy = error;
  v5 = +[SHLError errorCode:underlyingError:](SHLError, "errorCode:underlyingError:", [self errorCodeForError:errorCopy], errorCopy);

  return v5;
}

+ (double)retrySecondsForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:CKErrorDomain];

  v6 = 0.0;
  if (v5)
  {
    if ([errorCopy code] == 2)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      userInfo = [errorCopy userInfo];
      v8 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100024824;
      v13[3] = &unk_10007D868;
      v13[4] = &v14;
      [v8 enumerateKeysAndObjectsUsingBlock:v13];
      v6 = v15[3];

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      userInfo2 = [errorCopy userInfo];
      v10 = [userInfo2 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v10 doubleValue];
      v6 = v11;
    }
  }

  return v6;
}

+ (BOOL)canRetryForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:CKErrorDomain];

  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  code = [errorCopy code];
  v8 = 1;
  if (code > 0x24)
  {
    goto LABEL_8;
  }

  if (((1 << code) & 0x1008B000D8) == 0)
  {
    if (code == 2)
    {
      userInfo = [errorCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v8 = [self canRetryForPartialError:v10];

      goto LABEL_7;
    }

LABEL_8:
    v8 = code == 111;
  }

LABEL_7:

  return v8;
}

+ (BOOL)canRetryForPartialError:(id)error
{
  errorCopy = error;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024AA0;
  v6[3] = &unk_10007D890;
  v6[4] = &v7;
  v6[5] = self;
  [errorCopy enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

+ (id)errorCode:(int64_t)code underlyingError:(id)error
{
  v5 = [self userInfoForErrorCode:code withUnderlyingError:error];
  v6 = [[NSError alloc] initWithDomain:@"com.shazam.library" code:code userInfo:v5];

  return v6;
}

+ (id)userInfoForErrorCode:(int64_t)code withUnderlyingError:(id)error
{
  errorCopy = error;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setValue:errorCopy forKey:NSUnderlyingErrorKey];

  v8 = [self localizedDescriptionForSyncError:code];
  [v7 setObject:v8 forKey:NSLocalizedDescriptionKey];

  v9 = [self localizedFailureReasonForSyncError:code];
  [v7 setObject:v9 forKey:NSLocalizedFailureReasonErrorKey];

  v10 = [self localizedRecoverySuggestionForSyncError:code];
  [v7 setObject:v10 forKey:NSLocalizedRecoverySuggestionErrorKey];

  v11 = [v7 copy];

  return v11;
}

+ (int64_t)errorCodeForError:(id)error
{
  code = [error code];
  if (code <= 24)
  {
    if (code > 5)
    {
      if (code == 9)
      {
        return 0;
      }
    }

    else if ((code - 3) < 2)
    {
      return 4;
    }

    return 5;
  }

  if (code <= 27)
  {
    if (code != 25)
    {
      if (code == 26)
      {
        return 7;
      }

      return 5;
    }

    return 6;
  }

  else
  {
    switch(code)
    {
      case 28:
        return 8;
      case 110:
        return 2;
      case 112:
        return 3;
      default:
        return 5;
    }
  }
}

+ (id)localizedDescriptionForSyncError:(int64_t)error
{
  if ((error - 1) > 7)
  {
    return @"No account logged in on this device.";
  }

  else
  {
    return off_10007D8B0[error - 1];
  }
}

+ (id)localizedFailureReasonForSyncError:(int64_t)error
{
  if ((error - 1) > 7)
  {
    return @"Shazam history saves to the user's private database, which requires an authenticated session.";
  }

  else
  {
    return off_10007D8F0[error - 1];
  }
}

+ (id)localizedRecoverySuggestionForSyncError:(int64_t)error
{
  if ((error - 1) > 7)
  {
    return @"The user should manually log in.";
  }

  else
  {
    return off_10007D930[error - 1];
  }
}

@end
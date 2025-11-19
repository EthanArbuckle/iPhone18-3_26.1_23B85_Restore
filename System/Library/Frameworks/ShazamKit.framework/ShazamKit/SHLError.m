@interface SHLError
+ (BOOL)canRetryForError:(id)a3;
+ (BOOL)canRetryForPartialError:(id)a3;
+ (double)retrySecondsForError:(id)a3;
+ (id)errorCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)errorWithUnderlyingError:(id)a3;
+ (id)localizedDescriptionForSyncError:(int64_t)a3;
+ (id)localizedFailureReasonForSyncError:(int64_t)a3;
+ (id)localizedRecoverySuggestionForSyncError:(int64_t)a3;
+ (id)userInfoForErrorCode:(int64_t)a3 withUnderlyingError:(id)a4;
+ (int64_t)errorCodeForError:(id)a3;
@end

@implementation SHLError

+ (id)errorWithUnderlyingError:(id)a3
{
  v4 = a3;
  v5 = +[SHLError errorCode:underlyingError:](SHLError, "errorCode:underlyingError:", [a1 errorCodeForError:v4], v4);

  return v5;
}

+ (double)retrySecondsForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:CKErrorDomain];

  v6 = 0.0;
  if (v5)
  {
    if ([v3 code] == 2)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v7 = [v3 userInfo];
      v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

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
      v9 = [v3 userInfo];
      v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v10 doubleValue];
      v6 = v11;
    }
  }

  return v6;
}

+ (BOOL)canRetryForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:CKErrorDomain];

  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v7 = [v4 code];
  v8 = 1;
  if (v7 > 0x24)
  {
    goto LABEL_8;
  }

  if (((1 << v7) & 0x1008B000D8) == 0)
  {
    if (v7 == 2)
    {
      v9 = [v4 userInfo];
      v10 = [v9 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v8 = [a1 canRetryForPartialError:v10];

      goto LABEL_7;
    }

LABEL_8:
    v8 = v7 == 111;
  }

LABEL_7:

  return v8;
}

+ (BOOL)canRetryForPartialError:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024AA0;
  v6[3] = &unk_10007D890;
  v6[4] = &v7;
  v6[5] = a1;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(a1) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return a1;
}

+ (id)errorCode:(int64_t)a3 underlyingError:(id)a4
{
  v5 = [a1 userInfoForErrorCode:a3 withUnderlyingError:a4];
  v6 = [[NSError alloc] initWithDomain:@"com.shazam.library" code:a3 userInfo:v5];

  return v6;
}

+ (id)userInfoForErrorCode:(int64_t)a3 withUnderlyingError:(id)a4
{
  v6 = a4;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setValue:v6 forKey:NSUnderlyingErrorKey];

  v8 = [a1 localizedDescriptionForSyncError:a3];
  [v7 setObject:v8 forKey:NSLocalizedDescriptionKey];

  v9 = [a1 localizedFailureReasonForSyncError:a3];
  [v7 setObject:v9 forKey:NSLocalizedFailureReasonErrorKey];

  v10 = [a1 localizedRecoverySuggestionForSyncError:a3];
  [v7 setObject:v10 forKey:NSLocalizedRecoverySuggestionErrorKey];

  v11 = [v7 copy];

  return v11;
}

+ (int64_t)errorCodeForError:(id)a3
{
  v3 = [a3 code];
  if (v3 <= 24)
  {
    if (v3 > 5)
    {
      if (v3 == 9)
      {
        return 0;
      }
    }

    else if ((v3 - 3) < 2)
    {
      return 4;
    }

    return 5;
  }

  if (v3 <= 27)
  {
    if (v3 != 25)
    {
      if (v3 == 26)
      {
        return 7;
      }

      return 5;
    }

    return 6;
  }

  else
  {
    switch(v3)
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

+ (id)localizedDescriptionForSyncError:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return @"No account logged in on this device.";
  }

  else
  {
    return off_10007D8B0[a3 - 1];
  }
}

+ (id)localizedFailureReasonForSyncError:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return @"Shazam history saves to the user's private database, which requires an authenticated session.";
  }

  else
  {
    return off_10007D8F0[a3 - 1];
  }
}

+ (id)localizedRecoverySuggestionForSyncError:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return @"The user should manually log in.";
  }

  else
  {
    return off_10007D930[a3 - 1];
  }
}

@end
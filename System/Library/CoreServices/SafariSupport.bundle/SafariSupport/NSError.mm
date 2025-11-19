@interface NSError
+ (id)safari_errorFromErrors:(id)a3;
+ (id)safari_errorWithCloudBookmarksCode:(int64_t)a3 userInfo:(id)a4;
- (BOOL)_safari_isOrContainsCloudKitErrorOfCodes:(id)a3 checkInternalErrorCode:(BOOL)a4;
- (BOOL)safari_isAtomicWriteError;
- (BOOL)safari_isCloudKitErrorWithCode:(int64_t)a3;
- (BOOL)safari_isCloudKitExpiredChangeTokenError;
- (BOOL)safari_isCloudKitInternalErrorWithCode:(int64_t)a3;
- (BOOL)safari_isCloudKitLimitExceededError;
- (BOOL)safari_isCloudKitPartialFailureError;
- (BOOL)safari_isCloudKitWriteConflictError;
- (BOOL)safari_isCouldNotOpenDatabaseError;
- (BOOL)safari_isInCloudBookmarksErrorDomain;
- (BOOL)safari_isMigrationStateRecordChangedError;
- (id)safari_cloudKitPartialErrorForItemID:(id)a3;
- (id)safari_onlyCloudKitPartialError;
@end

@implementation NSError

+ (id)safari_errorWithCloudBookmarksCode:(int64_t)a3 userInfo:(id)a4
{
  v4 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:a3 userInfo:a4];

  return v4;
}

+ (id)safari_errorFromErrors:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 firstObject];
    }

    else
    {
      v8 = @"Errors";
      v9 = v3;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      v5 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:0 userInfo:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)safari_isInCloudBookmarksErrorDomain
{
  v2 = [(NSError *)self domain];
  v3 = [v2 isEqualToString:@"com.apple.Safari.CloudBookmarks"];

  return v3;
}

- (BOOL)safari_isCloudKitPartialFailureError
{
  v3 = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 2;
  }

  return v3;
}

- (BOOL)safari_isCloudKitWriteConflictError
{
  v3 = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 14;
  }

  return v3;
}

- (BOOL)safari_isMigrationStateRecordChangedError
{
  v3 = [(NSError *)self safari_isInCloudBookmarksErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 3;
  }

  return v3;
}

- (BOOL)safari_isCouldNotOpenDatabaseError
{
  v3 = [(NSError *)self safari_isInCloudBookmarksErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 2;
  }

  return v3;
}

- (BOOL)safari_isAtomicWriteError
{
  v3 = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 22;
  }

  return v3;
}

- (BOOL)safari_isCloudKitExpiredChangeTokenError
{
  v3 = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 21;
  }

  return v3;
}

- (BOOL)safari_isCloudKitLimitExceededError
{
  v3 = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (v3)
  {
    LOBYTE(v3) = [(NSError *)self code]== 27;
  }

  return v3;
}

- (id)safari_cloudKitPartialErrorForItemID:(id)a3
{
  v4 = a3;
  if ([(NSError *)self safari_isCloudKitPartialFailureError])
  {
    v5 = [(NSError *)self userInfo];
    v6 = [v5 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)safari_onlyCloudKitPartialError
{
  if ([(NSError *)self safari_isCloudKitPartialFailureError])
  {
    v3 = [(NSError *)self userInfo];
    v4 = [v3 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v5 = [v4 allValues];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)safari_isCloudKitErrorWithCode:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  LOBYTE(self) = [(NSError *)self _safari_isOrContainsCloudKitErrorOfCodes:v5 checkInternalErrorCode:0];

  return self;
}

- (BOOL)safari_isCloudKitInternalErrorWithCode:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  LOBYTE(self) = [(NSError *)self _safari_isOrContainsCloudKitErrorOfCodes:v5 checkInternalErrorCode:1];

  return self;
}

- (BOOL)_safari_isOrContainsCloudKitErrorOfCodes:(id)a3 checkInternalErrorCode:(BOOL)a4
{
  v6 = a3;
  if (([(NSError *)self safari_isInCloudKitErrorDomain]& 1) != 0)
  {
    v7 = [NSSet setWithArray:v6];
    v8 = [(NSError *)self code];
    v9 = [NSNumber numberWithInteger:v8];
    v10 = [v7 containsObject:v9];

    if (v10)
    {
      v11 = 1;
    }

    else if (v8 == 2)
    {
      v12 = [(NSError *)self userInfo];
      v13 = [v12 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      if ([v13 count])
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10003FCC4;
        v15[3] = &unk_1001330C0;
        v16 = v7;
        v17 = &v19;
        v18 = a4;
        [v13 enumerateKeysAndObjectsUsingBlock:v15];
        v11 = *(v20 + 24);

        _Block_object_dispose(&v19, 8);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

@end
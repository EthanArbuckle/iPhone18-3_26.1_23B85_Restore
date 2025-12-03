@interface NSError
+ (id)safari_errorFromErrors:(id)errors;
+ (id)safari_errorWithCloudBookmarksCode:(int64_t)code userInfo:(id)info;
- (BOOL)_safari_isOrContainsCloudKitErrorOfCodes:(id)codes checkInternalErrorCode:(BOOL)code;
- (BOOL)safari_isAtomicWriteError;
- (BOOL)safari_isCloudKitErrorWithCode:(int64_t)code;
- (BOOL)safari_isCloudKitExpiredChangeTokenError;
- (BOOL)safari_isCloudKitInternalErrorWithCode:(int64_t)code;
- (BOOL)safari_isCloudKitLimitExceededError;
- (BOOL)safari_isCloudKitPartialFailureError;
- (BOOL)safari_isCloudKitWriteConflictError;
- (BOOL)safari_isCouldNotOpenDatabaseError;
- (BOOL)safari_isInCloudBookmarksErrorDomain;
- (BOOL)safari_isMigrationStateRecordChangedError;
- (id)safari_cloudKitPartialErrorForItemID:(id)d;
- (id)safari_onlyCloudKitPartialError;
@end

@implementation NSError

+ (id)safari_errorWithCloudBookmarksCode:(int64_t)code userInfo:(id)info
{
  v4 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:code userInfo:info];

  return v4;
}

+ (id)safari_errorFromErrors:(id)errors
{
  errorsCopy = errors;
  v4 = [errorsCopy count];
  if (v4)
  {
    if (v4 == 1)
    {
      firstObject = [errorsCopy firstObject];
    }

    else
    {
      v8 = @"Errors";
      v9 = errorsCopy;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      firstObject = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:0 userInfo:v6];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)safari_isInCloudBookmarksErrorDomain
{
  domain = [(NSError *)self domain];
  v3 = [domain isEqualToString:@"com.apple.Safari.CloudBookmarks"];

  return v3;
}

- (BOOL)safari_isCloudKitPartialFailureError
{
  safari_isInCloudKitErrorDomain = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (safari_isInCloudKitErrorDomain)
  {
    LOBYTE(safari_isInCloudKitErrorDomain) = [(NSError *)self code]== 2;
  }

  return safari_isInCloudKitErrorDomain;
}

- (BOOL)safari_isCloudKitWriteConflictError
{
  safari_isInCloudKitErrorDomain = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (safari_isInCloudKitErrorDomain)
  {
    LOBYTE(safari_isInCloudKitErrorDomain) = [(NSError *)self code]== 14;
  }

  return safari_isInCloudKitErrorDomain;
}

- (BOOL)safari_isMigrationStateRecordChangedError
{
  safari_isInCloudBookmarksErrorDomain = [(NSError *)self safari_isInCloudBookmarksErrorDomain];
  if (safari_isInCloudBookmarksErrorDomain)
  {
    LOBYTE(safari_isInCloudBookmarksErrorDomain) = [(NSError *)self code]== 3;
  }

  return safari_isInCloudBookmarksErrorDomain;
}

- (BOOL)safari_isCouldNotOpenDatabaseError
{
  safari_isInCloudBookmarksErrorDomain = [(NSError *)self safari_isInCloudBookmarksErrorDomain];
  if (safari_isInCloudBookmarksErrorDomain)
  {
    LOBYTE(safari_isInCloudBookmarksErrorDomain) = [(NSError *)self code]== 2;
  }

  return safari_isInCloudBookmarksErrorDomain;
}

- (BOOL)safari_isAtomicWriteError
{
  safari_isInCloudKitErrorDomain = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (safari_isInCloudKitErrorDomain)
  {
    LOBYTE(safari_isInCloudKitErrorDomain) = [(NSError *)self code]== 22;
  }

  return safari_isInCloudKitErrorDomain;
}

- (BOOL)safari_isCloudKitExpiredChangeTokenError
{
  safari_isInCloudKitErrorDomain = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (safari_isInCloudKitErrorDomain)
  {
    LOBYTE(safari_isInCloudKitErrorDomain) = [(NSError *)self code]== 21;
  }

  return safari_isInCloudKitErrorDomain;
}

- (BOOL)safari_isCloudKitLimitExceededError
{
  safari_isInCloudKitErrorDomain = [(NSError *)self safari_isInCloudKitErrorDomain];
  if (safari_isInCloudKitErrorDomain)
  {
    LOBYTE(safari_isInCloudKitErrorDomain) = [(NSError *)self code]== 27;
  }

  return safari_isInCloudKitErrorDomain;
}

- (id)safari_cloudKitPartialErrorForItemID:(id)d
{
  dCopy = d;
  if ([(NSError *)self safari_isCloudKitPartialFailureError])
  {
    userInfo = [(NSError *)self userInfo];
    v6 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v7 = [v6 objectForKeyedSubscript:dCopy];
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
    userInfo = [(NSError *)self userInfo];
    v4 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    allValues = [v4 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)safari_isCloudKitErrorWithCode:(int64_t)code
{
  v4 = [NSNumber numberWithInteger:code];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  LOBYTE(self) = [(NSError *)self _safari_isOrContainsCloudKitErrorOfCodes:v5 checkInternalErrorCode:0];

  return self;
}

- (BOOL)safari_isCloudKitInternalErrorWithCode:(int64_t)code
{
  v4 = [NSNumber numberWithInteger:code];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  LOBYTE(self) = [(NSError *)self _safari_isOrContainsCloudKitErrorOfCodes:v5 checkInternalErrorCode:1];

  return self;
}

- (BOOL)_safari_isOrContainsCloudKitErrorOfCodes:(id)codes checkInternalErrorCode:(BOOL)code
{
  codesCopy = codes;
  if (([(NSError *)self safari_isInCloudKitErrorDomain]& 1) != 0)
  {
    v7 = [NSSet setWithArray:codesCopy];
    code = [(NSError *)self code];
    v9 = [NSNumber numberWithInteger:code];
    v10 = [v7 containsObject:v9];

    if (v10)
    {
      v11 = 1;
    }

    else if (code == 2)
    {
      userInfo = [(NSError *)self userInfo];
      v13 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

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
        codeCopy = code;
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
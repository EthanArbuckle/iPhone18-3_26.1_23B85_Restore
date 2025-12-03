@interface MZKeyValueStoreError
+ (id)clientClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error;
+ (id)keyValueStoreDisabledErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)keyValueStoreErrorWithCode:(int64_t)code localizedDescription:(id)description transaction:(id)transaction underlyingError:(id)error;
+ (id)killSwitchErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)networkingBlockedErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)noStoreAccountErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)serverClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error;
+ (id)storeAccountMismatchErrorWithPreviousStoreAccountText:(id)text currentStoreAccontText:(id)accontText transaction:(id)transaction underlyingError:(id)error;
+ (id)storeAccountSessionExpiredWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)storeGenericErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)storeLoggedOutErrorWithPreviousStoreAccountText:(id)text transaction:(id)transaction underlyingError:(id)error;
+ (id)storeValidationErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)transactionCancelledErrorWithTransaction:(id)transaction code:(int64_t)code underlyingError:(id)error;
+ (id)transactionMissingDomainErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)transactionMissingURLErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)unknownErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)userCancelledSignInErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)userClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error;
+ (id)userEnteredWrongCredentialsErrorWithTransaction:(id)transaction underlyingError:(id)error;
- (BOOL)isRecoverableError;
- (double)retrySeconds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentStoreAccountKey;
- (id)description;
- (id)previousStoreAccountKey;
@end

@implementation MZKeyValueStoreError

- (id)description
{
  userInfo = [(MZKeyValueStoreError *)self userInfo];
  v4 = [userInfo objectForKey:NSUnderlyingErrorKey];

  if (v4)
  {
    v5 = [NSString stringWithFormat:@", underlying error = %@", v4];
  }

  else
  {
    v5 = &stru_1004F3018;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  localizedDescription = [(MZKeyValueStoreError *)self localizedDescription];
  v9 = [NSString stringWithFormat:@"<%@:%p> %@%@", v7, self, localizedDescription, v5];

  return v9;
}

- (BOOL)isRecoverableError
{
  code = [(MZKeyValueStoreError *)self code];
  result = 1;
  if (code > -2007)
  {
    if ((code + 1008) >= 4 && (code + 2006) >= 2 && code != -1)
    {
      return result;
    }

    return 0;
  }

  if ((code + 4003) < 3 || (code + 3002) < 2)
  {
    return 0;
  }

  return result;
}

- (id)previousStoreAccountKey
{
  userInfo = [(MZKeyValueStoreError *)self userInfo];
  v3 = [userInfo valueForKey:@"MZKeyValueStorePreviousStoreAccountKey"];

  return v3;
}

- (id)currentStoreAccountKey
{
  userInfo = [(MZKeyValueStoreError *)self userInfo];
  v3 = [userInfo valueForKey:@"MZKeyValueStoreCurrentStoreAccountKey"];

  return v3;
}

- (double)retrySeconds
{
  userInfo = [(MZKeyValueStoreError *)self userInfo];
  v3 = [userInfo valueForKey:@"MZKeyValueStoreRetrySecondsKey"];

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MZKeyValueStoreError;
  v4 = [(MZKeyValueStoreError *)&v7 copyWithZone:zone];
  transactionDescription = [(MZKeyValueStoreError *)self transactionDescription];
  [v4 setTransactionDescription:transactionDescription];

  return v4;
}

+ (id)keyValueStoreErrorWithCode:(int64_t)code localizedDescription:(id)description transaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v11 = [NSDictionary dictionaryWithObject:description forKey:NSLocalizedDescriptionKey];
  v12 = sub_1000A4CEC(v11, errorCopy);

  v13 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:code userInfo:v12];

  v14 = [transactionCopy description];

  [v13 setTransactionDescription:v14];

  return v13;
}

+ (id)unknownErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  v5 = [NSString stringWithFormat:@"MZKeyValueStoreErrorGeneric: An unknown server error occurred.  Please %@", @"submit a bug to PEP Podcasts with console logs attached"];
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:v5, NSLocalizedDescriptionKey, 0];

  v7 = sub_1000A4CEC(v6, errorCopy);

  v8 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1 userInfo:v7];

  return v8;
}

+ (id)keyValueStoreDisabledErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-2006);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-2006 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)networkingBlockedErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-2004);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-2004 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)killSwitchErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-2005);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-2005 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)storeLoggedOutErrorWithPreviousStoreAccountText:(id)text transaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  textCopy = text;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setValue:@"MZKeyValueStoreErrorStoreAccountLoggedOut" forKey:NSLocalizedDescriptionKey];
  [v10 setValue:textCopy forKey:@"MZKeyValueStorePreviousStoreAccountKey"];

  v11 = sub_1000A4CEC(v10, errorCopy);

  v12 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1002 userInfo:v11];

  v13 = [transactionCopy description];

  [v12 setTransactionDescription:v13];

  return v12;
}

+ (id)storeAccountMismatchErrorWithPreviousStoreAccountText:(id)text currentStoreAccontText:(id)accontText transaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  accontTextCopy = accontText;
  textCopy = text;
  v13 = +[NSMutableDictionary dictionary];
  [v13 setValue:@"MZKeyValueStoreErrorStoreAccountMismatch" forKey:NSLocalizedDescriptionKey];
  [v13 setValue:textCopy forKey:@"MZKeyValueStorePreviousStoreAccountKey"];

  [v13 setValue:accontTextCopy forKey:@"MZKeyValueStoreCurrentStoreAccountKey"];
  v14 = sub_1000A4CEC(v13, errorCopy);

  v15 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1003 userInfo:v14];

  v16 = [transactionCopy description];

  [v15 setTransactionDescription:v16];

  return v15;
}

+ (id)storeGenericErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  v5 = [NSDictionary dictionaryWithObject:@"MZKeyValueStoreErrorGeneric: This usually means your format is wrong. Turn on MZ_KVSTORE_SERIALIZER_LOG and MZ_KVSTORE_LOG for debugging." forKey:NSLocalizedDescriptionKey];
  v6 = sub_1000A4CEC(v5, errorCopy);

  v7 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1007 userInfo:v6];

  return v7;
}

+ (id)storeValidationErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  nSLocalizedDescriptionKey = [NSDictionary dictionaryWithObject:@"MZKeyValueStoreErrorValidation: Your request is invalid forKey:maybe referenced a non-existent Domain. Turn on MZ_KVSTORE_SERIALIZER_LOG and MZ_KVSTORE_LOG for debugging", NSLocalizedDescriptionKey];
  v6 = sub_1000A4CEC(nSLocalizedDescriptionKey, errorCopy);

  v7 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1007 userInfo:v6];

  return v7;
}

+ (id)userCancelledSignInErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-1005);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-1005 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)userEnteredWrongCredentialsErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-1006);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-1006 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)noStoreAccountErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-1001);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-1001 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)storeAccountSessionExpiredWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-1004);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-1004 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)transactionMissingDomainErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-3002);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-3002 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)transactionMissingURLErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = sub_1000A4F20(-3001);
  v8 = [MZKeyValueStoreError keyValueStoreErrorWithCode:-3001 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)transactionCancelledErrorWithTransaction:(id)transaction code:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v9 = sub_1000A4F20(code);
  v10 = [MZKeyValueStoreError keyValueStoreErrorWithCode:code localizedDescription:v9 transaction:transactionCopy underlyingError:errorCopy];

  return v10;
}

+ (id)userClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v9 = +[NSMutableDictionary dictionary];
  [v9 setValue:@"MZKeyValueStoreErrorUserClamp" forKey:NSLocalizedDescriptionKey];
  if (fabs(seconds) > 2.22044605e-16)
  {
    v10 = [NSNumber numberWithDouble:seconds];
    [v9 setValue:v10 forKey:@"MZKeyValueStoreRetrySecondsKey"];
  }

  v11 = sub_1000A4CEC(v9, errorCopy);
  v12 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-2003 userInfo:v11];

  v13 = [transactionCopy description];

  [v12 setTransactionDescription:v13];

  return v12;
}

+ (id)clientClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v9 = +[NSMutableDictionary dictionary];
  [v9 setValue:@"MZKeyValueStoreErrorClientClamp" forKey:NSLocalizedDescriptionKey];
  if (fabs(seconds) > 2.22044605e-16)
  {
    v10 = [NSNumber numberWithDouble:seconds];
    [v9 setValue:v10 forKey:@"MZKeyValueStoreRetrySecondsKey"];
  }

  v11 = sub_1000A4CEC(v9, errorCopy);
  v12 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1009 userInfo:v11];

  v13 = [transactionCopy description];

  [v12 setTransactionDescription:v13];

  return v12;
}

+ (id)serverClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v9 = +[NSMutableDictionary dictionary];
  [v9 setValue:@"MZKeyValueStoreErrorServerClamp" forKey:NSLocalizedDescriptionKey];
  if (fabs(seconds) > 2.22044605e-16)
  {
    v10 = [NSNumber numberWithDouble:seconds];
    [v9 setValue:v10 forKey:@"MZKeyValueStoreRetrySecondsKey"];
  }

  v11 = sub_1000A4CEC(v9, errorCopy);
  v12 = [MZKeyValueStoreError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-2002 userInfo:v11];

  v13 = [transactionCopy description];

  [v12 setTransactionDescription:v13];

  return v12;
}

@end
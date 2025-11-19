@interface NSError
- (BOOL)isCancelledError;
- (NSNumber)lib_coordinatorOwnerID;
- (NSString)lib_sanitizedDescription;
- (NSString)lib_serverDialogID;
- (NSString)lib_shortDescription;
- (id)lib_addRecoveryOptions:(id)a3;
- (id)lib_addUserInfoValue:(id)a3 forKey:(id)a4;
- (id)toASDErrorWithMetadata:(id)a3;
- (void)lib_walkUnderlyingErrorsUsingBlock:(id)a3;
@end

@implementation NSError

- (NSNumber)lib_coordinatorOwnerID
{
  v2 = [(NSError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"coordinatorOwnerID"];

  return v3;
}

- (NSString)lib_sanitizedDescription
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007D7EC;
  v6[3] = &unk_1003832D0;
  v7 = objc_opt_new();
  v3 = v7;
  [(NSError *)self lib_walkUnderlyingErrorsUsingBlock:v6];
  v4 = [v3 componentsJoinedByString:@":"];

  return v4;
}

- (NSString)lib_shortDescription
{
  v3 = [(NSError *)self domain];
  v4 = [NSString stringWithFormat:@"%@/%ld", v3, [(NSError *)self code]];

  return v4;
}

- (NSString)lib_serverDialogID
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"dialogID"];

  if (!v4)
  {
    v5 = [(NSError *)self userInfo];
    v4 = [v5 tcr_stringForKeyPath:@"AMSServerPayload.metrics.dialogId"];
  }

  return v4;
}

- (id)lib_addRecoveryOptions:(id)a3
{
  v4 = a3;
  v5 = [(NSError *)self localizedRecoveryOptions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v8 = [(NSError *)self userInfo];
    v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

    [v9 setObject:v4 forKey:NSLocalizedRecoveryOptionsErrorKey];
    v10 = [(NSError *)self domain];
    v11 = [(NSError *)self code];
    v12 = [NSDictionary dictionaryWithDictionary:v9];
    v7 = [NSError errorWithDomain:v10 code:v11 userInfo:v12];
  }

  return v7;
}

- (id)lib_addUserInfoValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSError *)self userInfo];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [v9 setObject:v6 forKeyedSubscript:v7];
  v10 = [(NSError *)self domain];
  v11 = [(NSError *)self code];
  v12 = [NSDictionary dictionaryWithDictionary:v9];
  v13 = [NSError errorWithDomain:v10 code:v11 userInfo:v12];

  return v13;
}

- (void)lib_walkUnderlyingErrorsUsingBlock:(id)a3
{
  v4 = self;
  while (1)
  {
    v8 = v4;
    if (!(*(a3 + 2))(a3))
    {
      break;
    }

    v5 = [(NSError *)v8 userInfo];
    v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4 = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = v8;
LABEL_6:
}

- (BOOL)isCancelledError
{
  v2 = self;
  v3 = sub_1001856B0();

  return v3 & 1;
}

- (id)toASDErrorWithMetadata:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100185854(a3);

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

@end
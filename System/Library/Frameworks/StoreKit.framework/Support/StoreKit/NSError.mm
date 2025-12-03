@interface NSError
- (BOOL)isCancelledError;
- (NSNumber)lib_coordinatorOwnerID;
- (NSString)lib_sanitizedDescription;
- (NSString)lib_serverDialogID;
- (NSString)lib_shortDescription;
- (id)lib_addRecoveryOptions:(id)options;
- (id)lib_addUserInfoValue:(id)value forKey:(id)key;
- (id)toASDErrorWithMetadata:(id)metadata;
- (void)lib_walkUnderlyingErrorsUsingBlock:(id)block;
@end

@implementation NSError

- (NSNumber)lib_coordinatorOwnerID
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"coordinatorOwnerID"];

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
  domain = [(NSError *)self domain];
  v4 = [NSString stringWithFormat:@"%@/%ld", domain, [(NSError *)self code]];

  return v4;
}

- (NSString)lib_serverDialogID
{
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"dialogID"];

  if (!v4)
  {
    userInfo2 = [(NSError *)self userInfo];
    v4 = [userInfo2 tcr_stringForKeyPath:@"AMSServerPayload.metrics.dialogId"];
  }

  return v4;
}

- (id)lib_addRecoveryOptions:(id)options
{
  optionsCopy = options;
  localizedRecoveryOptions = [(NSError *)self localizedRecoveryOptions];
  v6 = [localizedRecoveryOptions count];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    userInfo = [(NSError *)self userInfo];
    v9 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

    [v9 setObject:optionsCopy forKey:NSLocalizedRecoveryOptionsErrorKey];
    domain = [(NSError *)self domain];
    code = [(NSError *)self code];
    v12 = [NSDictionary dictionaryWithDictionary:v9];
    selfCopy = [NSError errorWithDomain:domain code:code userInfo:v12];
  }

  return selfCopy;
}

- (id)lib_addUserInfoValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  userInfo = [(NSError *)self userInfo];
  v9 = [userInfo mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [v9 setObject:valueCopy forKeyedSubscript:keyCopy];
  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  v12 = [NSDictionary dictionaryWithDictionary:v9];
  v13 = [NSError errorWithDomain:domain code:code userInfo:v12];

  return v13;
}

- (void)lib_walkUnderlyingErrorsUsingBlock:(id)block
{
  selfCopy = self;
  while (1)
  {
    v8 = selfCopy;
    if (!(*(block + 2))(block))
    {
      break;
    }

    userInfo = [(NSError *)v8 userInfo];
    v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    selfCopy = v6;
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
  selfCopy = self;
  v3 = sub_1001856B0();

  return v3 & 1;
}

- (id)toASDErrorWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_100185854(metadata);

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

@end
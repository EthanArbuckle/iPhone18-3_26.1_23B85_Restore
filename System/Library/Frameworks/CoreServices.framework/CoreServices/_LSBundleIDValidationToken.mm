@interface _LSBundleIDValidationToken
+ (BOOL)isToken:(void *)token correctForBundleIdentifier:(void *)identifier connection:;
- (id)initWithBundleIdentifier:(id)identifier;
@end

@implementation _LSBundleIDValidationToken

- (id)initWithBundleIdentifier:(id)identifier
{
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    if (!v3)
    {
      v3 = &stru_1EEF65710;
    }

    v5 = [(__CFString *)v3 dataUsingEncoding:4];
    v7.receiver = identifier;
    v7.super_class = _LSBundleIDValidationToken;
    identifier = objc_msgSendSuper2(&v7, sel_initWithPayload_, v5);
  }

  return identifier;
}

+ (BOOL)isToken:(void *)token correctForBundleIdentifier:(void *)identifier connection:
{
  v6 = a2;
  tokenCopy = token;
  identifierCopy = identifier;
  objc_opt_self();
  if (v6)
  {
    if (!tokenCopy || ([tokenCopy dataUsingEncoding:4], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[_LSValidationToken isCorrectForPayload:](v6, v9), v9, (v10 & 1) == 0))
    {
      _xpcConnection = [identifierCopy _xpcConnection];
      _xpcConnection2 = _LSCopyBundleIdentifierForXPCConnection(_xpcConnection, 1);

      v13 = [_xpcConnection2 dataUsingEncoding:4];
      v14 = v13 && ([(_LSValidationToken *)v6 isCorrectForPayload:v13]& 1) != 0;

      goto LABEL_12;
    }
  }

  else if (identifierCopy)
  {
    _xpcConnection2 = [identifierCopy _xpcConnection];
    v14 = _LSXPCConnectionMayMapDatabase(_xpcConnection2) != 0;
LABEL_12:

    goto LABEL_13;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

@end
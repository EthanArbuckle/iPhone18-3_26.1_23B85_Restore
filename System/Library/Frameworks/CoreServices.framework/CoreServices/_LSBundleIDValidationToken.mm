@interface _LSBundleIDValidationToken
+ (BOOL)isToken:(void *)a3 correctForBundleIdentifier:(void *)a4 connection:;
- (id)initWithBundleIdentifier:(id)a1;
@end

@implementation _LSBundleIDValidationToken

- (id)initWithBundleIdentifier:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v3 = &stru_1EEF65710;
    }

    v5 = [(__CFString *)v3 dataUsingEncoding:4];
    v7.receiver = a1;
    v7.super_class = _LSBundleIDValidationToken;
    a1 = objc_msgSendSuper2(&v7, sel_initWithPayload_, v5);
  }

  return a1;
}

+ (BOOL)isToken:(void *)a3 correctForBundleIdentifier:(void *)a4 connection:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (v6)
  {
    if (!v7 || ([v7 dataUsingEncoding:4], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[_LSValidationToken isCorrectForPayload:](v6, v9), v9, (v10 & 1) == 0))
    {
      v11 = [v8 _xpcConnection];
      v12 = _LSCopyBundleIdentifierForXPCConnection(v11, 1);

      v13 = [v12 dataUsingEncoding:4];
      v14 = v13 && ([(_LSValidationToken *)v6 isCorrectForPayload:v13]& 1) != 0;

      goto LABEL_12;
    }
  }

  else if (v8)
  {
    v12 = [v8 _xpcConnection];
    v14 = _LSXPCConnectionMayMapDatabase(v12) != 0;
LABEL_12:

    goto LABEL_13;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

@end
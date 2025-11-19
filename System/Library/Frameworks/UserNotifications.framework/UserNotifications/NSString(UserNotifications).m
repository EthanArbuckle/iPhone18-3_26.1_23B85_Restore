@interface NSString(UserNotifications)
- (__CFString)un_logDigest;
@end

@implementation NSString(UserNotifications)

- (__CFString)un_logDigest
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 UTF8String];
  if (v2)
  {
    v3 = v2;
  }

  else if (![a1 length] || (objc_msgSend(a1, "dataUsingEncoding:allowLossyConversion:", 1, 1), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v6, 4), v3 = objc_msgSend(v7, "UTF8String"), v7, v6, !v3))
  {
    v5 = @"<Unicode conversion error>";
    goto LABEL_8;
  }

  v4 = strlen(v3);
  v5 = CC_SHA1(v3, v4, md);
  if (v5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X-%02X%02X", md[0], md[1], md[2], md[3]];
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

@end
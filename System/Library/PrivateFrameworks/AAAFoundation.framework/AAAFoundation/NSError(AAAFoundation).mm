@interface NSError(AAAFoundation)
- (BOOL)isRecoverableError;
@end

@implementation NSError(AAAFoundation)

- (BOOL)isRecoverableError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A978]];

  if (v3 && ([a1 code] == -997 || objc_msgSend(a1, "code") == -1005 || objc_msgSend(a1, "code") == -1001 || objc_msgSend(a1, "code") == -1009))
  {
    return 1;
  }

  v4 = [a1 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E696A250]];

  if (v5)
  {
    if ([a1 code] == 4099 || objc_msgSend(a1, "code") == 4097)
    {
      return 1;
    }
  }

  v6 = [a1 domain];
  v7 = [v6 isEqualToString:@"CKErrorDomain"];

  return v7 && ([a1 code] == 3 || objc_msgSend(a1, "code") == 4);
}

@end
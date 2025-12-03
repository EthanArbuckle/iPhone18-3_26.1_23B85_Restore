@interface NSError(AAAFoundation)
- (BOOL)isRecoverableError;
@end

@implementation NSError(AAAFoundation)

- (BOOL)isRecoverableError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (v3 && ([self code] == -997 || objc_msgSend(self, "code") == -1005 || objc_msgSend(self, "code") == -1001 || objc_msgSend(self, "code") == -1009))
  {
    return 1;
  }

  domain2 = [self domain];
  v5 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

  if (v5)
  {
    if ([self code] == 4099 || objc_msgSend(self, "code") == 4097)
    {
      return 1;
    }
  }

  domain3 = [self domain];
  v7 = [domain3 isEqualToString:@"CKErrorDomain"];

  return v7 && ([self code] == 3 || objc_msgSend(self, "code") == 4);
}

@end
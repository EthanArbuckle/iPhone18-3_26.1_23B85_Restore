@interface NSError(HomeError)
- (BOOL)isHomeError;
@end

@implementation NSError(HomeError)

- (BOOL)isHomeError
{
  if ([self code] != 1016 && objc_msgSend(self, "code") != 1002)
  {
    return 0;
  }

  domain = [self domain];
  v3 = domain == *MEMORY[0x277CEA748];

  return v3;
}

@end
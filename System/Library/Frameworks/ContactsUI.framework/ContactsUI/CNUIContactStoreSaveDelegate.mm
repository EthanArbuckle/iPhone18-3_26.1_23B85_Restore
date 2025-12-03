@interface CNUIContactStoreSaveDelegate
- (BOOL)saveRequest:(id)request shouldProceedAfterError:(id)error;
@end

@implementation CNUIContactStoreSaveDelegate

- (BOOL)saveRequest:(id)request shouldProceedAfterError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 1015)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:*MEMORY[0x1E695C448]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
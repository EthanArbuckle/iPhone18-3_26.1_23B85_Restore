@interface NSError
- (BOOL)_maps_isCancellation;
- (BOOL)_maps_isErrorOfDomain:(id)a3 code:(int64_t)a4;
@end

@implementation NSError

- (BOOL)_maps_isCancellation
{
  v3 = [(NSError *)self domain];
  if ([v3 isEqualToString:NSCocoaErrorDomain])
  {
    v4 = [(NSError *)self code]== &stru_BE8.vmaddr;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_maps_isErrorOfDomain:(id)a3 code:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSError *)self domain];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = [(NSError *)self code]== a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
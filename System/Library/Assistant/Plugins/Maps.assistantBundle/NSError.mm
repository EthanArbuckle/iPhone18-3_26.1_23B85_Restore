@interface NSError
- (BOOL)_maps_isCancellation;
- (BOOL)_maps_isErrorOfDomain:(id)domain code:(int64_t)code;
@end

@implementation NSError

- (BOOL)_maps_isCancellation
{
  domain = [(NSError *)self domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    v4 = [(NSError *)self code]== &stru_BC8.indirectsymoff;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_maps_isErrorOfDomain:(id)domain code:(int64_t)code
{
  domainCopy = domain;
  domain = [(NSError *)self domain];
  v8 = [domain isEqualToString:domainCopy];

  if (v8)
  {
    v9 = [(NSError *)self code]== code;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
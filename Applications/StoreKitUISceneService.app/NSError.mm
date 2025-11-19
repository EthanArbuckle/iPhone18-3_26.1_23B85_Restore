@interface NSError
- (BOOL)isCancelledError;
- (id)toASDErrorWithMetadata:(id)a3;
@end

@implementation NSError

- (BOOL)isCancelledError
{
  v2 = self;
  v3 = sub_10001FA58();

  return v3 & 1;
}

- (id)toASDErrorWithMetadata:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001FBFC(a3);

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

@end
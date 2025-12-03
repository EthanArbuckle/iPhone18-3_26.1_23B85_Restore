@interface NSError
- (BOOL)isCancelledError;
- (id)toASDErrorWithMetadata:(id)metadata;
@end

@implementation NSError

- (BOOL)isCancelledError
{
  selfCopy = self;
  v3 = sub_10001FA58();

  return v3 & 1;
}

- (id)toASDErrorWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_10001FBFC(metadata);

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

@end
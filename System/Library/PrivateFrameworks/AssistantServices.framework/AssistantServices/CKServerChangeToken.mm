@interface CKServerChangeToken
+ (id)ad_unarchiveTokenFromData:(id)data withExceptionBlock:(id)block;
- (id)ad_archiveTokenToDataWithExceptionBlock:(id)block;
@end

@implementation CKServerChangeToken

- (id)ad_archiveTokenToDataWithExceptionBlock:(id)block
{
  blockCopy = block;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v5 encodedData];
  v7 = [encodedData copy];

  return v7;
}

+ (id)ad_unarchiveTokenFromData:(id)data withExceptionBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  if (dataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:0];
    v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v7 finishDecoding];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
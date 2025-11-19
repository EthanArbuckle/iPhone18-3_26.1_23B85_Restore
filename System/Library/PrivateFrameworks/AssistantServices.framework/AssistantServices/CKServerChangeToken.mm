@interface CKServerChangeToken
+ (id)ad_unarchiveTokenFromData:(id)a3 withExceptionBlock:(id)a4;
- (id)ad_archiveTokenToDataWithExceptionBlock:(id)a3;
@end

@implementation CKServerChangeToken

- (id)ad_archiveTokenToDataWithExceptionBlock:(id)a3
{
  v4 = a3;
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  v6 = [v5 encodedData];
  v7 = [v6 copy];

  return v7;
}

+ (id)ad_unarchiveTokenFromData:(id)a3 withExceptionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
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
@interface SNFileDeletionResult
- (NSError)error;
- (NSString)fileName;
@end

@implementation SNFileDeletionResult

- (NSString)fileName
{
  sub_1C9823FF8();
  v2 = sub_1C9A92478();

  return v2;
}

- (NSError)error
{
  v2 = sub_1C982408C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C9A913B8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
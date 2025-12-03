@interface ASDTIOA2ServiceManager
- (BOOL)ioServiceCanBeAdded:(id)added;
@end

@implementation ASDTIOA2ServiceManager

- (BOOL)ioServiceCanBeAdded:(id)added
{
  v3 = [added objectForKey:@"is private"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end
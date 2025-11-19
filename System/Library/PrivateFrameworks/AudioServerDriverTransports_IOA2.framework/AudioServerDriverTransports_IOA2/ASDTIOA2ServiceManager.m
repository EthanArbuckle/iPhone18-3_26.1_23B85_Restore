@interface ASDTIOA2ServiceManager
- (BOOL)ioServiceCanBeAdded:(id)a3;
@end

@implementation ASDTIOA2ServiceManager

- (BOOL)ioServiceCanBeAdded:(id)a3
{
  v3 = [a3 objectForKey:@"is private"];
  v4 = [v3 BOOLValue];

  return v4;
}

@end
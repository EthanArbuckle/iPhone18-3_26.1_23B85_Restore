@interface PSSpecifier
- (unint64_t)diskUsage;
- (void)setUsage:(unint64_t)usage;
@end

@implementation PSSpecifier

- (void)setUsage:(unint64_t)usage
{
  userInfo = [(PSSpecifier *)self userInfo];
  v6 = [userInfo mutableCopy];

  v7 = [NSNumber numberWithUnsignedLongLong:usage];
  [v6 setObject:v7 forKeyedSubscript:@"DISK_USAGE"];

  [(PSSpecifier *)self setUserInfo:v6];
  v8 = CPFSSizeStrings();
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(PSSpecifier *)self setValues:v9];
}

- (unint64_t)diskUsage
{
  userInfo = [(PSSpecifier *)self userInfo];
  v3 = userInfo;
  if (userInfo)
  {
    unsignedLongLongValue = [userInfo objectForKeyedSubscript:@"DISK_USAGE"];

    if (unsignedLongLongValue)
    {
      v5 = [v3 objectForKeyedSubscript:@"DISK_USAGE"];
      unsignedLongLongValue = [v5 unsignedLongLongValue];
    }
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

@end
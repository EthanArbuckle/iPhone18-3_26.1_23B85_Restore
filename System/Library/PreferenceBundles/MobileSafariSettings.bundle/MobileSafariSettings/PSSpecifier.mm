@interface PSSpecifier
- (unint64_t)diskUsage;
- (void)setUsage:(unint64_t)a3;
@end

@implementation PSSpecifier

- (void)setUsage:(unint64_t)a3
{
  v5 = [(PSSpecifier *)self userInfo];
  v6 = [v5 mutableCopy];

  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  [v6 setObject:v7 forKeyedSubscript:@"DISK_USAGE"];

  [(PSSpecifier *)self setUserInfo:v6];
  v8 = CPFSSizeStrings();
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(PSSpecifier *)self setValues:v9];
}

- (unint64_t)diskUsage
{
  v2 = [(PSSpecifier *)self userInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"DISK_USAGE"];

    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:@"DISK_USAGE"];
      v4 = [v5 unsignedLongLongValue];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
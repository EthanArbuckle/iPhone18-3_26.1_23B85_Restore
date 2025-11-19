@interface NSString
+ (id)skan_versionStringFromSKAdNetworkVersion:(int64_t)a3;
- (int64_t)skan_version;
@end

@implementation NSString

- (int64_t)skan_version
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@"[. withString:]" options:@"." range:1024, 0, [(NSString *)self length]];
  if (qword_1002BD480[0] != -1)
  {
    sub_1001F5E24();
  }

  v3 = [qword_1002BD478 objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)skan_versionStringFromSKAdNetworkVersion:(int64_t)a3
{
  v3 = @"2.2";
  v4 = @"3.0";
  v5 = @"4.0";
  if (a3 != 400)
  {
    v5 = 0;
  }

  if (a3 != 300)
  {
    v4 = v5;
  }

  if (a3 != 202)
  {
    v3 = v4;
  }

  v6 = @"2.1";
  if (a3 != 201)
  {
    v6 = 0;
  }

  if (a3 == 200)
  {
    v6 = @"2.0";
  }

  if (a3 == 100)
  {
    v6 = @"1.0";
  }

  if (a3 <= 201)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end
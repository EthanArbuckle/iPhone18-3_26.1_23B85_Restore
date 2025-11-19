@interface NSDictionary
- (int64_t)compareCredentialDictionaryAscending:(id)a3;
@end

@implementation NSDictionary

- (int64_t)compareCredentialDictionaryAscending:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self objectForKey:@"acct"];
  v6 = [v4 objectForKey:@"acct"];
  v7 = &stru_100008400;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_100008400;
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &stru_100008400;
  }

  v10 = [(__CFString *)v8 localizedCaseInsensitiveCompare:v9];
  if (!v10)
  {
    v11 = [(NSDictionary *)self objectForKey:@"srvr"];
    v12 = [v4 objectForKey:@"srvr"];
    if (!v11)
    {
      v11 = &stru_100008400;
    }

    if (v12)
    {
      v7 = v12;
    }

    v10 = [(__CFString *)v11 localizedCaseInsensitiveCompare:v7];
  }

  return v10;
}

@end
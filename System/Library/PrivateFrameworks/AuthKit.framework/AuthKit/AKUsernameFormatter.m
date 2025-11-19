@interface AKUsernameFormatter
+ (BOOL)_isPhoneNumber:(id)a3;
+ (id)formattedUsernameFromUsername:(id)a3;
@end

@implementation AKUsernameFormatter

+ (id)formattedUsernameFromUsername:(id)a3
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length])
  {
    v12 = MEMORY[0x1E69E5928](location[0]);
    if (AAAFoundationSwiftLibraryCore(0))
    {
      getAAFPhoneNumberFormatterClass();
    }

    v11 = objc_opt_new();
    v10 = [v11 normalizedFormatFor:location[0]];
    if ([v15 _isPhoneNumber:v10])
    {
      v9 = [@"+" stringByAppendingString:v10];
      v3 = [v11 displayFormatFor:v9];
      v4 = v12;
      v12 = v3;
      MEMORY[0x1E69E5920](v4);
      objc_storeStrong(&v9, 0);
    }

    if (v12)
    {
      v5 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@" "];
      v6 = v12;
      v12 = v5;
      MEMORY[0x1E69E5920](v6);
    }

    v16 = MEMORY[0x1E69E5928](v12);
    v13 = 1;
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v16 = 0;
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  v7 = v16;

  return v7;
}

+ (BOOL)_isPhoneNumber:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] rangeOfString:@"^[0-9]*$" options:1024];
  v5 = v3 == [location[0] length];
  objc_storeStrong(location, 0);
  return v5;
}

@end
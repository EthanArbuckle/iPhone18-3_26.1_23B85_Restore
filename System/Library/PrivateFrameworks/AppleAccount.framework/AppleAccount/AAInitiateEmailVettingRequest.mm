@interface AAInitiateEmailVettingRequest
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation AAInitiateEmailVettingRequest

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  v4 = [v3 initiateValidateEmailURL];

  v5 = [(AAEmailVettingRequest *)self account];
  v6 = [v5 username];
  v7 = [v4 stringByReplacingOccurrencesOfString:@"$APPLE_ID$" withString:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v7];
    v9 = [v8 string];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bodyDictionary
{
  v2 = MEMORY[0x1E695DF20];
  v3 = [(AAEmailVettingRequest *)self account];
  v4 = [v3 aa_primaryEmail];
  v5 = [v2 dictionaryWithObject:v4 forKey:@"emailToVet"];

  return v5;
}

@end
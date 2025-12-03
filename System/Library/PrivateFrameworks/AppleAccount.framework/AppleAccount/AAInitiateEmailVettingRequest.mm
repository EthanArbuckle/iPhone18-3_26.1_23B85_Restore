@interface AAInitiateEmailVettingRequest
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation AAInitiateEmailVettingRequest

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  initiateValidateEmailURL = [v3 initiateValidateEmailURL];

  account = [(AAEmailVettingRequest *)self account];
  username = [account username];
  v7 = [initiateValidateEmailURL stringByReplacingOccurrencesOfString:@"$APPLE_ID$" withString:username];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v7];
    string = [v8 string];
  }

  else
  {
    string = 0;
  }

  return string;
}

- (id)bodyDictionary
{
  v2 = MEMORY[0x1E695DF20];
  account = [(AAEmailVettingRequest *)self account];
  aa_primaryEmail = [account aa_primaryEmail];
  v5 = [v2 dictionaryWithObject:aa_primaryEmail forKey:@"emailToVet"];

  return v5;
}

@end
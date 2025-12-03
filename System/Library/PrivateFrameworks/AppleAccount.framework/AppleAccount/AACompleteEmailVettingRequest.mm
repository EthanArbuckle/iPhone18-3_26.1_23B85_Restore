@interface AACompleteEmailVettingRequest
- (AACompleteEmailVettingRequest)initWithAccount:(id)account token:(id)token;
- (AACompleteEmailVettingRequest)initWithURLString:(id)string account:(id)account token:(id)token;
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation AACompleteEmailVettingRequest

- (AACompleteEmailVettingRequest)initWithAccount:(id)account token:(id)token
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = AACompleteEmailVettingRequest;
  v8 = [(AAEmailVettingRequest *)&v11 initWithAccount:account];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_token, token);
  }

  return v9;
}

- (AACompleteEmailVettingRequest)initWithURLString:(id)string account:(id)account token:(id)token
{
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = AACompleteEmailVettingRequest;
  v10 = [(AAEmailVettingRequest *)&v13 initWithURLString:string account:account];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_token, token);
  }

  return v11;
}

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  completeValidateEmailURL = [v3 completeValidateEmailURL];

  account = [(AAEmailVettingRequest *)self account];
  username = [account username];
  v7 = [completeValidateEmailURL stringByReplacingOccurrencesOfString:@"$APPLE_ID$" withString:username];

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
  v3 = MEMORY[0x1E695DF20];
  account = [(AAEmailVettingRequest *)self account];
  aa_primaryEmail = [account aa_primaryEmail];
  v6 = [v3 dictionaryWithObjectsAndKeys:{aa_primaryEmail, @"emailToVet", self->_token, @"token", 0}];

  return v6;
}

@end
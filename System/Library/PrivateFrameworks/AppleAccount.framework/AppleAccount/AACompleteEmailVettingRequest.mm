@interface AACompleteEmailVettingRequest
- (AACompleteEmailVettingRequest)initWithAccount:(id)a3 token:(id)a4;
- (AACompleteEmailVettingRequest)initWithURLString:(id)a3 account:(id)a4 token:(id)a5;
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation AACompleteEmailVettingRequest

- (AACompleteEmailVettingRequest)initWithAccount:(id)a3 token:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AACompleteEmailVettingRequest;
  v8 = [(AAEmailVettingRequest *)&v11 initWithAccount:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_token, a4);
  }

  return v9;
}

- (AACompleteEmailVettingRequest)initWithURLString:(id)a3 account:(id)a4 token:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AACompleteEmailVettingRequest;
  v10 = [(AAEmailVettingRequest *)&v13 initWithURLString:a3 account:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_token, a5);
  }

  return v11;
}

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  v4 = [v3 completeValidateEmailURL];

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
  v3 = MEMORY[0x1E695DF20];
  v4 = [(AAEmailVettingRequest *)self account];
  v5 = [v4 aa_primaryEmail];
  v6 = [v3 dictionaryWithObjectsAndKeys:{v5, @"emailToVet", self->_token, @"token", 0}];

  return v6;
}

@end
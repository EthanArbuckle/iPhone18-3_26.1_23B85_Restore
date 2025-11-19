@interface AAUpdateNameRequest
- (AAUpdateNameRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4 firstName:(id)a5 lastName:(id)a6;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUpdateNameRequest

- (AAUpdateNameRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4 firstName:(id)a5 lastName:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = AAUpdateNameRequest;
  v13 = [(AAAppleIDSettingsRequest *)&v16 initWithGrandSlamAccount:a3 accountStore:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_newFirstName, a5);
    objc_storeStrong(&v14->_newLastName, a6);
  }

  return v14;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 updateNameURL];

  return v3;
}

- (id)urlRequest
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AAUpdateNameRequest;
  v3 = [(AAAppleIDSettingsRequest *)&v10 urlRequest];
  v4 = [v3 mutableCopy];

  newFirstName = self->_newFirstName;
  if (newFirstName)
  {
    newLastName = self->_newLastName;
    if (newLastName)
    {
      v11[0] = @"firstName";
      v11[1] = @"lastName";
      v12[0] = newFirstName;
      v12[1] = newLastName;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
      [v4 aa_setBodyWithParameters:v7];
    }
  }

  [v4 setHTTPMethod:@"POST"];
  [v4 addValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
@interface AAUpdateNameRequest
- (AAUpdateNameRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store firstName:(id)name lastName:(id)lastName;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUpdateNameRequest

- (AAUpdateNameRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store firstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  v16.receiver = self;
  v16.super_class = AAUpdateNameRequest;
  v13 = [(AAAppleIDSettingsRequest *)&v16 initWithGrandSlamAccount:account accountStore:store];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_newFirstName, name);
    objc_storeStrong(&v14->_newLastName, lastName);
  }

  return v14;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  updateNameURL = [v2 updateNameURL];

  return updateNameURL;
}

- (id)urlRequest
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AAUpdateNameRequest;
  urlRequest = [(AAAppleIDSettingsRequest *)&v10 urlRequest];
  v4 = [urlRequest mutableCopy];

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
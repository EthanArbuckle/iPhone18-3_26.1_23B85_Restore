@interface AAUpdateAccountUIRequest
- (AAUpdateAccountUIRequest)initWithAccount:(id)account termsEntries:(id)entries deviceOSVersion:(id)version;
- (id)urlString;
@end

@implementation AAUpdateAccountUIRequest

- (AAUpdateAccountUIRequest)initWithAccount:(id)account termsEntries:(id)entries deviceOSVersion:(id)version
{
  v22[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  entriesCopy = entries;
  versionCopy = version;
  v11 = versionCopy;
  if (versionCopy)
  {
    v20 = versionCopy;
    v21 = @"iOS";
    v19 = @"version";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(AAGenericTermsUIRequest *)self _requestParamsForTermsEntries:entriesCopy additionalInfo:v13];
  v18.receiver = self;
  v18.super_class = AAUpdateAccountUIRequest;
  v15 = [(AAGenericTermsUIRequest *)&v18 initWithAccount:accountCopy parameters:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  updateAccountUIURL = [v2 updateAccountUIURL];

  return updateAccountUIURL;
}

@end
@interface AAUpdateAccountUIRequest
- (AAUpdateAccountUIRequest)initWithAccount:(id)a3 termsEntries:(id)a4 deviceOSVersion:(id)a5;
- (id)urlString;
@end

@implementation AAUpdateAccountUIRequest

- (AAUpdateAccountUIRequest)initWithAccount:(id)a3 termsEntries:(id)a4 deviceOSVersion:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v20 = v10;
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

  v14 = [(AAGenericTermsUIRequest *)self _requestParamsForTermsEntries:v9 additionalInfo:v13];
  v18.receiver = self;
  v18.super_class = AAUpdateAccountUIRequest;
  v15 = [(AAGenericTermsUIRequest *)&v18 initWithAccount:v8 parameters:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 updateAccountUIURL];

  return v3;
}

@end
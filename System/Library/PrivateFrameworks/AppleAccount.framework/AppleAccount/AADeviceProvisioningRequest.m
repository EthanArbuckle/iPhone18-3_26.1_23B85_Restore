@interface AADeviceProvisioningRequest
- (AADeviceProvisioningRequest)initWithDSID:(id)a3 URLString:(id)a4 requestData:(id)a5;
- (id)urlRequest;
@end

@implementation AADeviceProvisioningRequest

- (AADeviceProvisioningRequest)initWithDSID:(id)a3 URLString:(id)a4 requestData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AADeviceProvisioningRequest;
  v12 = [(AADeviceProvisioningRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dsid, a3);
    objc_storeStrong(&v13->_url, a4);
    objc_storeStrong(&v13->_data, a5);
  }

  return v13;
}

- (id)urlRequest
{
  v23[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AADeviceProvisioningRequest;
  v3 = [(AARequest *)&v19 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v22[0] = @"clientData";
  v22[1] = @"dsId";
  dsid = self->_dsid;
  v23[0] = v5;
  v23[1] = dsid;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v18 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:&v18];
  v9 = v18;
  if (v8)
  {
    [v4 setHTTPBody:v8];
  }

  else
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 localizedDescription];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = +[AADeviceInfo apnsToken];
  v14 = [v12 initWithData:v13 encoding:4];

  [v4 addValue:@"text/plist" forHTTPHeaderField:@"Content-Type"];
  v15 = +[AADeviceInfo udid];
  [v4 addValue:v15 forHTTPHeaderField:@"Device-UDID"];

  [v4 addValue:v14 forHTTPHeaderField:@"Device-apnsToken"];
  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
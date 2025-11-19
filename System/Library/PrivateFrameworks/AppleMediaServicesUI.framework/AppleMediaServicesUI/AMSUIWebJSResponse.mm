@interface AMSUIWebJSResponse
- (AMSUIWebJSResponse)initWithCoder:(id)a3;
- (AMSUIWebJSResponse)initWithRequest:(id)a3 duration:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSUIWebJSResponse

- (AMSUIWebJSResponse)initWithRequest:(id)a3 duration:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebJSResponse;
  v8 = [(AMSUIWebJSResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_duration = a4;
    objc_storeStrong(&v8->_originalRequest, a3);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AMSUIWebJSResponse *)self originalRequest];
  [v6 encodeObject:v4 forKey:@"kCodingKeyRequest"];

  v5 = [(AMSUIWebJSResponse *)self body];
  [v6 encodeObject:v5 forKey:@"kCodingKeyBody"];

  [(AMSUIWebJSResponse *)self duration];
  [v6 encodeDouble:@"kCodingKeyDuration" forKey:?];
}

- (AMSUIWebJSResponse)initWithCoder:(id)a3
{
  v17[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AMSUIWebJSResponse;
  v5 = [(AMSUIWebJSResponse *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
    v8 = [v6 setWithArray:v7];

    [v4 decodeDoubleForKey:@"kCodingKeyDuration"];
    v5->_duration = v9;
    v10 = [v4 decodeObjectOfClasses:v8 forKey:@"kCodingKeyBody"];
    body = v5->_body;
    v5->_body = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    originalRequest = v5->_originalRequest;
    v5->_originalRequest = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
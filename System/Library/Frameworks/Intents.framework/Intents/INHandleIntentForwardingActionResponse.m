@interface INHandleIntentForwardingActionResponse
- (INHandleIntentForwardingActionResponse)initWithCoder:(id)a3;
- (INHandleIntentForwardingActionResponse)initWithIntentResponse:(id)a3 launchContextActivityData:(id)a4 cacheItems:(id)a5 error:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHandleIntentForwardingActionResponse

- (INHandleIntentForwardingActionResponse)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"intentResponse"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"launchContextActivityData"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"cacheItems"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"error"];

  v17 = [(INHandleIntentForwardingActionResponse *)self initWithIntentResponse:v20 launchContextActivityData:v19 cacheItems:v7 error:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INHandleIntentForwardingActionResponse;
  v4 = a3;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_intentResponse forKey:{@"intentResponse", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_launchContextActivityData forKey:@"launchContextActivityData"];
  [v4 encodeObject:self->_cacheItems forKey:@"cacheItems"];
}

- (INHandleIntentForwardingActionResponse)initWithIntentResponse:(id)a3 launchContextActivityData:(id)a4 cacheItems:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = INHandleIntentForwardingActionResponse;
  v14 = [(INIntentForwardingActionResponse *)&v17 initWithError:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_intentResponse, a3);
    objc_storeStrong(&v15->_launchContextActivityData, a4);
    objc_storeStrong(&v15->_cacheItems, a5);
  }

  return v15;
}

@end
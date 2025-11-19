@interface INResolveIntentParametersForwardingActionResponse
- (INResolveIntentParametersForwardingActionResponse)initWithCoder:(id)a3;
- (INResolveIntentParametersForwardingActionResponse)initWithSuccess:(BOOL)a3 updatedIntent:(id)a4 parameterResolutionResults:(id)a5 error:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INResolveIntentParametersForwardingActionResponse

- (INResolveIntentParametersForwardingActionResponse)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeBoolForKey:@"success"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"updatedIntent"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"parameterResolutionResults"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v9 setWithObjects:{v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  v17 = [v3 decodeObjectOfClasses:v16 forKey:@"error"];

  v18 = [(INResolveIntentParametersForwardingActionResponse *)self initWithSuccess:v21 updatedIntent:v20 parameterResolutionResults:v8 error:v17];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INResolveIntentParametersForwardingActionResponse;
  v4 = a3;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_success forKey:{@"success", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_updatedIntent forKey:@"updatedIntent"];
  [v4 encodeObject:self->_parameterResolutionResults forKey:@"parameterResolutionResults"];
}

- (INResolveIntentParametersForwardingActionResponse)initWithSuccess:(BOOL)a3 updatedIntent:(id)a4 parameterResolutionResults:(id)a5 error:(id)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = INResolveIntentParametersForwardingActionResponse;
  v13 = [(INIntentForwardingActionResponse *)&v16 initWithError:a6];
  v14 = v13;
  if (v13)
  {
    v13->_success = a3;
    objc_storeStrong(&v13->_updatedIntent, a4);
    objc_storeStrong(&v14->_parameterResolutionResults, a5);
  }

  return v14;
}

@end
@interface INResolveIntentParametersForwardingActionResponse
- (INResolveIntentParametersForwardingActionResponse)initWithCoder:(id)coder;
- (INResolveIntentParametersForwardingActionResponse)initWithSuccess:(BOOL)success updatedIntent:(id)intent parameterResolutionResults:(id)results error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INResolveIntentParametersForwardingActionResponse

- (INResolveIntentParametersForwardingActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeBoolForKey:@"success"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedIntent"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"parameterResolutionResults"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v9 setWithObjects:{v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"error"];

  v18 = [(INResolveIntentParametersForwardingActionResponse *)self initWithSuccess:v21 updatedIntent:v20 parameterResolutionResults:v8 error:v17];
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INResolveIntentParametersForwardingActionResponse;
  coderCopy = coder;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_success forKey:{@"success", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_updatedIntent forKey:@"updatedIntent"];
  [coderCopy encodeObject:self->_parameterResolutionResults forKey:@"parameterResolutionResults"];
}

- (INResolveIntentParametersForwardingActionResponse)initWithSuccess:(BOOL)success updatedIntent:(id)intent parameterResolutionResults:(id)results error:(id)error
{
  intentCopy = intent;
  resultsCopy = results;
  v16.receiver = self;
  v16.super_class = INResolveIntentParametersForwardingActionResponse;
  v13 = [(INIntentForwardingActionResponse *)&v16 initWithError:error];
  v14 = v13;
  if (v13)
  {
    v13->_success = success;
    objc_storeStrong(&v13->_updatedIntent, intent);
    objc_storeStrong(&v14->_parameterResolutionResults, results);
  }

  return v14;
}

@end
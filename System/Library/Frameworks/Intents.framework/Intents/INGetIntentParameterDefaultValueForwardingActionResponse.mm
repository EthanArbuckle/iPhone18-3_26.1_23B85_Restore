@interface INGetIntentParameterDefaultValueForwardingActionResponse
- (INGetIntentParameterDefaultValueForwardingActionResponse)initWithArchivedDefaultValue:(id)value error:(id)error;
- (INGetIntentParameterDefaultValueForwardingActionResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetIntentParameterDefaultValueForwardingActionResponse

- (INGetIntentParameterDefaultValueForwardingActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedDefaultValue"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"error"];

  v15 = [(INGetIntentParameterDefaultValueForwardingActionResponse *)self initWithArchivedDefaultValue:v5 error:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetIntentParameterDefaultValueForwardingActionResponse;
  coderCopy = coder;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_archivedDefaultValue forKey:{@"archivedDefaultValue", v5.receiver, v5.super_class}];
}

- (INGetIntentParameterDefaultValueForwardingActionResponse)initWithArchivedDefaultValue:(id)value error:(id)error
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = INGetIntentParameterDefaultValueForwardingActionResponse;
  v8 = [(INIntentForwardingActionResponse *)&v11 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_archivedDefaultValue, value);
  }

  return v9;
}

@end
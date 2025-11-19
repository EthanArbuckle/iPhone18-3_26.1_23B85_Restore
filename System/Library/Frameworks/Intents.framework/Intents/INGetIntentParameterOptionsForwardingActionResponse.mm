@interface INGetIntentParameterOptionsForwardingActionResponse
- (INGetIntentParameterOptionsForwardingActionResponse)initWithArchivedObjectCollection:(id)a3 error:(id)a4;
- (INGetIntentParameterOptionsForwardingActionResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetIntentParameterOptionsForwardingActionResponse

- (INGetIntentParameterOptionsForwardingActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedObjectCollection"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"error"];

  v15 = [(INGetIntentParameterOptionsForwardingActionResponse *)self initWithArchivedObjectCollection:v5 error:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetIntentParameterOptionsForwardingActionResponse;
  v4 = a3;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_archivedObjectCollection forKey:{@"archivedObjectCollection", v5.receiver, v5.super_class}];
}

- (INGetIntentParameterOptionsForwardingActionResponse)initWithArchivedObjectCollection:(id)a3 error:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = INGetIntentParameterOptionsForwardingActionResponse;
  v8 = [(INIntentForwardingActionResponse *)&v11 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_archivedObjectCollection, a3);
  }

  return v9;
}

@end
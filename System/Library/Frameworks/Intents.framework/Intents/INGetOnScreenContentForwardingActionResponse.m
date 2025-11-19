@interface INGetOnScreenContentForwardingActionResponse
- (INGetOnScreenContentForwardingActionResponse)initWithCoder:(id)a3;
- (INGetOnScreenContentForwardingActionResponse)initWithNode:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INGetOnScreenContentForwardingActionResponse

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INGetOnScreenContentForwardingActionResponse;
  v4 = a3;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_node forKey:{@"node", v5.receiver, v5.super_class}];
}

- (INGetOnScreenContentForwardingActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v5 = getWFOnScreenContentNodeClass_softClass;
  v23 = getWFOnScreenContentNodeClass_softClass;
  if (!getWFOnScreenContentNodeClass_softClass)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getWFOnScreenContentNodeClass_block_invoke;
    v19[3] = &unk_1E72888B8;
    v19[4] = &v20;
    __getWFOnScreenContentNodeClass_block_invoke(v19);
    v5 = v21[3];
  }

  v6 = v5;
  _Block_object_dispose(&v20, 8);
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"node"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"error"];
  v17 = [(INGetOnScreenContentForwardingActionResponse *)self initWithNode:v7 error:v16];

  return v17;
}

- (INGetOnScreenContentForwardingActionResponse)initWithNode:(id)a3 error:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = INGetOnScreenContentForwardingActionResponse;
  v8 = [(INIntentForwardingActionResponse *)&v11 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_node, a3);
  }

  return v9;
}

@end
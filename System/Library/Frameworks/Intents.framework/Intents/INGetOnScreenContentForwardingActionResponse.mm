@interface INGetOnScreenContentForwardingActionResponse
- (INGetOnScreenContentForwardingActionResponse)initWithCoder:(id)coder;
- (INGetOnScreenContentForwardingActionResponse)initWithNode:(id)node error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetOnScreenContentForwardingActionResponse

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INGetOnScreenContentForwardingActionResponse;
  coderCopy = coder;
  [(INIntentForwardingActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_node forKey:{@"node", v5.receiver, v5.super_class}];
}

- (INGetOnScreenContentForwardingActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"node"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"error"];
  v17 = [(INGetOnScreenContentForwardingActionResponse *)self initWithNode:v7 error:v16];

  return v17;
}

- (INGetOnScreenContentForwardingActionResponse)initWithNode:(id)node error:(id)error
{
  nodeCopy = node;
  v11.receiver = self;
  v11.super_class = INGetOnScreenContentForwardingActionResponse;
  v8 = [(INIntentForwardingActionResponse *)&v11 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_node, node);
  }

  return v9;
}

@end
@interface FPActionOperationInfo
- (FPActionOperationInfo)initWithCoder:(id)a3;
- (FPActionOperationInfo)initWithOperationID:(id)a3 roots:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPActionOperationInfo

- (FPActionOperationInfo)initWithOperationID:(id)a3 roots:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FPActionOperationInfo;
  v9 = [(FPActionOperationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operationID, a3);
    objc_storeStrong(&v10->_roots, a4);
    v10->_qos = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FPActionOperationInfo *)self attachSandboxExtensionsOnXPCEncoding])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_roots;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) attachSandboxExtensionOnXPCEncoding];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  [v4 encodeObject:self->_operationID forKey:{@"_operationID", v11}];
  [v4 encodeObject:self->_roots forKey:@"_roots"];
  [v4 encodeInteger:self->_qos forKey:@"_qos"];
  [v4 encodeInteger:self->__t_moveQueueWidth forKey:@"__t_moveQueueWidth"];
  [v4 encodeBool:self->__t_clientDrivenReader forKey:@"__t_clientDrivenReader"];
  [v4 encodeBool:self->__t_clearItemURLs forKey:@"__t_clearItemURLs"];

  v10 = *MEMORY[0x1E69E9840];
}

- (FPActionOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FPActionOperationInfo;
  v5 = [(FPActionOperationInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_operationID"];
    operationID = v5->_operationID;
    v5->_operationID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_roots"];
    roots = v5->_roots;
    v5->_roots = v11;

    v5->_qos = [v4 decodeIntegerForKey:@"_qos"];
    v5->__t_moveQueueWidth = [v4 decodeIntegerForKey:@"__t_moveQueueWidth"];
    v5->__t_clientDrivenReader = [v4 decodeBoolForKey:@"__t_clientDrivenReader"];
    v5->__t_clearItemURLs = [v4 decodeBoolForKey:@"__t_clearItemURLs"];
  }

  return v5;
}

@end
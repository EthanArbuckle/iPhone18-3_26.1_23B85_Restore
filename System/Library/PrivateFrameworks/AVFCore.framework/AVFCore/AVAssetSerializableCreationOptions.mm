@interface AVAssetSerializableCreationOptions
- (AVAssetSerializableCreationOptions)initWithCoder:(id)coder;
- (AVAssetSerializableCreationOptions)initWithCreationOptions:(id)options;
- (id)creationOptions;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAssetSerializableCreationOptions

- (AVAssetSerializableCreationOptions)initWithCreationOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = AVAssetSerializableCreationOptions;
  v4 = [(AVAssetSerializableCreationOptions *)&v6 init];
  if (v4)
  {
    v4->_creationOptions = options;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetSerializableCreationOptions;
  [(AVAssetSerializableCreationOptions *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v19), 0}];
    objc_exception_throw(v18);
  }

  v11 = [(NSDictionary *)self->_creationOptions mutableCopy];
  [v11 removeObjectForKey:@"AVURLAssetHTTPCookiesKey"];
  [coder encodeObject:v11 forKey:@"assetCreationOptions"];
  v12 = [(NSDictionary *)self->_creationOptions objectForKeyedSubscript:@"AVURLAssetHTTPCookiesKey"];
  if ([v12 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v12);
          }

          [array addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v17++), "properties")}];
        }

        while (v15 != v17);
        v15 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [coder encodeObject:array forKey:@"httpCookies"];
  }
}

- (AVAssetSerializableCreationOptions)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v28, v29, v30, v31, v32, v34), 0}];
    objc_exception_throw(v33);
  }

  v39.receiver = self;
  v39.super_class = AVAssetSerializableCreationOptions;
  v6 = [(AVAssetSerializableCreationOptions *)&v39 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v6->_creationOptions = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, v11, objc_opt_class(), 0), @"assetCreationOptions"}];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [coder decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, v14, v15, v16, v17, objc_opt_class(), 0), @"httpCookies"}];
    if (v18)
    {
      v19 = v18;
      array = [MEMORY[0x1E695DF70] array];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          v24 = 0;
          do
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v19);
            }

            [array addObject:{objc_msgSend(MEMORY[0x1E695ABF8], "cookieWithProperties:", *(*(&v35 + 1) + 8 * v24++))}];
          }

          while (v22 != v24);
          v22 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v22);
      }

      v25 = [(NSDictionary *)v6->_creationOptions mutableCopy];
      [(NSDictionary *)v25 setObject:array forKey:@"AVURLAssetHTTPCookiesKey"];

      v6->_creationOptions = v25;
    }
  }

  return v6;
}

- (id)creationOptions
{
  v2 = self->_creationOptions;

  return v2;
}

@end
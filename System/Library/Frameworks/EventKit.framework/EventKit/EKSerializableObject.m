@interface EKSerializableObject
- (EKSerializableObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKSerializableObject

- (void)encodeWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [objc_opt_class() classesForKey];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(EKSerializableObject *)self valueForKey:v11];
        [v4 encodeObject:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (EKSerializableObject)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = EKSerializableObject;
  v5 = [(EKSerializableObject *)&v24 init];
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [objc_opt_class() classesForKey];
    v7 = [v6 allKeys];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          v13 = [objc_opt_class() classesForKey];
          v14 = [v13 objectForKey:v12];

          v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
          v16 = [v4 decodeObjectOfClasses:v15 forKey:v12];

          [(EKSerializableObject *)v5 setValue:v16 forKey:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
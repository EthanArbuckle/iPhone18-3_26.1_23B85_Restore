@interface AAMessage
- (AAMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAMessage

- (AAMessage)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(AAMessage *)self init];
  v6 = v5;
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    keysForEncoding = [(AAMessage *)v5 keysForEncoding];
    v8 = [keysForEncoding countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(keysForEncoding);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [coderCopy decodeObjectForKey:v12];
          [(AAMessage *)v6 setValue:v13 forKey:v12];
        }

        v9 = [keysForEncoding countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keysForEncoding = [(AAMessage *)self keysForEncoding];
  v6 = [keysForEncoding countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(keysForEncoding);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(AAMessage *)self valueForKey:v10];
        [coderCopy encodeObject:v11 forKey:v10];
      }

      v7 = [keysForEncoding countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end
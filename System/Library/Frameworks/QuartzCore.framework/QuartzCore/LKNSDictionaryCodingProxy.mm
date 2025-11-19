@interface LKNSDictionaryCodingProxy
- (LKNSDictionaryCodingProxy)initWithCoder:(id)a3;
- (LKNSDictionaryCodingProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKNSDictionaryCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = LKNSDictionaryCodingProxy;
  [(LKNSDictionaryCodingProxy *)&v3 dealloc];
}

- (LKNSDictionaryCodingProxy)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = LKNSDictionaryCodingProxy;
  v4 = [(LKNSDictionaryCodingProxy *)&v15 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"dict"}];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v8 = [v6 keyEnumerator];
      v9 = [v8 nextObject];
      if (v9)
      {
        v10 = v9;
        v11 = *MEMORY[0x1E695E738];
        do
        {
          v12 = [v6 objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v12 decodedObject];
          }

          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          [v7 setObject:v13 forKey:v10];
          v10 = [v8 nextObject];
        }

        while (v10);
      }

      v4->_dict = [v7 copy];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_dict, "count")}];
  v5 = [(NSDictionary *)self->_dict keyEnumerator];
  v6 = [(NSEnumerator *)v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x1E695E738];
    do
    {
      v9 = [(NSDictionary *)self->_dict objectForKey:v7];
      Proxy = CACodingCreateProxy(a3, v9);
      v11 = Proxy;
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      if (Proxy)
      {
        v13 = Proxy;
      }

      else
      {
        v13 = v12;
      }

      [v14 setObject:v13 forKey:v7];

      v7 = [(NSEnumerator *)v5 nextObject];
    }

    while (v7);
  }

  [a3 encodeObject:v14 forKey:@"dict"];
}

- (LKNSDictionaryCodingProxy)initWithObject:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = LKNSDictionaryCodingProxy;
  v4 = [(LKNSDictionaryCodingProxy *)&v6 init];
  if (v4)
  {
    v4->_dict = [a3 copy];
  }

  return v4;
}

@end
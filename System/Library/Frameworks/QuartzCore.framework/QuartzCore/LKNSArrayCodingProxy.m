@interface LKNSArrayCodingProxy
- (LKNSArrayCodingProxy)initWithCoder:(id)a3;
- (LKNSArrayCodingProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKNSArrayCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = LKNSArrayCodingProxy;
  [(LKNSArrayCodingProxy *)&v3 dealloc];
}

- (LKNSArrayCodingProxy)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = LKNSArrayCodingProxy;
  v4 = [(LKNSArrayCodingProxy *)&v14 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"array"}];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 count];
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
      if (v7)
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E738];
        do
        {
          v11 = [v6 objectAtIndex:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v11 decodedObject];
          }

          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = v10;
          }

          [v8 addObject:v12];
          ++v9;
        }

        while (v7 != v9);
      }

      v4->_array = [v8 copy];
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
  v5 = [(NSArray *)self->_array count];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  if (v5)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E695E738];
    do
    {
      v8 = [(NSArray *)self->_array objectAtIndex:v6];
      Proxy = CACodingCreateProxy(a3, v8);
      v10 = Proxy;
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v7;
      }

      if (Proxy)
      {
        v12 = Proxy;
      }

      else
      {
        v12 = v11;
      }

      [v13 addObject:v12];

      ++v6;
    }

    while (v5 != v6);
  }

  [a3 encodeObject:v13 forKey:@"array"];
}

- (LKNSArrayCodingProxy)initWithObject:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = LKNSArrayCodingProxy;
  v4 = [(LKNSArrayCodingProxy *)&v6 init];
  if (v4)
  {
    v4->_array = [a3 copy];
  }

  return v4;
}

@end
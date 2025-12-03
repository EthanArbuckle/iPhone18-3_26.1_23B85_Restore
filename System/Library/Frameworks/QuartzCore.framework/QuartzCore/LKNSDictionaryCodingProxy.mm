@interface LKNSDictionaryCodingProxy
- (LKNSDictionaryCodingProxy)initWithCoder:(id)coder;
- (LKNSDictionaryCodingProxy)initWithObject:(id)object;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LKNSDictionaryCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = LKNSDictionaryCodingProxy;
  [(LKNSDictionaryCodingProxy *)&v3 dealloc];
}

- (LKNSDictionaryCodingProxy)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = LKNSDictionaryCodingProxy;
  v4 = [(LKNSDictionaryCodingProxy *)&v15 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"dict"}];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
      keyEnumerator = [v6 keyEnumerator];
      nextObject = [keyEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        v11 = *MEMORY[0x1E695E738];
        do
        {
          decodedObject = [v6 objectForKey:nextObject2];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            decodedObject = [decodedObject decodedObject];
          }

          if (decodedObject)
          {
            v13 = decodedObject;
          }

          else
          {
            v13 = v11;
          }

          [v7 setObject:v13 forKey:nextObject2];
          nextObject2 = [keyEnumerator nextObject];
        }

        while (nextObject2);
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

- (void)encodeWithCoder:(id)coder
{
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_dict, "count")}];
  keyEnumerator = [(NSDictionary *)self->_dict keyEnumerator];
  nextObject = [(NSEnumerator *)keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v8 = *MEMORY[0x1E695E738];
    do
    {
      v9 = [(NSDictionary *)self->_dict objectForKey:nextObject2];
      Proxy = CACodingCreateProxy(coder, v9);
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

      [v14 setObject:v13 forKey:nextObject2];

      nextObject2 = [(NSEnumerator *)keyEnumerator nextObject];
    }

    while (nextObject2);
  }

  [coder encodeObject:v14 forKey:@"dict"];
}

- (LKNSDictionaryCodingProxy)initWithObject:(id)object
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = LKNSDictionaryCodingProxy;
  v4 = [(LKNSDictionaryCodingProxy *)&v6 init];
  if (v4)
  {
    v4->_dict = [object copy];
  }

  return v4;
}

@end
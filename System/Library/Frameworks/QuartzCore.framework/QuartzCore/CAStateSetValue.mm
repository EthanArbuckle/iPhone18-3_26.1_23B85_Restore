@interface CAStateSetValue
- (BOOL)CAMLTypeSupportedForKey:(id)a3;
- (BOOL)matches:(id)a3;
- (CAStateSetValue)initWithCoder:(id)a3;
- (id)CAMLTypeForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)apply:(id)a3;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)foreachLayer:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation CAStateSetValue

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateSetValue;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateSetValue)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateSetValue;
  v4 = [(CAStateElement *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"keyPath", "copy"}];
    v4->_value = [a3 CA_decodeObjectForKey:@"value"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateSetValue;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_keyPath forKey:@"keyPath"];
  [a3 CA_encodeObject:self->_value forKey:@"value" conditional:0];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_loadWeak(&self->super._target);
  v5 = objc_opt_class();
  return [v3 stringWithFormat:@"{%@:%p %@:%p %@ %@}", v4, self, v5, objc_loadWeak(&self->super._target), self->_keyPath, self->_value];
}

- (BOOL)CAMLTypeSupportedForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"value"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateSetValue;
  return [(CAStateElement *)&v6 CAMLTypeSupportedForKey:a3];
}

- (id)CAMLTypeForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"keyPath"])
  {
    return @"string";
  }

  v6.receiver = self;
  v6.super_class = CAStateSetValue;
  return [(CAStateElement *)&v6 CAMLTypeForKey:a3];
}

- (void)encodeWithCAMLWriter:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateSetValue;
  [(CAStateElement *)&v6 encodeWithCAMLWriter:?];
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [a3 setElementAttribute:keyPath forKey:@"keyPath"];
  }

  if (self->_value)
  {
    [a3 beginPropertyElement:@"value"];
    [a3 encodeObject:self->_value];
    [a3 endElement];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CAStateSetValue);
  v4->_keyPath = self->_keyPath;
  v4->_value = self->_value;
  [(CAStateElement *)v4 setTarget:[(CAStateElement *)self target]];
  return v4;
}

- (void)foreachLayer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    value = self->_value;
    v6 = [value countByEnumeratingWithState:&v13 objects:v12 count:16];
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
            objc_enumerationMutation(value);
          }

          (*(a3 + 2))(a3, *(*(&v13 + 1) + 8 * i));
        }

        v7 = [value countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }
  }

  else if ([(NSString *)self->_keyPath isEqualToString:@"mask"])
  {
    v10 = self->_value;
    v11 = *(a3 + 2);

    v11(a3, v10);
  }
}

- (void)apply:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_alloc_init(CAStateSetValue);
    [(CAStateElement *)v5 setSource:self];
    [(CAStateElement *)v5 setTarget:objc_loadWeak(&self->super._target)];
    [(CAStateSetValue *)v5 setKeyPath:self->_keyPath];
    v6 = [objc_loadWeak(&self->super._target) valueForKeyPath:self->_keyPath];
    v7 = (objc_opt_respondsToSelector() & 1) != 0 ? [v6 copy] : v6;
    v5->_value = v7;
    [a3 addElement:v5];

    if (objc_opt_respondsToSelector())
    {
      if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        value = self->_value;
        v9 = [value countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(value);
              }

              v13 = *(*(&v16 + 1) + 8 * i);
              if (![v13 superlayer])
              {
                [a3 willAddLayer:v13];
              }
            }

            v10 = [value countByEnumeratingWithState:&v16 objects:v15 count:16];
          }

          while (v10);
        }
      }

      else if ([(NSString *)self->_keyPath isEqualToString:@"mask"])
      {
        v14 = self->_value;
        if (![v14 superlayer])
        {
          [a3 willAddLayer:v14];
        }
      }
    }
  }

  [objc_loadWeak(&self->super._target) setValue:self->_value forKeyPath:self->_keyPath];
}

- (BOOL)matches:(id)a3
{
  v5 = [a3 target];
  if (v5 != objc_loadWeak(&self->super._target))
  {
    return 0;
  }

  v7 = [a3 keyPath];
  keyPath = self->_keyPath;

  return [v7 isEqualToString:keyPath];
}

- (void)setValue:(id)a3
{
  value = self->_value;
  if (value != a3)
  {

    if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a3];
    }

    else if (objc_opt_respondsToSelector())
    {
      v6 = [a3 copyWithZone:0];
    }

    else
    {
      v6 = a3;
    }

    self->_value = v6;
  }
}

@end
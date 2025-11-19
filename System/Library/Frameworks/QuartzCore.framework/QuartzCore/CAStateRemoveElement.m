@interface CAStateRemoveElement
- (BOOL)CAMLTypeSupportedForKey:(id)a3;
- (BOOL)matches:(id)a3;
- (CAStateRemoveElement)initWithCoder:(id)a3;
- (id)CAMLTypeForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5;
- (void)apply:(id)a3;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAStateRemoveElement

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_loadWeak(&self->super._target);
  v5 = objc_opt_class();
  return [v3 stringWithFormat:@"{%@:%p %@:%p %@ %@}", v4, self, v5, objc_loadWeak(&self->super._target), self->_keyPath, self->_object];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateRemoveElement)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  v4 = [(CAStateElement *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"keyPath", "copy"}];
    v4->_object = [a3 CA_decodeObjectForKey:@"object"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_keyPath forKey:@"keyPath"];
  [a3 CA_encodeObject:self->_object forKey:@"object" conditional:0];
}

- (BOOL)CAMLTypeSupportedForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"object"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  return [(CAStateElement *)&v6 CAMLTypeSupportedForKey:a3];
}

- (id)CAMLTypeForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"keyPath"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"objectId"))
  {
    return @"string";
  }

  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  return [(CAStateElement *)&v6 CAMLTypeForKey:a3];
}

- (void)encodeWithCAMLWriter:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v6 encodeWithCAMLWriter:?];
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [a3 setElementAttribute:keyPath forKey:@"keyPath"];
  }

  if (self->_object)
  {
    [a3 beginPropertyElement:@"object"];
    [a3 encodeObject:self->_object];
    [a3 endElement];
  }
}

- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5
{
  v5 = a5;
  v10 = *MEMORY[0x1E69E9840];
  if ([a5 isEqualToString:@"objectId"])
  {
    a4 = [a3 objectById:a4];
    v5 = @"object";
  }

  v9.receiver = self;
  v9.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v9 CAMLParser:a3 setValue:a4 forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CAStateRemoveElement);
  [(CAStateRemoveElement *)v4 setKeyPath:self->_keyPath];
  [(CAStateRemoveElement *)v4 setObject:self->_object];
  [(CAStateElement *)v4 setTarget:[(CAStateElement *)self target]];
  return v4;
}

- (void)apply:(id)a3
{
  if (self->_object)
  {
    if (self->_keyPath)
    {
      v5 = [objc_loadWeak(&self->super._target) valueForKeyPath:self->_keyPath];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 indexOfObjectIdenticalTo:self->_object];
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v7;
          if (a3)
          {
            if (v7 >= [v6 count] - 1)
            {
              v9 = 0;
            }

            else
            {
              v9 = [v6 objectAtIndex:v8 + 1];
            }

            v10 = objc_alloc_init(CAStateAddElement);
            [(CAStateElement *)v10 setTarget:objc_loadWeak(&self->super._target)];
            [(CAStateAddElement *)v10 setKeyPath:self->_keyPath];
            -[CAStateAddElement setObject:](v10, "setObject:", [v6 objectAtIndex:v8]);
            [(CAStateAddElement *)v10 setBeforeObject:v9];
            [(CAStateElement *)v10 setSource:self];
            [a3 addElement:v10];
          }

          v11 = [v6 mutableCopy];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v14 = v11;
          [v11 removeObjectAtIndex:v8];
          Weak = objc_loadWeak(&self->super._target);
          if ([v14 count])
          {
            v13 = v14;
          }

          else
          {
            v13 = 0;
          }

          [Weak setValue:v13 forKeyPath:self->_keyPath];
        }
      }
    }
  }
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

@end
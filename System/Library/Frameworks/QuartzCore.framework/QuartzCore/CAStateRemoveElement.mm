@interface CAStateRemoveElement
- (BOOL)CAMLTypeSupportedForKey:(id)key;
- (BOOL)matches:(id)matches;
- (CAStateRemoveElement)initWithCoder:(id)coder;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key;
- (void)apply:(id)apply;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
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

- (CAStateRemoveElement)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  v4 = [(CAStateElement *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"keyPath", "copy"}];
    v4->_object = [coder CA_decodeObjectForKey:@"object"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_keyPath forKey:@"keyPath"];
  [coder CA_encodeObject:self->_object forKey:@"object" conditional:0];
}

- (BOOL)CAMLTypeSupportedForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"object"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  return [(CAStateElement *)&v6 CAMLTypeSupportedForKey:key];
}

- (id)CAMLTypeForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"keyPath"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"objectId"))
  {
    return @"string";
  }

  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  return [(CAStateElement *)&v6 CAMLTypeForKey:key];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v6 encodeWithCAMLWriter:?];
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [writer setElementAttribute:keyPath forKey:@"keyPath"];
  }

  if (self->_object)
  {
    [writer beginPropertyElement:@"object"];
    [writer encodeObject:self->_object];
    [writer endElement];
  }
}

- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  v10 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"objectId"])
  {
    value = [parser objectById:value];
    keyCopy = @"object";
  }

  v9.receiver = self;
  v9.super_class = CAStateRemoveElement;
  [(CAStateElement *)&v9 CAMLParser:parser setValue:value forKey:keyCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CAStateRemoveElement);
  [(CAStateRemoveElement *)v4 setKeyPath:self->_keyPath];
  [(CAStateRemoveElement *)v4 setObject:self->_object];
  [(CAStateElement *)v4 setTarget:[(CAStateElement *)self target]];
  return v4;
}

- (void)apply:(id)apply
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
          if (apply)
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
            [apply addElement:v10];
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

- (BOOL)matches:(id)matches
{
  target = [matches target];
  if (target != objc_loadWeak(&self->super._target))
  {
    return 0;
  }

  keyPath = [matches keyPath];
  keyPath = self->_keyPath;

  return [keyPath isEqualToString:keyPath];
}

@end
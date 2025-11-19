@interface CAStateAddElement
- (BOOL)CAMLTypeSupportedForKey:(id)a3;
- (BOOL)matches:(id)a3;
- (CAStateAddElement)initWithCoder:(id)a3;
- (id)CAMLTypeForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5;
- (void)apply:(id)a3;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)foreachLayer:(id)a3;
@end

@implementation CAStateAddElement

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_loadWeak(&self->super._target);
  v5 = objc_opt_class();
  return [v3 stringWithFormat:@"{%@:%p %@:%p %@ %@ before %@}", v4, self, v5, objc_loadWeak(&self->super._target), self->_keyPath, self->_object, self->_beforeObject];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateAddElement;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateAddElement)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateAddElement;
  v4 = [(CAStateElement *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"keyPath", "copy"}];
    v4->_object = [a3 CA_decodeObjectForKey:@"object"];
    v4->_beforeObject = [a3 CA_decodeObjectForKey:@"beforeObject"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateAddElement;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_keyPath forKey:@"keyPath"];
  [a3 CA_encodeObject:self->_object forKey:@"object" conditional:0];
  [a3 CA_encodeObject:self->_beforeObject forKey:@"beforeObject" conditional:0];
}

- (BOOL)CAMLTypeSupportedForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"object"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"beforeObject"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateAddElement;
  return [(CAStateElement *)&v6 CAMLTypeSupportedForKey:a3];
}

- (id)CAMLTypeForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"keyPath"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"objectId") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"beforeObjectId"))
  {
    return @"string";
  }

  v6.receiver = self;
  v6.super_class = CAStateAddElement;
  return [(CAStateElement *)&v6 CAMLTypeForKey:a3];
}

- (void)encodeWithCAMLWriter:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateAddElement;
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

  if (self->_beforeObject)
  {
    [a3 beginPropertyElement:@"beforeObject"];
    [a3 encodeObject:self->_beforeObject];
    [a3 endElement];
  }
}

- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5
{
  v5 = a5;
  v10 = *MEMORY[0x1E69E9840];
  if ([a5 isEqualToString:@"objectId"])
  {
    v5 = @"object";
LABEL_5:
    a4 = [a3 objectById:a4];
    goto LABEL_6;
  }

  if ([(__CFString *)v5 isEqualToString:@"beforeObjectId"])
  {
    v5 = @"beforeObject";
    goto LABEL_5;
  }

LABEL_6:
  v9.receiver = self;
  v9.super_class = CAStateAddElement;
  [(CAStateElement *)&v9 CAMLParser:a3 setValue:a4 forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CAStateAddElement);
  [(CAStateAddElement *)v4 setKeyPath:self->_keyPath];
  [(CAStateAddElement *)v4 setObject:self->_object];
  [(CAStateAddElement *)v4 setBeforeObject:self->_beforeObject];
  [(CAStateElement *)v4 setTarget:[(CAStateElement *)self target]];
  return v4;
}

- (void)foreachLayer:(id)a3
{
  if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
  {
    object = self->_object;
    v6 = *(a3 + 2);

    v6(a3, object);
  }
}

- (void)apply:(id)a3
{
  if (self->_object && self->_keyPath)
  {
    v5 = [objc_msgSend(objc_loadWeak(&self->super._target) valueForKeyPath:{self->_keyPath), "mutableCopy"}];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v9 = v5;
    if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
    {
      v6 = [v9 indexOfObjectIdenticalTo:self->_object];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 removeObjectAtIndex:v6];
      }
    }

    if (a3)
    {
      v7 = objc_alloc_init(CAStateRemoveElement);
      [(CAStateElement *)v7 setTarget:objc_loadWeak(&self->super._target)];
      [(CAStateRemoveElement *)v7 setKeyPath:self->_keyPath];
      [(CAStateRemoveElement *)v7 setObject:self->_object];
      [(CAStateElement *)v7 setSource:self];
      [a3 addElement:v7];

      if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
      {
        if (objc_opt_respondsToSelector())
        {
          [a3 willAddLayer:self->_object];
        }
      }
    }

    if (!self->_beforeObject || (v8 = [v9 indexOfObjectIdenticalTo:?], v8 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v8 = [v9 count];
    }

    [v9 insertObject:self->_object atIndex:v8];
    [objc_loadWeak(&self->super._target) setValue:v9 forKeyPath:self->_keyPath];
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
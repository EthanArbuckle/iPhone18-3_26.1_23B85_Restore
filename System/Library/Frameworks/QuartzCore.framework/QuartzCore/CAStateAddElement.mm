@interface CAStateAddElement
- (BOOL)CAMLTypeSupportedForKey:(id)key;
- (BOOL)matches:(id)matches;
- (CAStateAddElement)initWithCoder:(id)coder;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key;
- (void)apply:(id)apply;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
- (void)foreachLayer:(id)layer;
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

- (CAStateAddElement)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateAddElement;
  v4 = [(CAStateElement *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_keyPath = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"keyPath", "copy"}];
    v4->_object = [coder CA_decodeObjectForKey:@"object"];
    v4->_beforeObject = [coder CA_decodeObjectForKey:@"beforeObject"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateAddElement;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_keyPath forKey:@"keyPath"];
  [coder CA_encodeObject:self->_object forKey:@"object" conditional:0];
  [coder CA_encodeObject:self->_beforeObject forKey:@"beforeObject" conditional:0];
}

- (BOOL)CAMLTypeSupportedForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"object"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"beforeObject"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateAddElement;
  return [(CAStateElement *)&v6 CAMLTypeSupportedForKey:key];
}

- (id)CAMLTypeForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"keyPath"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"objectId") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"beforeObjectId"))
  {
    return @"string";
  }

  v6.receiver = self;
  v6.super_class = CAStateAddElement;
  return [(CAStateElement *)&v6 CAMLTypeForKey:key];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateAddElement;
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

  if (self->_beforeObject)
  {
    [writer beginPropertyElement:@"beforeObject"];
    [writer encodeObject:self->_beforeObject];
    [writer endElement];
  }
}

- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  v10 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"objectId"])
  {
    keyCopy = @"object";
LABEL_5:
    value = [parser objectById:value];
    goto LABEL_6;
  }

  if ([(__CFString *)keyCopy isEqualToString:@"beforeObjectId"])
  {
    keyCopy = @"beforeObject";
    goto LABEL_5;
  }

LABEL_6:
  v9.receiver = self;
  v9.super_class = CAStateAddElement;
  [(CAStateElement *)&v9 CAMLParser:parser setValue:value forKey:keyCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CAStateAddElement);
  [(CAStateAddElement *)v4 setKeyPath:self->_keyPath];
  [(CAStateAddElement *)v4 setObject:self->_object];
  [(CAStateAddElement *)v4 setBeforeObject:self->_beforeObject];
  [(CAStateElement *)v4 setTarget:[(CAStateElement *)self target]];
  return v4;
}

- (void)foreachLayer:(id)layer
{
  if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
  {
    object = self->_object;
    v6 = *(layer + 2);

    v6(layer, object);
  }
}

- (void)apply:(id)apply
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

    if (apply)
    {
      v7 = objc_alloc_init(CAStateRemoveElement);
      [(CAStateElement *)v7 setTarget:objc_loadWeak(&self->super._target)];
      [(CAStateRemoveElement *)v7 setKeyPath:self->_keyPath];
      [(CAStateRemoveElement *)v7 setObject:self->_object];
      [(CAStateElement *)v7 setSource:self];
      [apply addElement:v7];

      if ([(NSString *)self->_keyPath isEqualToString:@"sublayers"])
      {
        if (objc_opt_respondsToSelector())
        {
          [apply willAddLayer:self->_object];
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
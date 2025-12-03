@interface CAStateAddAnimation
- (BOOL)matches:(id)matches;
- (CAStateAddAnimation)initWithCoder:(id)coder;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)keyPath;
- (void)apply:(id)apply;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAStateAddAnimation

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_loadWeak(&self->super._target);
  v5 = objc_opt_class();
  return [v3 stringWithFormat:@"{%@:%p %@:%p %@ %@}", v4, self, v5, objc_loadWeak(&self->super._target), self->_key, self->_animation];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateAddAnimation;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateAddAnimation)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAStateAddAnimation;
  v4 = [(CAStateElement *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_key = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"key", "copy"}];
    v5 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"animation"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_animation = v5;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateAddAnimation;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_key forKey:@"key"];
  [coder encodeObject:self->_animation forKey:@"animation"];
}

- (id)CAMLTypeForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"key"])
  {
    return @"string";
  }

  if ([key isEqualToString:@"animation"])
  {
    return @"CAAnimation";
  }

  v6.receiver = self;
  v6.super_class = CAStateAddAnimation;
  return [(CAStateElement *)&v6 CAMLTypeForKey:key];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateAddAnimation;
  [(CAStateElement *)&v6 encodeWithCAMLWriter:?];
  key = self->_key;
  if (key)
  {
    [writer setElementAttribute:key forKey:@"key"];
  }

  if (self->_animation)
  {
    [writer beginPropertyElement:@"animation"];
    [writer encodeObject:self->_animation];
    [writer endElement];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CAStateAddAnimation);
  v4->_key = self->_key;
  v4->_animation = self->_animation;
  [(CAStateElement *)v4 setTarget:objc_loadWeak(&self->super._target)];
  return v4;
}

- (void)apply:(id)apply
{
  if (self->_animation && self->_key)
  {
    if (apply)
    {
      v5 = [objc_loadWeak(&self->super._target) animationForKey:self->_key];
      if (v5)
      {
        v6 = v5;
        v7 = objc_alloc_init(CAStateAddAnimation);
        [(CAStateAddAnimation *)v7 setKey:self->_key];
        [(CAStateAddAnimation *)v7 setAnimation:v6];
      }

      else
      {
        v7 = objc_alloc_init(CAStateRemoveAnimation);
        [(CAStateAddAnimation *)v7 setKey:self->_key];
      }

      [(CAStateElement *)v7 setTarget:objc_loadWeak(&self->super._target)];
      [(CAStateElement *)v7 setSource:self];
      [apply addElement:v7];
    }

    [objc_loadWeak(&self->super._target) addAnimation:self->_animation forKey:self->_key];
    v8 = [objc_loadWeak(&self->super._target) animationForKey:self->_key];
    animation = self->_animation;
    if (v8 != animation)
    {
      v10 = v8;

      self->_animation = v10;
    }
  }
}

- (BOOL)matches:(id)matches
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  target = [matches target];
  if (target != objc_loadWeak(&self->super._target))
  {
    return 0;
  }

  v7 = [matches key];
  key = self->_key;

  return [v7 isEqualToString:key];
}

- (id)keyPath
{
  key = self->_key;
  if (key)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"animations.%@", key];
  }

  else
  {
    return 0;
  }
}

@end
@interface CAStateRemoveAnimation
- (BOOL)matches:(id)matches;
- (CAStateRemoveAnimation)initWithCoder:(id)coder;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)keyPath;
- (void)apply:(id)apply;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAStateRemoveAnimation

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objc_loadWeak(&self->super._target);
  v5 = objc_opt_class();
  return [v3 stringWithFormat:@"{%@:%p %@:%p %@}", v4, self, v5, objc_loadWeak(&self->super._target), self->_key];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateRemoveAnimation;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateRemoveAnimation)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateRemoveAnimation;
  v4 = [(CAStateElement *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_key = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"key", "copy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAStateRemoveAnimation;
  [(CAStateElement *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_key forKey:@"key"];
}

- (id)CAMLTypeForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"key"])
  {
    return @"string";
  }

  v6.receiver = self;
  v6.super_class = CAStateRemoveAnimation;
  return [(CAStateElement *)&v6 CAMLTypeForKey:key];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateRemoveAnimation;
  [(CAStateElement *)&v6 encodeWithCAMLWriter:?];
  key = self->_key;
  if (key)
  {
    [writer setElementAttribute:key forKey:@"key"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CAStateRemoveAnimation);
  v4->_key = self->_key;
  [(CAStateElement *)v4 setTarget:objc_loadWeak(&self->super._target)];
  return v4;
}

- (void)apply:(id)apply
{
  if (self->_key)
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

    Weak = objc_loadWeak(&self->super._target);
    key = self->_key;

    [Weak removeAnimationForKey:key];
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
@interface CAStateTransitionElement
+ (void)CAMLParserStartElement:(id)element;
- (CAStateTransitionElement)init;
- (CAStateTransitionElement)initWithCoder:(id)coder;
- (double)beginTime;
- (double)duration;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAStateTransitionElement

- (CAStateTransitionElement)init
{
  v4 = *MEMORY[0x1E69E9840];
  self->_enabled = 1;
  v3.receiver = self;
  v3.super_class = CAStateTransitionElement;
  return [(CAStateTransitionElement *)&v3 init];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateTransitionElement;
  [(CAStateTransitionElement *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  objc_loadWeak(&self->_target);
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<CAStateTransitionElement target=<%@: %p> key=%@ %@>", v4, objc_loadWeak(&self->_target), self->_key, self->_animation];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CAStateTransitionElement);
  [(CAStateTransitionElement *)v4 setEnabled:self->_enabled];
  [(CAStateTransitionElement *)v4 setTarget:objc_loadWeak(&self->_target)];
  [(CAStateTransitionElement *)v4 setAnimation:self->_animation];
  [(CAStateTransitionElement *)v4 setKey:self->_key];
  return v4;
}

- (CAStateTransitionElement)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAStateTransitionElement;
  v4 = [(CAStateTransitionElement *)&v8 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"target"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&v4->_target, v5);
    }

    v6 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"animation"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_animation = v6;
    }

    v4->_key = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"key", "copy"}];
    if ([coder containsValueForKey:@"enabled"])
    {
      v4->_enabled = [coder decodeBoolForKey:@"enabled"];
    }

    else
    {
      v4->_enabled = 1;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_loadWeak(&self->_target))
  {
    [coder encodeConditionalObject:objc_loadWeak(&self->_target) forKey:@"target"];
  }

  animation = self->_animation;
  if (animation)
  {
    [coder encodeObject:animation forKey:@"animation"];
  }

  key = self->_key;
  if (key)
  {
    [coder encodeObject:key forKey:@"key"];
  }

  if (!self->_enabled)
  {

    [coder encodeBool:0 forKey:@"enabled"];
  }
}

- (id)CAMLTypeForKey:(id)key
{
  v4 = [CAStateTransitionElement CAMLTypeForKey:]::dict;
  if (![CAStateTransitionElement CAMLTypeForKey:]::dict)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"CALayer", @"target", @"string", @"targetId", @"CAAnimation", @"animation", @"string", @"key", @"BOOL", @"enabled", 0}];
    [CAStateTransitionElement CAMLTypeForKey:]::dict = v4;
  }

  return [v4 objectForKey:key];
}

- (void)encodeWithCAMLWriter:(id)writer
{
  if (!self->_enabled)
  {
    [writer setElementAttribute:@"false" forKey:@"enabled"];
  }

  key = self->_key;
  if (key)
  {
    [writer setElementAttribute:key forKey:@"key"];
  }

  if (objc_loadWeak(&self->_target))
  {
    [writer beginPropertyElement:@"target"];
    [writer encodeObject:objc_loadWeak(&self->_target)];
    [writer endElement];
  }

  if (self->_animation)
  {
    [writer beginPropertyElement:@"animation"];
    [writer encodeObject:self->_animation];

    [writer endElement];
  }
}

- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  if ([key isEqualToString:@"targetId"])
  {
    value = [parser objectById:value];
    keyCopy = @"target";
  }

  [(CAStateTransitionElement *)self setValue:value forKey:keyCopy];
}

- (double)duration
{
  animation = self->_animation;
  if (!animation)
  {
    return 0.0;
  }

  [(CAAnimation *)animation duration];
  return result;
}

- (double)beginTime
{
  animation = self->_animation;
  if (!animation)
  {
    return 0.0;
  }

  [(CAAnimation *)animation beginTime];
  return result;
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = objc_alloc_init(self);
  [element setElementValue:v4];
}

@end
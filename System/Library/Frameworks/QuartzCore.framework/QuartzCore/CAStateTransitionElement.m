@interface CAStateTransitionElement
+ (void)CAMLParserStartElement:(id)a3;
- (CAStateTransitionElement)init;
- (CAStateTransitionElement)initWithCoder:(id)a3;
- (double)beginTime;
- (double)duration;
- (id)CAMLTypeForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CAStateTransitionElement);
  [(CAStateTransitionElement *)v4 setEnabled:self->_enabled];
  [(CAStateTransitionElement *)v4 setTarget:objc_loadWeak(&self->_target)];
  [(CAStateTransitionElement *)v4 setAnimation:self->_animation];
  [(CAStateTransitionElement *)v4 setKey:self->_key];
  return v4;
}

- (CAStateTransitionElement)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAStateTransitionElement;
  v4 = [(CAStateTransitionElement *)&v8 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"target"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&v4->_target, v5);
    }

    v6 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"animation"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_animation = v6;
    }

    v4->_key = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"key", "copy"}];
    if ([a3 containsValueForKey:@"enabled"])
    {
      v4->_enabled = [a3 decodeBoolForKey:@"enabled"];
    }

    else
    {
      v4->_enabled = 1;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_loadWeak(&self->_target))
  {
    [a3 encodeConditionalObject:objc_loadWeak(&self->_target) forKey:@"target"];
  }

  animation = self->_animation;
  if (animation)
  {
    [a3 encodeObject:animation forKey:@"animation"];
  }

  key = self->_key;
  if (key)
  {
    [a3 encodeObject:key forKey:@"key"];
  }

  if (!self->_enabled)
  {

    [a3 encodeBool:0 forKey:@"enabled"];
  }
}

- (id)CAMLTypeForKey:(id)a3
{
  v4 = [CAStateTransitionElement CAMLTypeForKey:]::dict;
  if (![CAStateTransitionElement CAMLTypeForKey:]::dict)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"CALayer", @"target", @"string", @"targetId", @"CAAnimation", @"animation", @"string", @"key", @"BOOL", @"enabled", 0}];
    [CAStateTransitionElement CAMLTypeForKey:]::dict = v4;
  }

  return [v4 objectForKey:a3];
}

- (void)encodeWithCAMLWriter:(id)a3
{
  if (!self->_enabled)
  {
    [a3 setElementAttribute:@"false" forKey:@"enabled"];
  }

  key = self->_key;
  if (key)
  {
    [a3 setElementAttribute:key forKey:@"key"];
  }

  if (objc_loadWeak(&self->_target))
  {
    [a3 beginPropertyElement:@"target"];
    [a3 encodeObject:objc_loadWeak(&self->_target)];
    [a3 endElement];
  }

  if (self->_animation)
  {
    [a3 beginPropertyElement:@"animation"];
    [a3 encodeObject:self->_animation];

    [a3 endElement];
  }
}

- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5
{
  v5 = a5;
  if ([a5 isEqualToString:@"targetId"])
  {
    a4 = [a3 objectById:a4];
    v5 = @"target";
  }

  [(CAStateTransitionElement *)self setValue:a4 forKey:v5];
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

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_alloc_init(a1);
  [a3 setElementValue:v4];
}

@end
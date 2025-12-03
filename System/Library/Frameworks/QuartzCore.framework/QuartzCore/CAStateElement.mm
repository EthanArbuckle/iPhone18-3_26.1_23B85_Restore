@interface CAStateElement
+ (void)CAMLParserStartElement:(id)element;
- (BOOL)CAMLTypeSupportedForKey:(id)key;
- (CAStateElement)initWithCoder:(id)coder;
- (id)CAMLTypeForKey:(id)key;
- (id)targetName;
- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAStateElement

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateElement;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateElement)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAStateElement;
  v4 = [(CAStateElement *)&v8 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"target"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&v4->_target, v5);
    }

    v6 = [coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"source"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_source = v6;
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

  if (self->_source)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (BOOL)CAMLTypeSupportedForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"target"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"source"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateElement;
  return [&v6 CAMLTypeSupportedForKey:key];
}

- (id)CAMLTypeForKey:(id)key
{
  if ([key isEqualToString:@"target"])
  {
    return @"CALayer";
  }

  if ([key isEqualToString:@"targetId"])
  {
    return @"string";
  }

  return 0;
}

- (void)encodeWithCAMLWriter:(id)writer
{
  if (objc_loadWeak(&self->_target))
  {
    [writer beginPropertyElement:@"target"];
    [writer encodeObject:objc_loadWeak(&self->_target)];

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

  [(CAStateElement *)self setValue:value forKey:keyCopy];
}

- (id)targetName
{
  Weak = objc_loadWeak(&self->_target);

  return [Weak name];
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = objc_alloc_init(self);
  [element setElementValue:v4];
}

@end
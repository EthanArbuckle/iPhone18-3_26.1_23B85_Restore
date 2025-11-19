@interface CAStateElement
+ (void)CAMLParserStartElement:(id)a3;
- (BOOL)CAMLTypeSupportedForKey:(id)a3;
- (CAStateElement)initWithCoder:(id)a3;
- (id)CAMLTypeForKey:(id)a3;
- (id)targetName;
- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAStateElement

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateElement;
  [(CAStateElement *)&v3 dealloc];
}

- (CAStateElement)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAStateElement;
  v4 = [(CAStateElement *)&v8 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"target"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&v4->_target, v5);
    }

    v6 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"source"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_source = v6;
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

  if (self->_source)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (BOOL)CAMLTypeSupportedForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"target"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"source"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAStateElement;
  return [&v6 CAMLTypeSupportedForKey:a3];
}

- (id)CAMLTypeForKey:(id)a3
{
  if ([a3 isEqualToString:@"target"])
  {
    return @"CALayer";
  }

  if ([a3 isEqualToString:@"targetId"])
  {
    return @"string";
  }

  return 0;
}

- (void)encodeWithCAMLWriter:(id)a3
{
  if (objc_loadWeak(&self->_target))
  {
    [a3 beginPropertyElement:@"target"];
    [a3 encodeObject:objc_loadWeak(&self->_target)];

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

  [(CAStateElement *)self setValue:a4 forKey:v5];
}

- (id)targetName
{
  Weak = objc_loadWeak(&self->_target);

  return [Weak name];
}

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_alloc_init(a1);
  [a3 setElementValue:v4];
}

@end
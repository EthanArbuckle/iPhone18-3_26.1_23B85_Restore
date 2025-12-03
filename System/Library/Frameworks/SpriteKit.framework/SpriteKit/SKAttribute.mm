@interface SKAttribute
+ (SKAttribute)attributeWithName:(NSString *)name type:(SKAttributeType)type;
- (BOOL)isEqualToAttribute:(id)attribute;
- (SKAttribute)initWithCoder:(id)coder;
- (SKAttribute)initWithName:(NSString *)name type:(SKAttributeType)type;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKAttribute

- (SKAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
  integerValue = [v6 integerValue];

  v8 = [(SKAttribute *)self initWithName:v5 type:integerValue];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"_type"];
}

- (BOOL)isEqualToAttribute:(id)attribute
{
  attributeCopy = attribute;
  v5 = attributeCopy;
  if (self == attributeCopy)
  {
    v9 = 1;
  }

  else
  {
    name = self->_name;
    name = [(SKAttribute *)attributeCopy name];
    LOBYTE(name) = [(NSString *)name isEqualToString:name];

    if (name)
    {
      type = self->_type;
      v9 = type == [(SKAttribute *)v5 type];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (SKAttribute)attributeWithName:(NSString *)name type:(SKAttributeType)type
{
  v6 = name;
  v7 = [[self alloc] initWithName:v6 type:type];

  return v7;
}

- (SKAttribute)initWithName:(NSString *)name type:(SKAttributeType)type
{
  v7 = name;
  v17.receiver = self;
  v17.super_class = SKAttribute;
  v8 = [(SKAttribute *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"a_%@", v9->_name];
    uTF8String = [v10 UTF8String];
    v12 = strlen(uTF8String);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = v12;
    if (v12)
    {
      memmove(&__dst, uTF8String, v12);
    }

    *(&__dst + v13) = 0;
    if (*(&v9->_nameString.__rep_.__l + 23) < 0)
    {
      operator delete(v9->_nameString.__rep_.__l.__data_);
    }

    *v9->_nameString.__rep_.__s.__data_ = __dst;
    *(&v9->_nameString.__rep_.__l + 2) = v16;

    v9->_type = type;
    if ((type - 5) < 4)
    {
      v9->_type = type - 4;
    }
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 24) = 0uLL;
  *(self + 5) = 0;
  return self;
}

@end
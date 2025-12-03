@interface CTServiceDescriptor
+ (id)descriptorWithSubscriptionContext:(id)context;
+ (id)telephonyDescriptorWithInstance:(id)instance;
- (BOOL)isEqual:(id)equal;
- (CTServiceDescriptor)initWithCoder:(id)coder;
- (CTServiceDescriptor)initWithDomain:(int64_t)domain instance:(id)instance;
- (NSString)ct_shortDescription;
- (NSString)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTServiceDescriptor

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  ct_shortName = [(CTServiceDescriptor *)self ct_shortName];
  domain = [(CTServiceDescriptor *)self domain];
  instance = [(CTServiceDescriptor *)self instance];
  v7 = [v3 stringWithFormat:@"<%@ domain=%ld, instance=%@>", ct_shortName, domain, instance];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  domain = [(CTServiceDescriptor *)self domain];
  instance = [(CTServiceDescriptor *)self instance];
  [v3 appendFormat:@", domain=%ld, instance=%@>", domain, instance];

  return v3;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    memset(&v11, 0, sizeof(v11));
    __src = bswap32(self->_domain);
    v9 = bswap32([(NSNumber *)self->_instance unsignedIntValue]);
    std::vector<unsigned char>::reserve(&v11, 8uLL);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(&v11, v11.__end_, &__src, &v11, 4);
    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(&v11, v11.__end_, &v9, &__src, 4);
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    ctu::hex();
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__p];
    v5 = self->_identifier;
    self->_identifier = v4;

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    if (v11.__begin_)
    {
      v11.__end_ = v11.__begin_;
      operator delete(v11.__begin_);
    }

    identifier = self->_identifier;
  }

  return identifier;
}

- (CTServiceDescriptor)initWithDomain:(int64_t)domain instance:(id)instance
{
  instanceCopy = instance;
  v11.receiver = self;
  v11.super_class = CTServiceDescriptor;
  v8 = [(CTServiceDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_domain = domain;
    objc_storeStrong(&v8->_instance, instance);
  }

  return v9;
}

+ (id)telephonyDescriptorWithInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [[CTServiceDescriptor alloc] initWithDomain:1 instance:instanceCopy];

  return v4;
}

+ (id)descriptorWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  v6 = [self telephonyDescriptorWithInstance:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      domain = [(CTServiceDescriptor *)self domain];
      if (domain == [(CTServiceDescriptor *)v5 domain])
      {
        instance = [(CTServiceDescriptor *)self instance];
        instance2 = [(CTServiceDescriptor *)v5 instance];
        v9 = [instance isEqualToNumber:instance2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDomain:self->_domain];
  v5 = [(NSNumber *)self->_instance copy];
  [v4 setInstance:v5];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_domain forKey:@"domain"];
  [coderCopy encodeObject:self->_instance forKey:@"instance"];
}

- (CTServiceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTServiceDescriptor;
  v5 = [(CTServiceDescriptor *)&v9 init];
  if (v5)
  {
    v5->_domain = [coderCopy decodeIntegerForKey:@"domain"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instance"];
    instance = v5->_instance;
    v5->_instance = v6;
  }

  return v5;
}

@end
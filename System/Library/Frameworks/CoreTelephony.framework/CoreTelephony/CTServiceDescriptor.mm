@interface CTServiceDescriptor
+ (id)descriptorWithSubscriptionContext:(id)a3;
+ (id)telephonyDescriptorWithInstance:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CTServiceDescriptor)initWithCoder:(id)a3;
- (CTServiceDescriptor)initWithDomain:(int64_t)a3 instance:(id)a4;
- (NSString)ct_shortDescription;
- (NSString)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTServiceDescriptor

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CTServiceDescriptor *)self ct_shortName];
  v5 = [(CTServiceDescriptor *)self domain];
  v6 = [(CTServiceDescriptor *)self instance];
  v7 = [v3 stringWithFormat:@"<%@ domain=%ld, instance=%@>", v4, v5, v6];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTServiceDescriptor *)self domain];
  v5 = [(CTServiceDescriptor *)self instance];
  [v3 appendFormat:@", domain=%ld, instance=%@>", v4, v5];

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

- (CTServiceDescriptor)initWithDomain:(int64_t)a3 instance:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CTServiceDescriptor;
  v8 = [(CTServiceDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_domain = a3;
    objc_storeStrong(&v8->_instance, a4);
  }

  return v9;
}

+ (id)telephonyDescriptorWithInstance:(id)a3
{
  v3 = a3;
  v4 = [[CTServiceDescriptor alloc] initWithDomain:1 instance:v3];

  return v4;
}

+ (id)descriptorWithSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v6 = [a1 telephonyDescriptorWithInstance:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CTServiceDescriptor *)self domain];
      if (v6 == [(CTServiceDescriptor *)v5 domain])
      {
        v7 = [(CTServiceDescriptor *)self instance];
        v8 = [(CTServiceDescriptor *)v5 instance];
        v9 = [v7 isEqualToNumber:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDomain:self->_domain];
  v5 = [(NSNumber *)self->_instance copy];
  [v4 setInstance:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_domain forKey:@"domain"];
  [v4 encodeObject:self->_instance forKey:@"instance"];
}

- (CTServiceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTServiceDescriptor;
  v5 = [(CTServiceDescriptor *)&v9 init];
  if (v5)
  {
    v5->_domain = [v4 decodeIntegerForKey:@"domain"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instance"];
    instance = v5->_instance;
    v5->_instance = v6;
  }

  return v5;
}

@end
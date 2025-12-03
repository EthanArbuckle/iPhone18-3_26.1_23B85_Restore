@interface CLMiLoServiceDescriptor
- (CLMiLoServiceDescriptor)initWithCoder:(id)coder;
- (CLMiLoServiceDescriptor)initWithServiceIdentifier:(id)identifier serviceType:(unint64_t)type locationTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceDescriptor

- (CLMiLoServiceDescriptor)initWithServiceIdentifier:(id)identifier serviceType:(unint64_t)type locationTypes:(id)types
{
  v10.receiver = self;
  v10.super_class = CLMiLoServiceDescriptor;
  v8 = [(CLMiLoServiceDescriptor *)&v10 init];
  if (v8)
  {
    v8->_serviceIdentifier = [identifier copy];
    v8->_serviceType = type;
    v8->_locationTypes = types;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceDescriptor;
  [(CLMiLoServiceDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  serviceIdentifier = self->_serviceIdentifier;
  serviceType = self->_serviceType;
  locationTypes = self->_locationTypes;

  return MEMORY[0x1EEE66B58](v4, sel_initWithServiceIdentifier_serviceType_locationTypes_);
}

- (CLMiLoServiceDescriptor)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceIdentifier"];
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceType"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyLocationTypeArray"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithServiceIdentifier_serviceType_locationTypes_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_serviceIdentifier forKey:@"kCLMiLoConnectionCodingKeyServiceIdentifier"];
  [coder encodeInteger:self->_serviceType forKey:@"kCLMiLoConnectionCodingKeyServiceType"];
  locationTypes = self->_locationTypes;

  [coder encodeObject:locationTypes forKey:@"kCLMiLoConnectionCodingKeyLocationTypeArray"];
}

@end
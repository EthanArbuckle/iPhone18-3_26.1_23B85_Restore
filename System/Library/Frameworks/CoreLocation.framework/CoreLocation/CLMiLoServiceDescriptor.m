@interface CLMiLoServiceDescriptor
- (CLMiLoServiceDescriptor)initWithCoder:(id)a3;
- (CLMiLoServiceDescriptor)initWithServiceIdentifier:(id)a3 serviceType:(unint64_t)a4 locationTypes:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoServiceDescriptor

- (CLMiLoServiceDescriptor)initWithServiceIdentifier:(id)a3 serviceType:(unint64_t)a4 locationTypes:(id)a5
{
  v10.receiver = self;
  v10.super_class = CLMiLoServiceDescriptor;
  v8 = [(CLMiLoServiceDescriptor *)&v10 init];
  if (v8)
  {
    v8->_serviceIdentifier = [a3 copy];
    v8->_serviceType = a4;
    v8->_locationTypes = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceDescriptor;
  [(CLMiLoServiceDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  serviceIdentifier = self->_serviceIdentifier;
  serviceType = self->_serviceType;
  locationTypes = self->_locationTypes;

  return MEMORY[0x1EEE66B58](v4, sel_initWithServiceIdentifier_serviceType_locationTypes_);
}

- (CLMiLoServiceDescriptor)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyServiceIdentifier"];
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceType"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyLocationTypeArray"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithServiceIdentifier_serviceType_locationTypes_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_serviceIdentifier forKey:@"kCLMiLoConnectionCodingKeyServiceIdentifier"];
  [a3 encodeInteger:self->_serviceType forKey:@"kCLMiLoConnectionCodingKeyServiceType"];
  locationTypes = self->_locationTypes;

  [a3 encodeObject:locationTypes forKey:@"kCLMiLoConnectionCodingKeyLocationTypeArray"];
}

@end
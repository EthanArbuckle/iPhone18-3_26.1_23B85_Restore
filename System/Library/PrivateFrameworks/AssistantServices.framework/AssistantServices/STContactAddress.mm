@interface STContactAddress
- (STContactAddress)initWithCoder:(id)coder;
- (STContactAddress)initWithType:(int64_t)type stringValue:(id)value contactIdentifier:(id)identifier contactInternalGUID:(id)d;
- (id)_aceContextObjectValue;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STContactAddress

- (STContactAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STContactAddress;
  v5 = [(STSiriModelObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactInternalGUID"];
    contactInternalGUID = v5->_contactInternalGUID;
    v5->_contactInternalGUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STContactAddress;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"_type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_stringValue forKey:@"_stringValue"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeObject:self->_contactInternalGUID forKey:@"_contactInternalGUID"];
}

- (id)_aceContextObjectValue
{
  v3 = objc_alloc_init(MEMORY[0x1E69C7938]);
  stringValue = [(STContactAddress *)self stringValue];
  [v3 setData:stringValue];

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@": %p", self];
  [v3 appendString:@"; type="];
  type = self->_type;
  if (type > 2)
  {
    v6 = @"INVALID";
  }

  else
  {
    v6 = off_1E7341E08[type];
  }

  [v3 appendString:v6];
  [v3 appendString:@"; stringValue="];
  if (self->_stringValue)
  {
    stringValue = self->_stringValue;
  }

  else
  {
    stringValue = @"nil";
  }

  [v3 appendString:stringValue];
  [v3 appendString:@"; contactIdentifier="];
  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    absoluteString = [(NSURL *)contactIdentifier absoluteString];
    [v3 appendString:absoluteString];
  }

  else
  {
    [v3 appendString:@"nil"];
  }

  [v3 appendString:@"; contactInternalGUID="];
  if (self->_contactInternalGUID)
  {
    contactInternalGUID = self->_contactInternalGUID;
  }

  else
  {
    contactInternalGUID = @"nil";
  }

  [v3 appendString:contactInternalGUID];
  [v3 appendString:@">"];

  return v3;
}

- (STContactAddress)initWithType:(int64_t)type stringValue:(id)value contactIdentifier:(id)identifier contactInternalGUID:(id)d
{
  valueCopy = value;
  identifierCopy = identifier;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = STContactAddress;
  v13 = [(STContactAddress *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v15 = [valueCopy copy];
    stringValue = v14->_stringValue;
    v14->_stringValue = v15;

    objc_storeStrong(&v14->_contactIdentifier, identifier);
    objc_storeStrong(&v14->_contactInternalGUID, d);
  }

  return v14;
}

@end
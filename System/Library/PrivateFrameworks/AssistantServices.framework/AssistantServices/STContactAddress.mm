@interface STContactAddress
- (STContactAddress)initWithCoder:(id)a3;
- (STContactAddress)initWithType:(int64_t)a3 stringValue:(id)a4 contactIdentifier:(id)a5 contactInternalGUID:(id)a6;
- (id)_aceContextObjectValue;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STContactAddress

- (STContactAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STContactAddress;
  v5 = [(STSiriModelObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactInternalGUID"];
    contactInternalGUID = v5->_contactInternalGUID;
    v5->_contactInternalGUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STContactAddress;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"_type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_stringValue forKey:@"_stringValue"];
  [v4 encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [v4 encodeObject:self->_contactInternalGUID forKey:@"_contactInternalGUID"];
}

- (id)_aceContextObjectValue
{
  v3 = objc_alloc_init(MEMORY[0x1E69C7938]);
  v4 = [(STContactAddress *)self stringValue];
  [v3 setData:v4];

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
    v9 = [(NSURL *)contactIdentifier absoluteString];
    [v3 appendString:v9];
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

- (STContactAddress)initWithType:(int64_t)a3 stringValue:(id)a4 contactIdentifier:(id)a5 contactInternalGUID:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = STContactAddress;
  v13 = [(STContactAddress *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v15 = [v10 copy];
    stringValue = v14->_stringValue;
    v14->_stringValue = v15;

    objc_storeStrong(&v14->_contactIdentifier, a5);
    objc_storeStrong(&v14->_contactInternalGUID, a6);
  }

  return v14;
}

@end
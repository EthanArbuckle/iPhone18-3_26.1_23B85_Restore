@interface STSiriLocation
- (NSString)description;
- (STSiriLocation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSiriLocation

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STSiriLocation resultType](self, "resultType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](self->_geoResult, "length")}];
  v6 = [v3 stringWithFormat:@"type: %@, data length: %@", v4, v5];

  if (self->_addressBookID)
  {
    [v6 appendFormat:@"\\ %@", self->_addressBookID];
  }

  if (self->_addressLabel)
  {
    [v6 appendFormat:@"\\ %@", self->_addressLabel];
  }

  if (self->_contactName)
  {
    [v6 appendFormat:@"\\ %@", self->_contactName];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  addressBookID = self->_addressBookID;
  v5 = a3;
  [v5 encodeObject:addressBookID forKey:@"kSTSiriLocationAddressBookIDKey"];
  [v5 encodeObject:self->_addressLabel forKey:@"kSTSiriLocationAddressLabelKey"];
  [v5 encodeObject:self->_contactName forKey:@"kSTSiriLocationContactNameKey"];
  [v5 encodeObject:self->_geoResult forKey:@"kSTSiriLocationGeoResultKey"];
  [v5 encodeInteger:self->_resultType forKey:@"kSTSiriLocationResultTypeKey"];
}

- (STSiriLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STSiriLocation;
  v5 = [(STSiriLocation *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTSiriLocationAddressBookIDKey"];
    addressBookID = v5->_addressBookID;
    v5->_addressBookID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTSiriLocationAddressLabelKey"];
    addressLabel = v5->_addressLabel;
    v5->_addressLabel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTSiriLocationContactNameKey"];
    contactName = v5->_contactName;
    v5->_contactName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTSiriLocationGeoResultKey"];
    geoResult = v5->_geoResult;
    v5->_geoResult = v12;

    v5->_resultType = [v4 decodeIntegerForKey:@"kSTSiriLocationResultTypeKey"];
  }

  return v5;
}

@end
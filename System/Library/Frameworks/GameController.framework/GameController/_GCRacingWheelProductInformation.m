@interface _GCRacingWheelProductInformation
- (_GCRacingWheelProductInformation)init;
- (_GCRacingWheelProductInformation)initWithCoder:(id)a3;
- (_GCRacingWheelProductInformation)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCRacingWheelProductInformation

- (_GCRacingWheelProductInformation)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCRacingWheelProductInformation;
  v5 = [(_GCRacingWheelProductInformation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_GCRacingWheelProductInformation)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(_GCRacingWheelProductInformation *)self initWithIdentifier:v3];

  return v4;
}

- (_GCRacingWheelProductInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _GCRacingWheelProductInformation;
  v5 = [(_GCRacingWheelProductInformation *)&v14 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productCategory"];
    productCategory = v5->_productCategory;
    v5->_productCategory = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_GCRacingWheelProductInformation *)self vendorName];
  [v4 encodeObject:v5 forKey:@"vendorName"];

  v6 = [(_GCRacingWheelProductInformation *)self productCategory];
  [v4 encodeObject:v6 forKey:@"productCategory"];

  v7 = [(_GCRacingWheelProductInformation *)self identifier];
  [v4 encodeObject:v7 forKey:@"identifier"];
}

@end
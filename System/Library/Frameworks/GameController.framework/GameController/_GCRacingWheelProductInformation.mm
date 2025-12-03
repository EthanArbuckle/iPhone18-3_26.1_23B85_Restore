@interface _GCRacingWheelProductInformation
- (_GCRacingWheelProductInformation)init;
- (_GCRacingWheelProductInformation)initWithCoder:(id)coder;
- (_GCRacingWheelProductInformation)initWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCRacingWheelProductInformation

- (_GCRacingWheelProductInformation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _GCRacingWheelProductInformation;
  v5 = [(_GCRacingWheelProductInformation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_GCRacingWheelProductInformation)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(_GCRacingWheelProductInformation *)self initWithIdentifier:uUID];

  return v4;
}

- (_GCRacingWheelProductInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _GCRacingWheelProductInformation;
  v5 = [(_GCRacingWheelProductInformation *)&v14 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productCategory"];
    productCategory = v5->_productCategory;
    v5->_productCategory = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vendorName = [(_GCRacingWheelProductInformation *)self vendorName];
  [coderCopy encodeObject:vendorName forKey:@"vendorName"];

  productCategory = [(_GCRacingWheelProductInformation *)self productCategory];
  [coderCopy encodeObject:productCategory forKey:@"productCategory"];

  identifier = [(_GCRacingWheelProductInformation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end
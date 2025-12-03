@interface GCProductInformation
- (GCProductInformation)init;
- (GCProductInformation)initWithCoder:(id)coder;
- (GCProductInformation)initWithIdentifier:(id)identifier;
- (NSString)detailedProductCategory;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCProductInformation

- (NSString)detailedProductCategory
{
  detailedProductCategory = self->_detailedProductCategory;
  if (detailedProductCategory)
  {
    productCategory = detailedProductCategory;
  }

  else
  {
    productCategory = [(GCProductInformation *)self productCategory];
  }

  return productCategory;
}

- (GCProductInformation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCProductInformation;
  v5 = [(GCProductInformation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCProductInformation)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCProductInformation *)self initWithIdentifier:uUID];

  return v4;
}

- (GCProductInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = GCProductInformation;
  v5 = [(GCProductInformation *)&v28 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productCategory"];
    productCategory = v5->_productCategory;
    v5->_productCategory = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailedProductCategory"];
    detailedProductCategory = v5->_detailedProductCategory;
    v5->_detailedProductCategory = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachedToDevice"];
    attachedToDevice = v5->_attachedToDevice;
    v5->_attachedToDevice = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedIdentifier"];
    anonymizedIdentifier = v5->_anonymizedIdentifier;
    v5->_anonymizedIdentifier = v19;

    v5->_deviceOnly = [coderCopy decodeBoolForKey:@"deviceOnly"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"miscellaneous"];
    miscellaneous = v5->_miscellaneous;
    v5->_miscellaneous = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniformTypeIdentifier = [(GCProductInformation *)self uniformTypeIdentifier];
  [coderCopy encodeObject:uniformTypeIdentifier forKey:@"uniformTypeIdentifier"];

  isAttachedToDevice = [(GCProductInformation *)self isAttachedToDevice];
  [coderCopy encodeObject:isAttachedToDevice forKey:@"attachedToDevice"];

  vendorName = [(GCProductInformation *)self vendorName];
  [coderCopy encodeObject:vendorName forKey:@"vendorName"];

  productCategory = [(GCProductInformation *)self productCategory];
  [coderCopy encodeObject:productCategory forKey:@"productCategory"];

  detailedProductCategory = [(GCProductInformation *)self detailedProductCategory];
  [coderCopy encodeObject:detailedProductCategory forKey:@"detailedProductCategory"];

  identifier = [(GCProductInformation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  anonymizedIdentifier = [(GCProductInformation *)self anonymizedIdentifier];
  [coderCopy encodeObject:anonymizedIdentifier forKey:@"anonymizedIdentifier"];

  [coderCopy encodeBool:-[GCProductInformation isDeviceOnly](self forKey:{"isDeviceOnly"), @"deviceOnly"}];
  miscellaneous = [(GCProductInformation *)self miscellaneous];
  [coderCopy encodeObject:miscellaneous forKey:@"miscellaneous"];
}

@end
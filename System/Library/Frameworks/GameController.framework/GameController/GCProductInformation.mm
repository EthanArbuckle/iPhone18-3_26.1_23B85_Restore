@interface GCProductInformation
- (GCProductInformation)init;
- (GCProductInformation)initWithCoder:(id)a3;
- (GCProductInformation)initWithIdentifier:(id)a3;
- (NSString)detailedProductCategory;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCProductInformation

- (NSString)detailedProductCategory
{
  detailedProductCategory = self->_detailedProductCategory;
  if (detailedProductCategory)
  {
    v3 = detailedProductCategory;
  }

  else
  {
    v3 = [(GCProductInformation *)self productCategory];
  }

  return v3;
}

- (GCProductInformation)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCProductInformation;
  v5 = [(GCProductInformation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCProductInformation)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCProductInformation *)self initWithIdentifier:v3];

  return v4;
}

- (GCProductInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = GCProductInformation;
  v5 = [(GCProductInformation *)&v28 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productCategory"];
    productCategory = v5->_productCategory;
    v5->_productCategory = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailedProductCategory"];
    detailedProductCategory = v5->_detailedProductCategory;
    v5->_detailedProductCategory = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attachedToDevice"];
    attachedToDevice = v5->_attachedToDevice;
    v5->_attachedToDevice = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedIdentifier"];
    anonymizedIdentifier = v5->_anonymizedIdentifier;
    v5->_anonymizedIdentifier = v19;

    v5->_deviceOnly = [v4 decodeBoolForKey:@"deviceOnly"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"miscellaneous"];
    miscellaneous = v5->_miscellaneous;
    v5->_miscellaneous = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCProductInformation *)self uniformTypeIdentifier];
  [v4 encodeObject:v5 forKey:@"uniformTypeIdentifier"];

  v6 = [(GCProductInformation *)self isAttachedToDevice];
  [v4 encodeObject:v6 forKey:@"attachedToDevice"];

  v7 = [(GCProductInformation *)self vendorName];
  [v4 encodeObject:v7 forKey:@"vendorName"];

  v8 = [(GCProductInformation *)self productCategory];
  [v4 encodeObject:v8 forKey:@"productCategory"];

  v9 = [(GCProductInformation *)self detailedProductCategory];
  [v4 encodeObject:v9 forKey:@"detailedProductCategory"];

  v10 = [(GCProductInformation *)self identifier];
  [v4 encodeObject:v10 forKey:@"identifier"];

  v11 = [(GCProductInformation *)self anonymizedIdentifier];
  [v4 encodeObject:v11 forKey:@"anonymizedIdentifier"];

  [v4 encodeBool:-[GCProductInformation isDeviceOnly](self forKey:{"isDeviceOnly"), @"deviceOnly"}];
  v12 = [(GCProductInformation *)self miscellaneous];
  [v4 encodeObject:v12 forKey:@"miscellaneous"];
}

@end
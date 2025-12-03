@interface VNSmartCamObservation
+ (id)observationWithSmartCamprints:(id)camprints;
- (BOOL)isEqual:(id)equal;
- (VNSmartCamObservation)initWithCoder:(id)coder;
- (VNSmartCamObservation)initWithOriginatingRequestSpecifier:(id)specifier smartCamprints:(id)camprints;
- (VNSmartCamObservation)initWithRequestRevision:(unint64_t)revision smartCamprints:(id)camprints;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSmartCamObservation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = VNSmartCamObservation;
  if ([(VNObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    smartCamprintVersion = [(VNSmartCamObservation *)self smartCamprintVersion];
    smartCamprintVersion2 = [v5 smartCamprintVersion];
    v8 = VisionCoreEqualOrNilObjects();

    if (v8)
    {
      smartCamprints = [(VNSmartCamObservation *)self smartCamprints];
      smartCamprints2 = [v5 smartCamprints];
      v11 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VNSmartCamObservation;
  v3 = [(VNObservation *)&v9 hash];
  smartCamprintVersion = [(VNSmartCamObservation *)self smartCamprintVersion];
  v5 = [smartCamprintVersion hash];

  smartCamprints = [(VNSmartCamObservation *)self smartCamprints];
  v7 = [smartCamprints hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNSmartCamObservation;
  vn_cloneObject = [(VNObservation *)&v6 vn_cloneObject];
  v4 = vn_cloneObject;
  if (vn_cloneObject)
  {
    [vn_cloneObject setSmartCamprints:self->_smartCamprints];
    objc_storeStrong(v4 + 13, self->_smartCamprintVersion);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNSmartCamObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNSmartCamObservation"];
  [coderCopy encodeObject:self->_smartCamprintVersion forKey:@"sc_algo"];
  [coderCopy encodeObject:self->_smartCamprints forKey:@"sc_descriptors"];
}

- (VNSmartCamObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = VNSmartCamObservation;
  v5 = [(VNObservation *)&v29 initWithCoder:coderCopy];
  if (v5 && ![coderCopy vn_decodeCodingVersionForKey:@"VNSmartCamObservation"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sc_algo"];
    v8 = +[VNSmartCamObservation smartCamprintCurrentVersion];
    if ([VNVersionParser isMajorVersion:v7 equalToMajorVersion:v8])
    {
      if (![VNVersionParser isMinorVersion:v7 equalToMinorVersion:v8])
      {
        VNValidatedLog(2, @"Minor component of encoded smartCamprint is different than minor component currently supported by software.", v15, v16, v17, v18, v19, v20, v28);
      }

      objc_storeStrong(&v5->_smartCamprintVersion, v7);
      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_opt_class();
      v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"sc_descriptors"];

      v25 = [v24 copy];
      smartCamprints = v5->_smartCamprints;
      v5->_smartCamprints = v25;

      v6 = v5;
    }

    else
    {
      VNValidatedLog(4, @"Major component of encoded smartCamprint is different than major component currently supported by software. The smartCamprint object cannot be decoded.", v9, v10, v11, v12, v13, v14, v28);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VNSmartCamObservation)initWithOriginatingRequestSpecifier:(id)specifier smartCamprints:(id)camprints
{
  specifierCopy = specifier;
  camprintsCopy = camprints;
  v16.receiver = self;
  v16.super_class = VNSmartCamObservation;
  v8 = [(VNObservation *)&v16 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v8)
  {
    v9 = [camprintsCopy copy];
    firstObject = 96;
    smartCamprints = v8->_smartCamprints;
    v8->_smartCamprints = v9;

    version = v8;
    v13 = [(NSArray *)v8->_smartCamprints count];
    if (v13)
    {
      firstObject = [(NSArray *)v8->_smartCamprints firstObject];
      version = [firstObject version];
      v14 = [version copy];
    }

    else
    {
      v14 = @"Undefined";
    }

    objc_storeStrong(&v8->_smartCamprintVersion, v14);
    if (v13)
    {
    }
  }

  return v8;
}

- (VNSmartCamObservation)initWithRequestRevision:(unint64_t)revision smartCamprints:(id)camprints
{
  camprintsCopy = camprints;
  v15.receiver = self;
  v15.super_class = VNSmartCamObservation;
  v7 = [(VNObservation *)&v15 initWithRequestRevision:revision];
  if (v7)
  {
    v8 = [camprintsCopy copy];
    firstObject = 96;
    smartCamprints = v7->_smartCamprints;
    v7->_smartCamprints = v8;

    version = v7;
    v12 = [(NSArray *)v7->_smartCamprints count];
    if (v12)
    {
      firstObject = [(NSArray *)v7->_smartCamprints firstObject];
      version = [firstObject version];
      v13 = [version copy];
    }

    else
    {
      v13 = @"Undefined";
    }

    objc_storeStrong(&v7->_smartCamprintVersion, v13);
    if (v12)
    {
    }
  }

  return v7;
}

+ (id)observationWithSmartCamprints:(id)camprints
{
  camprintsCopy = camprints;
  v5 = [[self alloc] initWithRequestRevision:1 smartCamprints:camprintsCopy];

  return v5;
}

@end
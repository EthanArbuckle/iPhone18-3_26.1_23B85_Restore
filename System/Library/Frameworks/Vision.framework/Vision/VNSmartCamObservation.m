@interface VNSmartCamObservation
+ (id)observationWithSmartCamprints:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VNSmartCamObservation)initWithCoder:(id)a3;
- (VNSmartCamObservation)initWithOriginatingRequestSpecifier:(id)a3 smartCamprints:(id)a4;
- (VNSmartCamObservation)initWithRequestRevision:(unint64_t)a3 smartCamprints:(id)a4;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNSmartCamObservation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNSmartCamObservation;
  if ([(VNObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(VNSmartCamObservation *)self smartCamprintVersion];
    v7 = [v5 smartCamprintVersion];
    v8 = VisionCoreEqualOrNilObjects();

    if (v8)
    {
      v9 = [(VNSmartCamObservation *)self smartCamprints];
      v10 = [v5 smartCamprints];
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
  v4 = [(VNSmartCamObservation *)self smartCamprintVersion];
  v5 = [v4 hash];

  v6 = [(VNSmartCamObservation *)self smartCamprints];
  v7 = [v6 hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNSmartCamObservation;
  v3 = [(VNObservation *)&v6 vn_cloneObject];
  v4 = v3;
  if (v3)
  {
    [v3 setSmartCamprints:self->_smartCamprints];
    objc_storeStrong(v4 + 13, self->_smartCamprintVersion);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNSmartCamObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNSmartCamObservation"];
  [v4 encodeObject:self->_smartCamprintVersion forKey:@"sc_algo"];
  [v4 encodeObject:self->_smartCamprints forKey:@"sc_descriptors"];
}

- (VNSmartCamObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = VNSmartCamObservation;
  v5 = [(VNObservation *)&v29 initWithCoder:v4];
  if (v5 && ![v4 vn_decodeCodingVersionForKey:@"VNSmartCamObservation"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sc_algo"];
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
      v24 = [v4 decodeObjectOfClasses:v23 forKey:@"sc_descriptors"];

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

- (VNSmartCamObservation)initWithOriginatingRequestSpecifier:(id)a3 smartCamprints:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VNSmartCamObservation;
  v8 = [(VNObservation *)&v16 initWithOriginatingRequestSpecifier:v6];
  if (v8)
  {
    v9 = [v7 copy];
    v10 = 96;
    smartCamprints = v8->_smartCamprints;
    v8->_smartCamprints = v9;

    v12 = v8;
    v13 = [(NSArray *)v8->_smartCamprints count];
    if (v13)
    {
      v10 = [(NSArray *)v8->_smartCamprints firstObject];
      v12 = [v10 version];
      v14 = [v12 copy];
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

- (VNSmartCamObservation)initWithRequestRevision:(unint64_t)a3 smartCamprints:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = VNSmartCamObservation;
  v7 = [(VNObservation *)&v15 initWithRequestRevision:a3];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = 96;
    smartCamprints = v7->_smartCamprints;
    v7->_smartCamprints = v8;

    v11 = v7;
    v12 = [(NSArray *)v7->_smartCamprints count];
    if (v12)
    {
      v9 = [(NSArray *)v7->_smartCamprints firstObject];
      v11 = [v9 version];
      v13 = [v11 copy];
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

+ (id)observationWithSmartCamprints:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRequestRevision:1 smartCamprints:v4];

  return v5;
}

@end
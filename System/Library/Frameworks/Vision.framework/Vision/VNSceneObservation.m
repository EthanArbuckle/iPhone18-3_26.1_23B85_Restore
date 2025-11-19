@interface VNSceneObservation
+ (VNSceneObservation)observationWithSceneprints:(id)a3;
+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (VNSceneObservation)initWithCoder:(id)a3;
- (VNSceneObservation)initWithOriginatingRequestSpecifier:(id)a3 sceneprints:(id)a4;
- (VNSceneObservation)initWithRequestRevision:(unint64_t)a3 sceneprints:(id)a4;
- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)a3;
- (id)data;
- (id)vn_cloneObject;
- (unint64_t)elementCount;
- (unint64_t)elementType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNSceneObservation

- (id)data
{
  v3 = [(VNSceneObservation *)self sceneprints];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 descriptorData];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VNSceneObservation;
    v5 = [(VNFeaturePrintObservation *)&v8 data];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)elementCount
{
  v2 = [(VNSceneObservation *)self sceneprints];
  v3 = [v2 firstObject];

  v4 = [v3 elementCount];
  return v4;
}

- (unint64_t)elementType
{
  v2 = [(VNSceneObservation *)self sceneprints];
  v3 = [v2 firstObject];

  v4 = [v3 elementType];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNSceneObservation;
    if ([(VNObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNSceneObservation *)self sceneprintVersion];
      v7 = [(VNSceneObservation *)v5 sceneprintVersion];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        v9 = [(VNSceneObservation *)self sceneprints];
        v10 = [(VNSceneObservation *)v5 sceneprints];
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
  }

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VNSceneObservation;
  v3 = [(VNObservation *)&v9 hash];
  v4 = [(VNSceneObservation *)self sceneprintVersion];
  v5 = [v4 hash];

  v6 = [(VNSceneObservation *)self sceneprints];
  v7 = [v6 hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNSceneObservation;
  v3 = [(VNObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSArray *)self->_sceneprints copy];
    v5 = *(v3 + 96);
    *(v3 + 96) = v4;

    objc_storeStrong((v3 + 104), self->_sceneprintVersion);
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNSceneObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNSceneObservation"];
  [v4 encodeObject:self->_sceneprintVersion forKey:@"algo"];
  [v4 encodeObject:self->_sceneprints forKey:@"descriptors"];
}

- (VNSceneObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = VNSceneObservation;
  v5 = [(VNObservation *)&v29 initWithCoder:v4];
  if (v5 && ![v4 vn_decodeCodingVersionForKey:@"VNSceneObservation"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algo"];
    v8 = +[VNSceneObservation sceneprintCurrentVersion];
    if ([VNVersionParser isMajorVersion:v7 equalToMajorVersion:v8])
    {
      if (![VNVersionParser isMinorVersion:v7 equalToMinorVersion:v8])
      {
        VNValidatedLog(2, @"Minor component of encoded sceneprint is different than minor component currently supported by software.", v15, v16, v17, v18, v19, v20, v28);
      }

      objc_storeStrong(&v5->_sceneprintVersion, v7);
      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_opt_class();
      v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
      v24 = [v4 decodeObjectOfClasses:v23 forKey:@"descriptors"];

      v25 = [v24 copy];
      sceneprints = v5->_sceneprints;
      v5->_sceneprints = v25;

      v6 = v5;
    }

    else
    {
      VNValidatedLog(4, @"Major component of encoded sceneprint is different than major component currently supported by software. The sceneprint object cannot be decoded.", v9, v10, v11, v12, v13, v14, v28);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VNSceneObservation)initWithOriginatingRequestSpecifier:(id)a3 sceneprints:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VNSceneObservation;
  v8 = [(VNObservation *)&v16 initWithOriginatingRequestSpecifier:v6];
  if (v8)
  {
    v9 = [v7 copy];
    v10 = 96;
    sceneprints = v8->_sceneprints;
    v8->_sceneprints = v9;

    v12 = v8;
    v13 = [(NSArray *)v8->_sceneprints count];
    if (v13)
    {
      v10 = [(NSArray *)v8->_sceneprints firstObject];
      v12 = [v10 version];
      v14 = [v12 copy];
    }

    else
    {
      v14 = @"Undefined";
    }

    objc_storeStrong(&v8->_sceneprintVersion, v14);
    if (v13)
    {
    }
  }

  return v8;
}

- (VNSceneObservation)initWithRequestRevision:(unint64_t)a3 sceneprints:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = VNSceneObservation;
  v7 = [(VNObservation *)&v16 initWithRequestRevision:a3];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = 96;
    sceneprints = v7->_sceneprints;
    v7->_sceneprints = v8;

    v11 = v7;
    v12 = [(NSArray *)v7->_sceneprints count];
    if (v12)
    {
      v9 = [(NSArray *)v7->_sceneprints firstObject];
      v11 = [v9 version];
      v13 = [v11 copy];
    }

    else
    {
      v13 = @"Undefined";
    }

    objc_storeStrong(&v7->_sceneprintVersion, v13);
    if (v12)
    {
    }

    v14 = v7;
  }

  return v7;
}

+ (VNSceneObservation)observationWithSceneprints:(id)a3
{
  v3 = a3;
  v4 = [[VNSceneObservation alloc] initWithRequestRevision:1 sceneprints:v3];

  return v4;
}

+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 5)
  {
    return @"VNGenerateImageFeaturePrintRequest";
  }

  else
  {
    return @"VNCreateSceneprintRequest";
  }
}

- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)a3
{
  v4 = [(VNSceneObservation *)self sceneprints];
  if ([v4 count])
  {
    a3 = v4;
  }

  else if (a3)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 initWithFormat:@"%@ does not have any sceneprint data", v7];

    *a3 = [VNError errorForDataUnavailableWithLocalizedDescription:v8];

    a3 = 0;
  }

  return a3;
}

@end
@interface VNSceneObservation
+ (VNSceneObservation)observationWithSceneprints:(id)sceneprints;
+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)revision;
- (BOOL)isEqual:(id)equal;
- (VNSceneObservation)initWithCoder:(id)coder;
- (VNSceneObservation)initWithOriginatingRequestSpecifier:(id)specifier sceneprints:(id)sceneprints;
- (VNSceneObservation)initWithRequestRevision:(unint64_t)revision sceneprints:(id)sceneprints;
- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)error;
- (id)data;
- (id)vn_cloneObject;
- (unint64_t)elementCount;
- (unint64_t)elementType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSceneObservation

- (id)data
{
  sceneprints = [(VNSceneObservation *)self sceneprints];
  firstObject = [sceneprints firstObject];

  if (firstObject)
  {
    descriptorData = [firstObject descriptorData];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VNSceneObservation;
    descriptorData = [(VNFeaturePrintObservation *)&v8 data];
  }

  v6 = descriptorData;

  return v6;
}

- (unint64_t)elementCount
{
  sceneprints = [(VNSceneObservation *)self sceneprints];
  firstObject = [sceneprints firstObject];

  elementCount = [firstObject elementCount];
  return elementCount;
}

- (unint64_t)elementType
{
  sceneprints = [(VNSceneObservation *)self sceneprints];
  firstObject = [sceneprints firstObject];

  elementType = [firstObject elementType];
  return elementType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNSceneObservation;
    if ([(VNObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      sceneprintVersion = [(VNSceneObservation *)self sceneprintVersion];
      sceneprintVersion2 = [(VNSceneObservation *)v5 sceneprintVersion];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        sceneprints = [(VNSceneObservation *)self sceneprints];
        sceneprints2 = [(VNSceneObservation *)v5 sceneprints];
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
  sceneprintVersion = [(VNSceneObservation *)self sceneprintVersion];
  v5 = [sceneprintVersion hash];

  sceneprints = [(VNSceneObservation *)self sceneprints];
  v7 = [sceneprints hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNSceneObservation;
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSArray *)self->_sceneprints copy];
    v5 = *(vn_cloneObject + 96);
    *(vn_cloneObject + 96) = v4;

    objc_storeStrong((vn_cloneObject + 104), self->_sceneprintVersion);
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNSceneObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNSceneObservation"];
  [coderCopy encodeObject:self->_sceneprintVersion forKey:@"algo"];
  [coderCopy encodeObject:self->_sceneprints forKey:@"descriptors"];
}

- (VNSceneObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = VNSceneObservation;
  v5 = [(VNObservation *)&v29 initWithCoder:coderCopy];
  if (v5 && ![coderCopy vn_decodeCodingVersionForKey:@"VNSceneObservation"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algo"];
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
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"descriptors"];

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

- (VNSceneObservation)initWithOriginatingRequestSpecifier:(id)specifier sceneprints:(id)sceneprints
{
  specifierCopy = specifier;
  sceneprintsCopy = sceneprints;
  v16.receiver = self;
  v16.super_class = VNSceneObservation;
  v8 = [(VNObservation *)&v16 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v8)
  {
    v9 = [sceneprintsCopy copy];
    firstObject = 96;
    sceneprints = v8->_sceneprints;
    v8->_sceneprints = v9;

    version = v8;
    v13 = [(NSArray *)v8->_sceneprints count];
    if (v13)
    {
      firstObject = [(NSArray *)v8->_sceneprints firstObject];
      version = [firstObject version];
      v14 = [version copy];
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

- (VNSceneObservation)initWithRequestRevision:(unint64_t)revision sceneprints:(id)sceneprints
{
  sceneprintsCopy = sceneprints;
  v16.receiver = self;
  v16.super_class = VNSceneObservation;
  v7 = [(VNObservation *)&v16 initWithRequestRevision:revision];
  if (v7)
  {
    v8 = [sceneprintsCopy copy];
    firstObject = 96;
    sceneprints = v7->_sceneprints;
    v7->_sceneprints = v8;

    version = v7;
    v12 = [(NSArray *)v7->_sceneprints count];
    if (v12)
    {
      firstObject = [(NSArray *)v7->_sceneprints firstObject];
      version = [firstObject version];
      v13 = [version copy];
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

+ (VNSceneObservation)observationWithSceneprints:(id)sceneprints
{
  sceneprintsCopy = sceneprints;
  v4 = [[VNSceneObservation alloc] initWithRequestRevision:1 sceneprints:sceneprintsCopy];

  return v4;
}

+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 5)
  {
    return @"VNGenerateImageFeaturePrintRequest";
  }

  else
  {
    return @"VNCreateSceneprintRequest";
  }
}

- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)error
{
  sceneprints = [(VNSceneObservation *)self sceneprints];
  if ([sceneprints count])
  {
    error = sceneprints;
  }

  else if (error)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 initWithFormat:@"%@ does not have any sceneprint data", v7];

    *error = [VNError errorForDataUnavailableWithLocalizedDescription:v8];

    error = 0;
  }

  return error;
}

@end
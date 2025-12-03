@interface VNRecognizedPointsObservation
- (BOOL)isEqual:(id)equal;
- (VNRecognizedPointsObservation)initWithCoder:(id)coder;
- (VNRecognizedPointsObservation)initWithOriginatingRequestSpecifier:(id)specifier keypointReturningObservation:(id)observation;
- (id)debugQuickLookObject;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)addAllJointsToPath:(CGPath *)path imageSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedPointsObservation

- (id)debugQuickLookObject
{
  v12 = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v4 = Mutable;
    v10.receiver = self;
    v10.super_class = VNRecognizedPointsObservation;
    debugQuickLookObject = [(VNObservation *)&v10 debugQuickLookObject];
    v6 = debugQuickLookObject;
    if (debugQuickLookObject)
    {
      [(VNRecognizedPointsObservation *)self addAllJointsToPath:v4 imageSize:VNDebugImageSizeFromObject(debugQuickLookObject)];
      v11[0] = xmmword_1A6052420;
      v11[1] = unk_1A6052430;
      v7 = VNDebugColorFromValues(v11);
      VNDebugImageRenderNormalizedCGPathOnImage(v4, v6, v7);
    }

    else
    {
      [(VNRecognizedPointsObservation *)self addAllJointsToPath:v4 imageSize:512.0, 512.0];
      VNDebugPathFromNormalizedCGPath(v4, 512.0, 512.0);
    }
    v8 = ;

    CGPathRelease(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addAllJointsToPath:(CGPath *)path imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x1E69E9840];
  availableKeys = [(VNRecognizedPointsObservation *)self availableKeys];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [availableKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 7.0 / width;
    v13 = 7.0 / height;
    v14 = *v24;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(availableKeys);
        }

        v17 = *(*(&v23 + 1) + 8 * v15);
        v22 = v16;
        v18 = [(VNRecognizedPointsObservation *)self recognizedPointForKey:v17 error:&v22];
        v11 = v22;

        [v18 location];
        v20 = v19 - v12 * 0.5;
        [v18 location];
        v29.origin.y = v21 - v13 * 0.5;
        v29.origin.x = v20;
        v29.size.width = v12;
        v29.size.height = v13;
        CGPathAddEllipseInRect(path, 0, v29);

        ++v15;
        v16 = v11;
      }

      while (v10 != v15);
      v10 = [availableKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedPointsObservation;
  return [(VNRecognizedPointsSpecifier *)self->_specifier hash]^ __ROR8__([(VNObservation *)&v3 hash], 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = VNRecognizedPointsObservation;
  if ([(VNObservation *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = self->_specifier;
    v6 = VisionCoreEqualOrNilObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNRecognizedPointsObservation;
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VNRecognizedPointsSpecifier *)self->_specifier copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = VNRecognizedPointsObservation;
  [(VNObservation *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_specifier forKey:@"PtSpec"];
  objc_autoreleasePoolPop(v5);
}

- (VNRecognizedPointsObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VNRecognizedPointsObservation;
  v5 = [(VNObservation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PtSpec"];
    specifier = v5->_specifier;
    v5->_specifier = v6;
  }

  return v5;
}

- (VNRecognizedPointsObservation)initWithOriginatingRequestSpecifier:(id)specifier keypointReturningObservation:(id)observation
{
  specifierCopy = specifier;
  observationCopy = observation;
  v27.receiver = self;
  v27.super_class = VNRecognizedPointsObservation;
  v8 = [(VNObservation *)&v27 initWithOriginatingRequestSpecifier:specifierCopy];
  if (!v8)
  {
    goto LABEL_21;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v9 = getVCPPersonObservationClass_softClass;
  v36 = getVCPPersonObservationClass_softClass;
  if (!getVCPPersonObservationClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getVCPPersonObservationClass_block_invoke;
    v31 = &unk_1E77B69F0;
    v32 = &v33;
    __getVCPPersonObservationClass_block_invoke(&v28);
    v9 = v34[3];
  }

  v10 = v9;
  _Block_object_dispose(&v33, 8);
  if ([observationCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = observationCopy;
    v12 = [[VNRecognizedBodyPointsSpecifier alloc] initWithVCPPersonObservation:v11 originatingRequestSpecifier:specifierCopy];
    specifier = v8->_specifier;
    v8->_specifier = &v12->super;

    if ([specifierCopy requestRevision] == 3737841664)
    {
      leftHand = [(VNRecognizedPointsSpecifier *)v11 leftHand];
      if (leftHand)
      {
        v15 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
        v16 = [(VNRecognizedPointsObservation *)[VNHumanHandPoseObservation alloc] initWithOriginatingRequestSpecifier:v15 keypointReturningObservation:leftHand];
        [(VNRecognizedPointsObservation *)v8 setLeftHand:v16];
      }

      rightHand = [(VNRecognizedPointsSpecifier *)v11 rightHand];
      if (rightHand)
      {
        v18 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
        v19 = [(VNRecognizedPointsObservation *)[VNHumanHandPoseObservation alloc] initWithOriginatingRequestSpecifier:v18 keypointReturningObservation:rightHand];
        [(VNRecognizedPointsObservation *)v8 setRightHand:v19];
      }
    }

    goto LABEL_20;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v20 = getVCPHandObservationClass_softClass;
  v36 = getVCPHandObservationClass_softClass;
  if (!getVCPHandObservationClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getVCPHandObservationClass_block_invoke;
    v31 = &unk_1E77B69F0;
    v32 = &v33;
    __getVCPHandObservationClass_block_invoke(&v28);
    v20 = v34[3];
  }

  v21 = v20;
  _Block_object_dispose(&v33, 8);
  if (![observationCopy isMemberOfClass:objc_opt_class()])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v23 = getVCPPetsObservationClass_softClass;
    v36 = getVCPPetsObservationClass_softClass;
    if (!getVCPPetsObservationClass_softClass)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getVCPPetsObservationClass_block_invoke;
      v31 = &unk_1E77B69F0;
      v32 = &v33;
      __getVCPPetsObservationClass_block_invoke(&v28);
      v23 = v34[3];
    }

    v24 = v23;
    _Block_object_dispose(&v33, 8);
    if ([observationCopy isMemberOfClass:objc_opt_class()])
    {
      v22 = [[VNRecognizedAnimalBodyPointsSpecifier alloc] initWithVCPPetsObservation:observationCopy originatingRequestSpecifier:specifierCopy];
      goto LABEL_19;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v22 = [[VNRecognizedHandPointsSpecifier alloc] initWithVCPHandObservation:observationCopy originatingRequestSpecifier:specifierCopy];
LABEL_19:
  v11 = v8->_specifier;
  v8->_specifier = &v22->super;
LABEL_20:

  v25 = v8;
LABEL_22:

  return v25;
}

@end
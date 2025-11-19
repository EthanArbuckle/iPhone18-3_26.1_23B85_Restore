@interface VNRecognizedPointsObservation
- (BOOL)isEqual:(id)a3;
- (VNRecognizedPointsObservation)initWithCoder:(id)a3;
- (VNRecognizedPointsObservation)initWithOriginatingRequestSpecifier:(id)a3 keypointReturningObservation:(id)a4;
- (id)debugQuickLookObject;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)addAllJointsToPath:(CGPath *)a3 imageSize:(CGSize)a4;
- (void)encodeWithCoder:(id)a3;
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
    v5 = [(VNObservation *)&v10 debugQuickLookObject];
    v6 = v5;
    if (v5)
    {
      [(VNRecognizedPointsObservation *)self addAllJointsToPath:v4 imageSize:VNDebugImageSizeFromObject(v5)];
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

- (void)addAllJointsToPath:(CGPath *)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v28 = *MEMORY[0x1E69E9840];
  v8 = [(VNRecognizedPointsObservation *)self availableKeys];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v8);
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
        CGPathAddEllipseInRect(a3, 0, v29);

        ++v15;
        v16 = v11;
      }

      while (v10 != v15);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNRecognizedPointsObservation;
  if ([(VNObservation *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  v3 = [(VNObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(VNRecognizedPointsSpecifier *)self->_specifier copy];
    v5 = v3[12];
    v3[12] = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = VNRecognizedPointsObservation;
  [(VNObservation *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_specifier forKey:@"PtSpec"];
  objc_autoreleasePoolPop(v5);
}

- (VNRecognizedPointsObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VNRecognizedPointsObservation;
  v5 = [(VNObservation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PtSpec"];
    specifier = v5->_specifier;
    v5->_specifier = v6;
  }

  return v5;
}

- (VNRecognizedPointsObservation)initWithOriginatingRequestSpecifier:(id)a3 keypointReturningObservation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = VNRecognizedPointsObservation;
  v8 = [(VNObservation *)&v27 initWithOriginatingRequestSpecifier:v6];
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
  if ([v7 isMemberOfClass:objc_opt_class()])
  {
    v11 = v7;
    v12 = [[VNRecognizedBodyPointsSpecifier alloc] initWithVCPPersonObservation:v11 originatingRequestSpecifier:v6];
    specifier = v8->_specifier;
    v8->_specifier = &v12->super;

    if ([v6 requestRevision] == 3737841664)
    {
      v14 = [(VNRecognizedPointsSpecifier *)v11 leftHand];
      if (v14)
      {
        v15 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
        v16 = [(VNRecognizedPointsObservation *)[VNHumanHandPoseObservation alloc] initWithOriginatingRequestSpecifier:v15 keypointReturningObservation:v14];
        [(VNRecognizedPointsObservation *)v8 setLeftHand:v16];
      }

      v17 = [(VNRecognizedPointsSpecifier *)v11 rightHand];
      if (v17)
      {
        v18 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
        v19 = [(VNRecognizedPointsObservation *)[VNHumanHandPoseObservation alloc] initWithOriginatingRequestSpecifier:v18 keypointReturningObservation:v17];
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
  if (![v7 isMemberOfClass:objc_opt_class()])
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
    if ([v7 isMemberOfClass:objc_opt_class()])
    {
      v22 = [[VNRecognizedAnimalBodyPointsSpecifier alloc] initWithVCPPetsObservation:v7 originatingRequestSpecifier:v6];
      goto LABEL_19;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v22 = [[VNRecognizedHandPointsSpecifier alloc] initWithVCPHandObservation:v7 originatingRequestSpecifier:v6];
LABEL_19:
  v11 = v8->_specifier;
  v8->_specifier = &v22->super;
LABEL_20:

  v25 = v8;
LABEL_22:

  return v25;
}

@end
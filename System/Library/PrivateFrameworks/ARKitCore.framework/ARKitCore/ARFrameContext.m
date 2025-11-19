@interface ARFrameContext
- (ARFrameContext)init;
- (ARFrameContext)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (__n128)setRelocalizationDeltaTransform:(__n128)a3;
- (double)setSessionTransform:(__n128)a3;
- (int64_t)cameraPosition;
- (void)addAnchor:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeAnchor:(id)a3;
- (void)resetSessionTransform;
- (void)setAnchorsToAdd:(id)a3;
- (void)setAnchorsToRemove:(id)a3;
- (void)setAnchorsToStopTracking:(id)a3;
- (void)stopTrackingAnchors:(id)a3;
@end

@implementation ARFrameContext

- (ARFrameContext)init
{
  v8.receiver = self;
  v8.super_class = ARFrameContext;
  v2 = [(ARFrameContext *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    identifier = v2->_identifier;
    v2->_identifier = v3;

    v5 = objc_opt_new();
    collaborationData = v2->_collaborationData;
    v2->_collaborationData = v5;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_identifier isEqual:v4->_identifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (ARFrameContext)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = ARFrameContext;
  v5 = [(ARFrameContext *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"identifier"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectForKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v10;

    v12 = [v4 decodeObjectForKey:@"orientationData"];
    orientationData = v5->_orientationData;
    v5->_orientationData = v12;

    v14 = [v4 decodeObjectForKey:@"locationData"];
    locationData = v5->_locationData;
    v5->_locationData = v14;

    v5->_worldAlignment = [v4 decodeIntegerForKey:@"worldAlignment"];
    v16 = [v4 decodeObjectForKey:@"worldMap"];
    worldMap = v5->_worldMap;
    v5->_worldMap = v16;

    v18 = [v4 decodeObjectForKey:@"frameDebugOptions"];
    v5->_frameDebugOptions = [v18 unsignedIntegerValue];

    v5->_didRelocalize = [v4 decodeBoolForKey:@"didRelocalize"];
    [v4 ar_decodeMatrix4x4ForKey:@"relocalizationDeltaTransform"];
    *&v5[1].super.isa = v19;
    *&v5[1]._anchorsToAdd = v20;
    *&v5[1]._anchorsToStopTracking = v21;
    *&v5[1]._imageData = v22;
    [v4 ar_decodeMatrix4x4ForKey:@"sessionTransform"];
    *v5->_anon_70 = v23;
    *&v5->_anon_70[16] = v24;
    *&v5->_anon_70[32] = v25;
    *&v5->_anon_70[48] = v26;
    v5->_sessionTransformUpdated = [v4 decodeBoolForKey:@"sessionTransformUpdated"];
    v5->_sessionTransformReset = [v4 decodeBoolForKey:@"sessionTransformReset"];
    v5->_sessionTransformShouldResumeCameraHeading = [v4 decodeBoolForKey:@"sessionTransformShouldResumeCameraHeading"];
    v5->_sessionTransformShouldResumeCameraPosition = [v4 decodeBoolForKey:@"sessionTransformShouldResumeCameraPosition"];
    v27 = [v4 decodeObjectForKey:@"anchorsToAdd"];
    anchorsToAdd = v5->_anchorsToAdd;
    v5->_anchorsToAdd = v27;

    v29 = [v4 decodeObjectForKey:@"anchorsToRemove"];
    anchorsToRemove = v5->_anchorsToRemove;
    v5->_anchorsToRemove = v29;

    v31 = [v4 decodeObjectForKey:@"anchorsToStopTracking"];
    anchorsToStopTracking = v5->_anchorsToStopTracking;
    v5->_anchorsToStopTracking = v31;

    v33 = [v4 decodeObjectForKey:@"collaborationData"];
    collaborationData = v5->_collaborationData;
    v5->_collaborationData = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeObject:self->_imageData forKey:@"imageData"];
  [v6 encodeObject:self->_orientationData forKey:@"orientationData"];
  [v6 encodeObject:self->_locationData forKey:@"locationData"];
  [v6 encodeInteger:self->_worldAlignment forKey:@"worldAlignment"];
  [v6 encodeObject:self->_worldMap forKey:@"worldMap"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_frameDebugOptions];
  [v6 encodeObject:v5 forKey:@"frameDebugOptions"];

  [v6 encodeBool:self->_didRelocalize forKey:@"didRelocalize"];
  [v6 ar_encodeMatrix4x4:@"relocalizationDeltaTransform" forKey:{*&self[1].super.isa, *&self[1]._anchorsToAdd, *&self[1]._anchorsToStopTracking, *&self[1]._imageData}];
  [v6 ar_encodeMatrix4x4:@"sessionTransform" forKey:{*self->_anon_70, *&self->_anon_70[16], *&self->_anon_70[32], *&self->_anon_70[48]}];
  [v6 encodeBool:self->_sessionTransformUpdated forKey:@"sessionTransformUpdated"];
  [v6 encodeBool:self->_sessionTransformReset forKey:@"sessionTransformReset"];
  [v6 encodeBool:self->_sessionTransformShouldResumeCameraHeading forKey:@"sessionTransformShouldResumeCameraHeading"];
  [v6 encodeBool:self->_sessionTransformShouldResumeCameraPosition forKey:@"sessionTransformShouldResumeCameraPosition"];
  [v6 encodeObject:self->_anchorsToAdd forKey:@"anchorsToAdd"];
  [v6 encodeObject:self->_anchorsToRemove forKey:@"anchorsToRemove"];
  [v6 encodeObject:self->_anchorsToStopTracking forKey:@"anchorsToStopTracking"];
  [v6 encodeObject:self->_collaborationData forKey:@"collaborationData"];
}

- (double)setSessionTransform:(__n128)a3
{
  a1[7] = a2;
  a1[8] = a3;
  a1[9] = a4;
  a1[10] = a5;
  *&result = 0x100000001;
  a1[2].n128_u32[2] = 1;
  return result;
}

- (void)resetSessionTransform
{
  v2 = MEMORY[0x1E69E9B18];
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  *self->_anon_70 = *MEMORY[0x1E69E9B18];
  *&self->_anon_70[16] = v3;
  v4 = *(v2 + 48);
  *&self->_anon_70[32] = *(v2 + 32);
  *&self->_anon_70[48] = v4;
  *&self->_sessionTransformUpdated = 257;
}

- (void)addAnchor:(id)a3
{
  v4 = a3;
  anchorsToAdd = self->_anchorsToAdd;
  v8 = v4;
  if (!anchorsToAdd)
  {
    v6 = objc_opt_new();
    v7 = self->_anchorsToAdd;
    self->_anchorsToAdd = v6;

    v4 = v8;
    anchorsToAdd = self->_anchorsToAdd;
  }

  [(NSMutableArray *)anchorsToAdd addObject:v4];
}

- (void)removeAnchor:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!self->_anchorsToRemove)
  {
    v5 = objc_opt_new();
    anchorsToRemove = self->_anchorsToRemove;
    self->_anchorsToRemove = v5;

    v4 = v7;
  }

  [(NSMutableArray *)self->_anchorsToAdd removeObject:v4];
  [(NSMutableArray *)self->_anchorsToRemove addObject:v7];
}

- (void)stopTrackingAnchors:(id)a3
{
  v4 = a3;
  anchorsToStopTracking = self->_anchorsToStopTracking;
  v8 = v4;
  if (!anchorsToStopTracking)
  {
    v6 = objc_opt_new();
    v7 = self->_anchorsToStopTracking;
    self->_anchorsToStopTracking = v6;

    v4 = v8;
    anchorsToStopTracking = self->_anchorsToStopTracking;
  }

  [(NSMutableArray *)anchorsToStopTracking addObjectsFromArray:v4];
}

- (void)setAnchorsToAdd:(id)a3
{
  v4 = [a3 mutableCopy];
  anchorsToAdd = self->_anchorsToAdd;
  self->_anchorsToAdd = v4;
}

- (void)setAnchorsToRemove:(id)a3
{
  v4 = [a3 mutableCopy];
  anchorsToRemove = self->_anchorsToRemove;
  self->_anchorsToRemove = v4;
}

- (void)setAnchorsToStopTracking:(id)a3
{
  v4 = [a3 mutableCopy];
  anchorsToStopTracking = self->_anchorsToStopTracking;
  self->_anchorsToStopTracking = v4;
}

- (int64_t)cameraPosition
{
  v2 = [(ARFrameContext *)self imageData];
  v3 = [v2 cameraPosition];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = ARFrameContext;
  v4 = [(ARFrameContext *)&v8 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendFormat:@"identifier: %@\n", self->_identifier];
  v6 = [(ARFrameContext *)self imageData];
  [v5 appendFormat:@"imageData: %@\n", v6];

  return v5;
}

- (__n128)setRelocalizationDeltaTransform:(__n128)a3
{
  result[11] = a2;
  result[12] = a3;
  result[13] = a4;
  result[14] = a5;
  return result;
}

@end
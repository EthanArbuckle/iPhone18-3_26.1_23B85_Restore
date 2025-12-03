@interface ARFrameContext
- (ARFrameContext)init;
- (ARFrameContext)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (__n128)setRelocalizationDeltaTransform:(__n128)transform;
- (double)setSessionTransform:(__n128)transform;
- (int64_t)cameraPosition;
- (void)addAnchor:(id)anchor;
- (void)encodeWithCoder:(id)coder;
- (void)removeAnchor:(id)anchor;
- (void)resetSessionTransform;
- (void)setAnchorsToAdd:(id)add;
- (void)setAnchorsToRemove:(id)remove;
- (void)setAnchorsToStopTracking:(id)tracking;
- (void)stopTrackingAnchors:(id)anchors;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_identifier isEqual:equalCopy->_identifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (ARFrameContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = ARFrameContext;
  v5 = [(ARFrameContext *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"identifier"];
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

    v10 = [coderCopy decodeObjectForKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v10;

    v12 = [coderCopy decodeObjectForKey:@"orientationData"];
    orientationData = v5->_orientationData;
    v5->_orientationData = v12;

    v14 = [coderCopy decodeObjectForKey:@"locationData"];
    locationData = v5->_locationData;
    v5->_locationData = v14;

    v5->_worldAlignment = [coderCopy decodeIntegerForKey:@"worldAlignment"];
    v16 = [coderCopy decodeObjectForKey:@"worldMap"];
    worldMap = v5->_worldMap;
    v5->_worldMap = v16;

    v18 = [coderCopy decodeObjectForKey:@"frameDebugOptions"];
    v5->_frameDebugOptions = [v18 unsignedIntegerValue];

    v5->_didRelocalize = [coderCopy decodeBoolForKey:@"didRelocalize"];
    [coderCopy ar_decodeMatrix4x4ForKey:@"relocalizationDeltaTransform"];
    *&v5[1].super.isa = v19;
    *&v5[1]._anchorsToAdd = v20;
    *&v5[1]._anchorsToStopTracking = v21;
    *&v5[1]._imageData = v22;
    [coderCopy ar_decodeMatrix4x4ForKey:@"sessionTransform"];
    *v5->_anon_70 = v23;
    *&v5->_anon_70[16] = v24;
    *&v5->_anon_70[32] = v25;
    *&v5->_anon_70[48] = v26;
    v5->_sessionTransformUpdated = [coderCopy decodeBoolForKey:@"sessionTransformUpdated"];
    v5->_sessionTransformReset = [coderCopy decodeBoolForKey:@"sessionTransformReset"];
    v5->_sessionTransformShouldResumeCameraHeading = [coderCopy decodeBoolForKey:@"sessionTransformShouldResumeCameraHeading"];
    v5->_sessionTransformShouldResumeCameraPosition = [coderCopy decodeBoolForKey:@"sessionTransformShouldResumeCameraPosition"];
    v27 = [coderCopy decodeObjectForKey:@"anchorsToAdd"];
    anchorsToAdd = v5->_anchorsToAdd;
    v5->_anchorsToAdd = v27;

    v29 = [coderCopy decodeObjectForKey:@"anchorsToRemove"];
    anchorsToRemove = v5->_anchorsToRemove;
    v5->_anchorsToRemove = v29;

    v31 = [coderCopy decodeObjectForKey:@"anchorsToStopTracking"];
    anchorsToStopTracking = v5->_anchorsToStopTracking;
    v5->_anchorsToStopTracking = v31;

    v33 = [coderCopy decodeObjectForKey:@"collaborationData"];
    collaborationData = v5->_collaborationData;
    v5->_collaborationData = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  [coderCopy encodeObject:self->_orientationData forKey:@"orientationData"];
  [coderCopy encodeObject:self->_locationData forKey:@"locationData"];
  [coderCopy encodeInteger:self->_worldAlignment forKey:@"worldAlignment"];
  [coderCopy encodeObject:self->_worldMap forKey:@"worldMap"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_frameDebugOptions];
  [coderCopy encodeObject:v5 forKey:@"frameDebugOptions"];

  [coderCopy encodeBool:self->_didRelocalize forKey:@"didRelocalize"];
  [coderCopy ar_encodeMatrix4x4:@"relocalizationDeltaTransform" forKey:{*&self[1].super.isa, *&self[1]._anchorsToAdd, *&self[1]._anchorsToStopTracking, *&self[1]._imageData}];
  [coderCopy ar_encodeMatrix4x4:@"sessionTransform" forKey:{*self->_anon_70, *&self->_anon_70[16], *&self->_anon_70[32], *&self->_anon_70[48]}];
  [coderCopy encodeBool:self->_sessionTransformUpdated forKey:@"sessionTransformUpdated"];
  [coderCopy encodeBool:self->_sessionTransformReset forKey:@"sessionTransformReset"];
  [coderCopy encodeBool:self->_sessionTransformShouldResumeCameraHeading forKey:@"sessionTransformShouldResumeCameraHeading"];
  [coderCopy encodeBool:self->_sessionTransformShouldResumeCameraPosition forKey:@"sessionTransformShouldResumeCameraPosition"];
  [coderCopy encodeObject:self->_anchorsToAdd forKey:@"anchorsToAdd"];
  [coderCopy encodeObject:self->_anchorsToRemove forKey:@"anchorsToRemove"];
  [coderCopy encodeObject:self->_anchorsToStopTracking forKey:@"anchorsToStopTracking"];
  [coderCopy encodeObject:self->_collaborationData forKey:@"collaborationData"];
}

- (double)setSessionTransform:(__n128)transform
{
  self[7] = a2;
  self[8] = transform;
  self[9] = a4;
  self[10] = a5;
  *&result = 0x100000001;
  self[2].n128_u32[2] = 1;
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

- (void)addAnchor:(id)anchor
{
  anchorCopy = anchor;
  anchorsToAdd = self->_anchorsToAdd;
  v8 = anchorCopy;
  if (!anchorsToAdd)
  {
    v6 = objc_opt_new();
    v7 = self->_anchorsToAdd;
    self->_anchorsToAdd = v6;

    anchorCopy = v8;
    anchorsToAdd = self->_anchorsToAdd;
  }

  [(NSMutableArray *)anchorsToAdd addObject:anchorCopy];
}

- (void)removeAnchor:(id)anchor
{
  anchorCopy = anchor;
  v7 = anchorCopy;
  if (!self->_anchorsToRemove)
  {
    v5 = objc_opt_new();
    anchorsToRemove = self->_anchorsToRemove;
    self->_anchorsToRemove = v5;

    anchorCopy = v7;
  }

  [(NSMutableArray *)self->_anchorsToAdd removeObject:anchorCopy];
  [(NSMutableArray *)self->_anchorsToRemove addObject:v7];
}

- (void)stopTrackingAnchors:(id)anchors
{
  anchorsCopy = anchors;
  anchorsToStopTracking = self->_anchorsToStopTracking;
  v8 = anchorsCopy;
  if (!anchorsToStopTracking)
  {
    v6 = objc_opt_new();
    v7 = self->_anchorsToStopTracking;
    self->_anchorsToStopTracking = v6;

    anchorsCopy = v8;
    anchorsToStopTracking = self->_anchorsToStopTracking;
  }

  [(NSMutableArray *)anchorsToStopTracking addObjectsFromArray:anchorsCopy];
}

- (void)setAnchorsToAdd:(id)add
{
  v4 = [add mutableCopy];
  anchorsToAdd = self->_anchorsToAdd;
  self->_anchorsToAdd = v4;
}

- (void)setAnchorsToRemove:(id)remove
{
  v4 = [remove mutableCopy];
  anchorsToRemove = self->_anchorsToRemove;
  self->_anchorsToRemove = v4;
}

- (void)setAnchorsToStopTracking:(id)tracking
{
  v4 = [tracking mutableCopy];
  anchorsToStopTracking = self->_anchorsToStopTracking;
  self->_anchorsToStopTracking = v4;
}

- (int64_t)cameraPosition
{
  imageData = [(ARFrameContext *)self imageData];
  cameraPosition = [imageData cameraPosition];

  return cameraPosition;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = ARFrameContext;
  v4 = [(ARFrameContext *)&v8 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  [v5 appendFormat:@"identifier: %@\n", self->_identifier];
  imageData = [(ARFrameContext *)self imageData];
  [v5 appendFormat:@"imageData: %@\n", imageData];

  return v5;
}

- (__n128)setRelocalizationDeltaTransform:(__n128)transform
{
  result[11] = a2;
  result[12] = transform;
  result[13] = a4;
  result[14] = a5;
  return result;
}

@end
@interface VNFaceGaze
- (BOOL)hasLocation;
- (BOOL)isEqual:(id)equal;
- (CGPoint)location;
- (CGPoint)locationInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (CGRect)locationBounds;
- (VNFaceGaze)initWithCoder:(id)coder;
- (VNFaceGaze)initWithFaceObservationUUID:(id)d direction:(int64_t)direction location:(CGPoint)location bounds:(CGRect)bounds horizontalAngle:(float)angle lookedAtFaceObservationUUID:(id)iD gazeMask:(id)mask originatingRequestSpecifier:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceGaze

- (CGRect)locationBounds
{
  x = self->_locationBounds.origin.x;
  y = self->_locationBounds.origin.y;
  width = self->_locationBounds.size.width;
  height = self->_locationBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (VNFaceGaze)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"face"];
  v6 = [coderCopy decodeIntegerForKey:@"direction"];
  [coderCopy decodeDoubleForKey:@"locX"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"locY"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lookFace"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gazeMask"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oreq"];
  if (v13)
  {
    if ([coderCopy containsValueForKey:@"locBounds"])
    {
      [coderCopy vn_decodeRectForKey:@"locBounds"];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
    }

    else
    {
      v15 = *MEMORY[0x1E695F050];
      v17 = *(MEMORY[0x1E695F050] + 8);
      v19 = *(MEMORY[0x1E695F050] + 16);
      v21 = *(MEMORY[0x1E695F050] + 24);
    }

    if ([coderCopy containsValueForKey:@"horizAngle"])
    {
      [coderCopy decodeFloatForKey:@"horizAngle"];
      LODWORD(v23) = v24;
    }

    else
    {
      LODWORD(v23) = 2143289344;
    }

    self = [(VNFaceGaze *)self initWithFaceObservationUUID:v5 direction:v6 location:v11 bounds:v12 horizontalAngle:v13 lookedAtFaceObservationUUID:v8 gazeMask:v10 originatingRequestSpecifier:v15, v17, v19, v21, v23];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  faceObservationUUID = self->_faceObservationUUID;
  coderCopy = coder;
  [coderCopy encodeObject:faceObservationUUID forKey:@"face"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeDouble:@"locX" forKey:self->_location.x];
  [coderCopy encodeDouble:@"locY" forKey:self->_location.y];
  [coderCopy encodeObject:self->_lookedAtFaceObservationUUID forKey:@"lookFace"];
  [coderCopy encodeObject:self->_gazeMask forKey:@"gazeMask"];
  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"oreq"];
  [coderCopy vn_encodeRect:@"locBounds" forKey:{self->_locationBounds.origin.x, self->_locationBounds.origin.y, self->_locationBounds.size.width, self->_locationBounds.size.height}];
  *&v5 = self->_horizontalAngle;
  [coderCopy encodeFloat:@"horizAngle" forKey:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
    goto LABEL_14;
  }

  v43.receiver = self;
  v43.super_class = VNFaceGaze;
  if (![(VNFaceGaze *)&v43 isEqual:equalCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;
  faceObservationUUID = [(VNFaceGaze *)self faceObservationUUID];
  faceObservationUUID2 = [(VNFaceGaze *)v5 faceObservationUUID];
  v8 = [faceObservationUUID isEqual:faceObservationUUID2];

  if (!v8)
  {
    goto LABEL_10;
  }

  originatingRequestSpecifier = [(VNFaceGaze *)self originatingRequestSpecifier];
  originatingRequestSpecifier2 = [(VNFaceGaze *)v5 originatingRequestSpecifier];
  v11 = [originatingRequestSpecifier isEqual:originatingRequestSpecifier2];

  if (!v11)
  {
    goto LABEL_10;
  }

  direction = [(VNFaceGaze *)self direction];
  if (direction != [(VNFaceGaze *)v5 direction])
  {
    goto LABEL_10;
  }

  lookedAtFaceObservationUUID = [(VNFaceGaze *)self lookedAtFaceObservationUUID];
  lookedAtFaceObservationUUID2 = [(VNFaceGaze *)v5 lookedAtFaceObservationUUID];
  v15 = VisionCoreEqualOrNilObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  gazeMask = [(VNFaceGaze *)self gazeMask];
  gazeMask2 = [(VNFaceGaze *)v5 gazeMask];
  v18 = VisionCoreEqualOrNilObjects();

  if (!v18)
  {
    goto LABEL_10;
  }

  hasLocation = [(VNFaceGaze *)self hasLocation];
  if (hasLocation != [(VNFaceGaze *)v5 hasLocation])
  {
    goto LABEL_10;
  }

  if (!hasLocation)
  {
    goto LABEL_20;
  }

  [(VNFaceGaze *)self location];
  v23 = v22;
  v25 = v24;
  [(VNFaceGaze *)v5 location];
  v20 = 0;
  if (v23 != v27 || v25 != v26)
  {
    goto LABEL_11;
  }

  [(VNFaceGaze *)self locationBounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(VNFaceGaze *)v5 locationBounds];
  v45.origin.x = v36;
  v45.origin.y = v37;
  v45.size.width = v38;
  v45.size.height = v39;
  v44.origin.x = v29;
  v44.origin.y = v31;
  v44.size.width = v33;
  v44.size.height = v35;
  if (CGRectEqualToRect(v44, v45) && ([(VNFaceGaze *)self horizontalAngle], v41 = v40, [(VNFaceGaze *)v5 horizontalAngle], v41 == v42))
  {
LABEL_20:
    v20 = 1;
  }

  else
  {
LABEL_10:
    v20 = 0;
  }

LABEL_11:

LABEL_14:
  return v20;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v17.receiver = self;
  v17.super_class = VNFaceGaze;
  v4 = [(VNFaceGaze *)&v17 description];
  originatingRequestSpecifier = [(VNFaceGaze *)self originatingRequestSpecifier];
  faceObservationUUID = [(VNFaceGaze *)self faceObservationUUID];
  uUIDString = [faceObservationUUID UUIDString];
  direction = [(VNFaceGaze *)self direction];
  v9 = direction;
  if (direction >= 6)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v10 = [v11 initWithFormat:@"VNFaceGazeDirection%@", v12];
  }

  else
  {
    v10 = off_1E77B5BD0[direction];
  }

  [v3 appendFormat:@"%@ %@ face %@ %@", v4, originatingRequestSpecifier, uUIDString, v10];

  lookedAtFaceObservationUUID = [(VNFaceGaze *)self lookedAtFaceObservationUUID];
  v14 = lookedAtFaceObservationUUID;
  if (lookedAtFaceObservationUUID)
  {
    uUIDString2 = [lookedAtFaceObservationUUID UUIDString];
    [v3 appendFormat:@", looking at %@", uUIDString2];
  }

  return v3;
}

- (BOOL)hasLocation
{
  v3.origin.x = 0.0;
  v3.origin.y = 0.0;
  v3.size.width = 1.0;
  v3.size.height = 1.0;
  return CGRectContainsPoint(v3, self->_location);
}

- (VNFaceGaze)initWithFaceObservationUUID:(id)d direction:(int64_t)direction location:(CGPoint)location bounds:(CGRect)bounds horizontalAngle:(float)angle lookedAtFaceObservationUUID:(id)iD gazeMask:(id)mask originatingRequestSpecifier:(id)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v18 = location.y;
  v19 = location.x;
  dCopy = d;
  iDCopy = iD;
  maskCopy = mask;
  specifierCopy = specifier;
  v32.receiver = self;
  v32.super_class = VNFaceGaze;
  v27 = [(VNFaceGaze *)&v32 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_faceObservationUUID, d);
    v28->_direction = direction;
    v28->_location.x = v19;
    v28->_location.y = v18;
    v28->_locationBounds.origin.x = x;
    v28->_locationBounds.origin.y = y;
    v28->_locationBounds.size.width = width;
    v28->_locationBounds.size.height = height;
    v28->_horizontalAngle = angle;
    objc_storeStrong(&v28->_lookedAtFaceObservationUUID, iD);
    v29 = [maskCopy copy];
    gazeMask = v28->_gazeMask;
    v28->_gazeMask = v29;

    objc_storeStrong(&v28->_originatingRequestSpecifier, specifier);
  }

  return v28;
}

- (CGPoint)locationInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  [(VNFaceGaze *)self location:VNAffineTransformForVisionToTopLeftOriginOrientation(origin];
  v6 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, v4), v8, v5));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

@end
@interface VNFaceGaze
- (BOOL)hasLocation;
- (BOOL)isEqual:(id)a3;
- (CGPoint)location;
- (CGPoint)locationInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4;
- (CGRect)locationBounds;
- (VNFaceGaze)initWithCoder:(id)a3;
- (VNFaceGaze)initWithFaceObservationUUID:(id)a3 direction:(int64_t)a4 location:(CGPoint)a5 bounds:(CGRect)a6 horizontalAngle:(float)a7 lookedAtFaceObservationUUID:(id)a8 gazeMask:(id)a9 originatingRequestSpecifier:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (VNFaceGaze)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"face"];
  v6 = [v4 decodeIntegerForKey:@"direction"];
  [v4 decodeDoubleForKey:@"locX"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"locY"];
  v10 = v9;
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lookFace"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gazeMask"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oreq"];
  if (v13)
  {
    if ([v4 containsValueForKey:@"locBounds"])
    {
      [v4 vn_decodeRectForKey:@"locBounds"];
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

    if ([v4 containsValueForKey:@"horizAngle"])
    {
      [v4 decodeFloatForKey:@"horizAngle"];
      LODWORD(v23) = v24;
    }

    else
    {
      LODWORD(v23) = 2143289344;
    }

    self = [(VNFaceGaze *)self initWithFaceObservationUUID:v5 direction:v6 location:v11 bounds:v12 horizontalAngle:v13 lookedAtFaceObservationUUID:v8 gazeMask:v10 originatingRequestSpecifier:v15, v17, v19, v21, v23];
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  faceObservationUUID = self->_faceObservationUUID;
  v6 = a3;
  [v6 encodeObject:faceObservationUUID forKey:@"face"];
  [v6 encodeInteger:self->_direction forKey:@"direction"];
  [v6 encodeDouble:@"locX" forKey:self->_location.x];
  [v6 encodeDouble:@"locY" forKey:self->_location.y];
  [v6 encodeObject:self->_lookedAtFaceObservationUUID forKey:@"lookFace"];
  [v6 encodeObject:self->_gazeMask forKey:@"gazeMask"];
  [v6 encodeObject:self->_originatingRequestSpecifier forKey:@"oreq"];
  [v6 vn_encodeRect:@"locBounds" forKey:{self->_locationBounds.origin.x, self->_locationBounds.origin.y, self->_locationBounds.size.width, self->_locationBounds.size.height}];
  *&v5 = self->_horizontalAngle;
  [v6 encodeFloat:@"horizAngle" forKey:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
    goto LABEL_14;
  }

  v43.receiver = self;
  v43.super_class = VNFaceGaze;
  if (![(VNFaceGaze *)&v43 isEqual:v4]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [(VNFaceGaze *)self faceObservationUUID];
  v7 = [(VNFaceGaze *)v5 faceObservationUUID];
  v8 = [v6 isEqual:v7];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [(VNFaceGaze *)self originatingRequestSpecifier];
  v10 = [(VNFaceGaze *)v5 originatingRequestSpecifier];
  v11 = [v9 isEqual:v10];

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = [(VNFaceGaze *)self direction];
  if (v12 != [(VNFaceGaze *)v5 direction])
  {
    goto LABEL_10;
  }

  v13 = [(VNFaceGaze *)self lookedAtFaceObservationUUID];
  v14 = [(VNFaceGaze *)v5 lookedAtFaceObservationUUID];
  v15 = VisionCoreEqualOrNilObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [(VNFaceGaze *)self gazeMask];
  v17 = [(VNFaceGaze *)v5 gazeMask];
  v18 = VisionCoreEqualOrNilObjects();

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = [(VNFaceGaze *)self hasLocation];
  if (v19 != [(VNFaceGaze *)v5 hasLocation])
  {
    goto LABEL_10;
  }

  if (!v19)
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
  v5 = [(VNFaceGaze *)self originatingRequestSpecifier];
  v6 = [(VNFaceGaze *)self faceObservationUUID];
  v7 = [v6 UUIDString];
  v8 = [(VNFaceGaze *)self direction];
  v9 = v8;
  if (v8 >= 6)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v10 = [v11 initWithFormat:@"VNFaceGazeDirection%@", v12];
  }

  else
  {
    v10 = off_1E77B5BD0[v8];
  }

  [v3 appendFormat:@"%@ %@ face %@ %@", v4, v5, v7, v10];

  v13 = [(VNFaceGaze *)self lookedAtFaceObservationUUID];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 UUIDString];
    [v3 appendFormat:@", looking at %@", v15];
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

- (VNFaceGaze)initWithFaceObservationUUID:(id)a3 direction:(int64_t)a4 location:(CGPoint)a5 bounds:(CGRect)a6 horizontalAngle:(float)a7 lookedAtFaceObservationUUID:(id)a8 gazeMask:(id)a9 originatingRequestSpecifier:(id)a10
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v18 = a5.y;
  v19 = a5.x;
  v23 = a3;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v32.receiver = self;
  v32.super_class = VNFaceGaze;
  v27 = [(VNFaceGaze *)&v32 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_faceObservationUUID, a3);
    v28->_direction = a4;
    v28->_location.x = v19;
    v28->_location.y = v18;
    v28->_locationBounds.origin.x = x;
    v28->_locationBounds.origin.y = y;
    v28->_locationBounds.size.width = width;
    v28->_locationBounds.size.height = height;
    v28->_horizontalAngle = a7;
    objc_storeStrong(&v28->_lookedAtFaceObservationUUID, a8);
    v29 = [v25 copy];
    gazeMask = v28->_gazeMask;
    v28->_gazeMask = v29;

    objc_storeStrong(&v28->_originatingRequestSpecifier, a10);
  }

  return v28;
}

- (CGPoint)locationInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  [(VNFaceGaze *)self location:VNAffineTransformForVisionToTopLeftOriginOrientation(a3];
  v6 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, v4), v8, v5));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

@end
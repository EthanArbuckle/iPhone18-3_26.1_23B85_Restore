@interface ARAnchor
- (ARAnchor)initWithAnchor:(id)anchor;
- (ARAnchor)initWithCoder:(id)coder;
- (ARAnchor)initWithIdentifier:(double)identifier transform:(double)transform;
- (ARAnchor)initWithIdentifier:(double)identifier transform:(double)transform name:(double)name;
- (ARAnchor)initWithIdentifier:(double)identifier transform:(double)transform name:(double)name hiddenFromPublicDelegate:(uint64_t)delegate;
- (ARAnchor)initWithName:(NSString *)name transform:(simd_float4x4)transform;
- (ARAnchor)initWithTransform:(simd_float4x4)transform;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAnchor:(id)anchor;
- (__n128)setReferenceTransform:(__n128)transform;
- (__n128)setTransform:(__n128)transform;
- (id)_description:(BOOL)_description;
- (id)copyWithZone:(_NSZone *)zone;
- (simd_float4x4)transform;
- (uint64_t)updateTransformToCoordinateSpace:(float32x4_t)space withTimestamp:(float32x4_t)timestamp;
- (unint64_t)hash;
- (void)_commonInit:(__n128)init transform:(__n128)transform name:(__n128)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARAnchor

- (ARAnchor)initWithTransform:(simd_float4x4)transform
{
  v8 = *transform.columns[2].i64;
  v9 = *transform.columns[3].i64;
  v6 = *transform.columns[0].i64;
  v7 = *transform.columns[1].i64;
  v10.receiver = self;
  v10.super_class = ARAnchor;
  v3 = [(ARAnchor *)&v10 init];
  if (v3)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(ARAnchor *)v3 _commonInit:uUID transform:0 name:v6, v7, v8, v9];
  }

  return v3;
}

- (ARAnchor)initWithIdentifier:(double)identifier transform:(double)transform name:(double)name
{
  v10 = a7;
  v11 = a8;
  v19.receiver = self;
  v19.super_class = ARAnchor;
  v12 = [(ARAnchor *)&v19 init];
  if (v12)
  {
    v13 = [v11 copy];
    [(ARAnchor *)v12 _commonInit:v10 transform:v13 name:a2, identifier, transform, name];
  }

  return v12;
}

- (ARAnchor)initWithIdentifier:(double)identifier transform:(double)transform name:(double)name hiddenFromPublicDelegate:(uint64_t)delegate
{
  v12 = a7;
  v13 = a8;
  v21.receiver = self;
  v21.super_class = ARAnchor;
  v14 = [(ARAnchor *)&v21 init];
  if (v14)
  {
    v15 = [v13 copy];
    [(ARAnchor *)v14 _commonInit:v12 transform:v15 name:a2, identifier, transform, name];

    v14->_isHiddenFromPublicDelegate = a9;
  }

  return v14;
}

- (ARAnchor)initWithName:(NSString *)name transform:(simd_float4x4)transform
{
  v12 = *transform.columns[2].i64;
  v13 = *transform.columns[3].i64;
  v10 = *transform.columns[0].i64;
  v11 = *transform.columns[1].i64;
  v5 = name;
  v14.receiver = self;
  v14.super_class = ARAnchor;
  v6 = [(ARAnchor *)&v14 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v8 = [(NSString *)v5 copy];
    [(ARAnchor *)v6 _commonInit:uUID transform:v8 name:v10, v11, v12, v13];
  }

  return v6;
}

- (ARAnchor)initWithIdentifier:(double)identifier transform:(double)transform
{
  v8 = a7;
  v16.receiver = self;
  v16.super_class = ARAnchor;
  v9 = [(ARAnchor *)&v16 init];
  if (v9)
  {
    v10 = [v8 copy];
    [(ARAnchor *)v9 _commonInit:v10 transform:0 name:a2, identifier, transform, a5];
  }

  return v9;
}

- (void)_commonInit:(__n128)init transform:(__n128)transform name:(__n128)name
{
  v18 = a7;
  v10 = a8;
  if (v18)
  {
    uUID = v18;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v12 = self[1].n128_u64[0];
  self[1].n128_u64[0] = uUID;

  self[3] = a2;
  self[4] = init;
  self[5] = transform;
  self[6] = name;
  self[7] = a2;
  self[8] = init;
  self[9] = transform;
  self[10] = name;
  v13 = self[1].n128_u64[1];
  self[1].n128_u64[1] = v10;

  self->n128_u8[8] = 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy ar_encodeMatrix4x4:@"transform" forKey:{*self->_anon_30, *&self->_anon_30[16], *&self->_anon_30[32], *&self->_anon_30[48]}];
  [coderCopy ar_encodeMatrix4x4:@"referenceTransform" forKey:{*&self[1].super.isa, *&self[1]._identifier, *&self[1]._sessionIdentifier, *self[1]._anon_30}];
  [coderCopy encodeDouble:@"lastUpdateTimestamp" forKey:self->_lastUpdateTimestamp];
  [coderCopy encodeBool:self->_isHiddenFromPublicDelegate forKey:@"isHiddenFromPublicDelegate"];
  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
  }
}

- (ARAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    [coderCopy ar_decodeMatrix4x4ForKey:@"transform"];
    v29 = v6;
    v27 = v8;
    v28 = v7;
    v26 = v9;
    [coderCopy ar_decodeMatrix4x4ForKey:@"referenceTransform"];
    v24 = v11;
    v25 = v10;
    v22 = v13;
    v23 = v12;
    [coderCopy decodeDoubleForKey:@"lastUpdateTimestamp"];
    v15 = v14;
    v30.receiver = self;
    v30.super_class = ARAnchor;
    v16 = [(ARAnchor *)&v30 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_identifier, v5);
      *v17->_anon_30 = v29;
      *&v17->_anon_30[16] = v28;
      *&v17->_anon_30[32] = v27;
      *&v17->_anon_30[48] = v26;
      *&v17[1].super.isa = v25;
      *&v17[1]._identifier = v24;
      *&v17[1]._sessionIdentifier = v23;
      *v17[1]._anon_30 = v22;
      v17->_lastUpdateTimestamp = v15;
      v17->_isHiddenFromPublicDelegate = [coderCopy decodeBoolForKey:@"isHiddenFromPublicDelegate"];
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v17->_name;
      v17->_name = v18;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ARAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v24.receiver = self;
  v24.super_class = ARAnchor;
  v5 = [(ARAnchor *)&v24 init];
  if (v5)
  {
    identifier = [anchorCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    name = [anchorCopy name];
    v10 = [name copy];
    name = v5->_name;
    v5->_name = v10;

    sessionIdentifier = [anchorCopy sessionIdentifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = sessionIdentifier;

    [anchorCopy transform];
    *v5->_anon_30 = v14;
    *&v5->_anon_30[16] = v15;
    *&v5->_anon_30[32] = v16;
    *&v5->_anon_30[48] = v17;
    [anchorCopy referenceTransform];
    *&v5[1].super.isa = v18;
    *&v5[1]._identifier = v19;
    *&v5[1]._sessionIdentifier = v20;
    *v5[1]._anon_30 = v21;
    [anchorCopy lastUpdateTimestamp];
    v5->_lastUpdateTimestamp = v22;
    v5->_isHiddenFromPublicDelegate = [anchorCopy isHiddenFromPublicDelegate];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithAnchor:self];
}

- (unint64_t)hash
{
  identifier = [(ARAnchor *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = ARAnchor;
  if ([(ARAnchor *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARAnchor *)self isEqualToAnchor:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAnchor:(id)anchor
{
  anchorCopy = anchor;
  identifier = [(ARAnchor *)self identifier];
  identifier2 = [anchorCopy identifier];

  LOBYTE(anchorCopy) = [identifier isEqual:identifier2];
  return anchorCopy;
}

- (id)_description:(BOOL)_description
{
  _descriptionCopy = _description;
  v5 = MEMORY[0x1E696AD60];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p", v7, self];

  identifier = [(ARAnchor *)self identifier];
  [v8 appendFormat:@" identifier=%@", identifier];

  sessionIdentifier = [(ARAnchor *)self sessionIdentifier];

  if (sessionIdentifier)
  {
    sessionIdentifier2 = [(ARAnchor *)self sessionIdentifier];
    uUIDString = [sessionIdentifier2 UUIDString];
    [v8 appendFormat:@" sessionIdentifier=%@", uUIDString];
  }

  name = [(ARAnchor *)self name];

  if (name)
  {
    name2 = [(ARAnchor *)self name];
    [v8 appendFormat:@" name=%@", name2];
  }

  if (objc_opt_respondsToSelector())
  {
    isTracked = [(ARAnchor *)self isTracked];
    v16 = @"NO";
    if (isTracked)
    {
      v16 = @"YES";
    }

    [v8 appendFormat:@" tracked=%@", v16];
  }

  [(ARAnchor *)self transform];
  v21 = ARMatrix4x4Description(_descriptionCopy, v17, v18, v19, v20);
  [v8 appendFormat:@" transform=%@", v21];

  [v8 appendString:@">"];

  return v8;
}

- (uint64_t)updateTransformToCoordinateSpace:(float32x4_t)space withTimestamp:(float32x4_t)timestamp
{
  [self transform];
  v8 = 0;
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  do
  {
    *(&v19 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v18[v8])), space, *&v18[v8], 1), timestamp, v18[v8], 2), a5, v18[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  result = [self setTransform:{*&v19, *&v20, *&v21, *&v22}];
  if (a6 != 0.0)
  {

    return [self setLastUpdateTimestamp:a6];
  }

  return result;
}

- (simd_float4x4)transform
{
  v2 = *self->_anon_30;
  v3 = *&self->_anon_30[16];
  v4 = *&self->_anon_30[32];
  v5 = *&self->_anon_30[48];
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (__n128)setTransform:(__n128)transform
{
  result[3] = a2;
  result[4] = transform;
  result[5] = a4;
  result[6] = a5;
  return result;
}

- (__n128)setReferenceTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
  result[9] = a4;
  result[10] = a5;
  return result;
}

@end
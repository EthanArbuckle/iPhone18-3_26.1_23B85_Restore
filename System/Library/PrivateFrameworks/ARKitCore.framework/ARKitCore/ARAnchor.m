@interface ARAnchor
- (ARAnchor)initWithAnchor:(id)a3;
- (ARAnchor)initWithCoder:(id)a3;
- (ARAnchor)initWithIdentifier:(double)a3 transform:(double)a4;
- (ARAnchor)initWithIdentifier:(double)a3 transform:(double)a4 name:(double)a5;
- (ARAnchor)initWithIdentifier:(double)a3 transform:(double)a4 name:(double)a5 hiddenFromPublicDelegate:(uint64_t)a6;
- (ARAnchor)initWithName:(NSString *)name transform:(simd_float4x4)transform;
- (ARAnchor)initWithTransform:(simd_float4x4)transform;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAnchor:(id)a3;
- (__n128)setReferenceTransform:(__n128)a3;
- (__n128)setTransform:(__n128)a3;
- (id)_description:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (simd_float4x4)transform;
- (uint64_t)updateTransformToCoordinateSpace:(float32x4_t)a3 withTimestamp:(float32x4_t)a4;
- (unint64_t)hash;
- (void)_commonInit:(__n128)a3 transform:(__n128)a4 name:(__n128)a5;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [MEMORY[0x1E696AFB0] UUID];
    [(ARAnchor *)v3 _commonInit:v4 transform:0 name:v6, v7, v8, v9];
  }

  return v3;
}

- (ARAnchor)initWithIdentifier:(double)a3 transform:(double)a4 name:(double)a5
{
  v10 = a7;
  v11 = a8;
  v19.receiver = a1;
  v19.super_class = ARAnchor;
  v12 = [(ARAnchor *)&v19 init];
  if (v12)
  {
    v13 = [v11 copy];
    [(ARAnchor *)v12 _commonInit:v10 transform:v13 name:a2, a3, a4, a5];
  }

  return v12;
}

- (ARAnchor)initWithIdentifier:(double)a3 transform:(double)a4 name:(double)a5 hiddenFromPublicDelegate:(uint64_t)a6
{
  v12 = a7;
  v13 = a8;
  v21.receiver = a1;
  v21.super_class = ARAnchor;
  v14 = [(ARAnchor *)&v21 init];
  if (v14)
  {
    v15 = [v13 copy];
    [(ARAnchor *)v14 _commonInit:v12 transform:v15 name:a2, a3, a4, a5];

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
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [(NSString *)v5 copy];
    [(ARAnchor *)v6 _commonInit:v7 transform:v8 name:v10, v11, v12, v13];
  }

  return v6;
}

- (ARAnchor)initWithIdentifier:(double)a3 transform:(double)a4
{
  v8 = a7;
  v16.receiver = a1;
  v16.super_class = ARAnchor;
  v9 = [(ARAnchor *)&v16 init];
  if (v9)
  {
    v10 = [v8 copy];
    [(ARAnchor *)v9 _commonInit:v10 transform:0 name:a2, a3, a4, a5];
  }

  return v9;
}

- (void)_commonInit:(__n128)a3 transform:(__n128)a4 name:(__n128)a5
{
  v18 = a7;
  v10 = a8;
  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
  }

  v12 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = v11;

  a1[3] = a2;
  a1[4] = a3;
  a1[5] = a4;
  a1[6] = a5;
  a1[7] = a2;
  a1[8] = a3;
  a1[9] = a4;
  a1[10] = a5;
  v13 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = v10;

  a1->n128_u8[8] = 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 ar_encodeMatrix4x4:@"transform" forKey:{*self->_anon_30, *&self->_anon_30[16], *&self->_anon_30[32], *&self->_anon_30[48]}];
  [v5 ar_encodeMatrix4x4:@"referenceTransform" forKey:{*&self[1].super.isa, *&self[1]._identifier, *&self[1]._sessionIdentifier, *self[1]._anon_30}];
  [v5 encodeDouble:@"lastUpdateTimestamp" forKey:self->_lastUpdateTimestamp];
  [v5 encodeBool:self->_isHiddenFromPublicDelegate forKey:@"isHiddenFromPublicDelegate"];
  name = self->_name;
  if (name)
  {
    [v5 encodeObject:name forKey:@"name"];
  }
}

- (ARAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    [v4 ar_decodeMatrix4x4ForKey:@"transform"];
    v29 = v6;
    v27 = v8;
    v28 = v7;
    v26 = v9;
    [v4 ar_decodeMatrix4x4ForKey:@"referenceTransform"];
    v24 = v11;
    v25 = v10;
    v22 = v13;
    v23 = v12;
    [v4 decodeDoubleForKey:@"lastUpdateTimestamp"];
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
      v17->_isHiddenFromPublicDelegate = [v4 decodeBoolForKey:@"isHiddenFromPublicDelegate"];
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v17->_name;
      v17->_name = v18;
    }

    self = v17;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (ARAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ARAnchor;
  v5 = [(ARAnchor *)&v24 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 name];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 sessionIdentifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v12;

    [v4 transform];
    *v5->_anon_30 = v14;
    *&v5->_anon_30[16] = v15;
    *&v5->_anon_30[32] = v16;
    *&v5->_anon_30[48] = v17;
    [v4 referenceTransform];
    *&v5[1].super.isa = v18;
    *&v5[1]._identifier = v19;
    *&v5[1]._sessionIdentifier = v20;
    *v5[1]._anon_30 = v21;
    [v4 lastUpdateTimestamp];
    v5->_lastUpdateTimestamp = v22;
    v5->_isHiddenFromPublicDelegate = [v4 isHiddenFromPublicDelegate];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithAnchor:self];
}

- (unint64_t)hash
{
  v2 = [(ARAnchor *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ARAnchor;
  if ([(ARAnchor *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARAnchor *)self isEqualToAnchor:v4];
  }

  return v5;
}

- (BOOL)isEqualToAnchor:(id)a3
{
  v4 = a3;
  v5 = [(ARAnchor *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (id)_description:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E696AD60];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p", v7, self];

  v9 = [(ARAnchor *)self identifier];
  [v8 appendFormat:@" identifier=%@", v9];

  v10 = [(ARAnchor *)self sessionIdentifier];

  if (v10)
  {
    v11 = [(ARAnchor *)self sessionIdentifier];
    v12 = [v11 UUIDString];
    [v8 appendFormat:@" sessionIdentifier=%@", v12];
  }

  v13 = [(ARAnchor *)self name];

  if (v13)
  {
    v14 = [(ARAnchor *)self name];
    [v8 appendFormat:@" name=%@", v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(ARAnchor *)self isTracked];
    v16 = @"NO";
    if (v15)
    {
      v16 = @"YES";
    }

    [v8 appendFormat:@" tracked=%@", v16];
  }

  [(ARAnchor *)self transform];
  v21 = ARMatrix4x4Description(v3, v17, v18, v19, v20);
  [v8 appendFormat:@" transform=%@", v21];

  [v8 appendString:@">"];

  return v8;
}

- (uint64_t)updateTransformToCoordinateSpace:(float32x4_t)a3 withTimestamp:(float32x4_t)a4
{
  [a1 transform];
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
    *(&v19 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v18[v8])), a3, *&v18[v8], 1), a4, v18[v8], 2), a5, v18[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  result = [a1 setTransform:{*&v19, *&v20, *&v21, *&v22}];
  if (a6 != 0.0)
  {

    return [a1 setLastUpdateTimestamp:a6];
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

- (__n128)setTransform:(__n128)a3
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

- (__n128)setReferenceTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

@end
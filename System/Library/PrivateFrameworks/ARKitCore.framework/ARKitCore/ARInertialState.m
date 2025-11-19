@interface ARInertialState
- (ARInertialState)initWithCoder:(id)a3;
- (ARInertialState)initWithCovarianceMatrix:(double *)a3;
- (BOOL)isEqual:(id)a3;
- (__n128)accelerometerBias;
- (__n128)gyroscopeBias;
- (__n128)orientation;
- (__n128)position;
- (__n128)setOrientation:(__int128 *)a3;
- (__n128)velocity;
- (void)encodeWithCoder:(id)a3;
- (void)setAccelerometerBias:(ARInertialState *)self;
- (void)setGyroscopeBias:(ARInertialState *)self;
- (void)setPosition:(ARInertialState *)self;
- (void)setVelocity:(ARInertialState *)self;
@end

@implementation ARInertialState

- (ARInertialState)initWithCovarianceMatrix:(double *)a3
{
  v7.receiver = self;
  v7.super_class = ARInertialState;
  v4 = [(ARInertialState *)&v7 init];
  v5 = v4;
  if (v4)
  {
    memcpy(v4->_covarianceMatrix, a3, sizeof(v4->_covarianceMatrix));
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [v4 dataWithBytesNoCopy:self->_covarianceMatrix length:1800 freeWhenDone:0];
  [v5 encodeObject:v6 forKey:@"covarianceMatrix"];
  v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&self[1] length:96 freeWhenDone:0];

  [v5 encodeObject:v7 forKey:@"orientation"];
  v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_position length:32 freeWhenDone:0];

  [v5 encodeObject:v8 forKey:@"position"];
  v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_velocity length:32 freeWhenDone:0];

  [v5 encodeObject:v9 forKey:@"velocity"];
  v10 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_accelerometerBias length:32 freeWhenDone:0];

  [v5 encodeObject:v10 forKey:@"accelerometerBias"];
  v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_gyroscopeBias length:32 freeWhenDone:0];

  [v5 encodeObject:v11 forKey:@"gyroscopeBias"];
}

- (ARInertialState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"covarianceMatrix"];
  if ([v5 length] == 1800)
  {
    v6 = -[ARInertialState initWithCovarianceMatrix:](self, "initWithCovarianceMatrix:", [v5 bytes]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];

    [v7 getBytes:&v6[1] length:96];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"position"];

    [v8 getBytes:v6->_position length:32];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"velocity"];

    [v9 getBytes:v6->_velocity length:32];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accelerometerBias"];

    [v10 getBytes:v6->_accelerometerBias length:32];
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gyroscopeBias"];

    [v5 getBytes:v6->_gyroscopeBias length:32];
    self = v6;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!memcmp(self->_covarianceMatrix, &v5->f64[1], 0x708uLL) && (v7 = vandq_s8(vandq_s8(vceqq_f64(*&self[1]._covarianceMatrix[3], v5[123]), vceqq_f64(*&self[1].super.isa, v5[121])), vceqq_f64(*&self[1]._covarianceMatrix[7], v5[125])), ((v7.i64[0] & v7.i64[1] & vandq_s8(vandq_s8(vceqq_f64(*&self[1]._covarianceMatrix[5], v5[124]), vceqq_f64(*&self[1]._covarianceMatrix[1], v5[122])), vceqq_f64(*&self[1]._covarianceMatrix[9], v5[126])).u64[0] & 0x8000000000000000) != 0) ^ v6) && (v8 = vceqq_f64(*self->_position, v5[113]), ((v8.i64[0] & v8.i64[1] & vceqq_f64(*&self->_position[16], v5[114]).u64[0] & 0x8000000000000000) != 0) ^ v6) && (v9 = vceqq_f64(*self->_velocity, v5[115]), ((v9.i64[0] & v9.i64[1] & vceqq_f64(*&self->_velocity[16], v5[116]).u64[0] & 0x8000000000000000) != 0) ^ v6) && (v10 = vceqq_f64(*self->_accelerometerBias, v5[117]), ((v10.i64[0] & v10.i64[1] & vceqq_f64(*&self->_accelerometerBias[16], v5[118]).u64[0] & 0x8000000000000000) != 0) ^ v6))
    {
      v13 = vceqq_f64(*self->_gyroscopeBias, v5[119]);
      v11 = (v13.i64[0] & vceqq_f64(*&self->_gyroscopeBias[16], v5[120]).u64[0] & v13.i64[1]) >> 63;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (__n128)orientation
{
  v2 = *(a1 + 1984);
  *(a2 + 32) = *(a1 + 1968);
  *(a2 + 48) = v2;
  v3 = *(a1 + 2016);
  *(a2 + 64) = *(a1 + 2000);
  *(a2 + 80) = v3;
  result = *(a1 + 1936);
  v5 = *(a1 + 1952);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)setOrientation:(__int128 *)a3
{
  v3 = *a3;
  *(a1 + 1952) = a3[1];
  *(a1 + 1936) = v3;
  result = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  *(a1 + 2016) = a3[5];
  *(a1 + 2000) = v6;
  *(a1 + 1984) = v5;
  *(a1 + 1968) = result;
  return result;
}

- (__n128)position
{
  result = a1[113];
  a2[1].n128_u64[0] = a1[114].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setPosition:(ARInertialState *)self
{
  v3 = *v2;
  *&self->_position[16] = v2[1];
  *self->_position = v3;
}

- (__n128)velocity
{
  result = a1[115];
  a2[1].n128_u64[0] = a1[116].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setVelocity:(ARInertialState *)self
{
  v3 = *v2;
  *&self->_velocity[16] = v2[1];
  *self->_velocity = v3;
}

- (__n128)accelerometerBias
{
  result = a1[117];
  a2[1].n128_u64[0] = a1[118].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setAccelerometerBias:(ARInertialState *)self
{
  v3 = *v2;
  *&self->_accelerometerBias[16] = v2[1];
  *self->_accelerometerBias = v3;
}

- (__n128)gyroscopeBias
{
  result = a1[119];
  a2[1].n128_u64[0] = a1[120].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setGyroscopeBias:(ARInertialState *)self
{
  v3 = *v2;
  *&self->_gyroscopeBias[16] = v2[1];
  *self->_gyroscopeBias = v3;
}

@end
@interface CASDFGeneratorRequest
+ (id)request;
+ (id)requestForEffect:(id)effect;
+ (id)requestForEffects:(id)effects;
- (CASDFGeneratorRequest)init;
- (void)_resetConfiguration;
- (void)_unionConfigurationForEffect:(id)effect;
@end

@implementation CASDFGeneratorRequest

- (void)_unionConfigurationForEffect:(id)effect
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 128.0;
    self->_padding = fmax(self->_padding, 128.0);
    oneValueDistance = self->_oneValueDistance;
    v7 = fmin(self->_zeroValueDistance, -128.0);
    self->_maximumDistance = INFINITY;
    self->_includeGradient = 1;
LABEL_5:
    v8 = fmax(oneValueDistance, v5);
LABEL_6:
    self->_zeroValueDistance = v7;
    self->_oneValueDistance = v8;
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1.0;
    self->_maximumDistance = fmax(self->_maximumDistance, 1.0);
    oneValueDistance = self->_oneValueDistance;
    v7 = fmin(self->_zeroValueDistance, -1.0);
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [effect radius];
      v14 = v13 * 3.0;
      v15 = vdupq_lane_s64(COERCE__INT64(v13 * 3.0), 0);
      v16 = vbslq_s8(vcgtq_f64(*&self->_padding, v15), *&self->_padding, v15);
      v17 = -(v13 * 3.0);
      v18 = *&self->_zeroValueDistance;
      v15.f64[0] = self->_zeroValueDistance;
      v15.f64[1] = v14;
      v19.f64[1] = self->_oneValueDistance;
      v19.f64[0] = v17;
      *&self->_padding = v16;
      v20 = vcgtq_f64(v19, v15);
      v15.f64[0] = v17;
      v21 = vbslq_s8(v20, v18, v15);
LABEL_26:
      *&self->_zeroValueDistance = v21;
      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [effect keyHeight];
        v27 = v26;
        [effect keyHeightOffset];
        v29 = v28 + v27;
        [effect fillHeight];
        v31 = v30;
        [effect fillHeightOffset];
        v33 = v32 + v31;
        [effect keyHeightScale];
        v35 = v34 * v29;
        [effect fillHeightScale];
        v22 = v36 * v33;
        if (v35 > v22)
        {
          v22 = v35;
        }

        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return;
      }
    }

    [effect height];
LABEL_23:
    self->_includeGradient = 1;
    maximumDistance = self->_maximumDistance;
    if (maximumDistance <= v22)
    {
      maximumDistance = v22;
    }

    v38 = *&self->_zeroValueDistance;
    v39.f64[1] = self->_oneValueDistance;
    v39.f64[0] = -v22;
    v40.f64[0] = self->_zeroValueDistance;
    v40.f64[1] = 1.0;
    self->_maximumDistance = maximumDistance;
    v41 = vcgtq_f64(v39, v40);
    v39.f64[1] = 1.0;
    v21 = vbslq_s8(v41, v38, v39);
    goto LABEL_26;
  }

  v9 = [objc_msgSend(effect "distances")];
  zeroValueDistance = self->_zeroValueDistance;
  if (v9 < 2)
  {
    v7 = fmin(zeroValueDistance, -128.0);
    v8 = fmax(self->_oneValueDistance, 128.0);
    goto LABEL_6;
  }

  [objc_msgSend(objc_msgSend(effect "distances")];
  if (zeroValueDistance >= v11)
  {
    [objc_msgSend(objc_msgSend(effect "distances")];
  }

  else
  {
    v12 = self->_zeroValueDistance;
  }

  self->_zeroValueDistance = v12;
  v23 = self->_oneValueDistance;
  [objc_msgSend(objc_msgSend(effect "distances")];
  if (v23 <= v24)
  {
    [objc_msgSend(objc_msgSend(effect "distances")];
  }

  else
  {
    v25 = self->_oneValueDistance;
  }

  self->_oneValueDistance = v25;
}

- (void)_resetConfiguration
{
  *&self->_padding = xmmword_183E20E00;
  self->_includeGradient = 0;
  self->_zeroValueDistance = 0.0;
  self->_oneValueDistance = 0.0;
  self->_gradientSmoothing = 3.0;
}

- (CASDFGeneratorRequest)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CASDFGeneratorRequest;
  result = [(CASDFGeneratorRequest *)&v3 init];
  if (result)
  {
    *&result->_padding = xmmword_183E20EA0;
    result->_includeGradient = 1;
    *&result->_gradientSmoothing = xmmword_183E20EB0;
    result->_oneValueDistance = 10.0;
  }

  return result;
}

+ (id)requestForEffects:(id)effects
{
  v15 = *MEMORY[0x1E69E9840];
  request = [self request];
  [request _resetConfiguration];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [effects countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(effects);
        }

        [request _unionConfigurationForEffect:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [effects countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return request;
}

+ (id)requestForEffect:(id)effect
{
  request = [self request];
  [request _resetConfiguration];
  [request _unionConfigurationForEffect:effect];
  return request;
}

+ (id)request
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end
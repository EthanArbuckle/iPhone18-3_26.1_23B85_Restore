@interface CAEmitterCell
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (CAEmitterCell)emitterCell;
+ (id)defaultValueForKey:(NSString *)key;
+ (void)CAMLParserStartElement:(id)a3;
- (BOOL)CAMLTypeSupportedForKey:(id)a3;
- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4;
- (BOOL)autoreverses;
- (BOOL)isEnabled;
- (BOOL)shouldArchiveValueForKey:(NSString *)key;
- (CGColorRef)color;
- (CGFloat)contentsScale;
- (CGFloat)emissionLatitude;
- (CGFloat)emissionLongitude;
- (CGFloat)emissionRange;
- (CGFloat)scale;
- (CGFloat)scaleRange;
- (CGFloat)scaleSpeed;
- (CGFloat)spin;
- (CGFloat)spinRange;
- (CGFloat)velocity;
- (CGFloat)velocityRange;
- (CGFloat)xAcceleration;
- (CGFloat)yAcceleration;
- (CGFloat)zAcceleration;
- (CGRect)contentsRect;
- (NSArray)emitterBehaviors;
- (NSArray)emitterCells;
- (NSDictionary)style;
- (NSString)contentsFrameMode;
- (NSString)fillMode;
- (NSString)magnificationFilter;
- (NSString)minificationFilter;
- (NSString)name;
- (NSString)particleType;
- (Object)CA_copyRenderValue;
- (double)beginTime;
- (double)duration;
- (double)orientationLatitude;
- (double)orientationLongitude;
- (double)orientationRange;
- (double)repeatDuration;
- (double)rotation;
- (double)rotationRange;
- (double)timeOffset;
- (float)alphaRange;
- (float)alphaSpeed;
- (float)birthRate;
- (float)blueRange;
- (float)blueSpeed;
- (float)contentsFramesPerSecond;
- (float)greenRange;
- (float)greenSpeed;
- (float)lifetime;
- (float)lifetimeRange;
- (float)mass;
- (float)massRange;
- (float)minificationFilterBias;
- (float)redRange;
- (float)redSpeed;
- (float)repeatCount;
- (float)speed;
- (id)contents;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)valueForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unsigned)contentsFrameCount;
- (unsigned)contentsFramesPerRow;
- (void)CA_prepareRenderValue;
- (void)dealloc;
- (void)didChangeValueForKey:(id)a3;
- (void)setAlphaRange:(float)alphaRange;
- (void)setAlphaSpeed:(float)alphaSpeed;
- (void)setAutoreverses:(BOOL)a3;
- (void)setBeginTime:(double)a3;
- (void)setBirthRate:(float)birthRate;
- (void)setBlueRange:(float)blueRange;
- (void)setBlueSpeed:(float)blueSpeed;
- (void)setColor:(CGColorRef)color;
- (void)setContents:(id)contents;
- (void)setContentsFrameCount:(unsigned int)a3;
- (void)setContentsFrameMode:(id)a3;
- (void)setContentsFramesPerRow:(unsigned int)a3;
- (void)setContentsFramesPerSecond:(float)a3;
- (void)setContentsRect:(CGRect)contentsRect;
- (void)setContentsScale:(CGFloat)contentsScale;
- (void)setDuration:(double)a3;
- (void)setEmissionLatitude:(CGFloat)emissionLatitude;
- (void)setEmissionLongitude:(CGFloat)emissionLongitude;
- (void)setEmissionRange:(CGFloat)emissionRange;
- (void)setEmitterBehaviors:(id)a3;
- (void)setEmitterCells:(NSArray *)emitterCells;
- (void)setEnabled:(BOOL)enabled;
- (void)setFillMode:(id)a3;
- (void)setGreenRange:(float)greenRange;
- (void)setGreenSpeed:(float)greenSpeed;
- (void)setLifetime:(float)lifetime;
- (void)setLifetimeRange:(float)lifetimeRange;
- (void)setMagnificationFilter:(NSString *)magnificationFilter;
- (void)setMass:(float)a3;
- (void)setMassRange:(float)a3;
- (void)setMinificationFilter:(NSString *)minificationFilter;
- (void)setMinificationFilterBias:(float)minificationFilterBias;
- (void)setName:(NSString *)name;
- (void)setOrientationLatitude:(double)a3;
- (void)setOrientationLongitude:(double)a3;
- (void)setOrientationRange:(double)a3;
- (void)setParticleType:(id)a3;
- (void)setRedRange:(float)redRange;
- (void)setRedSpeed:(float)redSpeed;
- (void)setRepeatCount:(float)a3;
- (void)setRepeatDuration:(double)a3;
- (void)setRotation:(double)a3;
- (void)setRotationRange:(double)a3;
- (void)setScale:(CGFloat)scale;
- (void)setScaleRange:(CGFloat)scaleRange;
- (void)setScaleSpeed:(CGFloat)scaleSpeed;
- (void)setSpeed:(float)a3;
- (void)setSpin:(CGFloat)spin;
- (void)setSpinRange:(CGFloat)spinRange;
- (void)setStyle:(NSDictionary *)style;
- (void)setTimeOffset:(double)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setVelocity:(CGFloat)velocity;
- (void)setVelocityRange:(CGFloat)velocityRange;
- (void)setXAcceleration:(CGFloat)xAcceleration;
- (void)setYAcceleration:(CGFloat)yAcceleration;
- (void)setZAcceleration:(CGFloat)zAcceleration;
@end

@implementation CAEmitterCell

+ (CAEmitterCell)emitterCell
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CGFloat)scale
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x26Du, 0x12, v3);
  return *v3;
}

- (Object)CA_copyRenderValue
{
  v85 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (!state)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (v4 && (v5 = *(v4 + 40)) != 0)
    {
      v6 = *(v5 + 112);
    }

    else
    {
      v6 = CAGetColorSpace(36);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE8uLL, 0xDEEC3011uLL);
    state = v7;
    if (v7)
    {
      *(v7 + 2) = 1;
      *(v7 + 3) = 14;
      ++dword_1ED4EAA70;
      *v7 = &unk_1EF1FE338;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 8) = 0x28D000002A6;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 120) = 0u;
      *(v7 + 136) = 0u;
      *(v7 + 152) = 0u;
      *(v7 + 168) = 0u;
      *(v7 + 184) = 0u;
      *(v7 + 200) = 0u;
      *(v7 + 216) = 0u;
      *(v7 + 54) = 1065353216;
    }

    v8 = [(CAEmitterCell *)self name];
    if (v8)
    {
      v10 = CA::Render::String::new_string(v8, v9);
      v11 = *(state + 2);
      *(state + 2) = v10;
      if (v11)
      {
        if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v11 + 16))(v11);
        }
      }
    }

    v12 = [(CAEmitterCell *)self isEnabled];
    v13 = [(CAEmitterCell *)self particleType];
    if (v13)
    {
      *(state + 16) = CAInternAtom(v13, 0);
    }

    v14 = CAMediaTimingCopyRenderTiming(self);
    v15 = *(state + 7);
    *(state + 7) = v14;
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

    [(CAEmitterCell *)self birthRate];
    *(state + 18) = v16;
    [(CAEmitterCell *)self lifetime];
    *(state + 19) = v17;
    [(CAEmitterCell *)self lifetimeRange];
    *(state + 20) = v18;
    [(CAEmitterCell *)self emissionLatitude];
    *&v19 = v19;
    *(state + 21) = LODWORD(v19);
    [(CAEmitterCell *)self emissionLongitude];
    *&v20 = v20;
    *(state + 22) = LODWORD(v20);
    [(CAEmitterCell *)self emissionRange];
    *&v21 = v21;
    *(state + 23) = LODWORD(v21);
    [(CAEmitterCell *)self velocity];
    *&v22 = v22;
    *(state + 24) = LODWORD(v22);
    [(CAEmitterCell *)self velocityRange];
    *&v23 = v23;
    *(state + 25) = LODWORD(v23);
    [(CAEmitterCell *)self xAcceleration];
    *&v24 = v24;
    *(state + 26) = LODWORD(v24);
    [(CAEmitterCell *)self yAcceleration];
    *&v25 = v25;
    *(state + 27) = LODWORD(v25);
    [(CAEmitterCell *)self zAcceleration];
    *&v26 = v26;
    *(state + 28) = LODWORD(v26);
    [(CAEmitterCell *)self mass];
    *(state + 29) = v27;
    [(CAEmitterCell *)self massRange];
    *(state + 30) = v28;
    [(CAEmitterCell *)self scale];
    *&v29 = v29;
    *(state + 31) = LODWORD(v29);
    [(CAEmitterCell *)self scaleRange];
    *&v30 = v30;
    *(state + 32) = LODWORD(v30);
    [(CAEmitterCell *)self scaleSpeed];
    *&v31 = v31;
    *(state + 33) = LODWORD(v31);
    [(CAEmitterCell *)self orientationLatitude];
    *&v32 = v32;
    *(state + 34) = LODWORD(v32);
    [(CAEmitterCell *)self orientationLongitude];
    *&v33 = v33;
    *(state + 35) = LODWORD(v33);
    [(CAEmitterCell *)self orientationRange];
    *&v34 = v34;
    *(state + 36) = LODWORD(v34);
    [(CAEmitterCell *)self rotation];
    *&v35 = v35;
    *(state + 37) = LODWORD(v35);
    [(CAEmitterCell *)self rotationRange];
    *&v36 = v36;
    *(state + 38) = LODWORD(v36);
    [(CAEmitterCell *)self spin];
    *&v37 = v37;
    *(state + 39) = LODWORD(v37);
    [(CAEmitterCell *)self spinRange];
    *&v38 = v38;
    *(state + 40) = LODWORD(v38);
    v39 = [(CAEmitterCell *)self color];
    if (v39)
    {
      v83 = 0u;
      v84 = 0u;
      CA_CGColorGetRGBComponents(v39, v6, v83.f64);
      *(state + 164) = vcvt_hight_f32_f64(vcvt_f32_f64(v83), v84);
    }

    [(CAEmitterCell *)self redRange];
    *(state + 45) = v40;
    [(CAEmitterCell *)self greenRange];
    *(state + 46) = v41;
    [(CAEmitterCell *)self blueRange];
    *(state + 47) = v42;
    [(CAEmitterCell *)self alphaRange];
    *(state + 48) = v43;
    [(CAEmitterCell *)self redSpeed];
    *(state + 49) = v44;
    [(CAEmitterCell *)self greenSpeed];
    *(state + 50) = v45;
    [(CAEmitterCell *)self blueSpeed];
    *(state + 51) = v46;
    [(CAEmitterCell *)self alphaSpeed];
    *(state + 52) = v47;
    [(CAEmitterCell *)self minificationFilterBias];
    *(state + 53) = v48;
    [(CAEmitterCell *)self contentsScale];
    *&v49 = v49;
    *(state + 54) = LODWORD(v49);
    *(state + 55) = [(CAEmitterCell *)self contentsFrameCount];
    *(state + 56) = [(CAEmitterCell *)self contentsFramesPerRow];
    [(CAEmitterCell *)self contentsFramesPerSecond];
    *(state + 57) = v50;
    v51 = [(CAEmitterCell *)self contents];
    if (v51)
    {
      v52 = v51;
      v53 = CFGetTypeID(v51);
      if (v53 == CGImageGetTypeID())
      {
        v54 = CA::Render::copy_image(v52, v6, 0, 0.0, 1.0);
        v55 = *(state + 3);
        *(state + 3) = v54;
        if (v55)
        {
          if (atomic_fetch_add(v55 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v55 + 16))(v55);
          }
        }
      }
    }

    v56 = [(CAEmitterCell *)self contentsFrameMode];
    if (v56)
    {
      *(state + 17) = CAInternAtom(v56, 0);
    }

    [(CAEmitterCell *)self contentsRect];
    if (v58 != 0.0 || *&v59 != 0.0 || v60.f64[0] != 1.0 || *&v61 != 1.0)
    {
      *v63.i64 = v58;
      v63.i64[1] = v59;
      v62.f64[0] = 0.0;
      v64.i64[0] = *&v60.f64[0];
      v64.i64[1] = v61;
      v65 = vdupq_lane_s64(vcgtq_f64(v62, v60).i64[0], 0);
      v66.i64[1] = v59;
      *v66.i64 = v60.f64[0] + v58;
      v67 = vbslq_s8(v65, v66, v63);
      v63.i64[1] = v61;
      *v63.i64 = -v60.f64[0];
      v68 = vbslq_s8(v65, v63, v64);
      if (*&v61 < 0.0)
      {
        v67.f64[1] = *&v61 + *&v59;
        v68.f64[1] = -*&v61;
      }

      v83 = v67;
      v84 = vaddq_f64(v68, v67);
      v69 = CA::Render::Vector::new_vector(4, &v83, v57);
      v70 = *(state + 4);
      *(state + 4) = v69;
      if (v70 && atomic_fetch_add(v70 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v70 + 16))(v70);
      }
    }

    v71 = [(CAEmitterCell *)self magnificationFilter];
    if (v71)
    {
      v12 |= 8 * CA::Render::Layer::image_filter_from_string(v71, 0);
    }

    v72 = [(CAEmitterCell *)self minificationFilter];
    if (v72)
    {
      v12 |= 2 * CA::Render::Layer::image_filter_from_string(v72, 1);
    }

    v73 = [(CAEmitterCell *)self emitterCells];
    if (v73)
    {
      v74 = CA::Render::copy_render_array(v73, 14);
      v75 = *(state + 5);
      if (v75 != v74)
      {
        if (v75 && atomic_fetch_add(v75 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v75 + 16))(v75);
        }

        if (v74)
        {
          v76 = v74;
          if (!atomic_fetch_add(v74 + 2, 1u))
          {
            v76 = 0;
            atomic_fetch_add(v74 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v76 = 0;
        }

        *(state + 5) = v76;
      }

      if (v74 && atomic_fetch_add(v74 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v74 + 16))(v74);
      }
    }

    v77 = [(CAEmitterCell *)self emitterBehaviors];
    if (v77)
    {
      v78 = CA::Render::copy_render_array(v77, 13);
      v79 = *(state + 6);
      if (v79 != v78)
      {
        if (v79 && atomic_fetch_add(v79 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v79 + 16))(v79);
        }

        if (v78)
        {
          v80 = v78;
          if (!atomic_fetch_add(v78 + 2, 1u))
          {
            v80 = 0;
            atomic_fetch_add(v78 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v80 = 0;
        }

        *(state + 6) = v80;
      }

      if (v78 && atomic_fetch_add(v78 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v78 + 16))(v78);
      }
    }

    *(state + 3) |= v12 << 8;
    self->_state = state;
  }

  v81 = (state + 8);
  if (!atomic_fetch_add(state + 2, 1u))
  {
    state = 0;
    atomic_fetch_add(v81, 0xFFFFFFFF);
  }

  return state;
}

- (NSString)name
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x20Fu, 3, v3);
  return v3[0];
}

- (BOOL)isEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAEmitterCell_getter(self, 0xEAu, 7, &v3);
  return v3 != 0;
}

- (NSString)particleType
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x229u, 3, v3);
  return v3[0];
}

- (double)beginTime
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x41u, 0x12, v3);
  return *v3;
}

- (double)timeOffset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2C1u, 0x12, v3);
  return *v3;
}

- (double)duration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xD3u, 0x12, v3);
  return *v3;
}

- (float)speed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x29Fu, 0x11, &v3);
  return v3;
}

- (float)repeatCount
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x25Cu, 0x11, &v3);
  return v3;
}

- (double)repeatDuration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x25Du, 0x12, v3);
  return *v3;
}

- (BOOL)autoreverses
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAEmitterCell_getter(self, 0x38u, 7, &v3);
  return v3 != 0;
}

- (NSString)fillMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xFAu, 3, v3);
  return v3[0];
}

- (float)birthRate
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x45u, 0x11, &v3);
  return v3;
}

- (float)lifetime
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x1D8u, 0x11, &v3);
  return v3;
}

- (float)lifetimeRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x1D9u, 0x11, &v3);
  return v3;
}

- (CGFloat)emissionLatitude
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xDBu, 0x12, v3);
  return *v3;
}

- (CGFloat)emissionLongitude
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xDCu, 0x12, v3);
  return *v3;
}

- (CGFloat)emissionRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xDDu, 0x12, v3);
  return *v3;
}

- (CGFloat)velocity
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2E2u, 0x12, v3);
  return *v3;
}

- (CGFloat)velocityRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2E3u, 0x12, v3);
  return *v3;
}

- (CGFloat)xAcceleration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2F5u, 0x12, v3);
  return *v3;
}

- (CGFloat)yAcceleration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2F9u, 0x12, v3);
  return *v3;
}

- (CGFloat)zAcceleration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2FBu, 0x12, v3);
  return *v3;
}

- (float)mass
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x1FBu, 0x11, &v3);
  return v3;
}

- (float)massRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x1FCu, 0x11, &v3);
  return v3;
}

- (CGFloat)scaleRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x26Eu, 0x12, v3);
  return *v3;
}

- (CGFloat)scaleSpeed
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x26Fu, 0x12, v3);
  return *v3;
}

- (double)orientationLatitude
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x220u, 0x12, v3);
  return *v3;
}

- (double)orientationLongitude
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x221u, 0x12, v3);
  return *v3;
}

- (double)orientationRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x222u, 0x12, v3);
  return *v3;
}

- (double)rotation
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x268u, 0x12, v3);
  return *v3;
}

- (double)rotationRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x26Au, 0x12, v3);
  return *v3;
}

- (CGFloat)spin
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2A1u, 0x12, v3);
  return *v3;
}

- (CGFloat)spinRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2A3u, 0x12, v3);
  return *v3;
}

- (CGColorRef)color
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x65u, 2, v3);
  return v3[0];
}

- (float)redRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x254u, 0x11, &v3);
  return v3;
}

- (float)greenRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x121u, 0x11, &v3);
  return v3;
}

- (float)blueRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x48u, 0x11, &v3);
  return v3;
}

- (float)alphaRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x1Bu, 0x11, &v3);
  return v3;
}

- (float)redSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x255u, 0x11, &v3);
  return v3;
}

- (float)greenSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x122u, 0x11, &v3);
  return v3;
}

- (float)blueSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x49u, 0x11, &v3);
  return v3;
}

- (float)alphaSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x1Du, 0x11, &v3);
  return v3;
}

- (float)minificationFilterBias
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x207u, 0x11, &v3);
  return v3;
}

- (CGFloat)contentsScale
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x97u, 0x12, v3);
  return *v3;
}

- (unsigned)contentsFrameCount
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAEmitterCell_getter(self, 0x8Cu, 0xC, &v3);
  return v3;
}

- (unsigned)contentsFramesPerRow
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAEmitterCell_getter(self, 0x8Eu, 0xC, &v3);
  return v3;
}

- (float)contentsFramesPerSecond
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAEmitterCell_getter(self, 0x8Fu, 0x11, &v3);
  return v3;
}

- (id)contents
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x83u, 2, v3);
  return v3[0];
}

- (NSString)contentsFrameMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x8Du, 3, v3);
  return v3[0];
}

- (CGRect)contentsRect
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  *v7 = 0u;
  CAEmitterCell_getter(self, 0x96u, 0x15, &v6);
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = v7[1];
  v4 = v7[0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)magnificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x1F4u, 3, v3);
  return v3[0];
}

- (NSString)minificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x206u, 3, v3);
  return v3[0];
}

- (NSArray)emitterCells
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xDFu, 3, v3);
  return v3[0];
}

- (NSArray)emitterBehaviors
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0xDEu, 3, v3);
  return v3[0];
}

- (void)setEmitterCells:(NSArray *)emitterCells
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = emitterCells;
  CAEmitterCell_setter(self, 0xDF, 3, v3);
}

- (void)setMinificationFilterBias:(float)minificationFilterBias
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = minificationFilterBias;
  CAEmitterCell_setter(self, 0x207, 17, &v3);
}

- (void)setMinificationFilter:(NSString *)minificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = minificationFilter;
  CAEmitterCell_setter(self, 0x206, 3, v3);
}

- (void)setMagnificationFilter:(NSString *)magnificationFilter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = magnificationFilter;
  CAEmitterCell_setter(self, 0x1F4, 3, v3);
}

- (void)setContentsScale:(CGFloat)contentsScale
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = contentsScale;
  CAEmitterCell_setter(self, 0x97, 18, v3);
}

- (void)setContentsRect:(CGRect)contentsRect
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = contentsRect;
  CAEmitterCell_setter(self, 0x96, 21, &v3);
}

- (void)setContents:(id)contents
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = contents;
  CAEmitterCell_setter(self, 0x83, 2, v3);
}

- (void)setAlphaSpeed:(float)alphaSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = alphaSpeed;
  CAEmitterCell_setter(self, 0x1D, 17, &v3);
}

- (void)setAlphaRange:(float)alphaRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = alphaRange;
  CAEmitterCell_setter(self, 0x1B, 17, &v3);
}

- (void)setBlueSpeed:(float)blueSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = blueSpeed;
  CAEmitterCell_setter(self, 0x49, 17, &v3);
}

- (void)setBlueRange:(float)blueRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = blueRange;
  CAEmitterCell_setter(self, 0x48, 17, &v3);
}

- (void)setGreenSpeed:(float)greenSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = greenSpeed;
  CAEmitterCell_setter(self, 0x122, 17, &v3);
}

- (void)setGreenRange:(float)greenRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = greenRange;
  CAEmitterCell_setter(self, 0x121, 17, &v3);
}

- (void)setRedSpeed:(float)redSpeed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = redSpeed;
  CAEmitterCell_setter(self, 0x255, 17, &v3);
}

- (void)setRedRange:(float)redRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = redRange;
  CAEmitterCell_setter(self, 0x254, 17, &v3);
}

- (void)setColor:(CGColorRef)color
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = color;
  CAEmitterCell_setter(self, 0x65, 2, v3);
}

- (void)setSpinRange:(CGFloat)spinRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = spinRange;
  CAEmitterCell_setter(self, 0x2A3, 18, v3);
}

- (void)setSpin:(CGFloat)spin
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = spin;
  CAEmitterCell_setter(self, 0x2A1, 18, v3);
}

- (void)setRotationRange:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x26A, 18, v3);
}

- (void)setRotation:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x268, 18, v3);
}

- (void)setOrientationRange:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x222, 18, v3);
}

- (void)setOrientationLongitude:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x221, 18, v3);
}

- (void)setOrientationLatitude:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x220, 18, v3);
}

- (void)setScaleSpeed:(CGFloat)scaleSpeed
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = scaleSpeed;
  CAEmitterCell_setter(self, 0x26F, 18, v3);
}

- (void)setScaleRange:(CGFloat)scaleRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = scaleRange;
  CAEmitterCell_setter(self, 0x26E, 18, v3);
}

- (void)setScale:(CGFloat)scale
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = scale;
  CAEmitterCell_setter(self, 0x26D, 18, v3);
}

- (void)setZAcceleration:(CGFloat)zAcceleration
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = zAcceleration;
  CAEmitterCell_setter(self, 0x2FB, 18, v3);
}

- (void)setYAcceleration:(CGFloat)yAcceleration
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = yAcceleration;
  CAEmitterCell_setter(self, 0x2F9, 18, v3);
}

- (void)setXAcceleration:(CGFloat)xAcceleration
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = xAcceleration;
  CAEmitterCell_setter(self, 0x2F5, 18, v3);
}

- (void)setVelocityRange:(CGFloat)velocityRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = velocityRange;
  CAEmitterCell_setter(self, 0x2E3, 18, v3);
}

- (void)setVelocity:(CGFloat)velocity
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = velocity;
  CAEmitterCell_setter(self, 0x2E2, 18, v3);
}

- (void)setEmissionRange:(CGFloat)emissionRange
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = emissionRange;
  CAEmitterCell_setter(self, 0xDD, 18, v3);
}

- (void)setEmissionLongitude:(CGFloat)emissionLongitude
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = emissionLongitude;
  CAEmitterCell_setter(self, 0xDC, 18, v3);
}

- (void)setEmissionLatitude:(CGFloat)emissionLatitude
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = emissionLatitude;
  CAEmitterCell_setter(self, 0xDB, 18, v3);
}

- (void)setLifetimeRange:(float)lifetimeRange
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = lifetimeRange;
  CAEmitterCell_setter(self, 0x1D9, 17, &v3);
}

- (void)setLifetime:(float)lifetime
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = lifetime;
  CAEmitterCell_setter(self, 0x1D8, 17, &v3);
}

- (void)setBirthRate:(float)birthRate
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = birthRate;
  CAEmitterCell_setter(self, 0x45, 17, &v3);
}

- (void)setStyle:(NSDictionary *)style
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = style;
  CAEmitterCell_setter(self, 0x2B4, 3, v3);
}

- (NSDictionary)style
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAEmitterCell_getter(self, 0x2B4u, 3, v3);
  return v3[0];
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = enabled;
  CAEmitterCell_setter(self, 0xEA, 7, &v3);
}

- (void)setName:(NSString *)name
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = name;
  CAEmitterCell_setter(self, 0x20F, 3, v3);
}

- (void)setFillMode:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAEmitterCell_setter(self, 0xFA, 3, v3);
}

- (void)setAutoreverses:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x38, 7, &v3);
}

- (void)setRepeatDuration:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x25D, 18, v3);
}

- (void)setRepeatCount:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x25C, 17, &v3);
}

- (void)setSpeed:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x29F, 17, &v3);
}

- (void)setDuration:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0xD3, 18, v3);
}

- (void)setTimeOffset:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x2C1, 18, v3);
}

- (void)setBeginTime:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = a3;
  CAEmitterCell_setter(self, 0x41, 18, v3);
}

- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 && ([a4 isEqualToString:@"emitterCells"] || objc_msgSend(a4, "isEqualToString:", @"emitterBehaviors")))
  {
    objc_opt_class();

    return CAObject_validateArrayOfClass(a3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAEmitterCell;
    return [&v8 CA_validateValue:a3 forKey:a4];
  }
}

- (BOOL)CAMLTypeSupportedForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"contents"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAEmitterCell;
  return [&v6 CAMLTypeSupportedForKey:a3];
}

- (id)debugDescription
{
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(self);
  }

  v4 = [MEMORY[0x1E696AD60] string];
  v5 = objc_opt_class();
  [(__CFString *)v4 appendFormat:@"<%@:%p; ", NSStringFromClass(v5), self];
  v6 = *(v3 + 29);
  *(v3 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v7 = self->_attr[0];
  if (v7)
  {
    CA::AttrList::append_description(*v7, v4);
  }

  CA::Transaction::unlock(v3);
  [(__CFString *)v4 appendString:@">"];
  return v4;
}

- (void)didChangeValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_state && (([a3 isEqualToString:@"emitterCells"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"emitterBehaviors")))
  {
    state = self->_state;
    if (atomic_fetch_add(state + 2, 0xFFFFFFFF) == 1)
    {
      (*(*state + 16))(state);
    }

    self->_state = 0;
  }

  v6.receiver = self;
  v6.super_class = CAEmitterCell;
  [(CAEmitterCell *)&v6 didChangeValueForKey:a3];
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(self);
  }

  v7 = CAInternAtom(a4, 1);
  [(CAEmitterCell *)self willChangeValueForKey:a4, v10[0]];
  v8 = *(v6 + 29);
  *(v6 + 29) = v8 + 1;
  if (!v8)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v9 = self->_attr[0];
  if (!v9)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  self->_attr[0] = CA::AttrList::set(v9, v7, 2, v10);
  CA::Transaction::unlock(v6);

  [(CAEmitterCell *)self didChangeValueForKey:a4];
}

- (id)valueForUndefinedKey:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = CAInternAtom(a3, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = self->_attr[0];
  if (v8)
  {
    v11[0] = 0;
    v9 = CA::AttrList::get(v8, v6, 1, v11);
    CA::Transaction::unlock(v5);
    if (v9)
    {
      return v11[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CA::Transaction::unlock(v5);
    return 0;
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v7 = +[CAEmitterCell superclass];

  CAObject_setValueForKey(self, v7, a3, a4);
}

- (id)valueForKey:(id)a3
{
  v5 = +[CAEmitterCell superclass];

  return CAObject_valueForKey(self, v5, a3);
}

- (BOOL)shouldArchiveValueForKey:(NSString *)key
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = CAInternAtom(key, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = self->_attr[0];
  if (v8)
  {
    while (1)
    {
      v8 = *v8;
      v9 = v8 != 0;
      if (!v8)
      {
        break;
      }

      if ((v8[2] & 0xFFFFFF) == v6)
      {
        v9 = 1;
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  CA::Transaction::unlock(v5);
  return v9;
}

- (void)CA_prepareRenderValue
{
  v2 = [(CAEmitterCell *)self contents];
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CGImageGetTypeID())
    {
      v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
      if (v6 && (v7 = *(v6 + 40)) != 0)
      {
        v8 = *(v7 + 112);
      }

      else
      {
        v8 = CAGetColorSpace(36);
      }

      CA::Render::prepare_image(v3, v8, 0, v5);
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  CAMediaTimingInvalidate(self);
  v5 = self->_attr[0];
  if (v5)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v6)
    {
      v6 = CA::Transaction::create(v3);
    }

    v7 = *(v6 + 29);
    *(v6 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    CA::AttrList::free(v5, v4);
    CA::Transaction::unlock(v6);
  }

  state = self->_state;
  if (state && atomic_fetch_add(state + 2, 0xFFFFFFFF) == 1)
  {
    (*(*state + 16))(state);
  }

  v9.receiver = self;
  v9.super_class = CAEmitterCell;
  [(CAEmitterCell *)&v9 dealloc];
}

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_alloc_init(a1);
  [a3 setElementValue:v4];
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = objc_opt_class();

  return CAObject_automaticallyNotifiesObserversForKey(v4, a3);
}

+ (id)defaultValueForKey:(NSString *)key
{
  v3 = CAInternAtom(key, 0);
  if (v3 > 233)
  {
    if (v3 > 517)
    {
      if (v3 <= 620)
      {
        if (v3 != 518)
        {
          if (v3 == 553)
          {
            return @"sprite";
          }

          return 0;
        }

        if (dyld_program_sdk_at_least())
        {
          return @"linear";
        }

        else
        {
          return @"trilinear";
        }
      }

      if (v3 != 621 && v3 != 671)
      {
        return 0;
      }
    }

    else
    {
      if (v3 <= 499)
      {
        if (v3 != 234)
        {
          if (v3 == 250)
          {
            return @"removed";
          }

          return 0;
        }

        v11 = MEMORY[0x1E696AD98];

        return [v11 numberWithBool:1];
      }

      if (v3 == 500)
      {
        return @"linear";
      }

      if (v3 != 507)
      {
        return 0;
      }
    }

    goto LABEL_36;
  }

  if (v3 > 142)
  {
    if (v3 <= 150)
    {
      if (v3 != 143)
      {
        if (v3 == 150)
        {
          v5 = MEMORY[0x1E696B098];

          return [v5 valueWithRect:{0.0, 0.0, 1.0, 1.0}];
        }

        return 0;
      }

      v8 = MEMORY[0x1E696AD98];
      v9 = 0;
LABEL_37:

      return [v8 numberWithInt:v9];
    }

    if (v3 != 151)
    {
      if (v3 == 211)
      {
        v7 = MEMORY[0x1E696AD98];

        return [v7 numberWithDouble:INFINITY];
      }

      return 0;
    }

LABEL_36:
    v8 = MEMORY[0x1E696AD98];
    v9 = 1;
    goto LABEL_37;
  }

  if (v3 > 140)
  {
    if (v3 == 141)
    {
      return @"single";
    }

LABEL_23:
    v6 = MEMORY[0x1E696AD98];

    return [v6 numberWithUnsignedInt:1];
  }

  if (v3 != 101)
  {
    if (v3 != 140)
    {
      return 0;
    }

    goto LABEL_23;
  }

  result = +[CAEmitterCell defaultValueForKey:]::white;
  if (!+[CAEmitterCell defaultValueForKey:]::white)
  {
    v10 = CAGetColorSpace(36);
    result = CGColorCreate(v10, +[CAEmitterCell defaultValueForKey:]::values);
    +[CAEmitterCell defaultValueForKey:]::white = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(self);
  }

  v6 = objc_alloc_init(objc_opt_class());
  if (v6)
  {
    v7 = *(v4 + 29);
    *(v4 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v8 = *(v6 + 1);
    if (v8)
    {
      CA::AttrList::free(v8, v5);
    }

    v9 = self->_attr[0];
    if (v9)
    {
      v10 = *(v9 + 1) & 7;
      if (v10 == 7)
      {
        v9 = CA::AttrList::copy_(v9);
      }

      else
      {
        *(v9 + 1) = *(v9 + 1) & 0xFFFFFFFFFFFFFFF8 | (v10 + 1);
      }
    }

    *(v6 + 1) = v9;
    state = self->_state;
    if (state)
    {
      v12 = state + 2;
      if (!atomic_fetch_add(state + 2, 1u))
      {
        state = 0;
        atomic_fetch_add(v12, 0xFFFFFFFF);
      }
    }

    *(v6 + 3) = state;
    *(v6 + 8) = self->_flags;
    CA::Transaction::unlock(v4);
  }

  return v6;
}

- (void)setContentsFramesPerSecond:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x8F, 17, &v3);
}

- (void)setContentsFramesPerRow:(unsigned int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x8E, 12, &v3);
}

- (void)setContentsFrameCount:(unsigned int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x8C, 12, &v3);
}

- (void)setContentsFrameMode:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAEmitterCell_setter(self, 0x8D, 3, v3);
}

- (void)setEmitterBehaviors:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAEmitterCell_setter(self, 0xDE, 3, v3);
}

- (void)setMassRange:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x1FC, 17, &v3);
}

- (void)setMass:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAEmitterCell_setter(self, 0x1FB, 17, &v3);
}

- (void)setParticleType:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAEmitterCell_setter(self, 0x229, 3, v3);
}

@end
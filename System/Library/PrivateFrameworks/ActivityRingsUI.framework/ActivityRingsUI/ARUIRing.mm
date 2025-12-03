@interface ARUIRing
+ (id)randomRing;
- (ARUIRing)init;
- (ARUIRing)initWithRing:(id)ring;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)setBottomColor:(id)color;
- (void)setOpacity:(float)opacity;
- (void)setPercentage:(float)percentage;
- (void)setTopColor:(id)color;
@end

@implementation ARUIRing

- (unint64_t)hash
{
  v3 = +[ARUIHashBuilder builder];
  [v3 appendObject:self->_topColor];
  [v3 appendObject:self->_bottomColor];
  *&v4 = self->_diameter;
  [v3 appendFloat:v4];
  *&v5 = self->_thickness;
  [v3 appendFloat:v5];
  *&v6 = self->_percentage;
  [v3 appendFloat:v6];
  *&v7 = self->_opacity;
  [v3 appendFloat:v7];
  *&v8 = self->_emptyOpacity;
  [v3 appendFloat:v8];
  *&v9 = self->_trackOpacity;
  [v3 appendFloat:v9];
  *&v10 = self->_scale;
  [v3 appendFloat:v10];
  *&v11 = self->_zRotation;
  [v3 appendFloat:v11];
  [v3 appendFloat2:*self->_translation];
  [v3 appendObject:self->_celebration];
  v12 = [v3 hash];

  return v12;
}

- (ARUIRing)init
{
  v4.receiver = self;
  v4.super_class = ARUIRing;
  result = [(ARUIRing *)&v4 init];
  if (result)
  {
    result->_percentage = 0.0;
    v3 = *&ARUIRingEmptyOpacityValueDefault;
    LODWORD(result->_opacity) = ARUIRingOpacityValueDefault;
    result->_emptyOpacity = v3;
    LODWORD(result->_trackOpacity) = ARUIRingTrackOpacityValueDefault;
    *&result->_scale = 1065353216;
    *result->_translation = 0;
  }

  return result;
}

- (ARUIRing)initWithRing:(id)ring
{
  ringCopy = ring;
  v26.receiver = self;
  v26.super_class = ARUIRing;
  v5 = [(ARUIRing *)&v26 init];
  if (v5)
  {
    topColor = [ringCopy topColor];
    v7 = [topColor copy];
    topColor = v5->_topColor;
    v5->_topColor = v7;

    bottomColor = [ringCopy bottomColor];
    v10 = [bottomColor copy];
    bottomColor = v5->_bottomColor;
    v5->_bottomColor = v10;

    [ringCopy topColorVector];
    *v5->_topColorVector = v12;
    [ringCopy topColorPremultipliedVector];
    *v5->_topColorPremultipliedVector = v13;
    [ringCopy bottomColorVector];
    *v5->_bottomColorVector = v14;
    [ringCopy bottomColorPremultipliedVector];
    *v5->_bottomColorPremultipliedVector = v15;
    [ringCopy diameter];
    v5->_diameter = v16;
    [ringCopy thickness];
    v5->_thickness = v17;
    [ringCopy percentage];
    v5->_percentage = v18;
    [ringCopy opacity];
    v5->_opacity = v19;
    [ringCopy emptyOpacity];
    v5->_emptyOpacity = v20;
    [ringCopy trackOpacity];
    v5->_trackOpacity = v21;
    [ringCopy scale];
    v5->_scale = v22;
    [ringCopy zRotation];
    v5->_zRotation = v23;
    [ringCopy translation];
    *v5->_translation = v24;
  }

  return v5;
}

- (void)setTopColor:(id)color
{
  objc_storeStrong(&self->_topColor, color);
  colorCopy = color;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [colorCopy getRed:&v11 green:&v10 blue:&v9 alpha:&v8];

  v6.f64[0] = v11;
  v6.f64[1] = v10;
  v7.f64[0] = v9;
  v7.f64[1] = v8;
  *self->_topColorVector = vcvt_hight_f32_f64(vcvt_f32_f64(v6), v7);
  [(ARUIRing *)self _updatePremultipliedTopColor];
}

- (void)setBottomColor:(id)color
{
  objc_storeStrong(&self->_bottomColor, color);
  colorCopy = color;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [colorCopy getRed:&v11 green:&v10 blue:&v9 alpha:&v8];

  v6.f64[0] = v11;
  v6.f64[1] = v10;
  v7.f64[0] = v9;
  v7.f64[1] = v8;
  *self->_bottomColorVector = vcvt_hight_f32_f64(vcvt_f32_f64(v6), v7);
  [(ARUIRing *)self _updatePremultipliedBottomColor];
}

- (void)setOpacity:(float)opacity
{
  if (!ARUIFloatEqual(opacity, self->_opacity))
  {
    self->_opacity = opacity;
    [(ARUIRing *)self _updatePremultipliedTopColor];

    [(ARUIRing *)self _updatePremultipliedBottomColor];
  }
}

- (void)setPercentage:(float)percentage
{
  if (percentage == INFINITY)
  {
    percentage = *&ARUIRingPercentageValueNoRing;
  }

  percentageCopy = percentage;
  if (!ARUIFloatEqual(percentage, self->_percentage))
  {
    self->_percentage = percentageCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [MEMORY[0x1E698E6A0] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
    topColor = self->_topColor;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __20__ARUIRing_isEqual___block_invoke;
    v81[3] = &unk_1E83CE428;
    v8 = v5;
    v82 = v8;
    v9 = [v6 appendObject:topColor counterpart:v81];
    bottomColor = self->_bottomColor;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __20__ARUIRing_isEqual___block_invoke_2;
    v79[3] = &unk_1E83CE428;
    v11 = v8;
    v80 = v11;
    v12 = [v6 appendObject:bottomColor counterpart:v79];
    diameter = self->_diameter;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __20__ARUIRing_isEqual___block_invoke_3;
    v77[3] = &unk_1E83CE450;
    v14 = v11;
    v78 = v14;
    *&v15 = diameter;
    v16 = [v6 appendFloat:v77 counterpart:v15];
    thickness = self->_thickness;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __20__ARUIRing_isEqual___block_invoke_4;
    v75[3] = &unk_1E83CE450;
    v18 = v14;
    v76 = v18;
    *&v19 = thickness;
    v20 = [v6 appendFloat:v75 counterpart:v19];
    percentage = self->_percentage;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __20__ARUIRing_isEqual___block_invoke_5;
    v73[3] = &unk_1E83CE450;
    v22 = v18;
    v74 = v22;
    *&v23 = percentage;
    v24 = [v6 appendFloat:v73 counterpart:v23];
    opacity = self->_opacity;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __20__ARUIRing_isEqual___block_invoke_6;
    v71[3] = &unk_1E83CE450;
    v26 = v22;
    v72 = v26;
    *&v27 = opacity;
    v28 = [v6 appendFloat:v71 counterpart:v27];
    emptyOpacity = self->_emptyOpacity;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __20__ARUIRing_isEqual___block_invoke_7;
    v69[3] = &unk_1E83CE450;
    v30 = v26;
    v70 = v30;
    *&v31 = emptyOpacity;
    v32 = [v6 appendFloat:v69 counterpart:v31];
    trackOpacity = self->_trackOpacity;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __20__ARUIRing_isEqual___block_invoke_8;
    v67[3] = &unk_1E83CE450;
    v34 = v30;
    v68 = v34;
    *&v35 = trackOpacity;
    v36 = [v6 appendFloat:v67 counterpart:v35];
    scale = self->_scale;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __20__ARUIRing_isEqual___block_invoke_9;
    v65[3] = &unk_1E83CE450;
    v38 = v34;
    v66 = v38;
    *&v39 = scale;
    v40 = [v6 appendFloat:v65 counterpart:v39];
    zRotation = self->_zRotation;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __20__ARUIRing_isEqual___block_invoke_10;
    v63[3] = &unk_1E83CE450;
    v42 = v38;
    v64 = v42;
    *&v43 = zRotation;
    v44 = [v6 appendFloat:v63 counterpart:v43];
    v56 = *self->_translation;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __20__ARUIRing_isEqual___block_invoke_11;
    v61[3] = &unk_1E83CE450;
    v45 = v42;
    v62 = v45;
    v46 = [v6 appendFloat:v61 counterpart:v56];
    v47 = *&self->_translation[4];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __20__ARUIRing_isEqual___block_invoke_12;
    v59[3] = &unk_1E83CE450;
    v48 = v45;
    v60 = v48;
    LODWORD(v49) = v47;
    v50 = [v6 appendFloat:v59 counterpart:v49];
    celebration = self->_celebration;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __20__ARUIRing_isEqual___block_invoke_13;
    v57[3] = &unk_1E83CE428;
    v58 = v48;
    v52 = v48;
    v53 = [v6 appendObject:celebration counterpart:v57];
    v54 = [v6 isEqual];
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendFloat:@"percentage" withName:self->_percentage];
  v5 = [v3 appendFloat:@"diameter" withName:self->_diameter];
  v6 = [v3 appendFloat:@"thickness" withName:self->_thickness];
  v7 = [v3 appendFloat:@"opacity" withName:self->_opacity];
  v8 = [v3 appendFloat:@"scale" withName:self->_scale];
  v9 = [v3 appendFloat:@"translation.x" withName:COERCE_FLOAT(*self->_translation)];
  v10 = [v3 appendFloat:@"translation.y" withName:*&self->_translation[4]];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ARUIRing allocWithZone:zone];

  return [(ARUIRing *)v4 initWithRing:self];
}

+ (id)randomRing
{
  v2 = objc_alloc_init(ARUIRing);
  v3 = MEMORY[0x1E69DC888];
  v4 = ARUIRandomFloat(0.0, 1.0);
  v5 = ARUIRandomFloat(0.0, 1.0);
  v6 = ARUIRandomFloat(0.0, 1.0);
  v7 = [v3 colorWithRed:v4 green:v5 blue:v6 alpha:{ARUIRandomFloat(0.0, 1.0)}];
  [(ARUIRing *)v2 setTopColor:v7];

  v8 = MEMORY[0x1E69DC888];
  v9 = ARUIRandomFloat(0.0, 1.0);
  v10 = ARUIRandomFloat(0.0, 1.0);
  v11 = ARUIRandomFloat(0.0, 1.0);
  v12 = [v8 colorWithRed:v9 green:v10 blue:v11 alpha:{ARUIRandomFloat(0.0, 1.0)}];
  [(ARUIRing *)v2 setBottomColor:v12];

  *&v13 = ARUIRandomFloat(0.0, 1000.0);
  [(ARUIRing *)v2 setDiameter:v13];
  *&v14 = ARUIRandomFloat(0.0, 1000.0);
  [(ARUIRing *)v2 setThickness:v14];
  *&v15 = ARUIRandomFloat(0.0, 1000.0);
  [(ARUIRing *)v2 setPercentage:v15];
  *&v16 = ARUIRandomFloat(0.0, 1.0);
  [(ARUIRing *)v2 setOpacity:v16];
  *&v17 = ARUIRandomFloat(0.0, 1.0);
  [(ARUIRing *)v2 setEmptyOpacity:v17];
  *&v18 = ARUIRandomFloat(0.0, 1.0);
  [(ARUIRing *)v2 setTrackOpacity:v18];
  *&v19 = ARUIRandomFloat(0.1, 10.0);
  [(ARUIRing *)v2 setScale:v19];
  *&v20 = ARUIRandomFloat(0.0, 6.2832);
  [(ARUIRing *)v2 setZRotation:v20];
  [(ARUIRing *)v2 setTranslation:COERCE_DOUBLE(ARUIRandomFloat2(0.0, 1000.0))];

  return v2;
}

@end
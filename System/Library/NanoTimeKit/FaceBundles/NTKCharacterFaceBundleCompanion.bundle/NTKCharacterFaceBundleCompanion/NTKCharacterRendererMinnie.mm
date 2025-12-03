@interface NTKCharacterRendererMinnie
- (NTKCharacterRendererMinnie)initWithLoader:(id)loader;
- (int)getBlinkFrameFor15sTime:(float)time;
- (void)_drawBodyWithEncoder:(id)encoder;
- (void)_drawFlowerWithEncoder:(id)encoder;
- (void)_drawHeadWithEncoder:(id)encoder;
- (void)_drawSkirtWithEncoder:(id)encoder;
- (void)_drawTappingFootWithEncoder:(id)encoder;
- (void)loadFootTextures;
- (void)setupBodyState;
- (void)setupGeometry;
@end

@implementation NTKCharacterRendererMinnie

- (NTKCharacterRendererMinnie)initWithLoader:(id)loader
{
  v6.receiver = self;
  v6.super_class = NTKCharacterRendererMinnie;
  v3 = [(NTKCharacterRenderer *)&v6 initWithCharacter:0 loader:loader prefix:@"Minnie"];
  v4 = v3;
  if (v3)
  {
    [(NTKCharacterRenderer *)v3 _setPoseSpecs:&minniePoseSpecs];
    [(NTKCharacterRenderer *)v4 _setStateSpecs:&minnieStateSpecs];
    [(NTKCharacterRendererMinnie *)v4 _getBlinkDuration];
    [(NTKCharacterRenderer *)v4 _setBlinkDuration:?];
  }

  return v4;
}

- (void)loadFootTextures
{
  v3 = [NSMutableArray arrayWithCapacity:12];
  v4 = self->_footTexs[0];
  self->_footTexs[0] = v3;

  v5 = [NSMutableArray arrayWithCapacity:12];
  v6 = self->_footTexs[1];
  self->_footTexs[1] = v5;

  loader = [(NTKCharacterRenderer *)self loader];
  for (i = 0; i != 12; ++i)
  {
    v8 = [NSString stringWithFormat:@"FootStand_%02d", i];
    prefix = [(NTKCharacterRenderer *)self prefix];
    v10 = [loader textureWithName:v8 prefix:prefix];
    [(NSMutableArray *)self->_footTexs[0] setObject:v10 atIndexedSubscript:i];

    v11 = [NSString stringWithFormat:@"FootLean_%02d", i];
    prefix2 = [(NTKCharacterRenderer *)self prefix];
    v13 = [loader textureWithName:v11 prefix:prefix2];
    [(NSMutableArray *)self->_footTexs[1] setObject:v13 atIndexedSubscript:i];
  }
}

- (void)setupGeometry
{
  v29.receiver = self;
  v29.super_class = NTKCharacterRendererMinnie;
  [(NTKCharacterRenderer *)&v29 setupGeometry];
  loader = [(NTKCharacterRenderer *)self loader];
  v4 = objc_opt_new();
  skirt = self->_skirt;
  self->_skirt = v4;

  v6 = objc_opt_new();
  flower = self->_flower;
  self->_flower = v6;

  prefix = [(NTKCharacterRenderer *)self prefix];
  v9 = [loader textureWithName:@"Skirt-2-3" prefix:prefix];
  v30[0] = v9;
  prefix2 = [(NTKCharacterRenderer *)self prefix];
  v11 = [loader textureWithName:@"Skirt-1-4" prefix:prefix2];
  v30[1] = v11;
  v12 = [NSArray arrayWithObjects:v30 count:2];
  [(_Skirt *)self->_skirt setTexs:v12];

  prefix3 = [(NTKCharacterRenderer *)self prefix];
  v14 = [loader textureWithName:@"Flower" prefix:prefix3];
  [(_Flower *)self->_flower setTex:v14];

  -[_Geometry setMtlBufOffset:](self->_skirt, "setMtlBufOffset:", [loader bufferOffsetSkirt]);
  -[_Geometry setMtlBufOffset:](self->_flower, "setMtlBufOffset:", [loader bufferOffsetFlower]);
  body = [(NTKCharacterRenderer *)self body];
  LODWORD(v16) = 1060418741;
  [body setWidth:v16];

  body2 = [(NTKCharacterRenderer *)self body];
  LODWORD(v18) = 1058568312;
  [body2 setHeight:v18];

  head = [(NTKCharacterRenderer *)self head];
  LODWORD(v20) = 1058938398;
  [head setWidth:v20];

  head2 = [(NTKCharacterRenderer *)self head];
  LODWORD(v22) = 1058691674;
  [head2 setHeight:v22];

  LODWORD(v23) = 1051289961;
  [(_Flower *)self->_flower setWidth:v23];
  LODWORD(v24) = 1046602210;
  [(_Flower *)self->_flower setHeight:v24];
  arms = [(NTKCharacterRenderer *)self arms];
  LODWORD(v26) = 1029647859;
  [arms setLeftShoulderAdjustment:v26];

  arms2 = [(NTKCharacterRenderer *)self arms];
  LODWORD(v28) = -1119556529;
  [arms2 setRightShoulderAdjustment:v28];
}

- (void)setupBodyState
{
  v4.receiver = self;
  v4.super_class = NTKCharacterRendererMinnie;
  [(NTKCharacterRenderer *)&v4 setupBodyState];
  head = [(NTKCharacterRenderer *)self head];
  [head setOffset:0.000064625463];
}

- (void)_drawFlowerWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  head = [(NTKCharacterRenderer *)self head];
  inAnimation = [head inAnimation];

  if (!inAnimation)
  {
    v7 = minnieStateSpecs[12 * [(NTKCharacterRenderer *)self curState]+ 5];
    loader = [(NTKCharacterRenderer *)self loader];
    [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
    v9 = [(_Flower *)self->_flower tex];
    v10 = [loader getMTLTexture:v9];

    [encoderCopy setFragmentTexture:v10 atIndex:0];
    [encoderCopy setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_flower atIndex:{"mtlBufOffset"), 0}];
    [(NTKCharacterRenderer *)self _applyClothingColorWithEncoder:encoderCopy];
    [(NTKCharacterRenderer *)self curTimeMod1Sec];
    v12 = (v11 + 0.22) * 5.96902597;
    v13 = cosf(v12);
    head2 = [(NTKCharacterRenderer *)self head];
    [head2 bone];
    v16 = v15 + v13 * 0.01;
    v56 = v16;
    head3 = [(NTKCharacterRenderer *)self head];
    [head3 bone];
    *&v18 = v56;
    v57 = v18;

    head4 = [(NTKCharacterRenderer *)self head];
    [head4 curHeadTilt];
    v53 = 0.0;
    if (v20 > 0.0)
    {
      head5 = [(NTKCharacterRenderer *)self head];
      [head5 curHeadTilt];
      v23 = v22 * -0.00320512821 * 30.0;
      v53 = v23;
    }

    head6 = [(NTKCharacterRenderer *)self head];
    [head6 curHeadTilt];
    v26 = (v7 * v25) * -0.3;

    [(NTKCharacterRenderer *)self characterScale];
    v54 = v27;
    [(NTKCharacterRenderer *)self headMatrix];
    v59[0] = v28;
    v59[1] = v29;
    v59[2] = v30;
    v59[3] = v31;
    v60 = v57;
    v61 = 0;
    [(NTKCharacterRenderer *)self globalScale];
    v62 = v32;
    [(_Flower *)self->_flower width];
    v51 = v33;
    [(_Flower *)self->_flower height];
    v34.f32[0] = v7 * v54;
    v34.f32[1] = v54;
    v58 = v34;
    v63 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vmul_f32(v34, __PAIR64__(v35, v51))), xmmword_14E40));
    [(NTKCharacterRenderer *)self globalOffset];
    v37 = v36;
    [(NTKCharacterRenderer *)self globalScale];
    v39 = vmul_n_f32(v38, v54);
    body = [(NTKCharacterRenderer *)self body];
    [body offset];
    *&v55 = v41 + v26;
    head7 = [(NTKCharacterRenderer *)self head];
    [head7 curHeadX];
    v52 = v43;
    [(NTKCharacterRenderer *)self neckBone];
    v50 = v44;
    head8 = [(NTKCharacterRenderer *)self head];
    [head8 offset];
    [(NTKCharacterRenderer *)self neckBone:v46];
    v64 = vmla_f32(v37, vadd_f32(__PAIR64__(LODWORD(v53), v55), vmla_f32(__PAIR64__(v49, v52), vdup_n_s32(0x3D4CCCCDu), __PAIR64__(v48, v50))), v39);
    v65 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(v58), xmmword_14E50), vdupq_n_s64(0x3F6A41A41A41A41AuLL)));

    [encoderCopy setVertexBytes:v59 length:112 atIndex:1];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:8];
  }
}

- (void)_drawSkirtWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  body = [(NTKCharacterRenderer *)self body];
  if ([body state])
  {
    body2 = [(NTKCharacterRenderer *)self body];
    waitingForFootRaise = [body2 waitingForFootRaise];

    if (!waitingForFootRaise)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = minnieStateSpecs[12 * [(NTKCharacterRenderer *)self curState]+ 3];
  loader = [(NTKCharacterRenderer *)self loader];
  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
  texs = [(_Skirt *)self->_skirt texs];
  v11 = [texs objectAtIndexedSubscript:{-[NTKCharacterRenderer curPose](self, "curPose")}];
  v12 = [loader getMTLTexture:v11];

  [encoderCopy setFragmentTexture:v12 atIndex:0];
  [(NTKCharacterRenderer *)self _applyClothingColorWithEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_skirt atIndex:{"mtlBufOffset"), 0}];
  [(NTKCharacterRenderer *)self characterScale];
  v40 = v13;
  [(NTKCharacterRenderer *)self curTimeMod1Sec];
  v15 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vadd_f32(vdup_lane_s32(v14, 0), 1048576000)), xmmword_14E60));
  v37 = v15.f32[0];
  v38 = cosf(v15.f32[1]);
  v16.f32[0] = cosf(v37);
  v16.f32[1] = v38;
  v17 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v16), xmmword_14E70));
  v18 = matrix_identity_float4x4.columns[1];
  v41[0] = matrix_identity_float4x4.columns[0];
  v41[1] = v18;
  v19 = matrix_identity_float4x4.columns[3];
  v41[2] = matrix_identity_float4x4.columns[2];
  v41[3] = v19;
  body3 = [(NTKCharacterRenderer *)self body];
  [body3 bone];
  v42 = vmul_n_f32(v21, v40);
  [(NTKCharacterRenderer *)self dampenBones];
  v43 = vmul_n_f32(v17, v22);
  [(NTKCharacterRenderer *)self globalScale];
  v44 = v23;
  v17.f32[0] = v8 * v40;
  body4 = [(NTKCharacterRenderer *)self body];
  [body4 width];
  v39 = (v8 * v40) * v25;
  body5 = [(NTKCharacterRenderer *)self body];
  [body5 height];
  *&v27 = v39;
  *(&v27 + 1) = v40 * v28;
  v45 = v27;
  [(NTKCharacterRenderer *)self globalOffset];
  v30 = v29;
  [(NTKCharacterRenderer *)self globalScale];
  v32 = vmul_n_f32(v31, v40);
  body6 = [(NTKCharacterRenderer *)self body];
  [body6 offset];
  v35 = vmla_f32(v30, v34, v32);
  v36.f64[0] = (v17.f32[0] * 0.0);
  v36.f64[1] = v40 * 5.0;
  v46 = v35;
  v47 = vcvt_f32_f64(vmulq_f64(v36, vdupq_n_s64(0x3F6A41A41A41A41AuLL)));

  [encoderCopy setVertexBytes:v41 length:112 atIndex:1];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:8];

LABEL_6:
}

- (void)_drawHeadWithEncoder:(id)encoder
{
  v5.receiver = self;
  v5.super_class = NTKCharacterRendererMinnie;
  encoderCopy = encoder;
  [(NTKCharacterRenderer *)&v5 _drawHeadWithEncoder:encoderCopy];
  [(NTKCharacterRendererMinnie *)self _drawFlowerWithEncoder:encoderCopy, v5.receiver, v5.super_class];
}

- (void)_drawTappingFootWithEncoder:(id)encoder
{
  footTexs = self->_footTexs;
  encoderCopy = encoder;
  v6 = footTexs[[(NTKCharacterRenderer *)self curPose]];
  foot = [(NTKCharacterRenderer *)self foot];
  [foot setTexs:v6];

  v8.receiver = self;
  v8.super_class = NTKCharacterRendererMinnie;
  [(NTKCharacterRenderer *)&v8 _drawTappingFootWithEncoder:encoderCopy];
}

- (void)_drawBodyWithEncoder:(id)encoder
{
  v5.receiver = self;
  v5.super_class = NTKCharacterRendererMinnie;
  encoderCopy = encoder;
  [(NTKCharacterRenderer *)&v5 _drawBodyWithEncoder:encoderCopy];
  [(NTKCharacterRendererMinnie *)self _drawSkirtWithEncoder:encoderCopy, v5.receiver, v5.super_class];
}

- (int)getBlinkFrameFor15sTime:(float)time
{
  timeCopy = time;
  if (timeCopy >= 0.1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (timeCopy < 0.05)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

@end
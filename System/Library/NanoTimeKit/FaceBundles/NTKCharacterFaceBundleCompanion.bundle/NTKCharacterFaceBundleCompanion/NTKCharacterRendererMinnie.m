@interface NTKCharacterRendererMinnie
- (NTKCharacterRendererMinnie)initWithLoader:(id)a3;
- (int)getBlinkFrameFor15sTime:(float)a3;
- (void)_drawBodyWithEncoder:(id)a3;
- (void)_drawFlowerWithEncoder:(id)a3;
- (void)_drawHeadWithEncoder:(id)a3;
- (void)_drawSkirtWithEncoder:(id)a3;
- (void)_drawTappingFootWithEncoder:(id)a3;
- (void)loadFootTextures;
- (void)setupBodyState;
- (void)setupGeometry;
@end

@implementation NTKCharacterRendererMinnie

- (NTKCharacterRendererMinnie)initWithLoader:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKCharacterRendererMinnie;
  v3 = [(NTKCharacterRenderer *)&v6 initWithCharacter:0 loader:a3 prefix:@"Minnie"];
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

  v14 = [(NTKCharacterRenderer *)self loader];
  for (i = 0; i != 12; ++i)
  {
    v8 = [NSString stringWithFormat:@"FootStand_%02d", i];
    v9 = [(NTKCharacterRenderer *)self prefix];
    v10 = [v14 textureWithName:v8 prefix:v9];
    [(NSMutableArray *)self->_footTexs[0] setObject:v10 atIndexedSubscript:i];

    v11 = [NSString stringWithFormat:@"FootLean_%02d", i];
    v12 = [(NTKCharacterRenderer *)self prefix];
    v13 = [v14 textureWithName:v11 prefix:v12];
    [(NSMutableArray *)self->_footTexs[1] setObject:v13 atIndexedSubscript:i];
  }
}

- (void)setupGeometry
{
  v29.receiver = self;
  v29.super_class = NTKCharacterRendererMinnie;
  [(NTKCharacterRenderer *)&v29 setupGeometry];
  v3 = [(NTKCharacterRenderer *)self loader];
  v4 = objc_opt_new();
  skirt = self->_skirt;
  self->_skirt = v4;

  v6 = objc_opt_new();
  flower = self->_flower;
  self->_flower = v6;

  v8 = [(NTKCharacterRenderer *)self prefix];
  v9 = [v3 textureWithName:@"Skirt-2-3" prefix:v8];
  v30[0] = v9;
  v10 = [(NTKCharacterRenderer *)self prefix];
  v11 = [v3 textureWithName:@"Skirt-1-4" prefix:v10];
  v30[1] = v11;
  v12 = [NSArray arrayWithObjects:v30 count:2];
  [(_Skirt *)self->_skirt setTexs:v12];

  v13 = [(NTKCharacterRenderer *)self prefix];
  v14 = [v3 textureWithName:@"Flower" prefix:v13];
  [(_Flower *)self->_flower setTex:v14];

  -[_Geometry setMtlBufOffset:](self->_skirt, "setMtlBufOffset:", [v3 bufferOffsetSkirt]);
  -[_Geometry setMtlBufOffset:](self->_flower, "setMtlBufOffset:", [v3 bufferOffsetFlower]);
  v15 = [(NTKCharacterRenderer *)self body];
  LODWORD(v16) = 1060418741;
  [v15 setWidth:v16];

  v17 = [(NTKCharacterRenderer *)self body];
  LODWORD(v18) = 1058568312;
  [v17 setHeight:v18];

  v19 = [(NTKCharacterRenderer *)self head];
  LODWORD(v20) = 1058938398;
  [v19 setWidth:v20];

  v21 = [(NTKCharacterRenderer *)self head];
  LODWORD(v22) = 1058691674;
  [v21 setHeight:v22];

  LODWORD(v23) = 1051289961;
  [(_Flower *)self->_flower setWidth:v23];
  LODWORD(v24) = 1046602210;
  [(_Flower *)self->_flower setHeight:v24];
  v25 = [(NTKCharacterRenderer *)self arms];
  LODWORD(v26) = 1029647859;
  [v25 setLeftShoulderAdjustment:v26];

  v27 = [(NTKCharacterRenderer *)self arms];
  LODWORD(v28) = -1119556529;
  [v27 setRightShoulderAdjustment:v28];
}

- (void)setupBodyState
{
  v4.receiver = self;
  v4.super_class = NTKCharacterRendererMinnie;
  [(NTKCharacterRenderer *)&v4 setupBodyState];
  v3 = [(NTKCharacterRenderer *)self head];
  [v3 setOffset:0.000064625463];
}

- (void)_drawFlowerWithEncoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKCharacterRenderer *)self head];
  v6 = [v5 inAnimation];

  if (!v6)
  {
    v7 = minnieStateSpecs[12 * [(NTKCharacterRenderer *)self curState]+ 5];
    v8 = [(NTKCharacterRenderer *)self loader];
    [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:v4];
    v9 = [(_Flower *)self->_flower tex];
    v10 = [v8 getMTLTexture:v9];

    [v4 setFragmentTexture:v10 atIndex:0];
    [v4 setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_flower atIndex:{"mtlBufOffset"), 0}];
    [(NTKCharacterRenderer *)self _applyClothingColorWithEncoder:v4];
    [(NTKCharacterRenderer *)self curTimeMod1Sec];
    v12 = (v11 + 0.22) * 5.96902597;
    v13 = cosf(v12);
    v14 = [(NTKCharacterRenderer *)self head];
    [v14 bone];
    v16 = v15 + v13 * 0.01;
    v56 = v16;
    v17 = [(NTKCharacterRenderer *)self head];
    [v17 bone];
    *&v18 = v56;
    v57 = v18;

    v19 = [(NTKCharacterRenderer *)self head];
    [v19 curHeadTilt];
    v53 = 0.0;
    if (v20 > 0.0)
    {
      v21 = [(NTKCharacterRenderer *)self head];
      [v21 curHeadTilt];
      v23 = v22 * -0.00320512821 * 30.0;
      v53 = v23;
    }

    v24 = [(NTKCharacterRenderer *)self head];
    [v24 curHeadTilt];
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
    v40 = [(NTKCharacterRenderer *)self body];
    [v40 offset];
    *&v55 = v41 + v26;
    v42 = [(NTKCharacterRenderer *)self head];
    [v42 curHeadX];
    v52 = v43;
    [(NTKCharacterRenderer *)self neckBone];
    v50 = v44;
    v45 = [(NTKCharacterRenderer *)self head];
    [v45 offset];
    [(NTKCharacterRenderer *)self neckBone:v46];
    v64 = vmla_f32(v37, vadd_f32(__PAIR64__(LODWORD(v53), v55), vmla_f32(__PAIR64__(v49, v52), vdup_n_s32(0x3D4CCCCDu), __PAIR64__(v48, v50))), v39);
    v65 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(v58), xmmword_14E50), vdupq_n_s64(0x3F6A41A41A41A41AuLL)));

    [v4 setVertexBytes:v59 length:112 atIndex:1];
    [v4 drawPrimitives:4 vertexStart:0 vertexCount:8];
  }
}

- (void)_drawSkirtWithEncoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKCharacterRenderer *)self body];
  if ([v5 state])
  {
    v6 = [(NTKCharacterRenderer *)self body];
    v7 = [v6 waitingForFootRaise];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = minnieStateSpecs[12 * [(NTKCharacterRenderer *)self curState]+ 3];
  v9 = [(NTKCharacterRenderer *)self loader];
  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:v4];
  v10 = [(_Skirt *)self->_skirt texs];
  v11 = [v10 objectAtIndexedSubscript:{-[NTKCharacterRenderer curPose](self, "curPose")}];
  v12 = [v9 getMTLTexture:v11];

  [v4 setFragmentTexture:v12 atIndex:0];
  [(NTKCharacterRenderer *)self _applyClothingColorWithEncoder:v4];
  [v4 setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_skirt atIndex:{"mtlBufOffset"), 0}];
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
  v20 = [(NTKCharacterRenderer *)self body];
  [v20 bone];
  v42 = vmul_n_f32(v21, v40);
  [(NTKCharacterRenderer *)self dampenBones];
  v43 = vmul_n_f32(v17, v22);
  [(NTKCharacterRenderer *)self globalScale];
  v44 = v23;
  v17.f32[0] = v8 * v40;
  v24 = [(NTKCharacterRenderer *)self body];
  [v24 width];
  v39 = (v8 * v40) * v25;
  v26 = [(NTKCharacterRenderer *)self body];
  [v26 height];
  *&v27 = v39;
  *(&v27 + 1) = v40 * v28;
  v45 = v27;
  [(NTKCharacterRenderer *)self globalOffset];
  v30 = v29;
  [(NTKCharacterRenderer *)self globalScale];
  v32 = vmul_n_f32(v31, v40);
  v33 = [(NTKCharacterRenderer *)self body];
  [v33 offset];
  v35 = vmla_f32(v30, v34, v32);
  v36.f64[0] = (v17.f32[0] * 0.0);
  v36.f64[1] = v40 * 5.0;
  v46 = v35;
  v47 = vcvt_f32_f64(vmulq_f64(v36, vdupq_n_s64(0x3F6A41A41A41A41AuLL)));

  [v4 setVertexBytes:v41 length:112 atIndex:1];
  [v4 drawPrimitives:4 vertexStart:0 vertexCount:8];

LABEL_6:
}

- (void)_drawHeadWithEncoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKCharacterRendererMinnie;
  v4 = a3;
  [(NTKCharacterRenderer *)&v5 _drawHeadWithEncoder:v4];
  [(NTKCharacterRendererMinnie *)self _drawFlowerWithEncoder:v4, v5.receiver, v5.super_class];
}

- (void)_drawTappingFootWithEncoder:(id)a3
{
  footTexs = self->_footTexs;
  v5 = a3;
  v6 = footTexs[[(NTKCharacterRenderer *)self curPose]];
  v7 = [(NTKCharacterRenderer *)self foot];
  [v7 setTexs:v6];

  v8.receiver = self;
  v8.super_class = NTKCharacterRendererMinnie;
  [(NTKCharacterRenderer *)&v8 _drawTappingFootWithEncoder:v5];
}

- (void)_drawBodyWithEncoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKCharacterRendererMinnie;
  v4 = a3;
  [(NTKCharacterRenderer *)&v5 _drawBodyWithEncoder:v4];
  [(NTKCharacterRendererMinnie *)self _drawSkirtWithEncoder:v4, v5.receiver, v5.super_class];
}

- (int)getBlinkFrameFor15sTime:(float)a3
{
  v3 = a3;
  if (v3 >= 0.1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3 < 0.05)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

@end
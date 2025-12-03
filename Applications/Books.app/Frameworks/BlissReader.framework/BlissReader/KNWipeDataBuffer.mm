@interface KNWipeDataBuffer
+ (id)newWipeDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect metalContext:(id)context colorAttachment:(id)attachment;
- ($94F468A8D4C62B317260615823C2B210)p_texCoordFromX:(double)x y:(double)y;
- (CATransform3D)MVPMatrix;
- (CGRect)textureRect;
- (CGRect)vertexRect;
- (KNWipeDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect minimumDataSize:(int64_t)size;
- (__n128)setVertexInput:(__n128)input;
- (void)drawWipeWithPercent:(double)percent opacity:(double)opacity renderEncoder:(id)encoder;
- (void)setMVPMatrix:(CATransform3D *)matrix;
- (void)setupMTLWipeDataBufferWithContext:(id)context colorAttachment:(id)attachment;
- (void)updateWipeWithPercent:(double)percent solidVertexCount:(unint64_t *)count wipeVertexCount:(unint64_t *)vertexCount drawIntoMetalBuffer:(BOOL)buffer;
@end

@implementation KNWipeDataBuffer

- (KNWipeDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect minimumDataSize:(int64_t)size
{
  height = textureRect.size.height;
  width = textureRect.size.width;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  v28.receiver = self;
  v28.super_class = KNWipeDataBuffer;
  v14 = [(KNWipeDataBuffer *)&v28 init];
  v15 = v14;
  if (v14)
  {
    v14->_vertexRect.origin.x = v13;
    v14->_vertexRect.origin.y = v12;
    v14->_vertexRect.size.width = v11;
    v14->_vertexRect.size.height = v10;
    v14->_textureRect.origin.x = x;
    v14->_textureRect.origin.y = y;
    if (size <= 2)
    {
      sizeCopy = 2;
    }

    else
    {
      sizeCopy = size;
    }

    v14->_textureRect.size.width = width;
    v14->_textureRect.size.height = height;
    if (size <= 3)
    {
      sizeCopy2 = 3;
    }

    else
    {
      sizeCopy2 = size;
    }

    v18 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Position" bufferUsage:35040 dataType:5 normalized:0 componentCount:2];
    v19 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"TexCoord" bufferUsage:35040 dataType:sizeCopy2 normalized:1 componentCount:2];
    v20 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Position" bufferUsage:35040 dataType:5 normalized:0 componentCount:2];
    v21 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"TexCoord" bufferUsage:35040 dataType:sizeCopy2 normalized:1 componentCount:2];
    v22 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Opacity" bufferUsage:35040 dataType:sizeCopy normalized:1 componentCount:1];
    v30[0] = v20;
    v30[1] = v21;
    v30[2] = v22;
    v23 = [NSArray arrayWithObjects:v30 count:3];
    wipeBufferAttributes = v15->_wipeBufferAttributes;
    v15->_wipeBufferAttributes = v23;

    v15->_wipePositionAttributeIndex = [(NSArray *)v15->_wipeBufferAttributes indexOfObject:v20];
    v15->_wipeTexCoordAttributeIndex = [(NSArray *)v15->_wipeBufferAttributes indexOfObject:v21];
    v15->_wipeOpacityAttributeIndex = [(NSArray *)v15->_wipeBufferAttributes indexOfObject:v22];
    v29[0] = v18;
    v29[1] = v19;
    v25 = [NSArray arrayWithObjects:v29 count:2];
    solidBufferAttributes = v15->_solidBufferAttributes;
    v15->_solidBufferAttributes = v25;

    v15->_solidPositionAttributeIndex = [(NSArray *)v15->_solidBufferAttributes indexOfObject:v18];
    v15->_solidTexCoordAttributeIndex = [(NSArray *)v15->_solidBufferAttributes indexOfObject:v19];
  }

  return v15;
}

- (void)setMVPMatrix:(CATransform3D *)matrix
{
  v3 = *&matrix->m11;
  v4 = *&matrix->m13;
  v5 = *&matrix->m23;
  *&self->mMVPMatrix.m21 = *&matrix->m21;
  *&self->mMVPMatrix.m23 = v5;
  *&self->mMVPMatrix.m11 = v3;
  *&self->mMVPMatrix.m13 = v4;
  v6 = *&matrix->m31;
  v7 = *&matrix->m33;
  v8 = *&matrix->m43;
  *&self->mMVPMatrix.m41 = *&matrix->m41;
  *&self->mMVPMatrix.m43 = v8;
  *&self->mMVPMatrix.m31 = v6;
  *&self->mMVPMatrix.m33 = v7;
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m21), *&matrix->m23);
  v10 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m31), *&matrix->m33);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m41), *&matrix->m43);
  *self->_anon_150 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m11), *&matrix->m13);
  *&self->_anon_150[16] = v9;
  *&self->_anon_150[32] = v10;
  *&self->_anon_150[48] = v11;
}

+ (id)newWipeDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect metalContext:(id)context colorAttachment:(id)attachment
{
  height = textureRect.size.height;
  width = textureRect.size.width;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v11 = rect.size.height;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  contextCopy = context;
  attachmentCopy = attachment;
  v18 = [[self alloc] initWithVertexRect:5 textureRect:v14 minimumDataSize:{v13, v12, v11, x, y, width, height}];
  v19 = v18;
  if (v18)
  {
    [v18 setupMTLWipeDataBufferWithContext:contextCopy colorAttachment:attachmentCopy];
  }

  else
  {
    v20 = +[TSUAssertionHandler currentHandler];
    v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[KNWipeDataBuffer newWipeDataBufferWithVertexRect:textureRect:metalContext:colorAttachment:]");
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNWipeDataBuffer.m"];
    [v20 handleFailureInFunction:v21 file:v22 lineNumber:103 description:{@"invalid nil value for '%s'", "wipeBuffer"}];
  }

  return v19;
}

- (void)setupMTLWipeDataBufferWithContext:(id)context colorAttachment:(id)attachment
{
  attachmentCopy = attachment;
  device = [context device];
  v7 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_wipeBufferAttributes vertexCount:6 indexElementCount:0 device:device];
  wipeMTLDataBuffer = self->_wipeMTLDataBuffer;
  self->_wipeMTLDataBuffer = v7;

  [(TSDMTLDataBuffer *)self->_wipeMTLDataBuffer setMetalDrawMode:4];
  v9 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_solidBufferAttributes vertexCount:6 indexElementCount:0 device:device];
  solidMTLDataBuffer = self->_solidMTLDataBuffer;
  self->_solidMTLDataBuffer = v9;

  [(TSDMTLDataBuffer *)self->_solidMTLDataBuffer setMetalDrawMode:4];
  v11 = [TSDMetalShader alloc];
  v12 = MTLCreateSystemDefaultDevice();
  v13 = [v11 initDefaultTextureAndOpacityShaderWithDevice:v12 colorAttachment:attachmentCopy];
  solidMetalShader = self->_solidMetalShader;
  self->_solidMetalShader = v13;

  v15 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"wipeDataBufferVertexShader" fragmentShader:@"wipeDataBufferFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:attachmentCopy];
  wipeMetalShader = self->_wipeMetalShader;
  self->_wipeMetalShader = v15;
}

- ($94F468A8D4C62B317260615823C2B210)p_texCoordFromX:(double)x y:(double)y
{
  TSDPointFromNormalizedRect();
  v6 = v5;
  v7 = 1.0 - v4;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (void)updateWipeWithPercent:(double)percent solidVertexCount:(unint64_t *)count wipeVertexCount:(unint64_t *)vertexCount drawIntoMetalBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  y = CGPointZero.y;
  v12 = [(KNWipeDataBuffer *)self direction]- 11;
  v67 = y;
  if (v12 < 0xE && ((0x3C0Fu >> v12) & 1) != 0)
  {
    v13 = dbl_34B240[v12];
    x = dbl_34B2B0[v12];
  }

  else
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[KNWipeDataBuffer updateWipeWithPercent:solidVertexCount:wipeVertexCount:drawIntoMetalBuffer:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNWipeDataBuffer.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:172 description:@"Unknown direction!"];

    v13 = y;
    x = CGPointZero.x;
  }

  v18 = v13 != 0.0 && x != 0.0;
  width = self->_vertexRect.size.width;
  [(KNWipeDataBuffer *)self blurFraction];
  v21 = width * v20;
  if (v18)
  {
    v23 = self->_vertexRect.size.width;
    height = self->_vertexRect.size.height;
    v24 = atan(height / v23);
    v25 = sin(v24);
    v26 = v21 / (v25 + v25);
    v27 = atan(v23 / height);
    v28 = sin(v27);
    v29 = v21 / (v28 + v28);
    v30 = x;
  }

  else
  {
    v26 = v21;
    v30 = x;
    if (x == 0.0)
    {
      v26 = self->_vertexRect.size.width;
    }

    height = self->_vertexRect.size.height;
    if (v13 == 0.0)
    {
      v29 = self->_vertexRect.size.height;
    }

    else
    {
      v29 = v21;
    }
  }

  v31 = self->_vertexRect.size.width;
  v32 = -(v29 - (v29 + height) * percent);
  if (v30 == 0.0)
  {
    v33 = v26;
  }

  else
  {
    v33 = -(v26 - (v26 + v31) * percent);
  }

  if (v13 == 0.0)
  {
    v34 = v29;
  }

  else
  {
    v34 = v32;
  }

  v65 = v30;
  v66 = v13;
  if (v18)
  {
    if (v30 == -1.0)
    {
      v35 = self->_vertexRect.size.width;
    }

    else
    {
      v35 = CGPointZero.x;
    }

    v64 = v35;
    v36 = v13;
    v37 = 2.0;
    if (v36 == -1.0)
    {
      v63 = height;
      v38 = v67;
    }

    else
    {
      v38 = v67;
      v63 = v67;
    }
  }

  else
  {
    v39 = v30 == -1.0;
    if (v13 == -1.0)
    {
      v39 = 1;
    }

    v38 = v67;
    if (v39)
    {
      v40 = height;
    }

    else
    {
      v40 = v67;
    }

    if (v39)
    {
      v41 = self->_vertexRect.size.width;
    }

    else
    {
      v41 = CGPointZero.x;
    }

    v63 = v40;
    v64 = v41;
    v37 = 1.0;
  }

  if (v18)
  {
    v42 = v29 + v29;
  }

  else
  {
    v42 = v29;
  }

  if (v18)
  {
    v43 = v26 + v26;
  }

  else
  {
    v43 = v26;
  }

  v61 = v43;
  v62 = v42;
  v112.origin.x = CGPointZero.x;
  v112.origin.y = v38;
  v112.size.width = self->_vertexRect.size.width;
  v112.size.height = height;
  v44 = v33;
  v68 = -(CGRectGetWidth(v112) - v37 * v33);
  v113.origin.x = CGPointZero.x;
  v113.origin.y = v38;
  v113.size.width = v31;
  v113.size.height = height;
  v45 = CGRectGetHeight(v113);
  v46 = 0.0;
  v60 = 0.0;
  if (v18)
  {
    v46 = 0.0;
    if (v68 > 0.0)
    {
      v114.origin.x = CGPointZero.x;
      v114.origin.y = v38;
      v114.size.width = v31;
      v114.size.height = height;
      v46 = -CGRectGetWidth(v114);
    }
  }

  v59 = v46;
  v47 = -(v45 - v37 * v34);
  if (v18 && v47 > 0.0)
  {
    v115.origin.x = CGPointZero.x;
    v115.origin.y = v38;
    v115.size.width = v31;
    v115.size.height = height;
    v60 = -CGRectGetHeight(v115);
  }

  v48 = fmax(v68, 0.0);
  v49 = fmax(v47, 0.0);
  v50 = -v44 / v61;
  if (v44 > 0.0)
  {
    v50 = 0.0;
  }

  v56 = v50;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_1C551C;
  v89[3] = &unk_45EE78;
  v90 = *&self->_solidPositionAttributeIndex;
  v103 = v18;
  v91 = v64;
  v92 = v63;
  v89[4] = self;
  v89[5] = &v108;
  v93 = v44;
  v94 = v34;
  v57 = v34;
  v58 = v49;
  v95 = v65;
  v96 = v66;
  v97 = CGPointZero.x;
  v98 = v38;
  v99 = v31;
  v100 = height;
  if (v34 <= 0.0)
  {
    v51 = -v34 / v62;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = v48;
  v101 = v48;
  v102 = v49;
  v53 = objc_retainBlock(v89);
  if (bufferCopy)
  {
    [(TSDMTLDataBuffer *)self->_solidMTLDataBuffer updateMetalDataBufferAttributes:self->_solidBufferAttributes withBlock:v53];
  }

  wipeOpacityAttributeIndex = self->_wipeOpacityAttributeIndex;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1C5D00;
  v69[3] = &unk_45EEA0;
  *&v69[6] = v56;
  *&v69[7] = v51;
  v70 = *&self->_wipePositionAttributeIndex;
  v71 = wipeOpacityAttributeIndex;
  v88 = v18;
  v72 = v64;
  v73 = v63;
  v74 = v52;
  v75 = v44;
  v76 = v57;
  v77 = v65;
  v78 = v66;
  v79 = v58;
  v80 = CGPointZero.x;
  v81 = v67;
  v82 = v31;
  v83 = height;
  v69[4] = self;
  v69[5] = &v104;
  v84 = v61;
  v85 = v62;
  v86 = fmax(v61 + v68 + v59, 0.0);
  v87 = fmax(v62 + v47 + v60, 0.0);
  v55 = objc_retainBlock(v69);
  if (bufferCopy)
  {
    [(TSDMTLDataBuffer *)self->_wipeMTLDataBuffer updateMetalDataBufferAttributes:self->_wipeBufferAttributes withBlock:v55];
  }

  *count = v109[3];
  *vertexCount = v105[3];

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
}

- (void)drawWipeWithPercent:(double)percent opacity:(double)opacity renderEncoder:(id)encoder
{
  v10 = 0;
  v11 = 0;
  encoderCopy = encoder;
  [(KNWipeDataBuffer *)self updateWipeWithPercent:&v11 solidVertexCount:&v10 wipeVertexCount:1 drawIntoMetalBuffer:percent];
  opacityCopy = opacity;
  self->_fragmentInput.Opacity = opacityCopy;
  self = (self + 152);
  [*&self->MVPMatrix.m32 setPipelineStateWithEncoder:encoderCopy vertexBytes:&self->_wipePositionAttributeIndex fragmentBytes:self];
  [*&self->MVPMatrix.m33 drawWithEncoder:encoderCopy atIndex:0 range:{0, v11}];
  [*&self->MVPMatrix.m24 setPipelineStateWithEncoder:encoderCopy vertexBytes:&self->_wipePositionAttributeIndex fragmentBytes:self];
  [*&self->MVPMatrix.m31 drawWithEncoder:encoderCopy atIndex:0 range:{0, v10}];
}

- (CATransform3D)MVPMatrix
{
  v3 = *&self[3].m41;
  *&retstr->m31 = *&self[3].m33;
  *&retstr->m33 = v3;
  v4 = *&self[4].m11;
  *&retstr->m41 = *&self[3].m43;
  *&retstr->m43 = v4;
  v5 = *&self[3].m21;
  *&retstr->m11 = *&self[3].m13;
  *&retstr->m13 = v5;
  v6 = *&self[3].m31;
  *&retstr->m21 = *&self[3].m23;
  *&retstr->m23 = v6;
  return self;
}

- (CGRect)vertexRect
{
  x = self->_vertexRect.origin.x;
  y = self->_vertexRect.origin.y;
  width = self->_vertexRect.size.width;
  height = self->_vertexRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textureRect
{
  x = self->_textureRect.origin.x;
  y = self->_textureRect.origin.y;
  width = self->_textureRect.size.width;
  height = self->_textureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)setVertexInput:(__n128)input
{
  result[21] = a2;
  result[22] = input;
  result[23] = a4;
  result[24] = a5;
  return result;
}

@end
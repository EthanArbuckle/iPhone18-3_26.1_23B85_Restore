@interface SCNActionRotate
+ (id)rotateByAngle:(double)angle aroundAxis:(SCNVector3)axis duration:(double)duration;
+ (id)rotateByX:(double)x y:(double)y z:(double)z duration:(double)duration;
+ (id)rotateToAxisAngle:(SCNVector4)angle duration:(double)duration;
+ (id)rotateToX:(double)x y:(double)y z:(double)z duration:(double)duration shortestUnitArc:(BOOL)arc;
- (SCNActionRotate)init;
- (SCNActionRotate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parameters;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNActionRotate

- (SCNActionRotate)init
{
  v3.receiver = self;
  v3.super_class = SCNActionRotate;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionRotate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNActionRotate;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNActionRotate;
  [(SCNAction *)&v6 encodeWithCoder:?];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var19), @"_rotX"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction->var20), @"_rotY"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction->var24), @"_rotZ"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var2), @"_lastRotX"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *(&self->_mycaction[1].var2 + 1)), @"_lastRotY"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *&self->_mycaction[1].var3), @"_lastRotZ"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", BYTE1(self->_mycaction[1].var15)), @"_isReversed"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", BYTE2(self->_mycaction[1].var15)), @"_isRelative"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", LOBYTE(self->_mycaction[1].var15)), @"_isAxisAngle"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", BYTE3(self->_mycaction[1].var15)), @"_isUnitArc"}];
  SCNEncodeVector4(coder, @"_axisRot", COERCE_FLOAT(*&self->_mycaction[1].var4), COERCE_FLOAT(HIDWORD(*&self->_mycaction[1].var4)), COERCE_FLOAT(*&self->_mycaction[1].var5), COERCE_FLOAT(HIDWORD(*&self->_mycaction[1].var4)));
  mycaction = self->_mycaction;
  if (BYTE3(mycaction[1].var15) == 1)
  {
    SCNEncodeVector4(coder, @"_qRot", COERCE_FLOAT(*&mycaction[1].var10), COERCE_FLOAT(HIDWORD(*&mycaction[1].var10)), COERCE_FLOAT(mycaction[1].var12), COERCE_FLOAT(HIDWORD(*&mycaction[1].var10)));
  }
}

+ (id)rotateByX:(double)x y:(double)y z:(double)z duration:(double)duration
{
  v10 = objc_alloc_init(SCNActionRotate);
  mycaction = v10->_mycaction;
  BYTE2(mycaction[1].var15) = 1;
  xCopy = x;
  mycaction->var19 = xCopy;
  yCopy = y;
  *&v10->_mycaction->var20 = yCopy;
  zCopy = z;
  *&v10->_mycaction->var24 = zCopy;
  [(SCNAction *)v10 setDuration:duration];
  return v10;
}

+ (id)rotateByAngle:(double)angle aroundAxis:(SCNVector3)axis duration:(double)duration
{
  z = axis.z;
  y = axis.y;
  x = axis.x;
  v10 = objc_alloc_init(SCNActionRotate);
  mycaction = v10->_mycaction;
  *&mycaction[1].var4 = x;
  v12 = v10->_mycaction;
  BYTE2(mycaction[1].var15) = 1;
  *(&v12[1].var4 + 1) = y;
  *&v10->_mycaction[1].var5 = z;
  angleCopy = angle;
  *(&v10->_mycaction[1].var5 + 1) = angleCopy;
  LOBYTE(v10->_mycaction[1].var15) = 1;
  [(SCNAction *)v10 setDuration:duration];
  return v10;
}

+ (id)rotateToAxisAngle:(SCNVector4)angle duration:(double)duration
{
  z = angle.z;
  w = angle.w;
  x = angle.x;
  y = angle.y;
  v5 = objc_alloc_init(SCNActionRotate);
  mycaction = v5->_mycaction;
  *&v7 = __PAIR64__(LODWORD(y), LODWORD(x));
  *(&v7 + 1) = __PAIR64__(LODWORD(w), LODWORD(z));
  BYTE2(mycaction[1].var15) = 0;
  *&mycaction[1].var4 = v7;
  LOBYTE(v5->_mycaction[1].var15) = 1;
  [(SCNAction *)v5 setDuration:duration];
  return v5;
}

+ (id)rotateToX:(double)x y:(double)y z:(double)z duration:(double)duration shortestUnitArc:(BOOL)arc
{
  v12 = objc_alloc_init(SCNActionRotate);
  mycaction = v12->_mycaction;
  BYTE2(mycaction[1].var15) = 0;
  xCopy = x;
  yCopy = y;
  zCopy = z;
  if (arc)
  {
    C3DQuaternionMakeEuler(&mycaction[1].var10, xCopy, yCopy, zCopy);
    mycaction = v12->_mycaction;
  }

  mycaction->var19 = xCopy;
  *&v12->_mycaction->var20 = yCopy;
  *&v12->_mycaction->var24 = zCopy;
  [(SCNAction *)v12 setDuration:duration];
  BYTE3(v12->_mycaction[1].var15) = arc;
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SCNActionRotate;
  result = [(SCNAction *)&v9 copyWithZone:zone];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 272) = LODWORD(mycaction[1].var15);
  *(v6 + 144) = *&mycaction->var19;
  *(*(result + 2) + 192) = *&self->_mycaction[1].var4;
  *(*(result + 2) + 240) = *&self->_mycaction[1].var10;
  v7 = self->_mycaction;
  v8 = *(result + 2);
  *(v8 + 56) = *&v7->var7;
  *(v8 + 104) = v7->var14;
  *(v8 + 120) = *&v7->var16;
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF072F0](self, a2);
  v16.receiver = self;
  v16.super_class = SCNActionRotate;
  v4 = [(SCNAction *)&v16 copyWithZone:v3];
  v5 = v4;
  mycaction = self->_mycaction;
  v7 = BYTE2(mycaction[1].var15);
  v8 = v4[2];
  *(v8 + 274) = v7;
  *(v8 + 273) = BYTE1(mycaction[1].var15) ^ 1;
  *(v8 + 275) = BYTE3(mycaction[1].var15);
  var15_low = LOBYTE(mycaction[1].var15);
  *(v8 + 272) = var15_low;
  if (var15_low == 1)
  {
    v10 = *&mycaction[1].var4;
    *(v8 + 192) = v10;
    v11 = self->_mycaction;
    if (BYTE2(v11[1].var15) == 1)
    {
      *&v10 = -*(&v11[1].var5 + 1);
      *(v4[2] + 204) = v10;
    }
  }

  else
  {
    v12 = *&mycaction->var19;
    v13 = vnegq_f32(v12);
    if (v7)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    *(v8 + 144) = vbslq_s8(vdupq_n_s32(v14), v13, v12);
    v10 = *&self->_mycaction[1].var10;
    *(v4[2] + 240) = v10;
    if (BYTE2(self->_mycaction[1].var15) == 1)
    {
      *&v10 = C3DQuaternionConjugate((v4[2] + 240)).n128_u64[0];
    }
  }

  [(SCNAction *)self duration];
  [v5 setDuration:?];
  return v5;
}

- (id)parameters
{
  v15[5] = *MEMORY[0x277D85DE8];
  mycaction = self->_mycaction;
  if (LOBYTE(mycaction[1].var15) == 1)
  {
    LODWORD(v2) = *&mycaction[1].var4;
    v15[0] = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    LODWORD(v5) = *(&self->_mycaction[1].var4 + 1);
    v15[1] = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    LODWORD(v6) = LODWORD(self->_mycaction[1].var5);
    v15[2] = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    LODWORD(v7) = HIDWORD(self->_mycaction[1].var5);
    v15[3] = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v15[4] = [MEMORY[0x277CCABB0] numberWithInt:BYTE3(self->_mycaction[1].var15)];
    v8 = MEMORY[0x277CBEA60];
    v9 = v15;
    v10 = 5;
  }

  else
  {
    *&v2 = mycaction->var19;
    v14[0] = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    LODWORD(v11) = *&self->_mycaction->var20;
    v14[1] = [MEMORY[0x277CCABB0] numberWithFloat:{v11, v14[0]}];
    LODWORD(v12) = *&self->_mycaction->var24;
    v14[2] = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v14[3] = [MEMORY[0x277CCABB0] numberWithInt:BYTE3(self->_mycaction[1].var15)];
    v8 = MEMORY[0x277CBEA60];
    v9 = v14;
    v10 = 4;
  }

  return [v8 arrayWithObjects:v9 count:v10];
}

@end
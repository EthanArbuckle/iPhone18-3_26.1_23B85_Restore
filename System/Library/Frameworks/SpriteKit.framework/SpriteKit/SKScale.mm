@interface SKScale
+ (id)scaleToSize:(CGSize)size duration:(double)duration;
+ (id)scaleXBy:(double)by duration:(double)duration;
+ (id)scaleXBy:(double)by y:(double)y duration:(double)duration;
+ (id)scaleXTo:(double)to duration:(double)duration;
+ (id)scaleXTo:(double)to y:(double)y duration:(double)duration;
+ (id)scaleYBy:(double)by duration:(double)duration;
+ (id)scaleYTo:(double)to duration:(double)duration;
- (SKScale)init;
- (SKScale)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKScale

- (SKScale)init
{
  v3.receiver = self;
  v3.super_class = SKScale;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKScale)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKScale;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SKScale;
  [(SKAction *)&v17 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var23];
  [coderCopy encodeObject:v5 forKey:@"_lastRatio"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [coderCopy encodeObject:v6 forKey:@"_scaleTargetX"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [coderCopy encodeObject:v7 forKey:@"_scaleTargetY"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [coderCopy encodeObject:v8 forKey:@"_scaleTargetReversedX"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var22];
  [coderCopy encodeObject:v9 forKey:@"_scaleTargetReversedY"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var26];
  [coderCopy encodeObject:v10 forKey:@"_deltaScaleX"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var27];
  [coderCopy encodeObject:v11 forKey:@"_deltaScaleY"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var28];
  [coderCopy encodeObject:v12 forKey:@"_isReversed"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var29];
  [coderCopy encodeObject:v13 forKey:@"_isRelative"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var30];
  [coderCopy encodeObject:v14 forKey:@"_useX"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var31];
  [coderCopy encodeObject:v15 forKey:@"_useY"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var32];
  [coderCopy encodeObject:v16 forKey:@"_isTargetSizeBased"];

  [coderCopy encodeCGSize:@"_targetSize" forKey:{self->_mycaction->var33.width, self->_mycaction->var33.height}];
}

+ (id)scaleXBy:(double)by y:(double)y duration:(double)duration
{
  v8 = objc_alloc_init(SKScale);
  v9 = v8;
  byCopy = by;
  mycaction = v8->_mycaction;
  yCopy = y;
  mycaction->var19 = byCopy;
  mycaction->var20 = yCopy;
  v13 = byCopy;
  v14 = 0.0;
  v15 = 0.0;
  if ((LODWORD(v13) & 0x60000000) != 0)
  {
    v15 = 1.0 / by;
  }

  mycaction->var21 = v15;
  if ((LODWORD(yCopy) & 0x60000000) != 0)
  {
    v14 = 1.0 / y;
  }

  mycaction->var22 = v14;
  *&mycaction->var29 = 257;
  mycaction->var31 = 1;
  [(SKAction *)v8 setDuration:duration];

  return v9;
}

+ (id)scaleXBy:(double)by duration:(double)duration
{
  v6 = objc_alloc_init(SKScale);
  v7 = v6;
  mycaction = v6->_mycaction;
  byCopy = by;
  mycaction->var19 = byCopy;
  mycaction->var20 = 1.0;
  if ((LODWORD(byCopy) & 0x60000000) != 0)
  {
    v10 = 1.0 / by;
  }

  else
  {
    v10 = 0.0;
  }

  mycaction->var21 = v10;
  mycaction->var22 = 1.0;
  *&mycaction->var29 = 257;
  mycaction->var31 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v7;
}

+ (id)scaleYBy:(double)by duration:(double)duration
{
  v6 = objc_alloc_init(SKScale);
  v7 = v6;
  mycaction = v6->_mycaction;
  mycaction->var19 = 1.0;
  byCopy = by;
  mycaction->var20 = byCopy;
  if ((LODWORD(byCopy) & 0x60000000) != 0)
  {
    v10 = 1.0 / by;
  }

  else
  {
    v10 = 0.0;
  }

  mycaction->var22 = v10;
  mycaction->var21 = 1.0;
  *&mycaction->var29 = 1;
  mycaction->var31 = 1;
  [(SKAction *)v6 setDuration:duration];

  return v7;
}

+ (id)scaleToSize:(CGSize)size duration:(double)duration
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(SKScale);
  mycaction = v7->_mycaction;
  __asm { FMOV            V0.4S, #1.0 }

  *&mycaction->var19 = _Q0;
  *&mycaction->var29 = 16843008;
  mycaction->var33.width = width;
  mycaction->var33.height = height;
  [(SKAction *)v7 setDuration:duration];

  return v7;
}

+ (id)scaleXTo:(double)to y:(double)y duration:(double)duration
{
  v6 = objc_alloc_init(SKScale);
  v7.f64[0] = to;
  v7.f64[1] = y;
  mycaction = v6->_mycaction;
  *&mycaction->var19 = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v7);
  *&mycaction->var29 = 256;
  mycaction->var31 = 1;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)scaleXTo:(double)to duration:(double)duration
{
  v6 = objc_alloc_init(SKScale);
  mycaction = v6->_mycaction;
  toCopy = to;
  mycaction->var19 = toCopy;
  mycaction->var20 = 1.0;
  mycaction->var21 = toCopy;
  mycaction->var22 = 1.0;
  *&mycaction->var29 = 256;
  mycaction->var31 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)scaleYTo:(double)to duration:(double)duration
{
  v6 = objc_alloc_init(SKScale);
  mycaction = v6->_mycaction;
  mycaction->var19 = 1.0;
  toCopy = to;
  mycaction->var20 = toCopy;
  mycaction->var21 = 1.0;
  mycaction->var22 = toCopy;
  *&mycaction->var29 = 0;
  mycaction->var31 = 1;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKScale;
  result = [(SKAction *)&v7 copyWithZone:zone];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 128) = mycaction->var23;
  *(v6 + 112) = *&mycaction->var19;
  *(v6 + 140) = *&mycaction->var26;
  *(v6 + 148) = *&mycaction->var28;
  *(v6 + 152) = mycaction->var32;
  *(v6 + 160) = mycaction->var33;
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF09E30](self, a2);
  v8.receiver = self;
  v8.super_class = SKScale;
  v4 = [(SKAction *)&v8 copyWithZone:v3];
  mycaction = self->_mycaction;
  v6 = v4[2];
  *(v6 + 128) = mycaction->var23;
  *(v6 + 112) = *&mycaction->var21;
  *(v6 + 120) = *&mycaction->var19;
  *(v6 + 140) = *&mycaction->var26;
  *(v6 + 148) = !mycaction->var28;
  *(v6 + 149) = *&mycaction->var29;
  *(v6 + 160) = mycaction->var33;

  return v4;
}

@end
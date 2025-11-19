@interface SKScale
+ (id)scaleToSize:(CGSize)a3 duration:(double)a4;
+ (id)scaleXBy:(double)a3 duration:(double)a4;
+ (id)scaleXBy:(double)a3 y:(double)a4 duration:(double)a5;
+ (id)scaleXTo:(double)a3 duration:(double)a4;
+ (id)scaleXTo:(double)a3 y:(double)a4 duration:(double)a5;
+ (id)scaleYBy:(double)a3 duration:(double)a4;
+ (id)scaleYTo:(double)a3 duration:(double)a4;
- (SKScale)init;
- (SKScale)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
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

- (SKScale)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKScale;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKScale;
  [(SKAction *)&v17 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var23];
  [v4 encodeObject:v5 forKey:@"_lastRatio"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [v4 encodeObject:v6 forKey:@"_scaleTargetX"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [v4 encodeObject:v7 forKey:@"_scaleTargetY"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [v4 encodeObject:v8 forKey:@"_scaleTargetReversedX"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var22];
  [v4 encodeObject:v9 forKey:@"_scaleTargetReversedY"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var26];
  [v4 encodeObject:v10 forKey:@"_deltaScaleX"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var27];
  [v4 encodeObject:v11 forKey:@"_deltaScaleY"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var28];
  [v4 encodeObject:v12 forKey:@"_isReversed"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var29];
  [v4 encodeObject:v13 forKey:@"_isRelative"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var30];
  [v4 encodeObject:v14 forKey:@"_useX"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var31];
  [v4 encodeObject:v15 forKey:@"_useY"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var32];
  [v4 encodeObject:v16 forKey:@"_isTargetSizeBased"];

  [v4 encodeCGSize:@"_targetSize" forKey:{self->_mycaction->var33.width, self->_mycaction->var33.height}];
}

+ (id)scaleXBy:(double)a3 y:(double)a4 duration:(double)a5
{
  v8 = objc_alloc_init(SKScale);
  v9 = v8;
  v10 = a3;
  mycaction = v8->_mycaction;
  v12 = a4;
  mycaction->var19 = v10;
  mycaction->var20 = v12;
  v13 = v10;
  v14 = 0.0;
  v15 = 0.0;
  if ((LODWORD(v13) & 0x60000000) != 0)
  {
    v15 = 1.0 / a3;
  }

  mycaction->var21 = v15;
  if ((LODWORD(v12) & 0x60000000) != 0)
  {
    v14 = 1.0 / a4;
  }

  mycaction->var22 = v14;
  *&mycaction->var29 = 257;
  mycaction->var31 = 1;
  [(SKAction *)v8 setDuration:a5];

  return v9;
}

+ (id)scaleXBy:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKScale);
  v7 = v6;
  mycaction = v6->_mycaction;
  v9 = a3;
  mycaction->var19 = v9;
  mycaction->var20 = 1.0;
  if ((LODWORD(v9) & 0x60000000) != 0)
  {
    v10 = 1.0 / a3;
  }

  else
  {
    v10 = 0.0;
  }

  mycaction->var21 = v10;
  mycaction->var22 = 1.0;
  *&mycaction->var29 = 257;
  mycaction->var31 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v7;
}

+ (id)scaleYBy:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKScale);
  v7 = v6;
  mycaction = v6->_mycaction;
  mycaction->var19 = 1.0;
  v9 = a3;
  mycaction->var20 = v9;
  if ((LODWORD(v9) & 0x60000000) != 0)
  {
    v10 = 1.0 / a3;
  }

  else
  {
    v10 = 0.0;
  }

  mycaction->var22 = v10;
  mycaction->var21 = 1.0;
  *&mycaction->var29 = 1;
  mycaction->var31 = 1;
  [(SKAction *)v6 setDuration:a4];

  return v7;
}

+ (id)scaleToSize:(CGSize)a3 duration:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_alloc_init(SKScale);
  mycaction = v7->_mycaction;
  __asm { FMOV            V0.4S, #1.0 }

  *&mycaction->var19 = _Q0;
  *&mycaction->var29 = 16843008;
  mycaction->var33.width = width;
  mycaction->var33.height = height;
  [(SKAction *)v7 setDuration:a4];

  return v7;
}

+ (id)scaleXTo:(double)a3 y:(double)a4 duration:(double)a5
{
  v6 = objc_alloc_init(SKScale);
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  mycaction = v6->_mycaction;
  *&mycaction->var19 = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v7);
  *&mycaction->var29 = 256;
  mycaction->var31 = 1;
  [(SKAction *)v6 setDuration:a5];

  return v6;
}

+ (id)scaleXTo:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKScale);
  mycaction = v6->_mycaction;
  v8 = a3;
  mycaction->var19 = v8;
  mycaction->var20 = 1.0;
  mycaction->var21 = v8;
  mycaction->var22 = 1.0;
  *&mycaction->var29 = 256;
  mycaction->var31 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)scaleYTo:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKScale);
  mycaction = v6->_mycaction;
  mycaction->var19 = 1.0;
  v8 = a3;
  mycaction->var20 = v8;
  mycaction->var21 = 1.0;
  mycaction->var22 = v8;
  *&mycaction->var29 = 0;
  mycaction->var31 = 1;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKScale;
  result = [(SKAction *)&v7 copyWithZone:a3];
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
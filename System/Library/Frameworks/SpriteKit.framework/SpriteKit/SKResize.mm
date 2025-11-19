@interface SKResize
+ (id)resizeByWidth:(double)a3 height:(double)a4 duration:(double)a5;
+ (id)resizeToHeight:(double)a3 duration:(double)a4;
+ (id)resizeToWidth:(double)a3 duration:(double)a4;
+ (id)resizeToWidth:(double)a3 height:(double)a4 duration:(double)a5;
- (SKResize)init;
- (SKResize)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKResize

- (SKResize)init
{
  v3.receiver = self;
  v3.super_class = SKResize;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKResize)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKResize;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SKResize;
  [(SKAction *)&v16 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [v4 encodeObject:v5 forKey:@"_lastRatio"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20.var0];
  [v4 encodeObject:v6 forKey:@"_sizeTarget.width"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20.var1];
  [v4 encodeObject:v7 forKey:@"_sizeTarget.height"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21.var0];
  [v4 encodeObject:v8 forKey:@"_sizeTargetReversed.width"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21.var1];
  [v4 encodeObject:v9 forKey:@"_sizeTargetReversed.height"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var22.var0];
  [v4 encodeObject:v10 forKey:@"_sizeResidual.width"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var22.var1];
  [v4 encodeObject:v11 forKey:@"_sizeResidual.height"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var23];
  [v4 encodeObject:v12 forKey:@"_isReversed"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var24];
  [v4 encodeObject:v13 forKey:@"_isRelative"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var25];
  [v4 encodeObject:v14 forKey:@"_useW"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var26];
  [v4 encodeObject:v15 forKey:@"_useH"];
}

+ (id)resizeToWidth:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKResize);
  mycaction = v6->_mycaction;
  v8 = a3;
  mycaction->var20.var0 = v8;
  mycaction->var20.var1 = 0.0;
  mycaction->var21.var0 = v8;
  mycaction->var21.var1 = 0.0;
  *&mycaction->var24 = 256;
  mycaction->var26 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)resizeToWidth:(double)a3 height:(double)a4 duration:(double)a5
{
  v6 = objc_alloc_init(SKResize);
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  mycaction = v6->_mycaction;
  *&mycaction->var20.var0 = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v7);
  *&mycaction->var24 = 256;
  mycaction->var26 = 1;
  [(SKAction *)v6 setDuration:a5];

  return v6;
}

+ (id)resizeToHeight:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKResize);
  mycaction = v6->_mycaction;
  mycaction->var20.var0 = 0.0;
  v8 = a3;
  mycaction->var20.var1 = v8;
  mycaction->var21.var0 = 0.0;
  mycaction->var21.var1 = v8;
  *&mycaction->var24 = 0;
  mycaction->var26 = 1;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)resizeByWidth:(double)a3 height:(double)a4 duration:(double)a5
{
  v8 = objc_alloc_init(SKResize);
  mycaction = v8->_mycaction;
  v10 = a3;
  v11 = a4;
  mycaction->var20.var0 = v10;
  mycaction->var20.var1 = v11;
  mycaction->var21.var0 = -v10;
  mycaction->var21.var1 = -v11;
  *&mycaction->var24 = 257;
  mycaction->var26 = 1;
  [(SKAction *)v8 setDuration:a5];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKResize;
  result = [(SKAction *)&v7 copyWithZone:a3];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 112) = mycaction->var19;
  *(v6 + 116) = mycaction->var20;
  *(*(result + 2) + 124) = self->_mycaction->var21;
  *(*(result + 2) + 132) = self->_mycaction->var22;
  *(*(result + 2) + 140) = *&self->_mycaction->var23;
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF09E30](self, a2);
  v10.receiver = self;
  v10.super_class = SKResize;
  v4 = [(SKAction *)&v10 copyWithZone:v3];
  mycaction = self->_mycaction;
  v6 = v4[2];
  *(v6 + 112) = mycaction->var19;
  *(v6 + 116) = mycaction->var21;
  *(v4[2] + 124) = self->_mycaction->var20;
  *(v4[2] + 132) = self->_mycaction->var22;
  v7 = self->_mycaction;
  v8 = v4[2];
  *(v8 + 140) = !v7->var23;
  *(v8 + 141) = v7->var24;
  *(v8 + 142) = *&v7->var25;

  return v4;
}

@end
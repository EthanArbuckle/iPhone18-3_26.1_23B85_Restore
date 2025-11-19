@interface SKFade
+ (id)fadeAlphaBy:(double)a3 duration:(double)a4;
+ (id)fadeAlphaTo:(double)a3 duration:(double)a4;
+ (id)fadeInWithDuration:(double)a3;
+ (id)fadeOutWithDuration:(double)a3;
- (SKFade)init;
- (SKFade)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKFade

- (SKFade)init
{
  v3.receiver = self;
  v3.super_class = SKFade;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKFade)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKFade;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SKFade;
  [(SKAction *)&v10 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [v4 encodeObject:v5 forKey:@"_alphaTarget"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [v4 encodeObject:v6 forKey:@"_alphaTargetReversed"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [v4 encodeObject:v7 forKey:@"_lastAlpha"];

  LOBYTE(v8) = self->_mycaction->var22;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v4 encodeObject:v9 forKey:@"_isRelative"];
}

+ (id)fadeAlphaBy:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKFade);
  v7 = v6;
  v8 = a3;
  mycaction = v6->_mycaction;
  mycaction->var19 = v8;
  v10 = -v8;
  v11 = (LODWORD(v8) & 0x60000000) == 0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  mycaction->var20 = v12;
  mycaction->var22 = 1;
  [(SKAction *)v6 setDuration:a4];

  return v7;
}

+ (id)fadeAlphaTo:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKFade);
  mycaction = v6->_mycaction;
  v8 = a3;
  mycaction->var19 = v8;
  mycaction->var20 = v8;
  mycaction->var22 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)fadeInWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 1065353216;
  mycaction->var22 = 0;
  [(SKAction *)v4 setDuration:a3];

  return v4;
}

+ (id)fadeOutWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 0x3F80000000000000;
  mycaction->var22 = 0;
  [(SKAction *)v4 setDuration:a3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SKFade;
  v4 = [(SKAction *)&v8 copyWithZone:a3];
  [(SKAction *)self duration];
  [v4 setDuration:?];
  mycaction = self->_mycaction;
  v6 = v4[2];
  *(v6 + 112) = *&mycaction->var19;
  *(v6 + 124) = mycaction->var22;
  return v4;
}

- (id)reversedAction
{
  v3 = objc_alloc_init(SKFade);
  mycaction = self->_mycaction;
  v5 = v3->_mycaction;
  v5->var22 = mycaction->var22;
  v5->var19 = mycaction->var20;
  v5->var20 = mycaction->var19;
  v5->var9 = mycaction->var9;

  return v3;
}

@end
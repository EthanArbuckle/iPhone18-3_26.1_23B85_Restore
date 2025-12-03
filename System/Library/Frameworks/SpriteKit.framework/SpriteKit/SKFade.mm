@interface SKFade
+ (id)fadeAlphaBy:(double)by duration:(double)duration;
+ (id)fadeAlphaTo:(double)to duration:(double)duration;
+ (id)fadeInWithDuration:(double)duration;
+ (id)fadeOutWithDuration:(double)duration;
- (SKFade)init;
- (SKFade)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
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

- (SKFade)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKFade;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SKFade;
  [(SKAction *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [coderCopy encodeObject:v5 forKey:@"_alphaTarget"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [coderCopy encodeObject:v6 forKey:@"_alphaTargetReversed"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [coderCopy encodeObject:v7 forKey:@"_lastAlpha"];

  LOBYTE(v8) = self->_mycaction->var22;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [coderCopy encodeObject:v9 forKey:@"_isRelative"];
}

+ (id)fadeAlphaBy:(double)by duration:(double)duration
{
  v6 = objc_alloc_init(SKFade);
  v7 = v6;
  byCopy = by;
  mycaction = v6->_mycaction;
  mycaction->var19 = byCopy;
  v10 = -byCopy;
  v11 = (LODWORD(byCopy) & 0x60000000) == 0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  mycaction->var20 = v12;
  mycaction->var22 = 1;
  [(SKAction *)v6 setDuration:duration];

  return v7;
}

+ (id)fadeAlphaTo:(double)to duration:(double)duration
{
  v6 = objc_alloc_init(SKFade);
  mycaction = v6->_mycaction;
  toCopy = to;
  mycaction->var19 = toCopy;
  mycaction->var20 = toCopy;
  mycaction->var22 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)fadeInWithDuration:(double)duration
{
  v4 = objc_alloc_init(SKFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 1065353216;
  mycaction->var22 = 0;
  [(SKAction *)v4 setDuration:duration];

  return v4;
}

+ (id)fadeOutWithDuration:(double)duration
{
  v4 = objc_alloc_init(SKFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 0x3F80000000000000;
  mycaction->var22 = 0;
  [(SKAction *)v4 setDuration:duration];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SKFade;
  v4 = [(SKAction *)&v8 copyWithZone:zone];
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
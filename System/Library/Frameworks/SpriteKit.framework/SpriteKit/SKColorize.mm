@interface SKColorize
+ (id)colorizeWithColor:(id)color colorBlendFactor:(double)factor duration:(double)duration;
+ (id)colorizeWithColorBlendFactor:(double)factor duration:(double)duration;
- (SKColorize)init;
- (SKColorize)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKColorize

- (SKColorize)init
{
  v3.receiver = self;
  v3.super_class = SKColorize;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKColorize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKColorize;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SKColorize;
  [(SKAction *)&v11 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [coderCopy encodeObject:v5 forKey:@"_colorMix"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var0];
  [coderCopy encodeObject:v6 forKey:@"_colorBlendR"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var1];
  [coderCopy encodeObject:v7 forKey:@"_colorBlendG"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var2];
  [coderCopy encodeObject:v8 forKey:@"_colorBlendB"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var3];
  [coderCopy encodeObject:v9 forKey:@"_colorBlendA"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:BYTE4(self->_mycaction[1].var3)];
  [coderCopy encodeObject:v10 forKey:@"_isMixOnly"];
}

+ (id)colorizeWithColor:(id)color colorBlendFactor:(double)factor duration:(double)duration
{
  colorCopy = color;
  v8 = objc_alloc_init(SKColorize);
  [colorCopy componentRGBA];
  mycaction = v8->_mycaction;
  mycaction->var19.var0 = v10;
  mycaction->var19.var1 = v11;
  mycaction->var19.var2 = v12;
  mycaction->var19.var3 = v13;
  factorCopy = factor;
  mycaction->var20 = factorCopy;
  [(SKAction *)v8 setDuration:duration];
  BYTE4(v8->_mycaction[1].var3) = 0;

  return v8;
}

+ (id)colorizeWithColorBlendFactor:(double)factor duration:(double)duration
{
  v6 = objc_alloc_init(SKColorize);
  factorCopy = factor;
  v6->_mycaction->var20 = factorCopy;
  [(SKAction *)v6 setDuration:duration];
  BYTE4(v6->_mycaction[1].var3) = 1;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKColorize;
  result = [(SKAction *)&v7 copyWithZone:zone];
  *(*(result + 2) + 112) = self->_mycaction->var19;
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 128) = mycaction->var20;
  *(v6 + 196) = BYTE4(mycaction[1].var3);
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF09E30](self, a2);
  v13.receiver = self;
  v13.super_class = SKColorize;
  v4 = [(SKAction *)&v13 copyWithZone:v3];
  mycaction = self->_mycaction;
  v6 = BYTE4(mycaction[1].var3);
  if (v6)
  {
    v7 = 0.0;
    v8 = 1.0;
    v9 = 1.0;
    v10 = 1.0;
  }

  else
  {
    v8 = 1.0 - mycaction->var19.var0;
    v9 = 1.0 - mycaction->var19.var1;
    v10 = 1.0 - mycaction->var19.var2;
    v7 = 1.0 - mycaction->var19.var3;
  }

  v11 = v4[2];
  *(v11 + 112) = v8;
  *(v11 + 116) = v9;
  *(v11 + 120) = v10;
  *(v11 + 124) = v7;
  *(v11 + 128) = 1.0 - mycaction->var20;
  *(v11 + 196) = v6;

  return v4;
}

@end
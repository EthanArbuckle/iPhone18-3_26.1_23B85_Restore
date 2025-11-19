@interface SKColorize
+ (id)colorizeWithColor:(id)a3 colorBlendFactor:(double)a4 duration:(double)a5;
+ (id)colorizeWithColorBlendFactor:(double)a3 duration:(double)a4;
- (SKColorize)init;
- (SKColorize)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
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

- (SKColorize)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKColorize;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SKColorize;
  [(SKAction *)&v11 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [v4 encodeObject:v5 forKey:@"_colorMix"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var0];
  [v4 encodeObject:v6 forKey:@"_colorBlendR"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var1];
  [v4 encodeObject:v7 forKey:@"_colorBlendG"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var2];
  [v4 encodeObject:v8 forKey:@"_colorBlendB"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19.var3];
  [v4 encodeObject:v9 forKey:@"_colorBlendA"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:BYTE4(self->_mycaction[1].var3)];
  [v4 encodeObject:v10 forKey:@"_isMixOnly"];
}

+ (id)colorizeWithColor:(id)a3 colorBlendFactor:(double)a4 duration:(double)a5
{
  v7 = a3;
  v8 = objc_alloc_init(SKColorize);
  [v7 componentRGBA];
  mycaction = v8->_mycaction;
  mycaction->var19.var0 = v10;
  mycaction->var19.var1 = v11;
  mycaction->var19.var2 = v12;
  mycaction->var19.var3 = v13;
  v14 = a4;
  mycaction->var20 = v14;
  [(SKAction *)v8 setDuration:a5];
  BYTE4(v8->_mycaction[1].var3) = 0;

  return v8;
}

+ (id)colorizeWithColorBlendFactor:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKColorize);
  v7 = a3;
  v6->_mycaction->var20 = v7;
  [(SKAction *)v6 setDuration:a4];
  BYTE4(v6->_mycaction[1].var3) = 1;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKColorize;
  result = [(SKAction *)&v7 copyWithZone:a3];
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
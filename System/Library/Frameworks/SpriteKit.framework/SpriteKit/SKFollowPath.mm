@interface SKFollowPath
+ (id)followPath:(CGPath *)a3 asOffset:(BOOL)a4 orientToPath:(BOOL)a5 duration:(double)a6;
+ (id)followPath:(CGPath *)a3 asOffset:(BOOL)a4 orientToPath:(BOOL)a5 speed:(double)a6;
+ (id)followPath:(CGPath *)a3 duration:(double)a4;
+ (id)followPath:(CGPath *)a3 speed:(double)a4;
- (SKFollowPath)init;
- (SKFollowPath)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKFollowPath

- (SKFollowPath)init
{
  v3.receiver = self;
  v3.super_class = SKFollowPath;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKFollowPath;
  [(SKAction *)&v8 encodeWithCoder:v4];
  v5 = PKArrayFromCGPath();
  [v4 encodeObject:v5 forKey:@"_cgPath"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var23];
  [v4 encodeObject:v6 forKey:@"_isOffset"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var24];
  [v4 encodeObject:v7 forKey:@"_orient"];
}

- (SKFollowPath)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKFollowPath;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

+ (id)followPath:(CGPath *)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKFollowPath);
  v6->_cgPath = a3;
  CGPathRetain(a3);
  v6->_mycaction->var21 = PKPathCreateFromCGPathWithOptions();
  *&v6->_mycaction->var23 = 257;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)followPath:(CGPath *)a3 asOffset:(BOOL)a4 orientToPath:(BOOL)a5 duration:(double)a6
{
  v10 = objc_alloc_init(SKFollowPath);
  v10->_cgPath = MEMORY[0x21CF09920](a3);
  v10->_mycaction->var21 = PKPathCreateFromCGPathWithOptions();
  mycaction = v10->_mycaction;
  mycaction->var23 = a4;
  mycaction->var24 = a5;
  [(SKAction *)v10 setDuration:a6];

  return v10;
}

+ (id)followPath:(CGPath *)a3 speed:(double)a4
{
  v6 = objc_alloc_init(SKFollowPath);
  v6->_cgPath = a3;
  CGPathRetain(a3);
  v7 = PKPathCreateFromCGPathWithOptions();
  v6->_mycaction->var21 = v7;
  *&v6->_mycaction->var23 = 257;
  v8 = a4;
  v9 = v8;
  v10 = 3.40282347e38;
  if ((LODWORD(v9) & 0x80000000) == 0 && (LODWORD(v9) & 0x60000000) != 0)
  {
    v10 = *v7 / a4;
  }

  [(SKAction *)v6 setDuration:v10];

  return v6;
}

+ (id)followPath:(CGPath *)a3 asOffset:(BOOL)a4 orientToPath:(BOOL)a5 speed:(double)a6
{
  v10 = objc_alloc_init(SKFollowPath);
  v10->_cgPath = MEMORY[0x21CF09920](a3);
  v11 = PKPathCreateFromCGPathWithOptions();
  v10->_mycaction->var21 = v11;
  mycaction = v10->_mycaction;
  mycaction->var23 = a4;
  mycaction->var24 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 3.40282347e38;
  if ((LODWORD(v14) & 0x80000000) == 0 && (LODWORD(v14) & 0x60000000) != 0)
  {
    v15 = *v11 / a6;
  }

  [(SKAction *)v10 setDuration:v15];

  return v10;
}

- (void)dealloc
{
  cgPath = self->_cgPath;
  if (cgPath)
  {
    CGPathRelease(cgPath);
  }

  v4.receiver = self;
  v4.super_class = SKFollowPath;
  [(SKAction *)&v4 dealloc];
}

- (id)reversedAction
{
  v3 = [(SKAction *)self copy];
  if (*(v3[2] + 120))
  {
    if (self->_mycaction->var23)
    {
      operator new();
    }

    operator new();
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKFollowPath;
  v4 = [(SKAction *)&v7 copyWithZone:a3];
  cgPath = self->_cgPath;
  v4[3] = cgPath;
  if (cgPath)
  {
    CGPathRetain(cgPath);
    operator new();
  }

  *(v4[2] + 136) = *&self->_mycaction->var23;
  return v4;
}

@end
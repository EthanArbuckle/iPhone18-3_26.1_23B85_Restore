@interface SKFollowPath
+ (id)followPath:(CGPath *)path asOffset:(BOOL)offset orientToPath:(BOOL)toPath duration:(double)duration;
+ (id)followPath:(CGPath *)path asOffset:(BOOL)offset orientToPath:(BOOL)toPath speed:(double)speed;
+ (id)followPath:(CGPath *)path duration:(double)duration;
+ (id)followPath:(CGPath *)path speed:(double)speed;
- (SKFollowPath)init;
- (SKFollowPath)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SKFollowPath;
  [(SKAction *)&v8 encodeWithCoder:coderCopy];
  v5 = PKArrayFromCGPath();
  [coderCopy encodeObject:v5 forKey:@"_cgPath"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var23];
  [coderCopy encodeObject:v6 forKey:@"_isOffset"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var24];
  [coderCopy encodeObject:v7 forKey:@"_orient"];
}

- (SKFollowPath)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKFollowPath;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

+ (id)followPath:(CGPath *)path duration:(double)duration
{
  v6 = objc_alloc_init(SKFollowPath);
  v6->_cgPath = path;
  CGPathRetain(path);
  v6->_mycaction->var21 = PKPathCreateFromCGPathWithOptions();
  *&v6->_mycaction->var23 = 257;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)followPath:(CGPath *)path asOffset:(BOOL)offset orientToPath:(BOOL)toPath duration:(double)duration
{
  v10 = objc_alloc_init(SKFollowPath);
  v10->_cgPath = MEMORY[0x21CF09920](path);
  v10->_mycaction->var21 = PKPathCreateFromCGPathWithOptions();
  mycaction = v10->_mycaction;
  mycaction->var23 = offset;
  mycaction->var24 = toPath;
  [(SKAction *)v10 setDuration:duration];

  return v10;
}

+ (id)followPath:(CGPath *)path speed:(double)speed
{
  v6 = objc_alloc_init(SKFollowPath);
  v6->_cgPath = path;
  CGPathRetain(path);
  v7 = PKPathCreateFromCGPathWithOptions();
  v6->_mycaction->var21 = v7;
  *&v6->_mycaction->var23 = 257;
  speedCopy = speed;
  v9 = speedCopy;
  v10 = 3.40282347e38;
  if ((LODWORD(v9) & 0x80000000) == 0 && (LODWORD(v9) & 0x60000000) != 0)
  {
    v10 = *v7 / speed;
  }

  [(SKAction *)v6 setDuration:v10];

  return v6;
}

+ (id)followPath:(CGPath *)path asOffset:(BOOL)offset orientToPath:(BOOL)toPath speed:(double)speed
{
  v10 = objc_alloc_init(SKFollowPath);
  v10->_cgPath = MEMORY[0x21CF09920](path);
  v11 = PKPathCreateFromCGPathWithOptions();
  v10->_mycaction->var21 = v11;
  mycaction = v10->_mycaction;
  mycaction->var23 = offset;
  mycaction->var24 = toPath;
  speedCopy = speed;
  v14 = speedCopy;
  v15 = 3.40282347e38;
  if ((LODWORD(v14) & 0x80000000) == 0 && (LODWORD(v14) & 0x60000000) != 0)
  {
    v15 = *v11 / speed;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKFollowPath;
  v4 = [(SKAction *)&v7 copyWithZone:zone];
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
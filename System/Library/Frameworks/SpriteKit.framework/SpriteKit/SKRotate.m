@interface SKRotate
+ (id)rotateByAngle:(double)a3 duration:(double)a4;
+ (id)rotateByX:(double)a3 duration:(double)a4;
+ (id)rotateByX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6;
+ (id)rotateByY:(double)a3 duration:(double)a4;
+ (id)rotateToAngle:(double)a3 duration:(double)a4;
+ (id)rotateToAngle:(double)a3 duration:(double)a4 shortestUnitArc:(BOOL)a5;
+ (id)rotateToX:(double)a3 duration:(double)a4;
+ (id)rotateToX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6;
+ (id)rotateToY:(double)a3 duration:(double)a4;
- (SKRotate)init;
- (SKRotate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRotate

- (SKRotate)init
{
  v3.receiver = self;
  v3.super_class = SKRotate;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKRotate)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKRotate;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SKRotate;
  [(SKAction *)&v18 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [v4 encodeObject:v5 forKey:@"_rotX"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [v4 encodeObject:v6 forKey:@"_rotY"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [v4 encodeObject:v7 forKey:@"_rotZ"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var25];
  [v4 encodeObject:v8 forKey:@"_lastRotX"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var26];
  [v4 encodeObject:v9 forKey:@"_lastRotY"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var27];
  [v4 encodeObject:v10 forKey:@"_lastRotZ"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var28];
  [v4 encodeObject:v11 forKey:@"_lastRatio"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var29];
  [v4 encodeObject:v12 forKey:@"_isReversed"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var30];
  [v4 encodeObject:v13 forKey:@"_isRelative"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var31];
  [v4 encodeObject:v14 forKey:@"_isUnitArc"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var32];
  [v4 encodeObject:v15 forKey:@"_useX"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var33];
  [v4 encodeObject:v16 forKey:@"_useY"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var34];
  [v4 encodeObject:v17 forKey:@"_useZ"];
}

+ (id)rotateByAngle:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 1;
  v8 = a3;
  mycaction->var21 = v8;
  *&mycaction->var32 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)rotateToAngle:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  v8 = a3;
  mycaction->var21 = v8;
  *&mycaction->var30 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)rotateToAngle:(double)a3 duration:(double)a4 shortestUnitArc:(BOOL)a5
{
  v8 = objc_alloc_init(SKRotate);
  mycaction = v8->_mycaction;
  mycaction->var30 = 0;
  mycaction->var31 = a5;
  v10 = a3;
  mycaction->var21 = v10;
  *&mycaction->var32 = 0;
  [(SKAction *)v8 setDuration:a4];

  return v8;
}

+ (id)rotateByX:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 1;
  v8 = a3;
  mycaction->var19 = v8;
  *&mycaction->var33 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)rotateToX:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 0;
  v8 = a3;
  mycaction->var19 = v8;
  *&mycaction->var33 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)rotateByY:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 1;
  v8 = a3;
  mycaction->var20 = v8;
  mycaction->var32 = 0;
  mycaction->var34 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)rotateToY:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 0;
  v8 = a3;
  mycaction->var20 = v8;
  mycaction->var32 = 0;
  mycaction->var34 = 0;
  [(SKAction *)v6 setDuration:a4];

  return v6;
}

+ (id)rotateByX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6
{
  v10 = objc_alloc_init(SKRotate);
  mycaction = v10->_mycaction;
  mycaction->var30 = 1;
  v12 = a3;
  v13 = a4;
  mycaction->var19 = v12;
  mycaction->var20 = v13;
  v14 = a5;
  mycaction->var21 = v14;
  [(SKAction *)v10 setDuration:a6];

  return v10;
}

+ (id)rotateToX:(double)a3 y:(double)a4 z:(double)a5 duration:(double)a6
{
  v10 = objc_alloc_init(SKRotate);
  mycaction = v10->_mycaction;
  mycaction->var30 = 0;
  v12 = a3;
  v13 = a4;
  mycaction->var19 = v12;
  mycaction->var20 = v13;
  v14 = a5;
  mycaction->var21 = v14;
  [(SKAction *)v10 setDuration:a6];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKRotate;
  result = [(SKAction *)&v7 copyWithZone:a3];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 112) = *&mycaction->var19;
  *(v6 + 120) = mycaction->var21;
  *(v6 + 152) = *&mycaction->var29;
  *(v6 + 156) = *&mycaction->var33;
  *(v6 + 56) = *&mycaction->var8;
  *(v6 + 88) = mycaction->var14;
  *(v6 + 100) = *&mycaction->var16;
  *(v6 + 148) = mycaction->var28;
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF09E30](self, a2);
  v11.receiver = self;
  v11.super_class = SKRotate;
  v4 = [(SKAction *)&v11 copyWithZone:v3];
  mycaction = self->_mycaction;
  var30 = mycaction->var30;
  v7 = v4[2];
  *(v7 + 153) = var30;
  *(v7 + 152) = !mycaction->var29;
  *(v7 + 154) = mycaction->var31;
  var19 = mycaction->var19;
  if (var30)
  {
    var19 = -var19;
    v9 = vneg_f32(*&mycaction->var20);
  }

  else
  {
    v9 = *&mycaction->var20;
  }

  *(v7 + 112) = var19;
  *(v7 + 116) = v9;
  *(v7 + 155) = mycaction->var32;
  *(v7 + 156) = *&mycaction->var33;
  [(SKAction *)self duration];
  [v4 setDuration:?];

  return v4;
}

@end
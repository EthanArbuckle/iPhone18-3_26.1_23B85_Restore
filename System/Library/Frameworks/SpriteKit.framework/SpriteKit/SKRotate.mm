@interface SKRotate
+ (id)rotateByAngle:(double)angle duration:(double)duration;
+ (id)rotateByX:(double)x duration:(double)duration;
+ (id)rotateByX:(double)x y:(double)y z:(double)z duration:(double)duration;
+ (id)rotateByY:(double)y duration:(double)duration;
+ (id)rotateToAngle:(double)angle duration:(double)duration;
+ (id)rotateToAngle:(double)angle duration:(double)duration shortestUnitArc:(BOOL)arc;
+ (id)rotateToX:(double)x duration:(double)duration;
+ (id)rotateToX:(double)x y:(double)y z:(double)z duration:(double)duration;
+ (id)rotateToY:(double)y duration:(double)duration;
- (SKRotate)init;
- (SKRotate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
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

- (SKRotate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKRotate;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SKRotate;
  [(SKAction *)&v18 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [coderCopy encodeObject:v5 forKey:@"_rotX"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [coderCopy encodeObject:v6 forKey:@"_rotY"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [coderCopy encodeObject:v7 forKey:@"_rotZ"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var25];
  [coderCopy encodeObject:v8 forKey:@"_lastRotX"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var26];
  [coderCopy encodeObject:v9 forKey:@"_lastRotY"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var27];
  [coderCopy encodeObject:v10 forKey:@"_lastRotZ"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var28];
  [coderCopy encodeObject:v11 forKey:@"_lastRatio"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var29];
  [coderCopy encodeObject:v12 forKey:@"_isReversed"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var30];
  [coderCopy encodeObject:v13 forKey:@"_isRelative"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var31];
  [coderCopy encodeObject:v14 forKey:@"_isUnitArc"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var32];
  [coderCopy encodeObject:v15 forKey:@"_useX"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var33];
  [coderCopy encodeObject:v16 forKey:@"_useY"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var34];
  [coderCopy encodeObject:v17 forKey:@"_useZ"];
}

+ (id)rotateByAngle:(double)angle duration:(double)duration
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 1;
  angleCopy = angle;
  mycaction->var21 = angleCopy;
  *&mycaction->var32 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)rotateToAngle:(double)angle duration:(double)duration
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  angleCopy = angle;
  mycaction->var21 = angleCopy;
  *&mycaction->var30 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)rotateToAngle:(double)angle duration:(double)duration shortestUnitArc:(BOOL)arc
{
  v8 = objc_alloc_init(SKRotate);
  mycaction = v8->_mycaction;
  mycaction->var30 = 0;
  mycaction->var31 = arc;
  angleCopy = angle;
  mycaction->var21 = angleCopy;
  *&mycaction->var32 = 0;
  [(SKAction *)v8 setDuration:duration];

  return v8;
}

+ (id)rotateByX:(double)x duration:(double)duration
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 1;
  xCopy = x;
  mycaction->var19 = xCopy;
  *&mycaction->var33 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)rotateToX:(double)x duration:(double)duration
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 0;
  xCopy = x;
  mycaction->var19 = xCopy;
  *&mycaction->var33 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)rotateByY:(double)y duration:(double)duration
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 1;
  yCopy = y;
  mycaction->var20 = yCopy;
  mycaction->var32 = 0;
  mycaction->var34 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)rotateToY:(double)y duration:(double)duration
{
  v6 = objc_alloc_init(SKRotate);
  mycaction = v6->_mycaction;
  mycaction->var30 = 0;
  yCopy = y;
  mycaction->var20 = yCopy;
  mycaction->var32 = 0;
  mycaction->var34 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

+ (id)rotateByX:(double)x y:(double)y z:(double)z duration:(double)duration
{
  v10 = objc_alloc_init(SKRotate);
  mycaction = v10->_mycaction;
  mycaction->var30 = 1;
  xCopy = x;
  yCopy = y;
  mycaction->var19 = xCopy;
  mycaction->var20 = yCopy;
  zCopy = z;
  mycaction->var21 = zCopy;
  [(SKAction *)v10 setDuration:duration];

  return v10;
}

+ (id)rotateToX:(double)x y:(double)y z:(double)z duration:(double)duration
{
  v10 = objc_alloc_init(SKRotate);
  mycaction = v10->_mycaction;
  mycaction->var30 = 0;
  xCopy = x;
  yCopy = y;
  mycaction->var19 = xCopy;
  mycaction->var20 = yCopy;
  zCopy = z;
  mycaction->var21 = zCopy;
  [(SKAction *)v10 setDuration:duration];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKRotate;
  result = [(SKAction *)&v7 copyWithZone:zone];
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
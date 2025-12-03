@interface SCNSliderConstraint
+ (SCNSliderConstraint)sliderConstraint;
- (SCNSliderConstraint)init;
- (SCNSliderConstraint)initWithCoder:(id)coder;
- (SCNVector3)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCollisionCategoryBitMask:(NSUInteger)collisionCategoryBitMask;
- (void)setOffset:(SCNVector3)offset;
- (void)setRadius:(CGFloat)radius;
@end

@implementation SCNSliderConstraint

- (SCNSliderConstraint)init
{
  v5.receiver = self;
  v5.super_class = SCNSliderConstraint;
  v2 = [(SCNConstraint *)&v5 init];
  if (v2)
  {
    Slider = C3DConstraintCreateSlider();
    v2->_categoryBitMask = 0;
    v2->super._constraintRef = Slider;
    v2->_radius = 1.0;
  }

  return v2;
}

+ (SCNSliderConstraint)sliderConstraint
{
  v2 = objc_alloc_init(SCNSliderConstraint);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCollisionCategoryBitMask:{-[SCNSliderConstraint collisionCategoryBitMask](self, "collisionCategoryBitMask")}];
  [(SCNSliderConstraint *)self offset];
  [v4 setOffset:?];
  [(SCNSliderConstraint *)self radius];
  [v4 setRadius:?];
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

- (void)setCollisionCategoryBitMask:(NSUInteger)collisionCategoryBitMask
{
  self->_categoryBitMask = collisionCategoryBitMask;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SCNSliderConstraint_setCollisionCategoryBitMask___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = collisionCategoryBitMask;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setRadius:(CGFloat)radius
{
  v5 = radius;
  self->_radius = v5;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SCNSliderConstraint_setRadius___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = radius;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"radius" applyBlock:v7];
}

float __33__SCNSliderConstraint_setRadius___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DConstaintSliderSetRadius(*(*(a1 + 32) + 8), v1);
  return result;
}

- (SCNVector3)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  z = self->_offset.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setOffset:(SCNVector3)offset
{
  self->_offset = offset;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SCNSliderConstraint_setOffset___block_invoke;
  v5[3] = &unk_2782FB820;
  v5[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self key:@"offset" applyBlock:v5];
}

double __33__SCNSliderConstraint_setOffset___block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v2 += 8;
  a2.n128_u64[0] = *v2;
  a2.n128_u32[2] = *(v2 + 2);
  *&result = C3DConstaintSliderSetOffset(v3, a2).n128_u64[0];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNSliderConstraint;
  [(SCNConstraint *)&v6 encodeWithCoder:?];
  [coder encodeInteger:self->_categoryBitMask forKey:@"collisionCategoryBitMask"];
  *&v5 = self->_radius;
  [coder encodeFloat:@"radius" forKey:v5];
  SCNEncodeVector3(coder, @"offset", self->_offset.x, self->_offset.y, self->_offset.z);
}

- (SCNSliderConstraint)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SCNSliderConstraint;
  v4 = [(SCNConstraint *)&v9 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->super._constraintRef = C3DConstraintCreateSlider();
    [(SCNConstraint *)v4 finalizeDecodeConstraint:coder];
    -[SCNSliderConstraint setCollisionCategoryBitMask:](v4, "setCollisionCategoryBitMask:", [coder decodeIntegerForKey:@"collisionCategoryBitMask"]);
    [coder decodeFloatForKey:@"radius"];
    [(SCNSliderConstraint *)v4 setRadius:v6];
    *&v7 = SCNDecodeVector3(coder, @"offset");
    [(SCNSliderConstraint *)v4 setOffset:v7];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end
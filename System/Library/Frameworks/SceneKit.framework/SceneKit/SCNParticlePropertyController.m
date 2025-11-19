@interface SCNParticlePropertyController
+ (SCNParticlePropertyController)controllerWithAnimation:(CAAnimation *)animation;
+ (SCNParticlePropertyController)particlePropertyControllerWithAnimation:(id)a3;
- (SCNParticlePropertyController)init;
- (SCNParticlePropertyController)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_customDecodingOfSCNParticlePropertyController:(id)a3;
- (void)_customEncodingOfSCNParticlePropertyController:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAnimation:(CAAnimation *)animation;
- (void)setC3dAnimation:(id)a3;
- (void)setInputProperty:(SCNParticleProperty)inputProperty;
@end

@implementation SCNParticlePropertyController

- (SCNParticlePropertyController)init
{
  v3.receiver = self;
  v3.super_class = SCNParticlePropertyController;
  result = [(SCNParticlePropertyController *)&v3 init];
  if (result)
  {
    result->_inputScale = 1.0;
  }

  return result;
}

- (void)setC3dAnimation:(id)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation != a3)
  {

    self->_c3dAnimation = a3;
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_inputOrigin, 0);

  v3.receiver = self;
  v3.super_class = SCNParticlePropertyController;
  [(SCNParticlePropertyController *)&v3 dealloc];
}

+ (SCNParticlePropertyController)particlePropertyControllerWithAnimation:(id)a3
{
  v4 = objc_alloc_init(a1);
  [(SCNParticlePropertyController *)v4 setAnimation:a3];
  return v4;
}

+ (SCNParticlePropertyController)controllerWithAnimation:(CAAnimation *)animation
{
  v4 = objc_alloc_init(a1);
  [(SCNParticlePropertyController *)v4 setAnimation:animation];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAnimation:self->_animation];
  [v4 setInputMode:self->_inputMode];
  [v4 setInputScale:self->_inputScale];
  [v4 setInputBias:self->_inputBias];
  [v4 setInputOrigin:{-[SCNParticlePropertyController inputOrigin](self, "inputOrigin")}];
  [v4 setInputProperty:self->_inputProperty];
  [v4 setC3dAnimation:self->_c3dAnimation];
  return v4;
}

- (void)setAnimation:(CAAnimation *)animation
{
  v3 = self->_animation;
  if (v3 != animation)
  {

    self->_animation = animation;
  }
}

- (void)setInputProperty:(SCNParticleProperty)inputProperty
{
  v3 = self->_inputProperty;
  if (v3 != inputProperty)
  {

    self->_inputProperty = inputProperty;
  }
}

- (void)_customEncodingOfSCNParticlePropertyController:(id)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    SCNEncodeC3DAnimationForKey(a3, c3dAnimation, @"animation");
  }
}

- (void)_customDecodingOfSCNParticlePropertyController:(id)a3
{
  v4 = SCNDecodeC3DAnimationForKey(a3, @"animation");
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = C3DAnimationToCAAnimation(v5);
    }

    [(SCNParticlePropertyController *)self setAnimation:v5];
  }
}

- (void)encodeWithCoder:(id)a3
{
  [(SCNParticlePropertyController *)self _customEncodingOfSCNParticlePropertyController:?];
  [a3 encodeInteger:self->_inputMode forKey:@"inputMode"];
  [a3 encodeDouble:@"inputScale" forKey:self->_inputScale];
  [a3 encodeDouble:@"inputBias" forKey:self->_inputBias];
  v5 = [(SCNParticlePropertyController *)self inputOrigin];
  if (v5)
  {
    [a3 encodeObject:v5 forKey:@"inputOrigin"];
  }

  if (self->_inputProperty)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (SCNParticlePropertyController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNParticlePropertyController;
  v4 = [(SCNParticlePropertyController *)&v7 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNParticlePropertyController *)v4 _customDecodingOfSCNParticlePropertyController:a3];
    -[SCNParticlePropertyController setInputMode:](v4, "setInputMode:", [a3 decodeIntegerForKey:@"inputMode"]);
    [a3 decodeDoubleForKey:@"inputScale"];
    [(SCNParticlePropertyController *)v4 setInputScale:?];
    [a3 decodeDoubleForKey:@"inputBias"];
    [(SCNParticlePropertyController *)v4 setInputBias:?];
    -[SCNParticlePropertyController setInputOrigin:](v4, "setInputOrigin:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inputOrigin"]);
    -[SCNParticlePropertyController setInputProperty:](v4, "setInputProperty:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inputProperty"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end
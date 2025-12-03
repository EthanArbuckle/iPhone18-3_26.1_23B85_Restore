@interface SCNParticlePropertyController
+ (SCNParticlePropertyController)controllerWithAnimation:(CAAnimation *)animation;
+ (SCNParticlePropertyController)particlePropertyControllerWithAnimation:(id)animation;
- (SCNParticlePropertyController)init;
- (SCNParticlePropertyController)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfSCNParticlePropertyController:(id)controller;
- (void)_customEncodingOfSCNParticlePropertyController:(id)controller;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAnimation:(CAAnimation *)animation;
- (void)setC3dAnimation:(id)animation;
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

- (void)setC3dAnimation:(id)animation
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation != animation)
  {

    self->_c3dAnimation = animation;
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_inputOrigin, 0);

  v3.receiver = self;
  v3.super_class = SCNParticlePropertyController;
  [(SCNParticlePropertyController *)&v3 dealloc];
}

+ (SCNParticlePropertyController)particlePropertyControllerWithAnimation:(id)animation
{
  v4 = objc_alloc_init(self);
  [(SCNParticlePropertyController *)v4 setAnimation:animation];
  return v4;
}

+ (SCNParticlePropertyController)controllerWithAnimation:(CAAnimation *)animation
{
  v4 = objc_alloc_init(self);
  [(SCNParticlePropertyController *)v4 setAnimation:animation];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)_customEncodingOfSCNParticlePropertyController:(id)controller
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    SCNEncodeC3DAnimationForKey(controller, c3dAnimation, @"animation");
  }
}

- (void)_customDecodingOfSCNParticlePropertyController:(id)controller
{
  v4 = SCNDecodeC3DAnimationForKey(controller, @"animation");
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

- (void)encodeWithCoder:(id)coder
{
  [(SCNParticlePropertyController *)self _customEncodingOfSCNParticlePropertyController:?];
  [coder encodeInteger:self->_inputMode forKey:@"inputMode"];
  [coder encodeDouble:@"inputScale" forKey:self->_inputScale];
  [coder encodeDouble:@"inputBias" forKey:self->_inputBias];
  inputOrigin = [(SCNParticlePropertyController *)self inputOrigin];
  if (inputOrigin)
  {
    [coder encodeObject:inputOrigin forKey:@"inputOrigin"];
  }

  if (self->_inputProperty)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (SCNParticlePropertyController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNParticlePropertyController;
  v4 = [(SCNParticlePropertyController *)&v7 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNParticlePropertyController *)v4 _customDecodingOfSCNParticlePropertyController:coder];
    -[SCNParticlePropertyController setInputMode:](v4, "setInputMode:", [coder decodeIntegerForKey:@"inputMode"]);
    [coder decodeDoubleForKey:@"inputScale"];
    [(SCNParticlePropertyController *)v4 setInputScale:?];
    [coder decodeDoubleForKey:@"inputBias"];
    [(SCNParticlePropertyController *)v4 setInputBias:?];
    -[SCNParticlePropertyController setInputOrigin:](v4, "setInputOrigin:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"inputOrigin"]);
    -[SCNParticlePropertyController setInputProperty:](v4, "setInputProperty:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"inputProperty"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end
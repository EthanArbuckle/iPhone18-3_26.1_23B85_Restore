@interface GKScaleNoiseModifier
- (GKScaleNoiseModifier)init;
- (GKScaleNoiseModifier)initWithFactor:(GKScaleNoiseModifier *)self;
- (GKScaleNoiseModifier)initWithInputModuleCount:(unint64_t)a3;
- (double)valueAt:(GKScaleNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKScaleNoiseModifier

- (GKScaleNoiseModifier)init
{
  __asm { FMOV            V0.2D, #1.0 }

  v8[0] = _Q0;
  v8[1] = _Q0;
  return [(GKScaleNoiseModifier *)self initWithFactor:v8];
}

- (GKScaleNoiseModifier)initWithInputModuleCount:(unint64_t)a3
{
  __asm { FMOV            V0.2D, #1.0 }

  v9[0] = _Q0;
  v9[1] = _Q0;
  return [(GKScaleNoiseModifier *)self initWithFactor:v9];
}

- (GKScaleNoiseModifier)initWithFactor:(GKScaleNoiseModifier *)self
{
  v4 = v2[1];
  v5 = *v2;
  v6.receiver = self;
  v6.super_class = GKScaleNoiseModifier;
  result = [(GKNoiseModifier *)&v6 initWithInputModuleCount:1];
  if (result)
  {
    *result->_factor = v5;
    *&result->_factor[16] = v4;
  }

  return result;
}

- (double)valueAt:(GKScaleNoiseModifier *)self
{
  v7 = vmulq_f64(*&self->_factor[16], v2[1]);
  v8 = vmulq_f64(*self->_factor, *v2);
  v3 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v9[0] = v8;
  v9[1] = v7;
  [v3 valueAt:v9];
  v5 = v4;

  return v5;
}

- (id)cloneModule
{
  v3 = [GKScaleNoiseModifier alloc];
  v4 = *&self->_factor[16];
  v7[0] = *self->_factor;
  v7[1] = v4;
  v5 = [(GKScaleNoiseModifier *)v3 initWithFactor:v7];

  return v5;
}

@end
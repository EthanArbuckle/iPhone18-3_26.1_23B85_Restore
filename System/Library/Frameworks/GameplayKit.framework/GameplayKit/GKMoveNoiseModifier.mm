@interface GKMoveNoiseModifier
- (GKMoveNoiseModifier)init;
- (GKMoveNoiseModifier)initWithDelta:(GKMoveNoiseModifier *)self;
- (GKMoveNoiseModifier)initWithInputModuleCount:(unint64_t)count;
- (double)valueAt:(GKMoveNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKMoveNoiseModifier

- (GKMoveNoiseModifier)init
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0u;
  return [(GKMoveNoiseModifier *)self initWithDelta:v3];
}

- (GKMoveNoiseModifier)initWithInputModuleCount:(unint64_t)count
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0u;
  return [(GKMoveNoiseModifier *)self initWithDelta:v4];
}

- (GKMoveNoiseModifier)initWithDelta:(GKMoveNoiseModifier *)self
{
  v4 = v2[1];
  v5 = *v2;
  v6.receiver = self;
  v6.super_class = GKMoveNoiseModifier;
  result = [(GKNoiseModifier *)&v6 initWithInputModuleCount:1];
  if (result)
  {
    *result->_delta = v5;
    *&result->_delta[16] = v4;
  }

  return result;
}

- (double)valueAt:(GKMoveNoiseModifier *)self
{
  v10 = *v2;
  v4 = v2[1].f64[0];
  v5 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  *&v6 = *&self->_delta[16] + v4;
  v11[0] = vaddq_f64(*self->_delta, v10);
  v11[1] = v6;
  [v5 valueAt:v11];
  v8 = v7;

  return v8;
}

- (id)cloneModule
{
  v3 = [GKMoveNoiseModifier alloc];
  v4 = *&self->_delta[16];
  v7[0] = *self->_delta;
  v7[1] = v4;
  v5 = [(GKMoveNoiseModifier *)v3 initWithDelta:v7];

  return v5;
}

@end
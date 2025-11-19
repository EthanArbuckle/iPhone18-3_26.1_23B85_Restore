@interface GKInvertNoiseModifier
- (GKInvertNoiseModifier)init;
- (double)valueAt:(GKInvertNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKInvertNoiseModifier

- (GKInvertNoiseModifier)init
{
  v3.receiver = self;
  v3.super_class = GKInvertNoiseModifier;
  return [(GKNoiseModifier *)&v3 initWithInputModuleCount:1];
}

- (double)valueAt:(GKInvertNoiseModifier *)self
{
  v7 = v2[1];
  v8 = *v2;
  v3 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v9[0] = v8;
  v9[1] = v7;
  [v3 valueAt:v9];
  v5 = v4;

  return -v5;
}

- (id)cloneModule
{
  v2 = objc_alloc_init(GKInvertNoiseModifier);

  return v2;
}

@end
@interface GKMultiplyNoiseModifier
- (GKMultiplyNoiseModifier)init;
- (double)valueAt:(GKMultiplyNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKMultiplyNoiseModifier

- (GKMultiplyNoiseModifier)init
{
  v3.receiver = self;
  v3.super_class = GKMultiplyNoiseModifier;
  return [(GKNoiseModifier *)&v3 initWithInputModuleCount:2];
}

- (double)valueAt:(GKMultiplyNoiseModifier *)self
{
  v11 = v2[1];
  v12 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v13 = v12;
  v14 = v11;
  [v4 valueAt:&v13];
  v6 = v5;

  v7 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:1];
  v13 = v12;
  v14 = v11;
  [v7 valueAt:&v13];
  v9 = v8;

  return v9 * v6;
}

- (id)cloneModule
{
  v2 = objc_alloc_init(GKMultiplyNoiseModifier);

  return v2;
}

@end
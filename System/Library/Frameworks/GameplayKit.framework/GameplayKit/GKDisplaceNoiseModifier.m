@interface GKDisplaceNoiseModifier
- (GKDisplaceNoiseModifier)init;
- (double)valueAt:(GKDisplaceNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKDisplaceNoiseModifier

- (GKDisplaceNoiseModifier)init
{
  v3.receiver = self;
  v3.super_class = GKDisplaceNoiseModifier;
  return [(GKNoiseModifier *)&v3 initWithInputModuleCount:4];
}

- (double)valueAt:(GKDisplaceNoiseModifier *)self
{
  v17 = v2[1];
  v18 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:1];
  v20 = v18;
  v21 = v17;
  [v4 valueAt:&v20];
  v16 = v5;

  v6 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:2];
  v20 = v18;
  v21 = v17;
  [v6 valueAt:&v20];
  v15 = v7;

  v8 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:3];
  v20 = v18;
  v21 = v17;
  [v8 valueAt:&v20];
  v19 = v9;

  v10 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  *&v11 = v16;
  *(&v11 + 1) = v15;
  v20 = v11;
  v21 = v19;
  [v10 valueAt:&v20];
  v13 = v12;

  return v13;
}

- (id)cloneModule
{
  v2 = objc_alloc_init(GKDisplaceNoiseModifier);

  return v2;
}

@end
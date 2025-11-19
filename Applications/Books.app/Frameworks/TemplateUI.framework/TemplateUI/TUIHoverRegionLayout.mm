@interface TUIHoverRegionLayout
- (TUIHoverRegionLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)hoverIdentifierWithName:(id)a3 forDescdendent:(id)a4;
- (void)appendHoverRegions:(id)a3 relativeToLayout:(id)a4;
@end

@implementation TUIHoverRegionLayout

- (TUIHoverRegionLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v14.receiver = self;
  v14.super_class = TUIHoverRegionLayout;
  v5 = [(TUILayout *)&v14 initWithModel:a3 parent:a4 controller:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(TUILayout *)v5 box];
    v8 = [TUIHoverIdentifier alloc];
    v9 = [v7 regionName];
    v10 = [v7 identifier];
    v11 = [(TUIHoverIdentifier *)v8 initWithName:v9 identifier:v10];
    hoverIdentifier = v6->_hoverIdentifier;
    v6->_hoverIdentifier = v11;
  }

  return v6;
}

- (id)hoverIdentifierWithName:(id)a3 forDescdendent:(id)a4
{
  v5 = a3;
  v6 = [(TUIHoverIdentifier *)self->_hoverIdentifier name];
  v7 = [v6 isEqualToString:v5];

  if (v7)
  {
    v8 = self->_hoverIdentifier;
  }

  else
  {
    v9 = [(TUILayout *)self layoutAncestor];
    v8 = [v9 hoverIdentifierWithName:v5];
  }

  return v8;
}

- (void)appendHoverRegions:(id)a3 relativeToLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_hoverIdentifier)
  {
    memset(&v13, 0, sizeof(v13));
    [(TUILayout *)self computedTransformInAncestorLayout:v7];
    [(TUILayout *)self computedNaturalSize];
    v14.size.width = v8;
    v14.size.height = v9;
    v12 = v13;
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v15 = CGRectApplyAffineTransform(v14, &v12);
    v10 = [[TUIHoverRegion alloc] initWithBounds:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
    [v6 setObject:v10 forKeyedSubscript:self->_hoverIdentifier];
  }

  v11.receiver = self;
  v11.super_class = TUIHoverRegionLayout;
  [(TUILayout *)&v11 appendHoverRegions:v6 relativeToLayout:v7];
}

@end
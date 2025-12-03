@interface TUIHoverRegionLayout
- (TUIHoverRegionLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)hoverIdentifierWithName:(id)name forDescdendent:(id)descdendent;
- (void)appendHoverRegions:(id)regions relativeToLayout:(id)layout;
@end

@implementation TUIHoverRegionLayout

- (TUIHoverRegionLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v14.receiver = self;
  v14.super_class = TUIHoverRegionLayout;
  v5 = [(TUILayout *)&v14 initWithModel:model parent:parent controller:controller];
  v6 = v5;
  if (v5)
  {
    v7 = [(TUILayout *)v5 box];
    v8 = [TUIHoverIdentifier alloc];
    regionName = [v7 regionName];
    identifier = [v7 identifier];
    v11 = [(TUIHoverIdentifier *)v8 initWithName:regionName identifier:identifier];
    hoverIdentifier = v6->_hoverIdentifier;
    v6->_hoverIdentifier = v11;
  }

  return v6;
}

- (id)hoverIdentifierWithName:(id)name forDescdendent:(id)descdendent
{
  nameCopy = name;
  name = [(TUIHoverIdentifier *)self->_hoverIdentifier name];
  v7 = [name isEqualToString:nameCopy];

  if (v7)
  {
    v8 = self->_hoverIdentifier;
  }

  else
  {
    layoutAncestor = [(TUILayout *)self layoutAncestor];
    v8 = [layoutAncestor hoverIdentifierWithName:nameCopy];
  }

  return v8;
}

- (void)appendHoverRegions:(id)regions relativeToLayout:(id)layout
{
  regionsCopy = regions;
  layoutCopy = layout;
  if (self->_hoverIdentifier)
  {
    memset(&v13, 0, sizeof(v13));
    [(TUILayout *)self computedTransformInAncestorLayout:layoutCopy];
    [(TUILayout *)self computedNaturalSize];
    v14.size.width = v8;
    v14.size.height = v9;
    v12 = v13;
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v15 = CGRectApplyAffineTransform(v14, &v12);
    v10 = [[TUIHoverRegion alloc] initWithBounds:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
    [regionsCopy setObject:v10 forKeyedSubscript:self->_hoverIdentifier];
  }

  v11.receiver = self;
  v11.super_class = TUIHoverRegionLayout;
  [(TUILayout *)&v11 appendHoverRegions:regionsCopy relativeToLayout:layoutCopy];
}

@end
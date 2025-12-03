@interface TUIFocusItemLayout
- (CGRect)computedErasableBoundsPrimitive;
- (id)collectLinkEntities;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIFocusItemLayout

- (id)collectLinkEntities
{
  v2 = [(TUILayout *)self box];
  linkEntities = [v2 linkEntities];

  return linkEntities;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 4)
  {
    return 0;
  }

  v5 = [context renderModelForContainerLayout:self kind:6];
  v15 = [(TUILayout *)self box];
  identifier = [v15 identifier];
  v7 = [(TUILayout *)self box];
  focusStyle = [v7 focusStyle];
  v9 = [(TUILayout *)self box];
  actionHandler = [v9 actionHandler];
  v11 = [(TUILayout *)self box];
  linkEntities = [v11 linkEntities];
  v13 = [TUIFocusContainerView renderModelWithSubviewsModel:v5 identifier:identifier focusStyle:focusStyle actionHandler:actionHandler linkEntities:linkEntities];

  return v13;
}

- (CGRect)computedErasableBoundsPrimitive
{
  v21.receiver = self;
  v21.super_class = TUIFocusItemLayout;
  [(TUILayout *)&v21 computedErasableBoundsPrimitive];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(TUILayout *)self box];
  focusStyle = [v11 focusStyle];

  if (focusStyle)
  {
    [(TUILayout *)self computedBounds];
    [focusStyle erasableBoundsWithBounds:?];
    v25.origin.x = v13;
    v25.origin.y = v14;
    v25.size.width = v15;
    v25.size.height = v16;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectUnion(v22, v25);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end
@interface TUIFocusItemLayout
- (CGRect)computedErasableBoundsPrimitive;
- (id)collectLinkEntities;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUIFocusItemLayout

- (id)collectLinkEntities
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 linkEntities];

  return v3;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  if (a3 < 4)
  {
    return 0;
  }

  v5 = [a4 renderModelForContainerLayout:self kind:6];
  v15 = [(TUILayout *)self box];
  v6 = [v15 identifier];
  v7 = [(TUILayout *)self box];
  v8 = [v7 focusStyle];
  v9 = [(TUILayout *)self box];
  v10 = [v9 actionHandler];
  v11 = [(TUILayout *)self box];
  v12 = [v11 linkEntities];
  v13 = [TUIFocusContainerView renderModelWithSubviewsModel:v5 identifier:v6 focusStyle:v8 actionHandler:v10 linkEntities:v12];

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
  v12 = [v11 focusStyle];

  if (v12)
  {
    [(TUILayout *)self computedBounds];
    [v12 erasableBoundsWithBounds:?];
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
@interface TUIHoverVisibleLayout
- (TUIHoverVisibleLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUIHoverVisibleLayout

- (TUIHoverVisibleLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v9.receiver = self;
  v9.super_class = TUIHoverVisibleLayout;
  v5 = [(TUILayout *)&v9 initWithModel:a3 parent:a4 controller:a5];
  v6 = v5;
  if (v5)
  {
    if ([(TUIHoverVisibleLayout *)v5 hoverAvailable])
    {
      [(TUILayout *)v6 setHidden:0];
    }

    else
    {
      v7 = [(TUILayout *)v6 box];
      -[TUILayout setHidden:](v6, "setHidden:", [v7 whenUnavailable] == &dword_0 + 1);
    }
  }

  return v6;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(TUILayout *)self box];
  v8 = [v7 regionName];
  v9 = [(TUILayout *)self hoverIdentifierWithName:v8];

  v10 = 0;
  if (a3 >= 4 && v9)
  {
    if ([(TUIHoverVisibleLayout *)self hoverAvailable])
    {
      v11 = [v6 renderModelForContainerLayout:self kind:6];
      v12 = [(TUILayout *)self box];
      v13 = [v12 identifier];
      v10 = [TUIHoverVisibleView renderModelWithSubviewsModel:v11 identifier:v13 hoverIdentifier:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end
@interface TUIHoverVisibleLayout
- (TUIHoverVisibleLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIHoverVisibleLayout

- (TUIHoverVisibleLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v9.receiver = self;
  v9.super_class = TUIHoverVisibleLayout;
  v5 = [(TUILayout *)&v9 initWithModel:model parent:parent controller:controller];
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

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v7 = [(TUILayout *)self box];
  regionName = [v7 regionName];
  v9 = [(TUILayout *)self hoverIdentifierWithName:regionName];

  v10 = 0;
  if (kind >= 4 && v9)
  {
    if ([(TUIHoverVisibleLayout *)self hoverAvailable])
    {
      v11 = [contextCopy renderModelForContainerLayout:self kind:6];
      v12 = [(TUILayout *)self box];
      identifier = [v12 identifier];
      v10 = [TUIHoverVisibleView renderModelWithSubviewsModel:v11 identifier:identifier hoverIdentifier:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end
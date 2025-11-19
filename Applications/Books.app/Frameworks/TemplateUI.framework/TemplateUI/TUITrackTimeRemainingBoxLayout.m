@interface TUITrackTimeRemainingBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUITrackTimeRemainingBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  [(TUILayout *)self renderModelSizeWithContext:a4];
  v6 = v5;
  v8 = v7;
  v9 = [(TUILayout *)self box];
  v10 = [v9 identifier];
  v11 = [(TUILayout *)self box];
  v12 = [v11 dynamicProgress];
  v13 = [(TUILayout *)self box];
  v14 = [v13 style];
  v15 = [TUITrackTimeRemainingView renderModelWithIdentifier:v10 dynamicProgress:v12 style:v14];

  [v15 setSize:{v6, v8}];
  return v15;
}

@end
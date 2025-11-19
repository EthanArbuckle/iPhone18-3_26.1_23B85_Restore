@interface TUINowPlayingBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUINowPlayingBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  [(TUILayout *)self renderModelSizeWithContext:a4];
  v6 = v5;
  v8 = v7;
  v9 = [(TUILayout *)self box];
  v10 = [v9 identifier];
  v11 = [(TUILayout *)self box];
  v12 = [v11 playing];
  v13 = [(TUILayout *)self box];
  v14 = [v13 color];
  v15 = [TUINowPlayingView renderModelWithIdentifier:v10 playing:v12 color:v14];

  [v15 setSize:{v6, v8}];
  return v15;
}

@end
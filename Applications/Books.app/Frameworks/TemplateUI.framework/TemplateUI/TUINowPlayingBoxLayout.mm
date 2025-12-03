@interface TUINowPlayingBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUINowPlayingBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(TUILayout *)self renderModelSizeWithContext:context];
  v6 = v5;
  v8 = v7;
  v9 = [(TUILayout *)self box];
  identifier = [v9 identifier];
  v11 = [(TUILayout *)self box];
  playing = [v11 playing];
  v13 = [(TUILayout *)self box];
  color = [v13 color];
  v15 = [TUINowPlayingView renderModelWithIdentifier:identifier playing:playing color:color];

  [v15 setSize:{v6, v8}];
  return v15;
}

@end
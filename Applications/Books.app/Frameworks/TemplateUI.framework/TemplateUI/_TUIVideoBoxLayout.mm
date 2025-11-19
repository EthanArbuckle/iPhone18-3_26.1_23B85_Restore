@interface _TUIVideoBoxLayout
- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4;
@end

@implementation _TUIVideoBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  if (a3 < 4)
  {
    return 0;
  }

  v42 = a4;
  [(TUILayout *)self box];
  v6 = v5 = self;
  v7 = [v6 urlString];
  v8 = [v6 baseUrl];
  v43 = [NSURL URLWithString:v7 relativeToURL:v8];

  [(TUILayout *)v5 computedNaturalSize];
  v10 = v9;
  v12 = v11;
  v13 = [(TUILayout *)v5 controller];
  v14 = [v13 manager];
  v15 = [v14 imageResourceCache];
  v16 = [(TUILayout *)v5 box];
  v17 = [v16 posterFrameUrlString];
  v18 = [(TUILayout *)v5 box];
  v19 = [v18 baseUrl];
  [v42 contentsScale];
  v41 = [v15 imageResourceForTemplatedURL:v17 baseURL:v19 naturalSize:v10 contentsScale:{v12, v20}];

  v36 = [v6 identifier];
  v40 = [v6 videoId];
  v39 = [v6 loop];
  v38 = [v6 muted];
  v37 = [v6 allowFullScreen];
  LOBYTE(v13) = [v6 autoPlay];
  LOBYTE(v16) = [v6 showPlaybackControls];
  v35 = [v6 gravity];
  [v6 cornerRadius];
  v22 = v21;
  v23 = [v6 topTriggerName];
  v24 = [v6 bottomTriggerName];
  v25 = [v6 leftTriggerName];
  v26 = [v6 rightTriggerName];
  v27 = [v6 actionHandler];
  BYTE2(v34) = v16;
  BYTE1(v34) = v13;
  LOBYTE(v34) = v37;
  v28 = [TUIVideoView renderModelWithIdentifier:"renderModelWithIdentifier:url:posterFrameResource:videoId:loop:muted:allowFullScreen:autoPlay:showPlaybackControls:gravity:cornerRadius:topTriggerName:bottomTriggerName:leftTriggerName:rightTriggerName:actionHandler:" url:v36 posterFrameResource:v43 videoId:v41 loop:v40 muted:v39 allowFullScreen:v38 autoPlay:v22 showPlaybackControls:v34 gravity:v35 cornerRadius:v23 topTriggerName:v24 bottomTriggerName:v25 leftTriggerName:v26 rightTriggerName:v27 actionHandler:?];

  [(TUILayout *)v5 renderModelSizeWithContext:v42];
  v30 = v29;
  v32 = v31;

  [v28 setSize:{v30, v32}];
  return v28;
}

- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4
{
  v6 = a3;
  v32.receiver = self;
  v32.super_class = _TUIVideoBoxLayout;
  v7 = a4;
  [(TUILayout *)&v32 appendAnchorsToSet:v6 inRoot:v7];
  v8 = [v6 axis];
  [(TUILayout *)self computedTransformInAncestorLayout:v7];

  y = CGPointZero.y;
  v10 = y * 0.0 + 0.0 * CGPointZero.x + 0.0;
  [(TUILayout *)self computeHeight];
  v12 = v10 + v11;
  v13 = [TUITrigger alloc];
  v14 = [(TUILayout *)self box];
  v15 = [v14 topTriggerName];
  v16 = [(TUITrigger *)v13 initWithName:v15];

  v17 = [TUITrigger alloc];
  v18 = [(TUILayout *)self box];
  v19 = [v18 bottomTriggerName];
  v20 = [(TUITrigger *)v17 initWithName:v19];

  [v6 appendTriggerAnchorWithOffset:v16 trigger:2 axis:v10];
  [v6 appendTriggerAnchorWithOffset:v20 trigger:2 axis:v12];
  if (v8 == &dword_0 + 1)
  {
    v21 = y * 0.0 + 0.0 * CGPointZero.x + 0.0;
    [(TUILayout *)self computeWidth];
    v23 = v21 + v22;
    v24 = [TUITrigger alloc];
    v25 = [(TUILayout *)self box];
    v26 = [v25 leftTriggerName];
    v27 = [(TUITrigger *)v24 initWithName:v26];

    v28 = [TUITrigger alloc];
    v29 = [(TUILayout *)self box];
    v30 = [v29 rightTriggerName];
    v31 = [(TUITrigger *)v28 initWithName:v30];

    [v6 appendTriggerAnchorWithOffset:v27 trigger:1 axis:v21];
    [v6 appendTriggerAnchorWithOffset:v31 trigger:1 axis:v23];
  }
}

- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6
{
  v8.receiver = self;
  v8.super_class = _TUIVideoBoxLayout;
  v6 = [(TUILayout *)&v8 axModelTreeWithCustomActionsCollector:a3 scrollAncestorLayout:a4 scrollAncestorTranslation:a6 liveTransformAncestorLayout:a5.x, a5.y];
  [v6 setShouldVendControlView:1];

  return v6;
}

@end
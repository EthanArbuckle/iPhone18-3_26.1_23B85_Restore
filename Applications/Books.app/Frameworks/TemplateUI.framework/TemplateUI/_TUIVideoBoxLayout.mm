@interface _TUIVideoBoxLayout
- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)appendAnchorsToSet:(id)set inRoot:(id)root;
@end

@implementation _TUIVideoBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 4)
  {
    return 0;
  }

  contextCopy = context;
  [(TUILayout *)self box];
  v6 = v5 = self;
  urlString = [v6 urlString];
  baseUrl = [v6 baseUrl];
  v43 = [NSURL URLWithString:urlString relativeToURL:baseUrl];

  [(TUILayout *)v5 computedNaturalSize];
  v10 = v9;
  v12 = v11;
  controller = [(TUILayout *)v5 controller];
  manager = [controller manager];
  imageResourceCache = [manager imageResourceCache];
  v16 = [(TUILayout *)v5 box];
  posterFrameUrlString = [v16 posterFrameUrlString];
  v18 = [(TUILayout *)v5 box];
  baseUrl2 = [v18 baseUrl];
  [contextCopy contentsScale];
  v41 = [imageResourceCache imageResourceForTemplatedURL:posterFrameUrlString baseURL:baseUrl2 naturalSize:v10 contentsScale:{v12, v20}];

  identifier = [v6 identifier];
  videoId = [v6 videoId];
  loop = [v6 loop];
  muted = [v6 muted];
  allowFullScreen = [v6 allowFullScreen];
  LOBYTE(controller) = [v6 autoPlay];
  LOBYTE(v16) = [v6 showPlaybackControls];
  gravity = [v6 gravity];
  [v6 cornerRadius];
  v22 = v21;
  topTriggerName = [v6 topTriggerName];
  bottomTriggerName = [v6 bottomTriggerName];
  leftTriggerName = [v6 leftTriggerName];
  rightTriggerName = [v6 rightTriggerName];
  actionHandler = [v6 actionHandler];
  BYTE2(v34) = v16;
  BYTE1(v34) = controller;
  LOBYTE(v34) = allowFullScreen;
  v28 = [TUIVideoView renderModelWithIdentifier:"renderModelWithIdentifier:url:posterFrameResource:videoId:loop:muted:allowFullScreen:autoPlay:showPlaybackControls:gravity:cornerRadius:topTriggerName:bottomTriggerName:leftTriggerName:rightTriggerName:actionHandler:" url:identifier posterFrameResource:v43 videoId:v41 loop:videoId muted:loop allowFullScreen:muted autoPlay:v22 showPlaybackControls:v34 gravity:gravity cornerRadius:topTriggerName topTriggerName:bottomTriggerName bottomTriggerName:leftTriggerName leftTriggerName:rightTriggerName rightTriggerName:actionHandler actionHandler:?];

  [(TUILayout *)v5 renderModelSizeWithContext:contextCopy];
  v30 = v29;
  v32 = v31;

  [v28 setSize:{v30, v32}];
  return v28;
}

- (void)appendAnchorsToSet:(id)set inRoot:(id)root
{
  setCopy = set;
  v32.receiver = self;
  v32.super_class = _TUIVideoBoxLayout;
  rootCopy = root;
  [(TUILayout *)&v32 appendAnchorsToSet:setCopy inRoot:rootCopy];
  axis = [setCopy axis];
  [(TUILayout *)self computedTransformInAncestorLayout:rootCopy];

  y = CGPointZero.y;
  v10 = y * 0.0 + 0.0 * CGPointZero.x + 0.0;
  [(TUILayout *)self computeHeight];
  v12 = v10 + v11;
  v13 = [TUITrigger alloc];
  v14 = [(TUILayout *)self box];
  topTriggerName = [v14 topTriggerName];
  v16 = [(TUITrigger *)v13 initWithName:topTriggerName];

  v17 = [TUITrigger alloc];
  v18 = [(TUILayout *)self box];
  bottomTriggerName = [v18 bottomTriggerName];
  v20 = [(TUITrigger *)v17 initWithName:bottomTriggerName];

  [setCopy appendTriggerAnchorWithOffset:v16 trigger:2 axis:v10];
  [setCopy appendTriggerAnchorWithOffset:v20 trigger:2 axis:v12];
  if (axis == &dword_0 + 1)
  {
    v21 = y * 0.0 + 0.0 * CGPointZero.x + 0.0;
    [(TUILayout *)self computeWidth];
    v23 = v21 + v22;
    v24 = [TUITrigger alloc];
    v25 = [(TUILayout *)self box];
    leftTriggerName = [v25 leftTriggerName];
    v27 = [(TUITrigger *)v24 initWithName:leftTriggerName];

    v28 = [TUITrigger alloc];
    v29 = [(TUILayout *)self box];
    rightTriggerName = [v29 rightTriggerName];
    v31 = [(TUITrigger *)v28 initWithName:rightTriggerName];

    [setCopy appendTriggerAnchorWithOffset:v27 trigger:1 axis:v21];
    [setCopy appendTriggerAnchorWithOffset:v31 trigger:1 axis:v23];
  }
}

- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout
{
  v8.receiver = self;
  v8.super_class = _TUIVideoBoxLayout;
  v6 = [(TUILayout *)&v8 axModelTreeWithCustomActionsCollector:collector scrollAncestorLayout:layout scrollAncestorTranslation:ancestorLayout liveTransformAncestorLayout:translation.x, translation.y];
  [v6 setShouldVendControlView:1];

  return v6;
}

@end
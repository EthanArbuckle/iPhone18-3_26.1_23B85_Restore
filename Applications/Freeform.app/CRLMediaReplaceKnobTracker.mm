@interface CRLMediaReplaceKnobTracker
- (CRLMediaReplaceKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (id)p_mediaReplacingRep;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)position;
- (void)p_setTapToReplaceButtonHighlighted:(BOOL)highlighted;
- (void)showMediaReplaceUI;
@end

@implementation CRLMediaReplaceKnobTracker

- (CRLMediaReplaceKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
  if (([repCopy conformsToProtocol:&OBJC_PROTOCOL___CRLMediaReplacingRep] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132C438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132C44C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132C4E0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMediaReplaceKnobTracker initWithRep:knob:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMediaReplaceKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:25 isFatal:0 description:"Media replace knob tracker made without a media-replacing rep"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132C508();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132C530();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132C5C4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLMediaReplaceKnobTracker initWithRep:knob:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMediaReplaceKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:26 isFatal:0 description:"Media replace knob tracker made without media replace knob"];
  }

  v16.receiver = self;
  v16.super_class = CRLMediaReplaceKnobTracker;
  v14 = [(CRLCanvasButtonKnobTracker *)&v16 initWithRep:repCopy knob:knobCopy];

  return v14;
}

- (id)p_mediaReplacingRep
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v3 = objc_opt_class();
  v9 = sub_100303920(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLMediaReplacingRep);

  return v9;
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  v6.receiver = self;
  v6.super_class = CRLMediaReplaceKnobTracker;
  [(CRLCanvasButtonKnobTracker *)&v6 moveKnobToRepPosition:position.x, position.y];
  knob = [(CRLCanvasKnobTracker *)self knob];
  [(CRLCanvasKnobTracker *)self currentPosition];
  v5 = [knob isHitByUnscaledPoint:1 inputType:?];

  [(CRLMediaReplaceKnobTracker *)self p_setTapToReplaceButtonHighlighted:v5];
}

- (void)endMovingKnob
{
  knob = [(CRLCanvasKnobTracker *)self knob];
  [(CRLCanvasKnobTracker *)self currentPosition];
  v4 = [knob isHitByUnscaledPoint:1 inputType:?];

  if (v4)
  {
    [(CRLMediaReplaceKnobTracker *)self showMediaReplaceUI];
  }

  v5.receiver = self;
  v5.super_class = CRLMediaReplaceKnobTracker;
  [(CRLCanvasButtonKnobTracker *)&v5 endMovingKnob];
}

- (void)showMediaReplaceUI
{
  p_mediaReplacingRep = [(CRLMediaReplaceKnobTracker *)self p_mediaReplacingRep];
  interactiveCanvasController = [p_mediaReplacingRep interactiveCanvasController];
  [interactiveCanvasController endEditing];
  canvasEditor = [interactiveCanvasController canvasEditor];
  info = [p_mediaReplacingRep info];
  v6 = [canvasEditor selectionPathWithInfo:info];
  editorController = [interactiveCanvasController editorController];
  [editorController setSelectionPath:v6];

  mediaReplacer = [interactiveCanvasController mediaReplacer];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BF498;
  v11[3] = &unk_10183AE28;
  v12 = interactiveCanvasController;
  v13 = p_mediaReplacingRep;
  v9 = p_mediaReplacingRep;
  v10 = interactiveCanvasController;
  [mediaReplacer hideMediaReplacerWithCompletionBlock:v11];
}

- (void)p_setTapToReplaceButtonHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  p_mediaReplacingRep = [(CRLMediaReplaceKnobTracker *)self p_mediaReplacingRep];
  visibleMediaReplaceButtonRenderable = [p_mediaReplacingRep visibleMediaReplaceButtonRenderable];
  canvas = [p_mediaReplacingRep canvas];
  [canvas contentsScale];
  v8 = v7;

  v9 = objc_opt_class();
  knob = [(CRLCanvasKnobTracker *)self knob];
  v11 = sub_100014370(v9, knob);

  if (highlightedCopy)
  {
    [v11 highlightedImage];
  }

  else
  {
    [v11 image];
  }
  v12 = ;
  [visibleMediaReplaceButtonRenderable setContents:{objc_msgSend(v12, "CGImageForContentsScale:", v8)}];
}

@end
@interface CRLMediaReplaceKnobTracker
- (CRLMediaReplaceKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (id)p_mediaReplacingRep;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)a3;
- (void)p_setTapToReplaceButtonHighlighted:(BOOL)a3;
- (void)showMediaReplaceUI;
@end

@implementation CRLMediaReplaceKnobTracker

- (CRLMediaReplaceKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 conformsToProtocol:&OBJC_PROTOCOL___CRLMediaReplacingRep] & 1) == 0)
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
  v14 = [(CRLCanvasButtonKnobTracker *)&v16 initWithRep:v6 knob:v7];

  return v14;
}

- (id)p_mediaReplacingRep
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v3 = objc_opt_class();
  v9 = sub_100303920(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLMediaReplacingRep);

  return v9;
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  v6.receiver = self;
  v6.super_class = CRLMediaReplaceKnobTracker;
  [(CRLCanvasButtonKnobTracker *)&v6 moveKnobToRepPosition:a3.x, a3.y];
  v4 = [(CRLCanvasKnobTracker *)self knob];
  [(CRLCanvasKnobTracker *)self currentPosition];
  v5 = [v4 isHitByUnscaledPoint:1 inputType:?];

  [(CRLMediaReplaceKnobTracker *)self p_setTapToReplaceButtonHighlighted:v5];
}

- (void)endMovingKnob
{
  v3 = [(CRLCanvasKnobTracker *)self knob];
  [(CRLCanvasKnobTracker *)self currentPosition];
  v4 = [v3 isHitByUnscaledPoint:1 inputType:?];

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
  v2 = [(CRLMediaReplaceKnobTracker *)self p_mediaReplacingRep];
  v3 = [v2 interactiveCanvasController];
  [v3 endEditing];
  v4 = [v3 canvasEditor];
  v5 = [v2 info];
  v6 = [v4 selectionPathWithInfo:v5];
  v7 = [v3 editorController];
  [v7 setSelectionPath:v6];

  v8 = [v3 mediaReplacer];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BF498;
  v11[3] = &unk_10183AE28;
  v12 = v3;
  v13 = v2;
  v9 = v2;
  v10 = v3;
  [v8 hideMediaReplacerWithCompletionBlock:v11];
}

- (void)p_setTapToReplaceButtonHighlighted:(BOOL)a3
{
  v3 = a3;
  v13 = [(CRLMediaReplaceKnobTracker *)self p_mediaReplacingRep];
  v5 = [v13 visibleMediaReplaceButtonRenderable];
  v6 = [v13 canvas];
  [v6 contentsScale];
  v8 = v7;

  v9 = objc_opt_class();
  v10 = [(CRLCanvasKnobTracker *)self knob];
  v11 = sub_100014370(v9, v10);

  if (v3)
  {
    [v11 highlightedImage];
  }

  else
  {
    [v11 image];
  }
  v12 = ;
  [v5 setContents:{objc_msgSend(v12, "CGImageForContentsScale:", v8)}];
}

@end
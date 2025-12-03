@interface CRLCanvasHUDController
+ (CRLCanvasHUDController)sharedHUDController;
- (CGFloat)p_HUDFrame:(CGFloat)frame offset:(CGFloat)offset fromTouchRect:(CGFloat)rect insideRect:(double)insideRect overlap:(double)overlap shift:(double)shift;
- (CGRect)p_frameForHUDWithSize:(CGSize)size anchoredAtPoint:(CGPoint)point insideRect:(CGRect)rect;
- (CGRect)p_touchRectForHUDWithFrame:(CGRect)frame;
- (CRLCanvasHUDController)init;
- (id)hudView;
- (void)dealloc;
- (void)hideHUDForKey:(id)key;
- (void)loadView;
- (void)p_commonInit;
- (void)p_displayText:(id)text;
- (void)p_hideHUD;
- (void)p_labelTextTimerFired;
- (void)p_layoutUpdatingOffset:(BOOL)offset;
- (void)p_setHidden:(BOOL)hidden;
- (void)p_showHUDAtPoint:(CGPoint)point inCanvasView:(id)view withNudge:(CGSize)nudge size:(unint64_t)size anchorPoint:(CGPoint)anchorPoint;
- (void)setLabelText:(id)text;
- (void)showHUDForKey:(id)key forTouchPoint:(CGPoint)point inCanvasView:(id)view withNudge:(CGSize)nudge size:(unint64_t)size anchorPoint:(CGPoint)anchorPoint;
@end

@implementation CRLCanvasHUDController

- (void)p_commonInit
{
  v3 = objc_alloc_init(NSMutableSet);
  objectsShowingHUD = self->_objectsShowingHUD;
  self->_objectsShowingHUD = v3;
}

- (void)dealloc
{
  [(NSTimer *)self->_stringTimer invalidate];
  v3.receiver = self;
  v3.super_class = CRLCanvasHUDController;
  [(CRLCanvasHUDController *)&v3 dealloc];
}

+ (CRLCanvasHUDController)sharedHUDController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032DF64;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A34CB8 != -1)
  {
    dispatch_once(&qword_101A34CB8, block);
  }

  v2 = qword_101A34CB0;

  return v2;
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  +[NSDate timeIntervalSinceReferenceDate];
  if (v5 - self->_lastTimeUpdated >= 0.05)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastTimeUpdated = v10;
    if ([textCopy length])
    {
      objc_storeStrong(&self->_lastStringSet, text);
      [(CRLCanvasHUDController *)self p_displayText:textCopy];
    }
  }

  else
  {
    stringTimer = self->_stringTimer;
    if (stringTimer)
    {
      [(NSTimer *)stringTimer invalidate];
      v7 = self->_stringTimer;
      self->_stringTimer = 0;
    }

    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_labelTextTimerFired" selector:0 userInfo:0 repeats:0.200000003];
    v9 = self->_stringTimer;
    self->_stringTimer = v8;

    objc_storeStrong(&self->_lastStringSet, text);
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);

  if (WeakRetained)
  {
    [(CRLCanvasHUDController *)self p_layoutUpdatingOffset:0];
  }
}

- (void)showHUDForKey:(id)key forTouchPoint:(CGPoint)point inCanvasView:(id)view withNudge:(CGSize)nudge size:(unint64_t)size anchorPoint:(CGPoint)anchorPoint
{
  y = anchorPoint.y;
  x = anchorPoint.x;
  height = nudge.height;
  width = nudge.width;
  v13 = point.y;
  v14 = point.x;
  objectsShowingHUD = self->_objectsShowingHUD;
  viewCopy = view;
  [(NSMutableSet *)objectsShowingHUD addObject:key];
  [(CRLCanvasHUDController *)self p_showHUDAtPoint:viewCopy inCanvasView:size withNudge:v14 size:v13 anchorPoint:width, height, x, y];
}

- (void)hideHUDForKey:(id)key
{
  keyCopy = key;
  if ([(NSMutableSet *)self->_objectsShowingHUD containsObject:?])
  {
    [(NSMutableSet *)self->_objectsShowingHUD removeObject:keyCopy];
    if (![(NSMutableSet *)self->_objectsShowingHUD count])
    {
      [(CRLCanvasHUDController *)self p_hideHUD];
      v4 = CGPointZero;
      self->_touchPoint = CGPointZero;
      self->_HUDPoint = v4;
      self->_HUDOffset = 0;
      objc_storeWeak(&self->_canvasView, 0);
      stringTimer = self->_stringTimer;
      if (stringTimer)
      {
        [(NSTimer *)stringTimer invalidate];
        v6 = self->_stringTimer;
        self->_stringTimer = 0;
      }
    }
  }
}

- (void)p_labelTextTimerFired
{
  stringTimer = self->_stringTimer;
  if (stringTimer)
  {
    [(NSTimer *)stringTimer invalidate];
    v4 = self->_stringTimer;
    self->_stringTimer = 0;
  }

  lastStringSet = self->_lastStringSet;

  [(CRLCanvasHUDController *)self setLabelText:lastStringSet];
}

- (CRLCanvasHUDController)init
{
  v5.receiver = self;
  v5.super_class = CRLCanvasHUDController;
  v2 = [(CRLCanvasHUDController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(CRLCanvasHUDController *)v2 p_commonInit];
  }

  return v3;
}

- (id)hudView
{
  v3 = objc_opt_class();
  view = [(CRLCanvasHUDController *)self view];
  v5 = sub_100014370(v3, view);

  return v5;
}

- (void)loadView
{
  v3 = [[CRLiOSCanvasHUDView alloc] initForHUDViewSize:0];
  [(CRLCanvasHUDController *)self setView:v3];
}

- (void)p_showHUDAtPoint:(CGPoint)point inCanvasView:(id)view withNudge:(CGSize)nudge size:(unint64_t)size anchorPoint:(CGPoint)anchorPoint
{
  y = anchorPoint.y;
  x = anchorPoint.x;
  height = nudge.height;
  width = nudge.width;
  v12 = point.y;
  v13 = point.x;
  viewCopy = view;
  hudView = [(CRLCanvasHUDController *)self hudView];
  [hudView updateViewToHUDViewSize:size];

  enclosingScrollView = [viewCopy enclosingScrollView];
  superview = [enclosingScrollView superview];

  if (!superview)
  {
    superview = viewCopy;
  }

  view = [(CRLCanvasHUDController *)self view];
  superview2 = [view superview];

  if (superview2 != superview)
  {
    view2 = [(CRLCanvasHUDController *)self view];
    [view2 removeFromSuperview];

    view3 = [(CRLCanvasHUDController *)self view];
    [superview addSubview:view3];
  }

  view4 = [(CRLCanvasHUDController *)self view];
  isHidden = [view4 isHidden];

  if (isHidden)
  {
    view5 = [(CRLCanvasHUDController *)self view];
    [view5 setHidden:0];
  }

  [viewCopy convertPoint:superview toView:{v13, v12}];
  v27 = v26;
  v29 = v28;
  v31 = sub_1001203B8(x, y, 0.0, 0.0, 1.0, 1.0);
  v32 = v30;
  if (v31 != x || v30 != y)
  {
    v34 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101354B98();
    }

    v35 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101354BAC(v35, v34, x, y);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354CB0();
    }

    v36 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v36);
    }

    v37 = [NSString stringWithUTF8String:"[CRLCanvasHUDController p_showHUDAtPoint:inCanvasView:withNudge:size:anchorPoint:]"];
    v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasHUDController.m"];
    v52.x = x;
    v52.y = y;
    v39 = NSStringFromCGPoint(v52);
    [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:204 isFatal:0 description:"Anchor point should be [0, 1]! Got %@", v39];
  }

  self->_anchorPoint.x = v31;
  self->_anchorPoint.y = v32;
  self->_touchPoint.x = v27;
  self->_touchPoint.y = v29;
  self->_HUDPoint.x = width + v27;
  self->_HUDPoint.y = height + v29;
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  if (WeakRetained)
  {
    v41 = WeakRetained;
    v42 = objc_loadWeakRetained(&self->_canvasView);

    if (v42 != viewCopy)
    {
      v43 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101354CD8();
      }

      v44 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101354D00(v43, v44);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101354DAC();
      }

      v45 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v45);
      }

      v46 = [NSString stringWithUTF8String:"[CRLCanvasHUDController p_showHUDAtPoint:inCanvasView:withNudge:size:anchorPoint:]"];
      v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasHUDController.m"];
      [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:211 isFatal:0 description:"trying to move the CanvasHUD from one canvas to another while it is visible!"];
    }
  }

  objc_storeWeak(&self->_canvasView, viewCopy);
  [(CRLCanvasHUDController *)self p_layoutUpdatingOffset:1];
  view6 = [(CRLCanvasHUDController *)self view];
  [view6 alpha];
  v50 = v49;

  if (v50 != 1.0)
  {
    view7 = [(CRLCanvasHUDController *)self view];
    [view7 setAlpha:1.0];
  }
}

- (void)p_hideHUD
{
  view = [(CRLCanvasHUDController *)self view];
  [view setHidden:1];
}

- (void)p_displayText:(id)text
{
  textCopy = text;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection] == 1;

  v7 = objc_alloc_init(NSMutableParagraphStyle);
  [v7 setAlignment:1];
  [v7 setBaseWritingDirection:v6];
  hudView = [(CRLCanvasHUDController *)self hudView];
  +[CRLiOSCanvasHUDView fontSizeForHUDViewSize:](CRLiOSCanvasHUDView, "fontSizeForHUDViewSize:", [hudView hudSize]);
  v10 = v9;

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [UIFont monospacedDigitSystemFontOfSize:v10 weight:UIFontWeightBold];
  }

  else
  {
    [UIFont boldSystemFontOfSize:v10];
  }
  v11 = ;
  v16[0] = NSParagraphStyleAttributeName;
  v16[1] = NSFontAttributeName;
  v17[0] = v7;
  v17[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [[NSAttributedString alloc] initWithString:textCopy attributes:v12];

  hudView2 = [(CRLCanvasHUDController *)self hudView];
  label = [hudView2 label];
  [label setAttributedText:v13];
}

- (void)p_layoutUpdatingOffset:(BOOL)offset
{
  hudView = [(CRLCanvasHUDController *)self hudView];
  label = [hudView label];

  [label bounds];
  [label sizeThatFits:{v7, v8}];
  v10 = v9 + 18.0;
  hudView2 = [(CRLCanvasHUDController *)self hudView];
  +[CRLiOSCanvasHUDView viewHeightForHUDViewSize:](CRLiOSCanvasHUDView, "viewHeightForHUDViewSize:", [hudView2 hudSize]);
  v13 = v12;

  view = [(CRLCanvasHUDController *)self view];
  superview = [view superview];

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  controller = [WeakRetained controller];
  [controller visibleScaledRectForCanvasUI];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = objc_loadWeakRetained(&self->_canvasView);
  [v26 convertRect:superview toView:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v86.origin.x = v28;
  v86.origin.y = v30;
  v86.size.width = v32;
  v86.size.height = v34;
  v87 = CGRectInset(v86, 6.0, 6.0);
  height = v87.size.height;
  y = v87.origin.y;
  x = v87.origin.x;
  width = v87.size.width;
  [(CRLCanvasHUDController *)self p_frameForHUDWithSize:v10 anchoredAtPoint:v13 insideRect:self->_HUDPoint.x, self->_HUDPoint.y];
  *&v39 = v38;
  *&v41 = v40;
  v79 = v37;
  v80 = v36;
  v42 = self->_touchPoint.x;
  v43 = self->_touchPoint.y;
  if (self->_HUDPoint.x == v42 && self->_HUDPoint.y == v43)
  {
    *(&v41 + 1) = v37;
    *(&v39 + 1) = v36;
    v44 = 0.0;
  }

  else
  {
    offsetCopy = offset;
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    v74 = *&v39;
    v75 = *&v41;
    MinY = CGRectGetMinY(v88);
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    MaxY = CGRectGetMaxY(v89);
    v47 = sub_1004C3240(v43, MinY, MaxY);
    self->_touchPoint.x = v42;
    self->_touchPoint.y = v47;
    [(CRLCanvasHUDController *)self p_touchRectForHUDWithFrame:v74, v80, v75, v79];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = 0;
    v57 = 0;
    v58 = INFINITY;
    v59 = INFINITY;
    v60 = INFINITY;
    do
    {
      v61 = qword_101464C30[v56];
      v84 = 0.0;
      v85[0] = 0.0;
      v62 = &v85[4 * v61 + 1];
      [(CRLCanvasHUDController *)self p_HUDFrame:v61 offset:v85 fromTouchRect:&v84 insideRect:v74 overlap:v80 shift:v75, v79, v49, v51, v53, v55, *&x, *&y, *&width, *&height];
      *(v62 - 4) = v63;
      *(v62 - 3) = v64;
      *(v62 - 2) = v65;
      *(v62 - 1) = v66;
      if (v85[0] >= v60)
      {
        if (v85[0] == v60 && v84 < v59 && v59 - v84 > 2.0)
        {
          v57 = v61;
          v59 = v84;
        }
      }

      else
      {
        v59 = v84;
        v57 = v61;
        v60 = v85[0];
      }

      ++v56;
      HUDOffset = self->_HUDOffset;
      if (v61 == HUDOffset)
      {
        v58 = v85[0];
      }
    }

    while (v56 != 3);
    if (v58 != v60 || v57 == HUDOffset || v57 == 1)
    {
      v70 = v57;
    }

    else
    {
      v70 = self->_HUDOffset;
    }

    v71 = &v85[4 * v70 + 1];
    v44 = 0.0;
    if (offsetCopy)
    {
      v72 = HUDOffset == v70 || HUDOffset == 0;
      v44 = 0.15;
      if (v72)
      {
        v44 = 0.0;
      }

      self->_HUDOffset = v70;
    }

    v39 = *(v71 - 2);
    v41 = *(v71 - 1);
  }

  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_10032F024;
  v81[3] = &unk_10183D298;
  v81[4] = self;
  v82 = v39;
  v83 = v41;
  [UIView animateWithDuration:v81 animations:v44];
}

- (CGFloat)p_HUDFrame:(CGFloat)frame offset:(CGFloat)offset fromTouchRect:(CGFloat)rect insideRect:(double)insideRect overlap:(double)overlap shift:(double)shift
{
  if (a11 != 1)
  {
    insideRectCopy = insideRect;
    overlapCopy = overlap;
    shiftCopy = shift;
    v49 = a9;
    [self p_touchRectForHUDWithFrame:{a2, frame, offset, rect}];
    v33 = offset * 0.5 + v32 * 1.5 + 1.0;
    if (a11 == 3)
    {
      v34 = v33 + self[6];
    }

    else
    {
      if (a11 != 2)
      {
        v35 = self + 8;
        v34 = self[8];
LABEL_10:
        [self p_frameForHUDWithSize:offset anchoredAtPoint:rect insideRect:{v34, v35[1], a14, a15, a16, a17}];
        v29 = v36;
        frameCopy = v37;
        offsetCopy = v38;
        rectCopy = v39;
        shift = shiftCopy;
        a9 = v49;
        insideRect = insideRectCopy;
        overlap = overlapCopy;
        if (!a12)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v34 = self[6] - v33;
    }

    v35 = self + 8;
    goto LABEL_10;
  }

  rectCopy = rect;
  offsetCopy = offset;
  frameCopy = frame;
  v29 = a2;
  if (a12)
  {
LABEL_11:
    v50.origin.x = v29;
    v50.origin.y = frameCopy;
    v50.size.width = offsetCopy;
    v50.size.height = rectCopy;
    v51 = CGRectIntersection(v50, *&insideRect);
    *a12 = v51.size.width * v51.size.height;
  }

LABEL_12:
  if (a13)
  {
    v40 = sub_100120414(a2, frame, offset, rect);
    v42 = v41;
    v43 = sub_100120414(v29, frameCopy, offsetCopy, rectCopy);
    *a13 = sub_100120090(v40, v42, v43, v44);
  }

  return v29;
}

- (CGRect)p_frameForHUDWithSize:(CGSize)size anchoredAtPoint:(CGPoint)point insideRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  v12 = sub_10011FFCC(self->_anchorPoint.x, self->_anchorPoint.y, size.width);
  sub_10011F31C(v10, v9, v12);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
  v19 = sub_100120B08(v15, v16, v17, v18, x, y, width, height);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  controller = [WeakRetained controller];
  canvas = [controller canvas];
  [canvas contentsScale];
  v30 = sub_1001221E8(v19, v21, v23, v25, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)p_touchRectForHUDWithFrame:(CGRect)frame
{
  v3 = sub_10011EC70(self->_touchPoint.x, self->_touchPoint.y, 30.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)p_setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  hudView = [(CRLCanvasHUDController *)self hudView];
  [hudView setHidden:hiddenCopy];
}

@end
@interface CRLCanvasHUDController
+ (CRLCanvasHUDController)sharedHUDController;
- (CGFloat)p_HUDFrame:(CGFloat)a3 offset:(CGFloat)a4 fromTouchRect:(CGFloat)a5 insideRect:(double)a6 overlap:(double)a7 shift:(double)a8;
- (CGRect)p_frameForHUDWithSize:(CGSize)a3 anchoredAtPoint:(CGPoint)a4 insideRect:(CGRect)a5;
- (CGRect)p_touchRectForHUDWithFrame:(CGRect)a3;
- (CRLCanvasHUDController)init;
- (id)hudView;
- (void)dealloc;
- (void)hideHUDForKey:(id)a3;
- (void)loadView;
- (void)p_commonInit;
- (void)p_displayText:(id)a3;
- (void)p_hideHUD;
- (void)p_labelTextTimerFired;
- (void)p_layoutUpdatingOffset:(BOOL)a3;
- (void)p_setHidden:(BOOL)a3;
- (void)p_showHUDAtPoint:(CGPoint)a3 inCanvasView:(id)a4 withNudge:(CGSize)a5 size:(unint64_t)a6 anchorPoint:(CGPoint)a7;
- (void)setLabelText:(id)a3;
- (void)showHUDForKey:(id)a3 forTouchPoint:(CGPoint)a4 inCanvasView:(id)a5 withNudge:(CGSize)a6 size:(unint64_t)a7 anchorPoint:(CGPoint)a8;
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
  block[4] = a1;
  if (qword_101A34CB8 != -1)
  {
    dispatch_once(&qword_101A34CB8, block);
  }

  v2 = qword_101A34CB0;

  return v2;
}

- (void)setLabelText:(id)a3
{
  v12 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  if (v5 - self->_lastTimeUpdated >= 0.05)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastTimeUpdated = v10;
    if ([v12 length])
    {
      objc_storeStrong(&self->_lastStringSet, a3);
      [(CRLCanvasHUDController *)self p_displayText:v12];
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

    objc_storeStrong(&self->_lastStringSet, a3);
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);

  if (WeakRetained)
  {
    [(CRLCanvasHUDController *)self p_layoutUpdatingOffset:0];
  }
}

- (void)showHUDForKey:(id)a3 forTouchPoint:(CGPoint)a4 inCanvasView:(id)a5 withNudge:(CGSize)a6 size:(unint64_t)a7 anchorPoint:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  height = a6.height;
  width = a6.width;
  v13 = a4.y;
  v14 = a4.x;
  objectsShowingHUD = self->_objectsShowingHUD;
  v18 = a5;
  [(NSMutableSet *)objectsShowingHUD addObject:a3];
  [(CRLCanvasHUDController *)self p_showHUDAtPoint:v18 inCanvasView:a7 withNudge:v14 size:v13 anchorPoint:width, height, x, y];
}

- (void)hideHUDForKey:(id)a3
{
  v7 = a3;
  if ([(NSMutableSet *)self->_objectsShowingHUD containsObject:?])
  {
    [(NSMutableSet *)self->_objectsShowingHUD removeObject:v7];
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
  v4 = [(CRLCanvasHUDController *)self view];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)loadView
{
  v3 = [[CRLiOSCanvasHUDView alloc] initForHUDViewSize:0];
  [(CRLCanvasHUDController *)self setView:v3];
}

- (void)p_showHUDAtPoint:(CGPoint)a3 inCanvasView:(id)a4 withNudge:(CGSize)a5 size:(unint64_t)a6 anchorPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a5.height;
  width = a5.width;
  v12 = a3.y;
  v13 = a3.x;
  v15 = a4;
  v16 = [(CRLCanvasHUDController *)self hudView];
  [v16 updateViewToHUDViewSize:a6];

  v17 = [v15 enclosingScrollView];
  v18 = [v17 superview];

  if (!v18)
  {
    v18 = v15;
  }

  v19 = [(CRLCanvasHUDController *)self view];
  v20 = [v19 superview];

  if (v20 != v18)
  {
    v21 = [(CRLCanvasHUDController *)self view];
    [v21 removeFromSuperview];

    v22 = [(CRLCanvasHUDController *)self view];
    [v18 addSubview:v22];
  }

  v23 = [(CRLCanvasHUDController *)self view];
  v24 = [v23 isHidden];

  if (v24)
  {
    v25 = [(CRLCanvasHUDController *)self view];
    [v25 setHidden:0];
  }

  [v15 convertPoint:v18 toView:{v13, v12}];
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

    if (v42 != v15)
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

  objc_storeWeak(&self->_canvasView, v15);
  [(CRLCanvasHUDController *)self p_layoutUpdatingOffset:1];
  v48 = [(CRLCanvasHUDController *)self view];
  [v48 alpha];
  v50 = v49;

  if (v50 != 1.0)
  {
    v51 = [(CRLCanvasHUDController *)self view];
    [v51 setAlpha:1.0];
  }
}

- (void)p_hideHUD
{
  v2 = [(CRLCanvasHUDController *)self view];
  [v2 setHidden:1];
}

- (void)p_displayText:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection] == 1;

  v7 = objc_alloc_init(NSMutableParagraphStyle);
  [v7 setAlignment:1];
  [v7 setBaseWritingDirection:v6];
  v8 = [(CRLCanvasHUDController *)self hudView];
  +[CRLiOSCanvasHUDView fontSizeForHUDViewSize:](CRLiOSCanvasHUDView, "fontSizeForHUDViewSize:", [v8 hudSize]);
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
  v13 = [[NSAttributedString alloc] initWithString:v4 attributes:v12];

  v14 = [(CRLCanvasHUDController *)self hudView];
  v15 = [v14 label];
  [v15 setAttributedText:v13];
}

- (void)p_layoutUpdatingOffset:(BOOL)a3
{
  v5 = [(CRLCanvasHUDController *)self hudView];
  v6 = [v5 label];

  [v6 bounds];
  [v6 sizeThatFits:{v7, v8}];
  v10 = v9 + 18.0;
  v11 = [(CRLCanvasHUDController *)self hudView];
  +[CRLiOSCanvasHUDView viewHeightForHUDViewSize:](CRLiOSCanvasHUDView, "viewHeightForHUDViewSize:", [v11 hudSize]);
  v13 = v12;

  v14 = [(CRLCanvasHUDController *)self view];
  v15 = [v14 superview];

  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  v17 = [WeakRetained controller];
  [v17 visibleScaledRectForCanvasUI];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = objc_loadWeakRetained(&self->_canvasView);
  [v26 convertRect:v15 toView:{v19, v21, v23, v25}];
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
    v73 = a3;
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
    if (v73)
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

- (CGFloat)p_HUDFrame:(CGFloat)a3 offset:(CGFloat)a4 fromTouchRect:(CGFloat)a5 insideRect:(double)a6 overlap:(double)a7 shift:(double)a8
{
  if (a11 != 1)
  {
    v46 = a6;
    v47 = a7;
    v48 = a8;
    v49 = a9;
    [a1 p_touchRectForHUDWithFrame:{a2, a3, a4, a5}];
    v33 = a4 * 0.5 + v32 * 1.5 + 1.0;
    if (a11 == 3)
    {
      v34 = v33 + a1[6];
    }

    else
    {
      if (a11 != 2)
      {
        v35 = a1 + 8;
        v34 = a1[8];
LABEL_10:
        [a1 p_frameForHUDWithSize:a4 anchoredAtPoint:a5 insideRect:{v34, v35[1], a14, a15, a16, a17}];
        v29 = v36;
        v28 = v37;
        v27 = v38;
        v26 = v39;
        a8 = v48;
        a9 = v49;
        a6 = v46;
        a7 = v47;
        if (!a12)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v34 = a1[6] - v33;
    }

    v35 = a1 + 8;
    goto LABEL_10;
  }

  v26 = a5;
  v27 = a4;
  v28 = a3;
  v29 = a2;
  if (a12)
  {
LABEL_11:
    v50.origin.x = v29;
    v50.origin.y = v28;
    v50.size.width = v27;
    v50.size.height = v26;
    v51 = CGRectIntersection(v50, *&a6);
    *a12 = v51.size.width * v51.size.height;
  }

LABEL_12:
  if (a13)
  {
    v40 = sub_100120414(a2, a3, a4, a5);
    v42 = v41;
    v43 = sub_100120414(v29, v28, v27, v26);
    *a13 = sub_100120090(v40, v42, v43, v44);
  }

  return v29;
}

- (CGRect)p_frameForHUDWithSize:(CGSize)a3 anchoredAtPoint:(CGPoint)a4 insideRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = sub_10011FFCC(self->_anchorPoint.x, self->_anchorPoint.y, a3.width);
  sub_10011F31C(v10, v9, v12);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
  v19 = sub_100120B08(v15, v16, v17, v18, x, y, width, height);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  WeakRetained = objc_loadWeakRetained(&self->_canvasView);
  v27 = [WeakRetained controller];
  v28 = [v27 canvas];
  [v28 contentsScale];
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

- (CGRect)p_touchRectForHUDWithFrame:(CGRect)a3
{
  v3 = sub_10011EC70(self->_touchPoint.x, self->_touchPoint.y, 30.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)p_setHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLCanvasHUDController *)self hudView];
  [v4 setHidden:v3];
}

@end
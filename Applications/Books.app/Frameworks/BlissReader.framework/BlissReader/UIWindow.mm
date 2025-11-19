@interface UIWindow
+ (void)moveViewToEffectsWindowAboveStatusBar:(id)a3 zPosition:(double)a4 hostView:(id)a5;
- (double)statusBarMinDimension;
- (id)rootView;
- (void)moveViewAboveStatusBar:(id)a3 zPosition:(double)a4 hostView:(id)a5;
- (void)moveViewBackBelowStatusBar:(id)a3 preserveCurrentFrame:(BOOL)a4;
@end

@implementation UIWindow

- (double)statusBarMinDimension
{
  [(UIStatusBarManager *)[(UIWindowScene *)[(UIWindow *)self windowScene] statusBarManager] statusBarFrame];
  if (v2 >= v3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

- (void)moveViewAboveStatusBar:(id)a3 zPosition:(double)a4 hostView:(id)a5
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9 = [a3 superview];
  if (v9 == -[UIWindow rootView](self, "rootView") || [a3 stateRestoreBlock])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [objc_msgSend(a3 "layer")];
  v11 = v10;
  [a3 center];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1109B8;
  v19[3] = &unk_45DA20;
  v19[6] = v12;
  v19[7] = v13;
  v19[4] = a3;
  v19[5] = [a3 superview];
  v19[8] = v11;
  [a3 setStateRestoreBlock:v19];
  v14 = [(UIWindow *)self rootView];
  [a3 center];
  v16 = v15;
  v18 = v17;
  if ([a3 superview])
  {
    a5 = [a3 superview];
  }

  [v14 convertPoint:a5 fromView:{v16, v18}];
  [a3 setCenter:?];
  [-[UIWindow rootView](self "rootView")];
  [objc_msgSend(a3 "layer")];
}

- (void)moveViewBackBelowStatusBar:(id)a3 preserveCurrentFrame:(BOOL)a4
{
  v4 = a4;
  v7 = [TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:?];
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([a3 superview] != v7 && (v8 = objc_msgSend(a3, "superview"), v8 != -[UIWindow rootView](self, "rootView")) || !objc_msgSend(a3, "stateRestoreBlock"))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9 = [a3 superview];
  [a3 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [a3 superview];
  [a3 th_restoreState];
  if (v4)
  {
    [objc_msgSend(a3 "superview")];
    [a3 setFrame:?];
  }

  if (v9 != v7 && ![(UIWindow *)self hasRaisedViews])
  {

    [(UIWindow *)self th_restoreState];
  }
}

+ (void)moveViewToEffectsWindowAboveStatusBar:(id)a3 zPosition:(double)a4 hostView:(id)a5
{
  v8 = [TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:a5];
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([a3 superview] == v8 || objc_msgSend(a3, "stateRestoreBlock"))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [objc_msgSend(a3 "layer")];
  v10 = v9;
  [a3 center];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_110EBC;
  v31[3] = &unk_45DA20;
  v31[6] = v11;
  v31[7] = v12;
  v31[4] = a3;
  v31[5] = [a3 superview];
  v31[8] = v10;
  [a3 setStateRestoreBlock:v31];
  v13 = a5;
  if ([a3 superview])
  {
    v13 = [a3 superview];
  }

  if ([a3 window])
  {
    v14 = a3;
  }

  else
  {
    v14 = a5;
  }

  v15 = [v14 window];
  [a3 center];
  v18 = v17;
  if (v13)
  {
    [v13 convertPoint:0 toView:?];
    v18 = v19;
  }

  if (v15)
  {
    [v8 convertPoint:v15 fromWindow:?];
    v22 = v21;
  }

  else
  {
    v23 = v16;
    v24 = llroundf(v23);
    [v8 bounds];
    v26 = v25;
    v22 = (v24 % llroundf(v26));
    v27 = v18;
    v28 = llroundf(v27);
    [v8 bounds];
    v30 = v29;
    v20 = (v28 % llroundf(v30));
  }

  [a3 setCenter:{v22, v20}];
  [v8 addSubview:a3];
  [objc_msgSend(a3 "layer")];
}

- (id)rootView
{
  if (![(UIWindow *)self stateRestoreBlock])
  {
    if ([-[UIWindow subviews](self "subviews")] != &dword_0 + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v3 = [-[UIWindow subviews](self "subviews")];
    [(UIWindow *)self windowLevel];
    v5 = v4;
    v6 = [(UIWindow *)self backgroundColor];
    [v3 center];
    v8 = v7;
    v10 = v9;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    if (v3)
    {
      [v3 transform];
    }

    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v11 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
    [v3 bounds];
    [v11 setBounds:?];
    [v3 center];
    [v11 setCenter:?];
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
    }

    v30 = v33;
    v31 = v34;
    v32 = v35;
    [v11 setTransform:&v30];
    [(UIWindow *)self addSubview:v11];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(UIWindow *)self statusBarMinDimension];
    v21 = [[UIView alloc] initWithFrame:{v13, v20 + v15, v17, v19 - v20}];
    [v21 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
    [v21 setClipsToBounds:1];
    [v11 addSubview:v21];
    [v3 center];
    [v21 convertPoint:objc_msgSend(v3 fromView:{"superview"), v22, v23}];
    [v3 setCenter:?];
    v24 = *&CGAffineTransformIdentity.c;
    v30 = *&CGAffineTransformIdentity.a;
    v31 = v24;
    v32 = *&CGAffineTransformIdentity.tx;
    [v3 setTransform:&v30];
    [v21 addSubview:v3];
    [(UIWindow *)self setBackgroundColor:+[UIColor clearColor]];
    [(UIWindow *)self setWindowLevel:UIWindowLevelStatusBar + 1.0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_111280;
    v26[3] = &unk_45DA48;
    v26[4] = self;
    v26[5] = v6;
    v26[9] = v5;
    v26[10] = v8;
    v26[11] = v10;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v26[6] = v3;
    v26[7] = v21;
    v26[8] = v11;
    [(UIWindow *)self setStateRestoreBlock:v26];
  }

  return [-[UIWindow subviews](self "subviews")];
}

@end
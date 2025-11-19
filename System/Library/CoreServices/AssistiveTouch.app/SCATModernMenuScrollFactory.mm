@interface SCATModernMenuScrollFactory
+ (id)_fallbackAncestorForAutoscrollForMenu:(id)a3;
+ (id)_fallbackAncestorForScrollToTopForMenu:(id)a3;
+ (id)_menuItemDetailsForScrollAction:(int)a3;
+ (id)menuItemForScrollAction:(int)a3 withDelegate:(id)a4;
+ (id)menuItemWithItemDictionary:(id)a3 menu:(id)a4 delegate:(id)a5;
+ (void)_performFallbackScrollAncestorAction:(int)a3 withMenu:(id)a4;
+ (void)_performScrollAction:(int)a3 withMenu:(id)a4;
@end

@implementation SCATModernMenuScrollFactory

+ (id)menuItemForScrollAction:(int)a3 withDelegate:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [a1 _menuItemDetailsForScrollAction:v4];
  v8 = [v6 menu];
  v9 = [a1 menuItemWithItemDictionary:v7 menu:v8 delegate:v6];

  return v9;
}

+ (id)_menuItemDetailsForScrollAction:(int)a3
{
  if (a3 > 2018)
  {
    if (a3 <= 2029)
    {
      if (a3 == 2019)
      {
        v22[0] = @"action_scrollNext";
        v21[0] = @"identifier";
        v21[1] = @"title";
        v3 = sub_100042B24(@"Scroll-Next");
        v22[1] = v3;
        v21[2] = @"imageName";
        v6 = +[HNDAccessibilityManager sharedManager];
        v11 = [v6 applicationIsRTL];
        v12 = @"SCATIcon_action_scrollRight";
        if (v11)
        {
          v12 = @"SCATIcon_action_scrollLeft";
        }

        v21[3] = @"activateBehavior";
        v22[2] = v12;
        v22[3] = &off_1001E5640;
        v9 = v22;
        v10 = v21;
      }

      else
      {
        if (a3 != 2020)
        {
          goto LABEL_30;
        }

        v20[0] = @"action_scrollPrevious";
        v19[0] = @"identifier";
        v19[1] = @"title";
        v3 = sub_100042B24(@"Scroll-Next");
        v20[1] = v3;
        v19[2] = @"imageName";
        v6 = +[HNDAccessibilityManager sharedManager];
        v7 = [v6 applicationIsRTL];
        v8 = @"SCATIcon_action_scrollLeft";
        if (v7)
        {
          v8 = @"SCATIcon_action_scrollRight";
        }

        v19[3] = @"activateBehavior";
        v20[2] = v8;
        v20[3] = &off_1001E5640;
        v9 = v20;
        v10 = v19;
      }

      v13 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:4];

LABEL_26:
      goto LABEL_27;
    }

    if (a3 == 2030)
    {
      v18[0] = @"action_scrollToTop";
      v17[0] = @"identifier";
      v17[1] = @"title";
      v3 = sub_100042B24(@"SCROLL_TOP");
      v17[2] = @"activateBehavior";
      v18[1] = v3;
      v18[2] = &off_1001E5658;
      v4 = v18;
      v5 = v17;
      goto LABEL_25;
    }

    if (a3 == 2031)
    {
      v16[0] = @"action_autoscroll";
      v15[0] = @"identifier";
      v15[1] = @"title";
      v3 = sub_100042B24(@"Scroll-Auto");
      v15[2] = @"activateBehavior";
      v16[1] = v3;
      v16[2] = &off_1001E5640;
      v4 = v16;
      v5 = v15;
      goto LABEL_25;
    }
  }

  else if (a3 > 2007)
  {
    if (a3 == 2008)
    {
      v26[0] = @"action_scrollLeft";
      v25[0] = @"identifier";
      v25[1] = @"title";
      v3 = sub_100042B24(@"Scroll-Left");
      v25[2] = @"activateBehavior";
      v26[1] = v3;
      v26[2] = &off_1001E5628;
      v4 = v26;
      v5 = v25;
      goto LABEL_25;
    }

    if (a3 == 2009)
    {
      v24[0] = @"action_scrollRight";
      v23[0] = @"identifier";
      v23[1] = @"title";
      v3 = sub_100042B24(@"Scroll-Right");
      v23[2] = @"activateBehavior";
      v24[1] = v3;
      v24[2] = &off_1001E5628;
      v4 = v24;
      v5 = v23;
      goto LABEL_25;
    }
  }

  else
  {
    if (a3 == 2006)
    {
      v30[0] = @"action_scrollDown";
      v29[0] = @"identifier";
      v29[1] = @"title";
      v3 = sub_100042B24(@"Scroll-Down");
      v29[2] = @"activateBehavior";
      v30[1] = v3;
      v30[2] = &off_1001E5628;
      v4 = v30;
      v5 = v29;
      goto LABEL_25;
    }

    if (a3 == 2007)
    {
      v28[0] = @"action_scrollUp";
      v27[0] = @"identifier";
      v27[1] = @"title";
      v3 = sub_100042B24(@"Scroll-Up");
      v27[2] = @"activateBehavior";
      v28[1] = v3;
      v28[2] = &off_1001E5628;
      v4 = v28;
      v5 = v27;
LABEL_25:
      v13 = [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:3];
      goto LABEL_26;
    }
  }

LABEL_30:
  _AXAssert();
  v13 = 0;
LABEL_27:

  return v13;
}

+ (id)menuItemWithItemDictionary:(id)a3 menu:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v25 = a5;
  v8 = [v7 objectForKey:@"identifier"];
  v26 = [v7 objectForKey:@"title"];
  v24 = [v7 objectForKey:@"imageName"];
  v9 = [v7 objectForKey:@"activateBehavior"];
  v23 = [v9 unsignedIntegerValue];

  v10 = [v7 objectForKeyedSubscript:@"guidedAccess"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 BOOLValue];
  }

  else
  {
    v12 = 1;
  }

  v13 = [v7 objectForKeyedSubscript:@"assistiveAccess"];
  v14 = v13;
  v22 = v12;
  if (v13)
  {
    LOBYTE(v12) = [v13 BOOLValue];
  }

  if ([v8 isEqualToString:@"action_scrollUp"])
  {
    v15 = v32;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v16 = sub_1000D5394;
LABEL_14:
    v15[2] = v16;
    v15[3] = &unk_1001D6298;
    v15[4] = a1;
    v17 = objc_retainBlock(v15);
    goto LABEL_15;
  }

  if ([v8 isEqualToString:@"action_scrollDown"])
  {
    v15 = v31;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v16 = sub_1000D53A4;
    goto LABEL_14;
  }

  if ([v8 isEqualToString:@"action_scrollLeft"])
  {
    v15 = v30;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v16 = sub_1000D53B4;
    goto LABEL_14;
  }

  if ([v8 isEqualToString:@"action_scrollRight"])
  {
    v15 = v29;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v16 = sub_1000D53C4;
    goto LABEL_14;
  }

  if ([v8 isEqualToString:@"action_scrollNext"])
  {
    v17 = &stru_1001D72B0;
  }

  else if ([v8 isEqualToString:@"action_scrollPrevious"])
  {
    v17 = &stru_1001D72D0;
  }

  else
  {
    if ([v8 isEqualToString:@"action_scrollToTop"])
    {
      v15 = v28;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v16 = sub_1000D5494;
      goto LABEL_14;
    }

    if ([v8 isEqualToString:@"action_autoscroll"])
    {
      v15 = v27;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v16 = sub_1000D55D4;
      goto LABEL_14;
    }

    v17 = 0;
  }

LABEL_15:
  v18 = [objc_opt_class() updateBlockForIdentifier:v8];
  LOBYTE(v21) = v12;
  v19 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:v25 title:v26 imageName:v24 activateBehavior:v23 allowedWithGuidedAccess:v22 allowedWithAssistiveAccess:v21 activateHandler:v17 updateHandler:v18];

  return v19;
}

+ (id)_fallbackAncestorForScrollToTopForMenu:(id)a3
{
  v3 = a3;
  v4 = [v3 fallbackScrollUpAncestor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 fallbackScrollDownAncestor];
  }

  v7 = v6;

  v8 = [AXElement elementWithUIElement:v7];

  return v8;
}

+ (id)_fallbackAncestorForAutoscrollForMenu:(id)a3
{
  v3 = a3;
  v4 = [v3 fallbackScrollDownAncestor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 fallbackScrollUpAncestor];
  }

  v7 = v6;

  v8 = [AXElement elementWithUIElement:v7];

  return v8;
}

+ (void)_performFallbackScrollAncestorAction:(int)a3 withMenu:(id)a4
{
  v5 = a4;
  v17 = v5;
  if (a3 <= 2007)
  {
    if (a3 == 2006)
    {
      v13 = [v5 fallbackScrollDownAncestor];
      v14 = [v13 performAXAction:2006];

      if (v14)
      {
        goto LABEL_16;
      }

      v8 = [v17 fallbackScrollUpAncestor];
      v9 = v8;
      v10 = 2006;
      goto LABEL_15;
    }

    if (a3 == 2007)
    {
      v6 = [v5 fallbackScrollUpAncestor];
      v7 = [v6 performAXAction:2007];

      if (v7)
      {
        goto LABEL_16;
      }

      v8 = [v17 fallbackScrollDownAncestor];
      v9 = v8;
      v10 = 2007;
      goto LABEL_15;
    }

LABEL_10:
    _AXAssert();
    goto LABEL_16;
  }

  if (a3 != 2008)
  {
    if (a3 == 2009)
    {
      v11 = [v5 fallbackScrollRightAncestor];
      v12 = [v11 performAXAction:2009];

      if (v12)
      {
        goto LABEL_16;
      }

      v8 = [v17 fallbackScrollLeftAncestor];
      v9 = v8;
      v10 = 2009;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v15 = [v5 fallbackScrollLeftAncestor];
  v16 = [v15 performAXAction:2008];

  if (v16)
  {
    goto LABEL_16;
  }

  v8 = [v17 fallbackScrollRightAncestor];
  v9 = v8;
  v10 = 2008;
LABEL_15:
  [v8 performAXAction:v10];

LABEL_16:
}

+ (void)_performScrollAction:(int)a3 withMenu:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [v6 element];
  v8 = [v7 scrollableElement];

  if (v8)
  {
    if (([v8 performAction:v4] & 1) == 0)
    {
      [a1 _performFallbackScrollAncestorAction:v4 withMenu:v6];
    }
  }

  else
  {
    v9 = +[HNDAccessibilityManager sharedManager];
    v18 = 0;
    v10 = [v9 scrollViewsForAction:v4 elementsToScroll:&v18];
    v11 = v18;

    if ([v11 count] == 1)
    {
      v12 = [v11 firstObject];
      [v12 performAction:v4];
    }

    else if ([v10 count] < 2)
    {
      _AXLogWithFacility();
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000D5B78;
      v13[3] = &unk_1001D4828;
      v14 = v6;
      v15 = v10;
      v16 = v11;
      v17 = v4;
      [v14 hideWithCompletion:v13];
    }
  }
}

@end
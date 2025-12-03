@interface SCATModernMenuScrollFactory
+ (id)_fallbackAncestorForAutoscrollForMenu:(id)menu;
+ (id)_fallbackAncestorForScrollToTopForMenu:(id)menu;
+ (id)_menuItemDetailsForScrollAction:(int)action;
+ (id)menuItemForScrollAction:(int)action withDelegate:(id)delegate;
+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate;
+ (void)_performFallbackScrollAncestorAction:(int)action withMenu:(id)menu;
+ (void)_performScrollAction:(int)action withMenu:(id)menu;
@end

@implementation SCATModernMenuScrollFactory

+ (id)menuItemForScrollAction:(int)action withDelegate:(id)delegate
{
  v4 = *&action;
  delegateCopy = delegate;
  v7 = [self _menuItemDetailsForScrollAction:v4];
  menu = [delegateCopy menu];
  v9 = [self menuItemWithItemDictionary:v7 menu:menu delegate:delegateCopy];

  return v9;
}

+ (id)_menuItemDetailsForScrollAction:(int)action
{
  if (action > 2018)
  {
    if (action <= 2029)
    {
      if (action == 2019)
      {
        v22[0] = @"action_scrollNext";
        v21[0] = @"identifier";
        v21[1] = @"title";
        v3 = sub_100042B24(@"Scroll-Next");
        v22[1] = v3;
        v21[2] = @"imageName";
        v6 = +[HNDAccessibilityManager sharedManager];
        applicationIsRTL = [v6 applicationIsRTL];
        v12 = @"SCATIcon_action_scrollRight";
        if (applicationIsRTL)
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
        if (action != 2020)
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
        applicationIsRTL2 = [v6 applicationIsRTL];
        v8 = @"SCATIcon_action_scrollLeft";
        if (applicationIsRTL2)
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

    if (action == 2030)
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

    if (action == 2031)
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

  else if (action > 2007)
  {
    if (action == 2008)
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

    if (action == 2009)
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
    if (action == 2006)
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

    if (action == 2007)
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

+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate
{
  dictionaryCopy = dictionary;
  delegateCopy = delegate;
  v8 = [dictionaryCopy objectForKey:@"identifier"];
  v26 = [dictionaryCopy objectForKey:@"title"];
  v24 = [dictionaryCopy objectForKey:@"imageName"];
  v9 = [dictionaryCopy objectForKey:@"activateBehavior"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"guidedAccess"];
  v11 = v10;
  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"assistiveAccess"];
  v14 = v13;
  v22 = bOOLValue;
  if (v13)
  {
    LOBYTE(bOOLValue) = [v13 BOOLValue];
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
    v15[4] = self;
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
  LOBYTE(v21) = bOOLValue;
  v19 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:delegateCopy title:v26 imageName:v24 activateBehavior:unsignedIntegerValue allowedWithGuidedAccess:v22 allowedWithAssistiveAccess:v21 activateHandler:v17 updateHandler:v18];

  return v19;
}

+ (id)_fallbackAncestorForScrollToTopForMenu:(id)menu
{
  menuCopy = menu;
  fallbackScrollUpAncestor = [menuCopy fallbackScrollUpAncestor];
  v5 = fallbackScrollUpAncestor;
  if (fallbackScrollUpAncestor)
  {
    fallbackScrollDownAncestor = fallbackScrollUpAncestor;
  }

  else
  {
    fallbackScrollDownAncestor = [menuCopy fallbackScrollDownAncestor];
  }

  v7 = fallbackScrollDownAncestor;

  v8 = [AXElement elementWithUIElement:v7];

  return v8;
}

+ (id)_fallbackAncestorForAutoscrollForMenu:(id)menu
{
  menuCopy = menu;
  fallbackScrollDownAncestor = [menuCopy fallbackScrollDownAncestor];
  v5 = fallbackScrollDownAncestor;
  if (fallbackScrollDownAncestor)
  {
    fallbackScrollUpAncestor = fallbackScrollDownAncestor;
  }

  else
  {
    fallbackScrollUpAncestor = [menuCopy fallbackScrollUpAncestor];
  }

  v7 = fallbackScrollUpAncestor;

  v8 = [AXElement elementWithUIElement:v7];

  return v8;
}

+ (void)_performFallbackScrollAncestorAction:(int)action withMenu:(id)menu
{
  menuCopy = menu;
  v17 = menuCopy;
  if (action <= 2007)
  {
    if (action == 2006)
    {
      fallbackScrollDownAncestor = [menuCopy fallbackScrollDownAncestor];
      v14 = [fallbackScrollDownAncestor performAXAction:2006];

      if (v14)
      {
        goto LABEL_16;
      }

      fallbackScrollUpAncestor = [v17 fallbackScrollUpAncestor];
      v9 = fallbackScrollUpAncestor;
      v10 = 2006;
      goto LABEL_15;
    }

    if (action == 2007)
    {
      fallbackScrollUpAncestor2 = [menuCopy fallbackScrollUpAncestor];
      v7 = [fallbackScrollUpAncestor2 performAXAction:2007];

      if (v7)
      {
        goto LABEL_16;
      }

      fallbackScrollUpAncestor = [v17 fallbackScrollDownAncestor];
      v9 = fallbackScrollUpAncestor;
      v10 = 2007;
      goto LABEL_15;
    }

LABEL_10:
    _AXAssert();
    goto LABEL_16;
  }

  if (action != 2008)
  {
    if (action == 2009)
    {
      fallbackScrollRightAncestor = [menuCopy fallbackScrollRightAncestor];
      v12 = [fallbackScrollRightAncestor performAXAction:2009];

      if (v12)
      {
        goto LABEL_16;
      }

      fallbackScrollUpAncestor = [v17 fallbackScrollLeftAncestor];
      v9 = fallbackScrollUpAncestor;
      v10 = 2009;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  fallbackScrollLeftAncestor = [menuCopy fallbackScrollLeftAncestor];
  v16 = [fallbackScrollLeftAncestor performAXAction:2008];

  if (v16)
  {
    goto LABEL_16;
  }

  fallbackScrollUpAncestor = [v17 fallbackScrollRightAncestor];
  v9 = fallbackScrollUpAncestor;
  v10 = 2008;
LABEL_15:
  [fallbackScrollUpAncestor performAXAction:v10];

LABEL_16:
}

+ (void)_performScrollAction:(int)action withMenu:(id)menu
{
  v4 = *&action;
  menuCopy = menu;
  element = [menuCopy element];
  scrollableElement = [element scrollableElement];

  if (scrollableElement)
  {
    if (([scrollableElement performAction:v4] & 1) == 0)
    {
      [self _performFallbackScrollAncestorAction:v4 withMenu:menuCopy];
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
      firstObject = [v11 firstObject];
      [firstObject performAction:v4];
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
      v14 = menuCopy;
      v15 = v10;
      v16 = v11;
      v17 = v4;
      [v14 hideWithCompletion:v13];
    }
  }
}

@end
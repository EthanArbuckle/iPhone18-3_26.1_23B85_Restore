@interface AFUIAdapter
+ (BOOL)responderAcceptsText:(id)text;
+ (CGRect)areaForASPFromTextField:(id)field;
+ (id)firstResponderForInput;
+ (id)gatherRespondersFromResponder:(id)responder;
+ (id)placeholderTextForResponder:(id)responder;
+ (id)presentedRootViewControllerForResponder:(id)responder;
+ (id)textFromResponder:(id)responder;
+ (id)textInputRespondersFromResponders:(id)responders currentResponder:(id)responder indexOfCurrent:(unint64_t *)current;
+ (id)textSignalsForResponder:(id)responder;
+ (void)addTemporaryTextColorToTextField:(id)field;
+ (void)configureField:(id)field withASPForegroundView:(id)view withASPBackgroundView:(id)backgroundView;
+ (void)enumerateSignUpSignalsFromButton:(id)button block:(id)block;
+ (void)enumerateSignUpSignalsFromNavBarItem:(id)item block:(id)block;
+ (void)enumerateSignUpSignalsFromViewController:(id)controller block:(id)block;
+ (void)enumerateSignUpSignalsFromViewControllerForResponder:(id)responder block:(id)block viewControllerOut:(id *)out;
+ (void)enumerateSignupSignalsFromAccessibility:(id)accessibility block:(id)block;
+ (void)removeTemporaryTextColorFromTextField:(id)field;
+ (void)setText:(id)text forResponder:(id)responder;
@end

@implementation AFUIAdapter

+ (id)firstResponderForInput
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  delegateAsResponder = [activeInstance delegateAsResponder];

  return delegateAsResponder;
}

+ (BOOL)responderAcceptsText:(id)text
{
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

+ (id)presentedRootViewControllerForResponder:(id)responder
{
  _responderWindow = [responder _responderWindow];
  rootViewController = [_responderWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  return presentedViewController;
}

+ (id)gatherRespondersFromResponder:(id)responder
{
  v54 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  array = [MEMORY[0x1E695DF70] array];
  [responderCopy _gatherKeyResponders:array indexOfSelf:0 visibilityTest:&__block_literal_global_8 passingTest:&__block_literal_global_11 subviewsTest:&__block_literal_global_283];
  if ([array count] >= 3)
  {
    v46 = responderCopy;
    [MEMORY[0x1E695DF70] array];
    v48 = v47 = array;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = array;
    v6 = [v5 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v49 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            [v11 frame];
            if (!CGRectIsEmpty(v56))
            {
              [v11 bounds];
              [v11 convertRect:0 toView:?];
              v13 = v12;
              v15 = v14;
              v17 = v16;
              v19 = v18;
              window = [v11 window];
              window2 = [v11 window];
              windowScene = [window2 windowScene];
              coordinateSpace = [windowScene coordinateSpace];
              [window convertRect:coordinateSpace toCoordinateSpace:{v13, v15, v17, v19}];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;

              window3 = [v11 window];
              windowScene2 = [window3 windowScene];
              coordinateSpace2 = [windowScene2 coordinateSpace];
              [coordinateSpace2 bounds];
              v60.origin.x = v35;
              v60.origin.y = v36;
              v60.size.width = v37;
              v60.size.height = v38;
              v57.origin.x = v25;
              v57.origin.y = v27;
              v57.size.width = v29;
              v57.size.height = v31;
              v58 = CGRectIntersection(v57, v60);
              x = v58.origin.x;
              y = v58.origin.y;
              width = v58.size.width;
              height = v58.size.height;

              v59.origin.x = x;
              v59.origin.y = y;
              v59.size.width = width;
              v59.size.height = height;
              if (CGRectIsEmpty(v59))
              {
                [v48 addObject:v11];
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v7);
    }

    v43 = [v5 count];
    if ((v43 - [v48 count]) >= 4)
    {
      [v5 removeObjectsInArray:v48];
    }

    responderCopy = v46;
    array = v47;
  }

  v44 = *MEMORY[0x1E69E9840];

  return array;
}

BOOL __45__AFUIAdapter_gatherRespondersFromResponder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v5 = 0;
    if (([v3 isHidden] & 1) == 0)
    {
      [v3 alpha];
      if (v4 != 0.0)
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

BOOL __45__AFUIAdapter_gatherRespondersFromResponder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_16;
  }

  if (![v2 _requiresKeyboardWhenFirstResponder] || (objc_msgSend(v2, "conformsToProtocol:", &unk_1F4EC3800) & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v2;
      v6 = [v5 allTargets];
      if ([v6 count])
      {
        [v5 frame];
        v4 = !CGRectIsEmpty(v9);
      }

      else
      {
        v4 = 0;
      }

LABEL_15:
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    [v3 frame];
    if (CGRectIsEmpty(v8))
    {
      goto LABEL_7;
    }

    if ([v3 isUserInteractionEnabled])
    {
      goto LABEL_21;
    }

    if (_AFUIShouldDisableDetectingNonInteractiveFields_onceToken != -1)
    {
      _AFUIShouldDisableDetectingNonInteractiveFields_cold_1();
    }

    if (_AFUIShouldDisableDetectingNonInteractiveFields_disableDetectingNonInteractiveFields == 1)
    {
LABEL_7:
      v4 = 0;
    }

    else
    {
LABEL_21:
      v4 = 1;
    }

    goto LABEL_15;
  }

  v4 = 1;
LABEL_16:

  return v4;
}

BOOL __45__AFUIAdapter_gatherRespondersFromResponder___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v2 _requiresKeyboardWhenFirstResponder] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v2 allTargets];
      v3 = [v5 count] == 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)textInputRespondersFromResponders:(id)responders currentResponder:(id)responder indexOfCurrent:(unint64_t *)current
{
  responderCopy = responder;
  v8 = MEMORY[0x1E695DF70];
  respondersCopy = responders;
  v10 = [v8 arrayWithCapacity:{objc_msgSend(respondersCopy, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__AFUIAdapter_textInputRespondersFromResponders_currentResponder_indexOfCurrent___block_invoke;
  v16[3] = &unk_1E8424720;
  v17 = responderCopy;
  currentCopy = current;
  v11 = v10;
  v18 = v11;
  v12 = responderCopy;
  [respondersCopy enumerateObjectsUsingBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __81__AFUIAdapter_textInputRespondersFromResponders_currentResponder_indexOfCurrent___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = v5;
    if (*(a1 + 32) == v5 && *(a1 + 48))
    {
      v4 = [*(a1 + 40) count];
      v3 = v5;
      **(a1 + 48) = v4;
    }

    [*(a1 + 40) addObject:v3];
  }
}

+ (id)textSignalsForResponder:(id)responder
{
  responderCopy = responder;
  v5 = objc_opt_class();
  if (AFUIResponderIsExemptFromDetectionHints(v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      _viewControllerForAncestor = [responderCopy _viewControllerForAncestor];
      if (objc_opt_respondsToSelector())
      {
        v9 = [_viewControllerForAncestor performSelector:sel_textField];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          placeholder = [v9 placeholder];
          v11 = [MEMORY[0x1E696AAE8] _processLocalizedString:placeholder];
          [v7 addObjectsFromArray:v11];
        }
      }
    }

    v12 = MEMORY[0x1E696AAE8];
    accessibilityHint = [responderCopy accessibilityHint];
    v14 = [v12 _processLocalizedString:accessibilityHint];
    [v7 addObjectsFromArray:v14];

    v15 = MEMORY[0x1E696AAE8];
    accessibilityLabel = [responderCopy accessibilityLabel];
    v17 = [v15 _processLocalizedString:accessibilityLabel];
    [v7 addObjectsFromArray:v17];

    v18 = [self placeholderTextForResponder:responderCopy];
    if (v18)
    {
      v19 = [MEMORY[0x1E696AAE8] _processLocalizedString:v18];
      [v7 addObjectsFromArray:v19];
    }

    v6 = [v7 copy];
  }

  return v6;
}

+ (id)placeholderTextForResponder:(id)responder
{
  responderCopy = responder;
  if (objc_opt_respondsToSelector())
  {
    v4 = [responderCopy performSelector:sel_placeholder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
LABEL_5:

  return v4;
}

+ (void)addTemporaryTextColorToTextField:(id)field
{
  v11[2] = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  textLayoutController = [fieldCopy textLayoutController];
  documentRange = [textLayoutController documentRange];
  v10[0] = *MEMORY[0x1E69DB650];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v11[0] = blackColor;
  v10[1] = *MEMORY[0x1E69DB600];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v11[1] = clearColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [textLayoutController addRenderingAttributes:v8 forRange:documentRange];

  [fieldCopy setNeedsDisplay];
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)removeTemporaryTextColorFromTextField:(id)field
{
  v9[2] = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  textLayoutController = [fieldCopy textLayoutController];
  documentRange = [textLayoutController documentRange];
  v6 = *MEMORY[0x1E69DB600];
  v9[0] = *MEMORY[0x1E69DB650];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [textLayoutController removeRenderingAttributes:v7 forRange:documentRange];

  [fieldCopy setNeedsDisplay];
  v8 = *MEMORY[0x1E69E9840];
}

+ (id)textFromResponder:(id)responder
{
  responderCopy = responder;
  if (objc_opt_respondsToSelector())
  {
    text = [responderCopy text];
  }

  else
  {
    text = 0;
  }

  return text;
}

+ (void)setText:(id)text forResponder:(id)responder
{
  textCopy = text;
  responderCopy = responder;
  if (objc_opt_respondsToSelector())
  {
    [responderCopy setText:textCopy];
  }
}

+ (CGRect)areaForASPFromTextField:(id)field
{
  fieldCopy = field;
  [fieldCopy frame];
  rightView = [fieldCopy rightView];
  [rightView bounds];
  leftView = [fieldCopy leftView];

  [leftView bounds];
  UIRectInset();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (void)configureField:(id)field withASPForegroundView:(id)view withASPBackgroundView:(id)backgroundView
{
  backgroundViewCopy = backgroundView;
  viewCopy = view;
  fieldCopy = field;
  if (dyld_program_sdk_at_least())
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  if (viewCopy)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [fieldCopy _setContentCoverViewMode:v10];
  [fieldCopy _setContentCoverView:viewCopy];

  if (backgroundViewCopy)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [fieldCopy _setBackgroundCoverViewMode:v11];
  [fieldCopy _setBackgroundCoverView:backgroundViewCopy];
}

+ (void)enumerateSignUpSignalsFromButton:(id)button block:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  blockCopy = block;
  v34 = 0;
  text = [buttonCopy titleForState:{objc_msgSend(buttonCopy, "state")}];
  if (!text)
  {
    titleLabel = [buttonCopy titleLabel];
    text = [titleLabel text];
  }

  blockCopy[2](blockCopy, text, &v34);
  if ((v34 & 1) == 0)
  {
    v23 = text;
    [buttonCopy allTargets];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [buttonCopy actionsForTarget:*(*(&v30 + 1) + 8 * v12) forControlEvent:64];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
LABEL_11:
          v18 = 0;
          while (1)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            blockCopy[2](blockCopy, *(*(&v26 + 1) + 8 * v18), &v34);
            if (v34)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
              if (v16)
              {
                goto LABEL_11;
              }

              break;
            }
          }
        }

        v19 = v34;
        if (v19)
        {
          break;
        }

        if (++v12 == v10)
        {
          v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    text = v23;
    if ((v34 & 1) == 0 && [v23 length])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v25 = 0;
      [mainBundle _searchForLocalizedString:v23 foundKey:&v25 foundTable:0];
      v21 = v25;

      if (v21)
      {
        blockCopy[2](blockCopy, v21, &v34);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateSignUpSignalsFromViewControllerForResponder:(id)responder block:(id)block viewControllerOut:(id *)out
{
  responderCopy = responder;
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [responderCopy isFirstResponder] && (objc_opt_respondsToSelector())
  {
    _viewControllerForAncestor = [responderCopy _viewControllerForAncestor];
    [self enumerateSignUpSignalsFromViewController:_viewControllerForAncestor block:blockCopy];
    v10 = _viewControllerForAncestor;
    *out = _viewControllerForAncestor;
  }
}

+ (void)enumerateSignUpSignalsFromViewController:(id)controller block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  blockCopy = block;
  v24 = 0;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  blockCopy[2](blockCopy, v9, &v24);

  if ((v24 & 1) == 0)
  {
    [controllerCopy childViewControllers];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v23 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if (([v15 isBeingPresented] & 1) != 0 || (objc_msgSend(v15, "isMovingToParentViewController") & 1) != 0 || objc_msgSend(v15, "_appearState") == 1 || objc_msgSend(v15, "_appearState") == 2)
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            blockCopy[2](blockCopy, v17, &v24);

            if (v24)
            {
              goto LABEL_16;
            }
          }

          else
          {
            [self enumerateSignUpSignalsFromViewController:v15 block:blockCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v18 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        v12 = v18;
      }

      while (v18);
    }

LABEL_16:
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateSignUpSignalsFromNavBarItem:(id)item block:(id)block
{
  itemCopy = item;
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0;
    navigationBar = [itemCopy navigationBar];
    topItem = [navigationBar topItem];
    rightBarButtonItem = [topItem rightBarButtonItem];

    customView = [rightBarButtonItem customView];
    if (customView)
    {
      v11 = customView;
      customView2 = [rightBarButtonItem customView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        customView3 = [rightBarButtonItem customView];
        title = [customView3 titleForState:0];

        if (title)
        {
          goto LABEL_18;
        }
      }
    }

    title = [rightBarButtonItem title];

    if (title)
    {
      title = [rightBarButtonItem title];
      if (title)
      {
LABEL_18:
        if (([itemCopy isNavigationBarHidden] & 1) != 0 || !objc_msgSend(title, "length") || (blockCopy[2](blockCopy, title, &v19), (v19 & 1) == 0))
        {
          if ([title length])
          {
            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            v18 = 0;
            [mainBundle _searchForLocalizedString:title foundKey:&v18 foundTable:0];
            v17 = v18;

            if (v17)
            {
              blockCopy[2](blockCopy, v17, &v19);
            }
          }
        }
      }
    }
  }
}

+ (void)enumerateSignupSignalsFromAccessibility:(id)accessibility block:(id)block
{
  accessibilityCopy = accessibility;
  blockCopy = block;
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = accessibilityCopy;
  }

  else
  {
    v7 = 0;
  }

  accessibilityHint = [v7 accessibilityHint];
  blockCopy[2](blockCopy, accessibilityHint, &v11);

  if ((v11 & 1) == 0)
  {
    accessibilityLabel = [v7 accessibilityLabel];
    blockCopy[2](blockCopy, accessibilityLabel, &v11);

    if ((v11 & 1) == 0)
    {
      accessibilityIdentifier = [v7 accessibilityIdentifier];
      blockCopy[2](blockCopy, accessibilityIdentifier, &v11);
    }
  }
}

@end
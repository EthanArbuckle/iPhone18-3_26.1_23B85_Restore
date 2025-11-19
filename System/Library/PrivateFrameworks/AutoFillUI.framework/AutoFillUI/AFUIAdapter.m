@interface AFUIAdapter
+ (BOOL)responderAcceptsText:(id)a3;
+ (CGRect)areaForASPFromTextField:(id)a3;
+ (id)firstResponderForInput;
+ (id)gatherRespondersFromResponder:(id)a3;
+ (id)placeholderTextForResponder:(id)a3;
+ (id)presentedRootViewControllerForResponder:(id)a3;
+ (id)textFromResponder:(id)a3;
+ (id)textInputRespondersFromResponders:(id)a3 currentResponder:(id)a4 indexOfCurrent:(unint64_t *)a5;
+ (id)textSignalsForResponder:(id)a3;
+ (void)addTemporaryTextColorToTextField:(id)a3;
+ (void)configureField:(id)a3 withASPForegroundView:(id)a4 withASPBackgroundView:(id)a5;
+ (void)enumerateSignUpSignalsFromButton:(id)a3 block:(id)a4;
+ (void)enumerateSignUpSignalsFromNavBarItem:(id)a3 block:(id)a4;
+ (void)enumerateSignUpSignalsFromViewController:(id)a3 block:(id)a4;
+ (void)enumerateSignUpSignalsFromViewControllerForResponder:(id)a3 block:(id)a4 viewControllerOut:(id *)a5;
+ (void)enumerateSignupSignalsFromAccessibility:(id)a3 block:(id)a4;
+ (void)removeTemporaryTextColorFromTextField:(id)a3;
+ (void)setText:(id)a3 forResponder:(id)a4;
@end

@implementation AFUIAdapter

+ (id)firstResponderForInput
{
  v2 = [MEMORY[0x1E69DCBE0] activeInstance];
  v3 = [v2 delegateAsResponder];

  return v3;
}

+ (BOOL)responderAcceptsText:(id)a3
{
  v3 = a3;
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

+ (id)presentedRootViewControllerForResponder:(id)a3
{
  v3 = [a3 _responderWindow];
  v4 = [v3 rootViewController];
  v5 = [v4 presentedViewController];

  return v5;
}

+ (id)gatherRespondersFromResponder:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 _gatherKeyResponders:v4 indexOfSelf:0 visibilityTest:&__block_literal_global_8 passingTest:&__block_literal_global_11 subviewsTest:&__block_literal_global_283];
  if ([v4 count] >= 3)
  {
    v46 = v3;
    [MEMORY[0x1E695DF70] array];
    v48 = v47 = v4;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = v4;
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
              v20 = [v11 window];
              v21 = [v11 window];
              v22 = [v21 windowScene];
              v23 = [v22 coordinateSpace];
              [v20 convertRect:v23 toCoordinateSpace:{v13, v15, v17, v19}];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;

              v32 = [v11 window];
              v33 = [v32 windowScene];
              v34 = [v33 coordinateSpace];
              [v34 bounds];
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

    v3 = v46;
    v4 = v47;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v4;
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

+ (id)textInputRespondersFromResponders:(id)a3 currentResponder:(id)a4 indexOfCurrent:(unint64_t *)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v9 = a3;
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__AFUIAdapter_textInputRespondersFromResponders_currentResponder_indexOfCurrent___block_invoke;
  v16[3] = &unk_1E8424720;
  v17 = v7;
  v19 = a5;
  v11 = v10;
  v18 = v11;
  v12 = v7;
  [v9 enumerateObjectsUsingBlock:v16];

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

+ (id)textSignalsForResponder:(id)a3
{
  v4 = a3;
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
      v8 = [v4 _viewControllerForAncestor];
      if (objc_opt_respondsToSelector())
      {
        v9 = [v8 performSelector:sel_textField];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 placeholder];
          v11 = [MEMORY[0x1E696AAE8] _processLocalizedString:v10];
          [v7 addObjectsFromArray:v11];
        }
      }
    }

    v12 = MEMORY[0x1E696AAE8];
    v13 = [v4 accessibilityHint];
    v14 = [v12 _processLocalizedString:v13];
    [v7 addObjectsFromArray:v14];

    v15 = MEMORY[0x1E696AAE8];
    v16 = [v4 accessibilityLabel];
    v17 = [v15 _processLocalizedString:v16];
    [v7 addObjectsFromArray:v17];

    v18 = [a1 placeholderTextForResponder:v4];
    if (v18)
    {
      v19 = [MEMORY[0x1E696AAE8] _processLocalizedString:v18];
      [v7 addObjectsFromArray:v19];
    }

    v6 = [v7 copy];
  }

  return v6;
}

+ (id)placeholderTextForResponder:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 performSelector:sel_placeholder];
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

+ (void)addTemporaryTextColorToTextField:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 textLayoutController];
  v5 = [v4 documentRange];
  v10[0] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] blackColor];
  v11[0] = v6;
  v10[1] = *MEMORY[0x1E69DB600];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addRenderingAttributes:v8 forRange:v5];

  [v3 setNeedsDisplay];
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)removeTemporaryTextColorFromTextField:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 textLayoutController];
  v5 = [v4 documentRange];
  v6 = *MEMORY[0x1E69DB600];
  v9[0] = *MEMORY[0x1E69DB650];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v4 removeRenderingAttributes:v7 forRange:v5];

  [v3 setNeedsDisplay];
  v8 = *MEMORY[0x1E69E9840];
}

+ (id)textFromResponder:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 text];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setText:(id)a3 forResponder:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 setText:v6];
  }
}

+ (CGRect)areaForASPFromTextField:(id)a3
{
  v3 = a3;
  [v3 frame];
  v4 = [v3 rightView];
  [v4 bounds];
  v5 = [v3 leftView];

  [v5 bounds];
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

+ (void)configureField:(id)a3 withASPForegroundView:(id)a4 withASPBackgroundView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v12 = a3;
  if (dyld_program_sdk_at_least())
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [v12 _setContentCoverViewMode:v10];
  [v12 _setContentCoverView:v8];

  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [v12 _setBackgroundCoverViewMode:v11];
  [v12 _setBackgroundCoverView:v7];
}

+ (void)enumerateSignUpSignalsFromButton:(id)a3 block:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v34 = 0;
  v7 = [v5 titleForState:{objc_msgSend(v5, "state")}];
  if (!v7)
  {
    v8 = [v5 titleLabel];
    v7 = [v8 text];
  }

  v6[2](v6, v7, &v34);
  if ((v34 & 1) == 0)
  {
    v23 = v7;
    [v5 allTargets];
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

        v13 = [v5 actionsForTarget:*(*(&v30 + 1) + 8 * v12) forControlEvent:64];
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

            v6[2](v6, *(*(&v26 + 1) + 8 * v18), &v34);
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

    v7 = v23;
    if ((v34 & 1) == 0 && [v23 length])
    {
      v20 = [MEMORY[0x1E696AAE8] mainBundle];
      v25 = 0;
      [v20 _searchForLocalizedString:v23 foundKey:&v25 foundTable:0];
      v21 = v25;

      if (v21)
      {
        v6[2](v6, v21, &v34);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateSignUpSignalsFromViewControllerForResponder:(id)a3 block:(id)a4 viewControllerOut:(id *)a5
{
  v11 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v11 isFirstResponder] && (objc_opt_respondsToSelector())
  {
    v9 = [v11 _viewControllerForAncestor];
    [a1 enumerateSignUpSignalsFromViewController:v9 block:v8];
    v10 = v9;
    *a5 = v9;
  }
}

+ (void)enumerateSignUpSignalsFromViewController:(id)a3 block:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v7[2](v7, v9, &v24);

  if ((v24 & 1) == 0)
  {
    [v6 childViewControllers];
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
            v7[2](v7, v17, &v24);

            if (v24)
            {
              goto LABEL_16;
            }
          }

          else
          {
            [a1 enumerateSignUpSignalsFromViewController:v15 block:v7];
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

+ (void)enumerateSignUpSignalsFromNavBarItem:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0;
    v7 = [v5 navigationBar];
    v8 = [v7 topItem];
    v9 = [v8 rightBarButtonItem];

    v10 = [v9 customView];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 customView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [v9 customView];
        v15 = [v14 titleForState:0];

        if (v15)
        {
          goto LABEL_18;
        }
      }
    }

    v15 = [v9 title];

    if (v15)
    {
      v15 = [v9 title];
      if (v15)
      {
LABEL_18:
        if (([v5 isNavigationBarHidden] & 1) != 0 || !objc_msgSend(v15, "length") || (v6[2](v6, v15, &v19), (v19 & 1) == 0))
        {
          if ([v15 length])
          {
            v16 = [MEMORY[0x1E696AAE8] mainBundle];
            v18 = 0;
            [v16 _searchForLocalizedString:v15 foundKey:&v18 foundTable:0];
            v17 = v18;

            if (v17)
            {
              v6[2](v6, v17, &v19);
            }
          }
        }
      }
    }
  }
}

+ (void)enumerateSignupSignalsFromAccessibility:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 accessibilityHint];
  v6[2](v6, v8, &v11);

  if ((v11 & 1) == 0)
  {
    v9 = [v7 accessibilityLabel];
    v6[2](v6, v9, &v11);

    if ((v11 & 1) == 0)
    {
      v10 = [v7 accessibilityIdentifier];
      v6[2](v6, v10, &v11);
    }
  }
}

@end
@interface _AMUISwitcherVisibleItemRecord
+ (id)recordWithItem:(uint64_t)a3 index:(void *)a4 forSwitcher:;
- (_AMUISwitcherVisibleItemRecord)initWithItem:(id)a3 index:(int64_t)a4 forSwitcher:(id)a5;
- (double)presentationProgress;
- (id)item;
- (id)itemView;
- (id)switcher;
- (id)viewController;
- (int64_t)_computeEffectiveAppearState;
- (uint64_t)appearState;
- (uint64_t)isUnsettled;
- (uint64_t)itemIndex;
- (void)_updateAppearState;
- (void)sendCallbackForState:(id *)a1 animated:(uint64_t)a2;
- (void)setAppearState:(void *)a1;
- (void)setPresentationProgress:(uint64_t)a1;
- (void)setUnsettled:(void *)a1;
@end

@implementation _AMUISwitcherVisibleItemRecord

+ (id)recordWithItem:(uint64_t)a3 index:(void *)a4 forSwitcher:
{
  v6 = a4;
  v7 = a2;
  v8 = [objc_alloc(objc_opt_self()) initWithItem:v7 index:a3 forSwitcher:v6];

  return v8;
}

- (_AMUISwitcherVisibleItemRecord)initWithItem:(id)a3 index:(int64_t)a4 forSwitcher:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = _AMUISwitcherVisibleItemRecord;
  v10 = [(_AMUISwitcherVisibleItemRecord *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_item, v8);
    v12 = [v8 itemView];
    objc_storeWeak(&v11->_itemView, v12);

    v11->_itemIndex = a4;
    if (objc_opt_respondsToSelector())
    {
      v13 = [v8 itemViewController];
      objc_storeWeak(&v11->_viewController, v13);
    }

    objc_storeWeak(&v11->_switcher, v9);
    v11->_presentationProgress = 0.0;
    v11->_appearState = 0;
  }

  return v11;
}

- (int64_t)_computeEffectiveAppearState
{
  if (self->_unsettled && self->_nominalAppearState == 3)
  {
    return 2;
  }

  else
  {
    return self->_nominalAppearState;
  }
}

- (void)_updateAppearState
{
  *a2 = a1;
  if (a3 < 2)
  {
    if (a1 != 3)
    {
      goto LABEL_8;
    }

    v6 = 2;
    goto LABEL_7;
  }

  if (a3 - 2 < 2 && !a1)
  {
    v6 = 1;
LABEL_7:
    [_AMUISwitcherVisibleItemRecord sendCallbackForState:a4 animated:v6];
  }

LABEL_8:
  v7 = *a2;

  [_AMUISwitcherVisibleItemRecord sendCallbackForState:a4 animated:v7];
}

- (id)item
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)viewController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 8);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)itemView
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 7);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)setUnsettled:(void *)a1
{
  if (a1)
  {
    *(a1 + 16) = a2;
    return [a1 _updateAppearState];
  }

  return a1;
}

- (void)setPresentationProgress:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
  if (BSFloatIsZero())
  {
    v5 = 0;
  }

  else
  {
    if ((BSFloatIsOne() & 1) == 0)
    {
      switch(*(a1 + 32))
      {
        case 0:
          if (BSFloatGreaterThanFloat())
          {
            goto LABEL_18;
          }

          break;
        case 1:
          if (BSFloatGreaterThanFloat())
          {
LABEL_18:
            v5 = 2;
            goto LABEL_6;
          }

          break;
        case 2:
        case 3:
          if (BSFloatLessThanFloat())
          {
            v5 = 1;
            goto LABEL_6;
          }

          break;
        default:
          goto LABEL_7;
      }

      goto LABEL_7;
    }

    v5 = 3;
  }

LABEL_6:
  *(a1 + 8) = v5;
  [a1 _updateAppearState];
LABEL_7:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [OUTLINED_FUNCTION_1(v6 v7];
  }
}

- (uint64_t)appearState
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)sendCallbackForState:(id *)a1 animated:(uint64_t)a2
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = objc_loadWeakRetained(a1 + 5);
    v5 = objc_loadWeakRetained(a1 + 8);
    switch(a2)
    {
      case 0:
        v6 = objc_opt_respondsToSelector();
        if (v6)
        {
          [OUTLINED_FUNCTION_1(v6 v7];
        }

        if (v5)
        {
          goto LABEL_14;
        }

        break;
      case 1:
        v30 = objc_opt_respondsToSelector();
        if (v30)
        {
          [OUTLINED_FUNCTION_1(v30 v31];
        }

        if (v5)
        {
          goto LABEL_18;
        }

        break;
      case 2:
        v14 = objc_opt_respondsToSelector();
        if (v14)
        {
          [OUTLINED_FUNCTION_1(v14 v15];
        }

        if (v5)
        {
LABEL_18:
          [OUTLINED_FUNCTION_2() bs_beginAppearanceTransitionForChildViewController:? toVisible:? animated:?];
        }

        break;
      case 3:
        v22 = objc_opt_respondsToSelector();
        if (v22)
        {
          [OUTLINED_FUNCTION_1(v22 v23];
        }

        if (v5)
        {
LABEL_14:
          [OUTLINED_FUNCTION_2() bs_endAppearanceTransitionForChildViewController:? toVisible:?];
        }

        break;
      default:
        break;
    }
  }
}

- (double)presentationProgress
{
  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0.0;
  }
}

- (void)setAppearState:(void *)a1
{
  if (a1)
  {
    *(a1 + 1) = a2;
    return [a1 _updateAppearState];
  }

  return a1;
}

- (id)switcher
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 5);
    v1 = vars8;
  }

  return WeakRetained;
}

- (uint64_t)isUnsettled
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)itemIndex
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

@end
@interface _AMUISwitcherVisibleItemRecord
+ (id)recordWithItem:(uint64_t)item index:(void *)index forSwitcher:;
- (_AMUISwitcherVisibleItemRecord)initWithItem:(id)item index:(int64_t)index forSwitcher:(id)switcher;
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
- (void)sendCallbackForState:(id *)state animated:(uint64_t)animated;
- (void)setAppearState:(void *)state;
- (void)setPresentationProgress:(uint64_t)progress;
- (void)setUnsettled:(void *)unsettled;
@end

@implementation _AMUISwitcherVisibleItemRecord

+ (id)recordWithItem:(uint64_t)item index:(void *)index forSwitcher:
{
  indexCopy = index;
  v7 = a2;
  v8 = [objc_alloc(objc_opt_self()) initWithItem:v7 index:item forSwitcher:indexCopy];

  return v8;
}

- (_AMUISwitcherVisibleItemRecord)initWithItem:(id)item index:(int64_t)index forSwitcher:(id)switcher
{
  itemCopy = item;
  switcherCopy = switcher;
  v15.receiver = self;
  v15.super_class = _AMUISwitcherVisibleItemRecord;
  v10 = [(_AMUISwitcherVisibleItemRecord *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_item, itemCopy);
    itemView = [itemCopy itemView];
    objc_storeWeak(&v11->_itemView, itemView);

    v11->_itemIndex = index;
    if (objc_opt_respondsToSelector())
    {
      itemViewController = [itemCopy itemViewController];
      objc_storeWeak(&v11->_viewController, itemViewController);
    }

    objc_storeWeak(&v11->_switcher, switcherCopy);
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
  *a2 = self;
  if (a3 < 2)
  {
    if (self != 3)
    {
      goto LABEL_8;
    }

    v6 = 2;
    goto LABEL_7;
  }

  if (a3 - 2 < 2 && !self)
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

- (void)setUnsettled:(void *)unsettled
{
  if (unsettled)
  {
    *(unsettled + 16) = a2;
    return [unsettled _updateAppearState];
  }

  return unsettled;
}

- (void)setPresentationProgress:(uint64_t)progress
{
  if (!progress)
  {
    return;
  }

  v4 = *(progress + 24);
  *(progress + 24) = a2;
  if (BSFloatIsZero())
  {
    v5 = 0;
  }

  else
  {
    if ((BSFloatIsOne() & 1) == 0)
    {
      switch(*(progress + 32))
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
  *(progress + 8) = v5;
  [progress _updateAppearState];
LABEL_7:
  WeakRetained = objc_loadWeakRetained((progress + 48));
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained((progress + 40));
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

- (void)sendCallbackForState:(id *)state animated:(uint64_t)animated
{
  if (state)
  {
    WeakRetained = objc_loadWeakRetained(state + 6);
    v4 = objc_loadWeakRetained(state + 5);
    v5 = objc_loadWeakRetained(state + 8);
    switch(animated)
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
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

- (void)setAppearState:(void *)state
{
  if (state)
  {
    *(state + 1) = a2;
    return [state _updateAppearState];
  }

  return state;
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
  if (self)
  {
    v1 = *(self + 16);
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
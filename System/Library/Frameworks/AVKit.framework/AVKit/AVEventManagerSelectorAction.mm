@interface AVEventManagerSelectorAction
- (AVEventManagerSelectorAction)initWithTarget:(id)target selector:(SEL)selector event:(id)event;
- (BOOL)hasMatchingTarget:(id)target withSelector:(SEL)selector forEvent:(id)event;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)sendAction:(id)action;
@end

@implementation AVEventManagerSelectorAction

- (unint64_t)hash
{
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v4 = NSStringFromSelector(selector);
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v6 = [WeakRetained hash];
  v7 = [v4 hash];
  v10.receiver = self;
  v10.super_class = AVEventManagerSelectorAction;
  v8 = v7 & [(AVEventManagerSelectorAction *)&v10 hash];

  return v8 & v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v12.receiver = self;
      v12.super_class = AVEventManagerSelectorAction;
      if ([(AVEventManagerAction *)&v12 isEqual:v5])
      {
        WeakRetained = objc_loadWeakRetained(&self->_target);
        v7 = objc_loadWeakRetained(&v5->_target);
        if (WeakRetained == v7)
        {
          if (self->_selector)
          {
            selector = self->_selector;
          }

          else
          {
            selector = 0;
          }

          if (v5->_selector)
          {
            v10 = v5->_selector;
          }

          else
          {
            v10 = 0;
          }

          isEqual = sel_isEqual(selector, v10);
        }

        else
        {
          isEqual = 0;
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (BOOL)hasMatchingTarget:(id)target withSelector:(SEL)selector forEvent:(id)event
{
  targetCopy = target;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained == targetCopy)
  {
    if (self->_selector)
    {
      selector = self->_selector;
    }

    else
    {
      selector = 0;
    }

    isEqual = sel_isEqual(selector, selector);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)sendAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = WeakRetained;
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = [WeakRetained methodForSelector:selector];
  parameterCount = self->_parameterCount;
  if (parameterCount == 1)
  {
    if (actionCopy && v5)
    {
      v7(v5, selector, actionCopy);
    }
  }

  else
  {
    if (parameterCount)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5 == 0;
    }

    if (!v9)
    {
      (v7)(v5, selector);
    }
  }
}

- (AVEventManagerSelectorAction)initWithTarget:(id)target selector:(SEL)selector event:(id)event
{
  targetCopy = target;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = AVEventManagerSelectorAction;
  v10 = [(AVEventManagerAction *)&v16 initWithEvent:eventCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_target, targetCopy);
    p_selector = &v11->_selector;
    if (selector)
    {
      *p_selector = selector;
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
      *p_selector = 0;
    }

    v14 = [targetCopy methodSignatureForSelector:selectorCopy];
    v11->_parameterCount = [v14 numberOfArguments] - 2;
  }

  return v11;
}

@end
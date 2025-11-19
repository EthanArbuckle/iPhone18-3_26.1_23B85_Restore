@interface AVEventManagerSelectorAction
- (AVEventManagerSelectorAction)initWithTarget:(id)a3 selector:(SEL)a4 event:(id)a5;
- (BOOL)hasMatchingTarget:(id)a3 withSelector:(SEL)a4 forEvent:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)sendAction:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (BOOL)hasMatchingTarget:(id)a3 withSelector:(SEL)a4 forEvent:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained == v8)
  {
    if (self->_selector)
    {
      selector = self->_selector;
    }

    else
    {
      selector = 0;
    }

    isEqual = sel_isEqual(selector, a4);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)sendAction:(id)a3
{
  v10 = a3;
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
    if (v10 && v5)
    {
      v7(v5, selector, v10);
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

- (AVEventManagerSelectorAction)initWithTarget:(id)a3 selector:(SEL)a4 event:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = AVEventManagerSelectorAction;
  v10 = [(AVEventManagerAction *)&v16 initWithEvent:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_target, v8);
    p_selector = &v11->_selector;
    if (a4)
    {
      *p_selector = a4;
      v13 = a4;
    }

    else
    {
      v13 = 0;
      *p_selector = 0;
    }

    v14 = [v8 methodSignatureForSelector:v13];
    v11->_parameterCount = [v14 numberOfArguments] - 2;
  }

  return v11;
}

@end
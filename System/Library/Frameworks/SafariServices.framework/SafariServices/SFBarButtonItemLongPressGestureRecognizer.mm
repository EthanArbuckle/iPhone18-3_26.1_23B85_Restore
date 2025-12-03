@interface SFBarButtonItemLongPressGestureRecognizer
+ (id)gestureRecognizerTarget:(id)target longPressAction:(SEL)action touchDownAction:(SEL)downAction attachedToBarButtonItem:(id)item;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_invokeLongPressAction;
- (void)_updateMinimumPressDurationForContentSizeCategory:(id)category;
- (void)longPress:(id)press;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SFBarButtonItemLongPressGestureRecognizer

+ (id)gestureRecognizerTarget:(id)target longPressAction:(SEL)action touchDownAction:(SEL)downAction attachedToBarButtonItem:(id)item
{
  itemCopy = item;
  targetCopy = target;
  v12 = objc_alloc_init(self);
  [v12 addTarget:v12 action:sel_longPress_];
  [MEMORY[0x1E69DC708] _sf_longPressAllowableMovement];
  [v12 setAllowableMovement:?];
  [v12 setDelegate:v12];
  objc_storeWeak(v12 + 63, itemCopy);

  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  v12[65] = actionCopy;
  objc_storeWeak(v12 + 64, targetCopy);

  if (downAction)
  {
    downActionCopy = downAction;
  }

  else
  {
    downActionCopy = 0;
  }

  v12[66] = downActionCopy;
  [v12 setButtonMaskRequired:3];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  [v12 _updateMinimumPressDurationForContentSizeCategory:preferredContentSizeCategory];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v12;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SFBarButtonItemLongPressGestureRecognizer;
  [(SFBarButtonItemLongPressGestureRecognizer *)&v14 touchesBegan:beganCopy withEvent:eventCopy];
  if (![(SFBarButtonItemLongPressGestureRecognizer *)self state])
  {
    v8 = eventCopy;
    if (([v8 _keyModifierFlags] & 0x40000) != 0)
    {
    }

    else
    {
      buttonMask = [v8 buttonMask];

      if ((buttonMask & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    [(SFBarButtonItemLongPressGestureRecognizer *)self setState:1];
  }

LABEL_7:
  if (![(SFBarButtonItemLongPressGestureRecognizer *)self state]&& self->_touchDownAction)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if (self->_touchDownAction)
    {
      touchDownAction = self->_touchDownAction;
    }

    else
    {
      touchDownAction = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_target);
    v13 = objc_loadWeakRetained(&self->_barButtonItem);
    [mEMORY[0x1E69DC668] sendAction:touchDownAction to:WeakRetained from:v13 forEvent:0];
  }
}

- (void)longPress:(id)press
{
  if ([(SFBarButtonItemLongPressGestureRecognizer *)self state]== 1)
  {

    [(SFBarButtonItemLongPressGestureRecognizer *)self _invokeLongPressAction];
  }
}

- (void)_invokeLongPressAction
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (self->_longPressAction)
  {
    longPressAction = self->_longPressAction;
  }

  else
  {
    longPressAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = objc_loadWeakRetained(&self->_barButtonItem);
  [mEMORY[0x1E69DC668] sendAction:longPressAction to:WeakRetained from:v5 forEvent:0];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDC80]];

  [(SFBarButtonItemLongPressGestureRecognizer *)self _updateMinimumPressDurationForContentSizeCategory:v5];
}

- (void)_updateMinimumPressDurationForContentSizeCategory:(id)category
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  v5 = 0.5;
  if (IsAccessibilityCategory)
  {
    v5 = 1.0;
  }

  [(SFBarButtonItemLongPressGestureRecognizer *)self setMinimumPressDuration:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_longPressAction)
    {
      longPressAction = self->_longPressAction;
    }

    else
    {
      longPressAction = 0;
    }

    v8 = objc_loadWeakRetained(&self->_barButtonItem);
    v7 = [WeakRetained canPerformAction:longPressAction withSender:v8];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end
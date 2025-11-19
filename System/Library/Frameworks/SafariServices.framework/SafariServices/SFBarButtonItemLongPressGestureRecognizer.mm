@interface SFBarButtonItemLongPressGestureRecognizer
+ (id)gestureRecognizerTarget:(id)a3 longPressAction:(SEL)a4 touchDownAction:(SEL)a5 attachedToBarButtonItem:(id)a6;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_invokeLongPressAction;
- (void)_updateMinimumPressDurationForContentSizeCategory:(id)a3;
- (void)longPress:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SFBarButtonItemLongPressGestureRecognizer

+ (id)gestureRecognizerTarget:(id)a3 longPressAction:(SEL)a4 touchDownAction:(SEL)a5 attachedToBarButtonItem:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = objc_alloc_init(a1);
  [v12 addTarget:v12 action:sel_longPress_];
  [MEMORY[0x1E69DC708] _sf_longPressAllowableMovement];
  [v12 setAllowableMovement:?];
  [v12 setDelegate:v12];
  objc_storeWeak(v12 + 63, v10);

  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  v12[65] = v13;
  objc_storeWeak(v12 + 64, v11);

  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

  v12[66] = v14;
  [v12 setButtonMaskRequired:3];
  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = [v15 preferredContentSizeCategory];

  [v12 _updateMinimumPressDurationForContentSizeCategory:v16];
  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 addObserver:v12 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v12;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SFBarButtonItemLongPressGestureRecognizer;
  [(SFBarButtonItemLongPressGestureRecognizer *)&v14 touchesBegan:v6 withEvent:v7];
  if (![(SFBarButtonItemLongPressGestureRecognizer *)self state])
  {
    v8 = v7;
    if (([v8 _keyModifierFlags] & 0x40000) != 0)
    {
    }

    else
    {
      v9 = [v8 buttonMask];

      if ((v9 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    [(SFBarButtonItemLongPressGestureRecognizer *)self setState:1];
  }

LABEL_7:
  if (![(SFBarButtonItemLongPressGestureRecognizer *)self state]&& self->_touchDownAction)
  {
    v10 = [MEMORY[0x1E69DC668] sharedApplication];
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
    [v10 sendAction:touchDownAction to:WeakRetained from:v13 forEvent:0];
  }
}

- (void)longPress:(id)a3
{
  if ([(SFBarButtonItemLongPressGestureRecognizer *)self state]== 1)
  {

    [(SFBarButtonItemLongPressGestureRecognizer *)self _invokeLongPressAction];
  }
}

- (void)_invokeLongPressAction
{
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
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
  [v6 sendAction:longPressAction to:WeakRetained from:v5 forEvent:0];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDC80]];

  [(SFBarButtonItemLongPressGestureRecognizer *)self _updateMinimumPressDurationForContentSizeCategory:v5];
}

- (void)_updateMinimumPressDurationForContentSizeCategory:(id)a3
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(a3);
  v5 = 0.5;
  if (IsAccessibilityCategory)
  {
    v5 = 1.0;
  }

  [(SFBarButtonItemLongPressGestureRecognizer *)self setMinimumPressDuration:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
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
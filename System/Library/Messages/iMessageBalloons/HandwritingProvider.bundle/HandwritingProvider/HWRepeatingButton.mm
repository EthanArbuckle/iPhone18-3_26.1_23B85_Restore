@interface HWRepeatingButton
- (HWRepeatingButton)initWithCoder:(id)coder;
- (HWRepeatingButton)initWithFrame:(CGRect)frame;
- (SEL)repeatingAction;
- (void)_commonInit;
- (void)_sendRepeatEvent:(id)event;
- (void)_touchDown:(id)down;
- (void)setRepeatingAction:(SEL)action;
@end

@implementation HWRepeatingButton

- (HWRepeatingButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HWRepeatingButton;
  v3 = [(HWRepeatingButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HWRepeatingButton *)v3 _commonInit];
  }

  return v4;
}

- (HWRepeatingButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HWRepeatingButton;
  v3 = [(HWRepeatingButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HWRepeatingButton *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(HWRepeatingButton *)self setRepeatCount:0];
  [(HWRepeatingButton *)self addTarget:self action:"_touchDown:" forControlEvents:1];

  [(HWRepeatingButton *)self addTarget:self action:"_touchUp:" forControlEvents:192];
}

- (void)_touchDown:(id)down
{
  [(HWRepeatingButton *)self setRepeatCount:0];

  [(HWRepeatingButton *)self performSelector:"_sendRepeatEvent:" withObject:self afterDelay:0.5];
}

- (void)_sendRepeatEvent:(id)event
{
  if ([(HWRepeatingButton *)self repeatingAction]&& [(HWRepeatingButton *)self isEnabled]&& [(HWRepeatingButton *)self isTracking])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allTargets = [(HWRepeatingButton *)self allTargets];
    v5 = [allTargets countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allTargets);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          [(HWRepeatingButton *)self repeatingAction];
          if (objc_opt_respondsToSelector())
          {
            [(HWRepeatingButton *)self sendAction:[(HWRepeatingButton *)self repeatingAction] to:v9 forEvent:0];
            if ([(HWRepeatingButton *)self repeatCount]>= 0x15)
            {
              [(HWRepeatingButton *)self sendAction:[(HWRepeatingButton *)self repeatingAction] to:v9 forEvent:0];
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allTargets countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(HWRepeatingButton *)self performSelector:"_sendRepeatEvent:" withObject:self afterDelay:0.1];
    [(HWRepeatingButton *)self setRepeatCount:[(HWRepeatingButton *)self repeatCount]+ 1];
  }
}

- (SEL)repeatingAction
{
  if (self->_repeatingAction)
  {
    return self->_repeatingAction;
  }

  else
  {
    return 0;
  }
}

- (void)setRepeatingAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_repeatingAction = actionCopy;
}

@end
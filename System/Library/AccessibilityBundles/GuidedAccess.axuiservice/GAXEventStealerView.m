@interface GAXEventStealerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (GAXEventStealerView)initWithCoder:(id)a3;
- (GAXEventStealerView)initWithFrame:(CGRect)a3;
- (GAXEventStealerViewDelegate)eventStealerViewDelegate;
@end

@implementation GAXEventStealerView

- (GAXEventStealerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GAXEventStealerView;
  v3 = [(GAXEventStealerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GAXEventStealerView *)v3 _commonInit];
  }

  return v4;
}

- (GAXEventStealerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GAXEventStealerView;
  v3 = [(GAXEventStealerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GAXEventStealerView *)v3 _commonInit];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(GAXEventStealerView *)self shouldStealAllEvents]|| (v11.receiver = self, v11.super_class = GAXEventStealerView, [(GAXEventStealerView *)&v11 pointInside:v7 withEvent:x, y]))
  {
    v8 = 1;
  }

  else
  {
    v9 = [(GAXEventStealerView *)self eventStealerViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v9 eventStealerView:self shouldStealEventAtPoint:{x, y}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (GAXEventStealerViewDelegate)eventStealerViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStealerViewDelegate);

  return WeakRetained;
}

@end
@interface GAXEventStealerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (GAXEventStealerView)initWithCoder:(id)coder;
- (GAXEventStealerView)initWithFrame:(CGRect)frame;
- (GAXEventStealerViewDelegate)eventStealerViewDelegate;
@end

@implementation GAXEventStealerView

- (GAXEventStealerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GAXEventStealerView;
  v3 = [(GAXEventStealerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GAXEventStealerView *)v3 _commonInit];
  }

  return v4;
}

- (GAXEventStealerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GAXEventStealerView;
  v3 = [(GAXEventStealerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GAXEventStealerView *)v3 _commonInit];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(GAXEventStealerView *)self shouldStealAllEvents]|| (v11.receiver = self, v11.super_class = GAXEventStealerView, [(GAXEventStealerView *)&v11 pointInside:eventCopy withEvent:x, y]))
  {
    v8 = 1;
  }

  else
  {
    eventStealerViewDelegate = [(GAXEventStealerView *)self eventStealerViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [eventStealerViewDelegate eventStealerView:self shouldStealEventAtPoint:{x, y}];
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
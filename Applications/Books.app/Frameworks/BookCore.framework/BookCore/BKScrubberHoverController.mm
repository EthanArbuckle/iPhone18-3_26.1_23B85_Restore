@interface BKScrubberHoverController
- (BKScrubberControl)scrubber;
- (BKScrubberHoverController)initWithScrubber:(id)scrubber;
- (int64_t)gestureHoverState;
- (void)onHover:(id)hover;
@end

@implementation BKScrubberHoverController

- (BKScrubberHoverController)initWithScrubber:(id)scrubber
{
  scrubberCopy = scrubber;
  v10.receiver = self;
  v10.super_class = BKScrubberHoverController;
  v5 = [(BKScrubberHoverController *)&v10 init];
  if (v5)
  {
    v6 = [[UIHoverGestureRecognizer alloc] initWithTarget:v5 action:"onHover:"];
    gesture = v5->_gesture;
    v5->_gesture = v6;

    window = [scrubberCopy window];
    [window addGestureRecognizer:v5->_gesture];

    objc_storeWeak(&v5->_scrubber, scrubberCopy);
  }

  return v5;
}

- (void)onHover:(id)hover
{
  hoverCopy = hover;
  gesture = [(BKScrubberHoverController *)self gesture];

  if (gesture == hoverCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrubber);
    [WeakRetained updateHoverState];
  }
}

- (int64_t)gestureHoverState
{
  gesture = [(BKScrubberHoverController *)self gesture];
  if ([gesture state] - 1 > &dword_0 + 1)
  {
    v7 = 0;
  }

  else
  {
    view = [gesture view];
    if (view && ([gesture locationInView:view], v6 = v5, objc_msgSend(view, "bounds"), v6 >= CGRectGetMaxY(v23) + -100.0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_scrubber);
      [WeakRetained bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = objc_loadWeakRetained(&self->_scrubber);
      [gesture locationInView:v17];
      v22.x = v18;
      v22.y = v19;
      v24.origin.x = v10;
      v24.origin.y = v12;
      v24.size.width = v14;
      v24.size.height = v16;
      v20 = CGRectContainsPoint(v24, v22);

      if (v20)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BKScrubberControl)scrubber
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubber);

  return WeakRetained;
}

@end
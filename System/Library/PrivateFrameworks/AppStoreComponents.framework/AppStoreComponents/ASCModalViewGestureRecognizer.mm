@interface ASCModalViewGestureRecognizer
- (ASCModalViewGestureRecognizer)initWithCoder:(id)coder;
- (ASCModalViewGestureRecognizer)initWithTargetView:(id)view target:(id)target action:(SEL)action;
- (BOOL)isAnyTouch:(id)touch fromEvent:(id)event outsideView:(id)view;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ASCModalViewGestureRecognizer

- (ASCModalViewGestureRecognizer)initWithTargetView:(id)view target:(id)target action:(SEL)action
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = ASCModalViewGestureRecognizer;
  v10 = [(ASCModalViewGestureRecognizer *)&v15 initWithTarget:target action:action];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_targetView, view);
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeTouches = v11->_activeTouches;
    v11->_activeTouches = v12;
  }

  return v11;
}

- (ASCModalViewGestureRecognizer)initWithCoder:(id)coder
{
  [(ASCModalViewGestureRecognizer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = ASCModalViewGestureRecognizer;
  [(ASCModalViewGestureRecognizer *)&v4 reset];
  activeTouches = [(ASCModalViewGestureRecognizer *)self activeTouches];
  [activeTouches removeAllObjects];
}

- (BOOL)isAnyTouch:(id)touch fromEvent:(id)event outsideView:(id)view
{
  v20 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  eventCopy = event;
  viewCopy = view;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = touchCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) locationInView:{viewCopy, v15}];
        if (![viewCopy pointInside:eventCopy withEvent:?])
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  beganCopy = began;
  eventCopy = event;
  activeTouches = [(ASCModalViewGestureRecognizer *)self activeTouches];
  v9 = [activeTouches count];

  if (v9)
  {
    goto LABEL_4;
  }

  targetView = [(ASCModalViewGestureRecognizer *)self targetView];
  v11 = [(ASCModalViewGestureRecognizer *)self isAnyTouch:beganCopy fromEvent:eventCopy outsideView:targetView];

  if (v11)
  {
    [(ASCModalViewGestureRecognizer *)self setState:1];
LABEL_4:
    activeTouches2 = [(ASCModalViewGestureRecognizer *)self activeTouches];
    [activeTouches2 unionSet:beganCopy];

    goto LABEL_5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = beganCopy;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(ASCModalViewGestureRecognizer *)self ignoreTouch:*(*(&v18 + 1) + 8 * v17++) forEvent:eventCopy, v18];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

LABEL_5:
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  activeTouches = [(ASCModalViewGestureRecognizer *)self activeTouches];
  [activeTouches minusSet:endedCopy];

  activeTouches2 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  v8 = [activeTouches2 count];

  if (!v8)
  {

    [(ASCModalViewGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  activeTouches = [(ASCModalViewGestureRecognizer *)self activeTouches];
  [activeTouches minusSet:cancelledCopy];

  activeTouches2 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  v8 = [activeTouches2 count];

  if (!v8)
  {

    [(ASCModalViewGestureRecognizer *)self setState:5];
  }
}

@end
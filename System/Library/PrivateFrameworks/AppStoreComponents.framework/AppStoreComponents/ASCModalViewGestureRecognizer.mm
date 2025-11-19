@interface ASCModalViewGestureRecognizer
- (ASCModalViewGestureRecognizer)initWithCoder:(id)a3;
- (ASCModalViewGestureRecognizer)initWithTargetView:(id)a3 target:(id)a4 action:(SEL)a5;
- (BOOL)isAnyTouch:(id)a3 fromEvent:(id)a4 outsideView:(id)a5;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation ASCModalViewGestureRecognizer

- (ASCModalViewGestureRecognizer)initWithTargetView:(id)a3 target:(id)a4 action:(SEL)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = ASCModalViewGestureRecognizer;
  v10 = [(ASCModalViewGestureRecognizer *)&v15 initWithTarget:a4 action:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_targetView, a3);
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeTouches = v11->_activeTouches;
    v11->_activeTouches = v12;
  }

  return v11;
}

- (ASCModalViewGestureRecognizer)initWithCoder:(id)a3
{
  [(ASCModalViewGestureRecognizer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = ASCModalViewGestureRecognizer;
  [(ASCModalViewGestureRecognizer *)&v4 reset];
  v3 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  [v3 removeAllObjects];
}

- (BOOL)isAnyTouch:(id)a3 fromEvent:(id)a4 outsideView:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v7;
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

        [*(*(&v15 + 1) + 8 * i) locationInView:{v9, v15}];
        if (![v9 pointInside:v8 withEvent:?])
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  v9 = [v8 count];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [(ASCModalViewGestureRecognizer *)self targetView];
  v11 = [(ASCModalViewGestureRecognizer *)self isAnyTouch:v6 fromEvent:v7 outsideView:v10];

  if (v11)
  {
    [(ASCModalViewGestureRecognizer *)self setState:1];
LABEL_4:
    v12 = [(ASCModalViewGestureRecognizer *)self activeTouches];
    [v12 unionSet:v6];

    goto LABEL_5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v6;
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

        [(ASCModalViewGestureRecognizer *)self ignoreTouch:*(*(&v18 + 1) + 8 * v17++) forEvent:v7, v18];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

LABEL_5:
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  [v6 minusSet:v5];

  v7 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  v8 = [v7 count];

  if (!v8)
  {

    [(ASCModalViewGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  [v6 minusSet:v5];

  v7 = [(ASCModalViewGestureRecognizer *)self activeTouches];
  v8 = [v7 count];

  if (!v8)
  {

    [(ASCModalViewGestureRecognizer *)self setState:5];
  }
}

@end
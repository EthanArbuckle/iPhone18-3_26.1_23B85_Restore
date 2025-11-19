@interface PKObserverGestureRecognizer
- (PKObserverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PKObserverGestureRecognizer

- (PKObserverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = PKObserverGestureRecognizer;
  v4 = [(PKObserverGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(PKObserverGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(PKObserverGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(PKObserverGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v10 touchesBegan:v6 withEvent:v7];
  v8 = [(PKObserverGestureRecognizer *)self eventHandler];

  if (v8)
  {
    v9 = [(PKObserverGestureRecognizer *)self eventHandler];
    (v9)[2](v9, v6, v7);
  }

  [(PKObserverGestureRecognizer *)self setState:0];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(PKObserverGestureRecognizer *)self setState:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(PKObserverGestureRecognizer *)self setState:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKObserverGestureRecognizer;
  [(PKObserverGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(PKObserverGestureRecognizer *)self setState:0];
}

@end
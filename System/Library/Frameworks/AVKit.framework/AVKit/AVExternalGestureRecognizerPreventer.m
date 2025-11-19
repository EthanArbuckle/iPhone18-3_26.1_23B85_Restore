@interface AVExternalGestureRecognizerPreventer
- (AVExternalGestureRecognizerPreventer)initWithTarget:(id)a3 action:(SEL)a4;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
@end

@implementation AVExternalGestureRecognizerPreventer

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  v4 = [a3 view];
  v5 = [(AVExternalGestureRecognizerPreventer *)self view];
  v6 = [v4 isDescendantOfView:v5];

  if (v6)
  {
    return 0;
  }

  v8 = [(AVExternalGestureRecognizerPreventer *)self view];
  [(AVExternalGestureRecognizerPreventer *)self locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(AVExternalGestureRecognizerPreventer *)self view];
  v14 = [v13 hitTest:0 withEvent:{v10, v12}];

  if ([v14 conformsToProtocol:&unk_1EFF32C08])
  {
    v15 = [(AVExternalGestureRecognizerPreventer *)self view];
    [v15 convertPoint:v14 toView:{v10, v12}];
    v7 = [v14 avkit_shouldPreventExternalGestureRecognizerAtPoint:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVExternalGestureRecognizerPreventer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = AVExternalGestureRecognizerPreventer;
  v4 = [(AVExternalGestureRecognizerPreventer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(AVExternalGestureRecognizerPreventer *)v4 setCancelsTouchesInView:0];
  }

  return v5;
}

@end
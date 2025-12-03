@interface AVExternalGestureRecognizerPreventer
- (AVExternalGestureRecognizerPreventer)initWithTarget:(id)target action:(SEL)action;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
@end

@implementation AVExternalGestureRecognizerPreventer

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  view = [recognizer view];
  view2 = [(AVExternalGestureRecognizerPreventer *)self view];
  v6 = [view isDescendantOfView:view2];

  if (v6)
  {
    return 0;
  }

  view3 = [(AVExternalGestureRecognizerPreventer *)self view];
  [(AVExternalGestureRecognizerPreventer *)self locationInView:view3];
  v10 = v9;
  v12 = v11;

  view4 = [(AVExternalGestureRecognizerPreventer *)self view];
  v14 = [view4 hitTest:0 withEvent:{v10, v12}];

  if ([v14 conformsToProtocol:&unk_1EFF32C08])
  {
    view5 = [(AVExternalGestureRecognizerPreventer *)self view];
    [view5 convertPoint:v14 toView:{v10, v12}];
    v7 = [v14 avkit_shouldPreventExternalGestureRecognizerAtPoint:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVExternalGestureRecognizerPreventer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = AVExternalGestureRecognizerPreventer;
  v4 = [(AVExternalGestureRecognizerPreventer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(AVExternalGestureRecognizerPreventer *)v4 setCancelsTouchesInView:0];
  }

  return v5;
}

@end
@interface WKSwipeTransitionController
- (BOOL)isNavigationSwipeGestureRecognizer:(id)recognizer;
- (BOOL)shouldBeginInteractiveTransition:(id)transition;
- (WKSwipeTransitionController)initWithViewGestureController:(void *)controller gestureRecognizerView:(id)view;
- (id).cxx_construct;
- (id)gestureRecognizerForInteractiveTransition:(id)transition WithTarget:(id)target action:(SEL)action;
- (id)transitionForDirection:(BOOL)direction;
- (void)startInteractiveTransition:(id)transition;
@end

@implementation WKSwipeTransitionController

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (WKSwipeTransitionController)initWithViewGestureController:(void *)controller gestureRecognizerView:(id)view
{
  v21.receiver = self;
  v21.super_class = WKSwipeTransitionController;
  v6 = [(WKSwipeTransitionController *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_gestureController = controller;
    objc_storeWeak(&v6->_gestureRecognizerView.m_weakReference, view);
    v8 = objc_alloc(MEMORY[0x1E69DD5F0]);
    m_ptr = v7->_backTransitionController.m_ptr;
    v7->_backTransitionController.m_ptr = v8;
    if (m_ptr)
    {

      v8 = v7->_backTransitionController.m_ptr;
    }

    v10 = [(_UINavigationInteractiveTransitionBase *)v8 initWithGestureRecognizerView:view animator:0 delegate:v7];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v7->_backTransitionController.m_ptr;
    v7->_backTransitionController.m_ptr = v11;
    if (v13)
    {
    }

    v14 = objc_alloc(MEMORY[0x1E69DD5F0]);
    v15 = v7->_forwardTransitionController.m_ptr;
    v7->_forwardTransitionController.m_ptr = v14;
    if (v15)
    {

      v14 = v7->_forwardTransitionController.m_ptr;
    }

    v16 = [(_UINavigationInteractiveTransitionBase *)v14 initWithGestureRecognizerView:view animator:0 delegate:v7];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    v19 = v7->_forwardTransitionController.m_ptr;
    v7->_forwardTransitionController.m_ptr = v17;
    if (v19)
    {

      v17 = v7->_forwardTransitionController.m_ptr;
    }

    [(_UINavigationInteractiveTransitionBase *)v17 setShouldReverseTranslation:1];
    [-[_UINavigationInteractiveTransitionBase contentSwipeGestureRecognizer](v7->_backTransitionController.m_ptr "contentSwipeGestureRecognizer")];
    [-[_UINavigationInteractiveTransitionBase contentSwipeGestureRecognizer](v7->_forwardTransitionController.m_ptr "contentSwipeGestureRecognizer")];
  }

  return v7;
}

- (id)transitionForDirection:(BOOL)direction
{
  v3 = 16;
  if (direction)
  {
    v3 = 24;
  }

  return *(&self->super.isa + v3);
}

- (void)startInteractiveTransition:(id)transition
{
  gestureController = self->_gestureController;
  v5 = [(WKSwipeTransitionController *)self directionForTransition:?];

  WebKit::ViewGestureController::beginSwipeGesture(gestureController, transition, v5);
}

- (BOOL)shouldBeginInteractiveTransition:(id)transition
{
  if (*(self->_gestureController + 14) == 1)
  {
    return 0;
  }

  v7 = [objc_msgSend(transition "gestureRecognizer")] == 5;
  gestureController = self->_gestureController;
  v9 = [(WKSwipeTransitionController *)self directionForTransition:transition];

  return WebKit::ViewGestureController::canSwipeInDirection(gestureController, v9, v7);
}

- (id)gestureRecognizerForInteractiveTransition:(id)transition WithTarget:(id)target action:(SEL)action
{
  v7 = [objc_alloc(objc_opt_class()) initWithTarget:target action:action];
  v8 = MEMORY[0x1E69DD250];
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizerView.m_weakReference);
  v10 = [v8 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(WeakRetained, "semanticContentAttribute")}];
  if (WeakRetained)
  {
  }

  if ((v10 == 0) != [(WKSwipeTransitionController *)self directionForTransition:transition])
  {
    v11 = 2;
  }

  else
  {
    v11 = 8;
  }

  [v7 setEdges:v11];
  if (v7)
  {
    v12 = v7;
  }

  return v7;
}

- (BOOL)isNavigationSwipeGestureRecognizer:(id)recognizer
{
  if ([(_UINavigationInteractiveTransitionBase *)self->_backTransitionController.m_ptr gestureRecognizer]== recognizer || [(_UINavigationInteractiveTransitionBase *)self->_forwardTransitionController.m_ptr gestureRecognizer]== recognizer)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_backTransitionController.m_ptr != [recognizer delegate])
    {
      return self->_forwardTransitionController.m_ptr == [recognizer delegate];
    }

    return 1;
  }

  return 0;
}

@end
@interface ARCoachingState
- (ARCoachingOverlayView)view;
- (ARCoachingState)initWithView:(id)a3;
@end

@implementation ARCoachingState

- (ARCoachingState)initWithView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARCoachingState;
  v5 = [(ARCoachingState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
  }

  return v6;
}

- (ARCoachingOverlayView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
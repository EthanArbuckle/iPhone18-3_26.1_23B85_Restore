@interface MKCalloutView
- (BOOL)isVisible;
- (MKAnnotationView)annotationView;
- (MKCalloutView)initWithAnnotationView:(id)view;
- (void)dismissAnimated:(BOOL)animated completionBlock:(id)block;
- (void)showAnimated:(BOOL)animated completionBlock:(id)block;
@end

@implementation MKCalloutView

- (MKAnnotationView)annotationView
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationView);

  return WeakRetained;
}

- (BOOL)isVisible
{
  superview = [(MKCalloutView *)self superview];
  v3 = superview != 0;

  return v3;
}

- (void)dismissAnimated:(BOOL)animated completionBlock:(id)block
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v9 = NSStringFromClass(v7);
  v8 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"Subclass must implement -[%@ %@]", v9, v8}];
}

- (void)showAnimated:(BOOL)animated completionBlock:(id)block
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v9 = NSStringFromClass(v7);
  v8 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"Subclass must implement -[%@ %@]", v9, v8}];
}

- (MKCalloutView)initWithAnnotationView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = MKCalloutView;
  v5 = [(MKCalloutView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_annotationView, viewCopy);
  }

  [(MKCalloutView *)v6 setAccessibilityIdentifier:@"MKCalloutView"];

  return v6;
}

@end
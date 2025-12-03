@interface AVContentOverlayView
- (AVContentOverlayViewDelegate)delegate;
- (void)_didRemoveSubview:(id)subview;
- (void)didAddSubview:(id)subview;
@end

@implementation AVContentOverlayView

- (AVContentOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didRemoveSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = AVContentOverlayView;
  [(AVContentOverlayView *)&v5 _didRemoveSubview:subview];
  delegate = [(AVContentOverlayView *)self delegate];
  [delegate contentOverlayViewDidAddOrRemoveSubview:self];
}

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = AVContentOverlayView;
  [(AVContentOverlayView *)&v5 didAddSubview:subview];
  delegate = [(AVContentOverlayView *)self delegate];
  [delegate contentOverlayViewDidAddOrRemoveSubview:self];
}

@end
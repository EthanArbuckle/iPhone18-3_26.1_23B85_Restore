@interface AVContentOverlayView
- (AVContentOverlayViewDelegate)delegate;
- (void)_didRemoveSubview:(id)a3;
- (void)didAddSubview:(id)a3;
@end

@implementation AVContentOverlayView

- (AVContentOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didRemoveSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVContentOverlayView;
  [(AVContentOverlayView *)&v5 _didRemoveSubview:a3];
  v4 = [(AVContentOverlayView *)self delegate];
  [v4 contentOverlayViewDidAddOrRemoveSubview:self];
}

- (void)didAddSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVContentOverlayView;
  [(AVContentOverlayView *)&v5 didAddSubview:a3];
  v4 = [(AVContentOverlayView *)self delegate];
  [v4 contentOverlayViewDidAddOrRemoveSubview:self];
}

@end
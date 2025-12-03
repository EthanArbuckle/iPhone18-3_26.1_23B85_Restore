@interface AFUISiriRemoteContainerView
- (void)layoutSubviews;
- (void)setRemoteContentView:(id)view;
@end

@implementation AFUISiriRemoteContainerView

- (void)setRemoteContentView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_remoteContentView removeFromSuperview];
  objc_storeStrong(&self->_remoteContentView, view);
  remoteContentView = self->_remoteContentView;
  if (remoteContentView)
  {
    [(AFUISiriRemoteContainerView *)self bounds];
    [(UIView *)remoteContentView setFrame:?];
    [(AFUISiriRemoteContainerView *)self addSubview:self->_remoteContentView];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AFUISiriRemoteContainerView;
  [(AFUISiriRemoteContainerView *)&v4 layoutSubviews];
  remoteContentView = self->_remoteContentView;
  [(AFUISiriRemoteContainerView *)self bounds];
  [(UIView *)remoteContentView setFrame:?];
}

@end
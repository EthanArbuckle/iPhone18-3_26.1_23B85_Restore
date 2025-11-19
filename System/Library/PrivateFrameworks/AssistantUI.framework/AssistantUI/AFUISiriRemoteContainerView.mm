@interface AFUISiriRemoteContainerView
- (void)layoutSubviews;
- (void)setRemoteContentView:(id)a3;
@end

@implementation AFUISiriRemoteContainerView

- (void)setRemoteContentView:(id)a3
{
  v6 = a3;
  [(UIView *)self->_remoteContentView removeFromSuperview];
  objc_storeStrong(&self->_remoteContentView, a3);
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
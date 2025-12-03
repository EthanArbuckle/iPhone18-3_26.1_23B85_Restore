@interface LinkPreviewCollectionViewCell
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
- (void)linkViewNeedsResize:(id)resize;
- (void)prepareForReuse;
- (void)setLinkView:(id)view;
@end

@implementation LinkPreviewCollectionViewCell

- (void)setLinkView:(id)view
{
  viewCopy = view;
  if (self->_linkView != viewCopy)
  {
    objc_storeStrong(&self->_linkView, view);
    if (viewCopy)
    {
      [(LPLinkView *)self->_linkView setDelegate:self];
      [(LPLinkView *)self->_linkView _setDisableTapGesture:1];
      [(LPLinkView *)self->_linkView _setApplyCornerRadius:1];
      linkView = self->_linkView;
      [(LinkPreviewCollectionViewCell *)self bounds];
      [(LPLinkView *)linkView setFrame:?];
      [(LinkPreviewCollectionViewCell *)self addSubview:self->_linkView];
      v7 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, 25.0, 25.0];
      avatarView = self->_avatarView;
      self->_avatarView = v7;

      [(MFAvatarView *)self->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = +[UIColor whiteColor];
      cGColor = [v9 CGColor];
      layer = [(MFAvatarView *)self->_avatarView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(MFAvatarView *)self->_avatarView layer];
      [layer2 setCornerRadius:12.5];

      layer3 = [(MFAvatarView *)self->_avatarView layer];
      [layer3 setBorderWidth:1.0];

      [(MFAvatarView *)self->_avatarView setClipsToBounds:1];
      layer4 = [(MFAvatarView *)self->_avatarView layer];
      [layer4 setMasksToBounds:1];

      [(LinkPreviewCollectionViewCell *)self addSubview:self->_avatarView];
      [(LinkPreviewCollectionViewCell *)self bringSubviewToFront:self->_avatarView];
      trailingAnchor = [(MFAvatarView *)self->_avatarView trailingAnchor];
      trailingAnchor2 = [(LPLinkView *)self->_linkView trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:-10.0 constant:?];
      v27[0] = v23;
      topAnchor = [(MFAvatarView *)self->_avatarView topAnchor];
      topAnchor2 = [(LPLinkView *)self->_linkView topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
      v27[1] = v16;
      widthAnchor = [(MFAvatarView *)self->_avatarView widthAnchor];
      v18 = [widthAnchor constraintEqualToConstant:25.0];
      v27[2] = v18;
      heightAnchor = [(MFAvatarView *)self->_avatarView heightAnchor];
      v20 = [heightAnchor constraintEqualToConstant:25.0];
      v27[3] = v20;
      v21 = [NSArray arrayWithObjects:v27 count:4];
      [NSLayoutConstraint activateConstraints:v21];
    }

    else
    {
      linkView = [(LinkPreviewCollectionViewCell *)self linkView];
      [linkView removeFromSuperview];
    }
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = LinkPreviewCollectionViewCell;
  [(LinkPreviewCollectionViewCell *)&v6 prepareForReuse];
  linkView = [(LinkPreviewCollectionViewCell *)self linkView];

  if (linkView)
  {
    linkView2 = [(LinkPreviewCollectionViewCell *)self linkView];
    [linkView2 removeFromSuperview];

    avatarView = [(LinkPreviewCollectionViewCell *)self avatarView];
    [avatarView removeFromSuperview];
  }
}

- (void)linkViewNeedsResize:(id)resize
{
  resizeCopy = resize;
  linkView = [(LinkPreviewCollectionViewCell *)self linkView];

  if (linkView == resizeCopy)
  {
    linkView2 = [(LinkPreviewCollectionViewCell *)self linkView];
    [linkView2 setNeedsLayout];
  }
}

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  completeCopy = complete;
  linkView = [(LinkPreviewCollectionViewCell *)self linkView];

  if (linkView == completeCopy)
  {
    linkView2 = [(LinkPreviewCollectionViewCell *)self linkView];
    [linkView2 setNeedsLayout];
  }
}

@end
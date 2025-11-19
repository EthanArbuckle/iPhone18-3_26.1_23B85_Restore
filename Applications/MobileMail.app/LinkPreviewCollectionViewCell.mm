@interface LinkPreviewCollectionViewCell
- (void)_linkViewMetadataDidBecomeComplete:(id)a3;
- (void)linkViewNeedsResize:(id)a3;
- (void)prepareForReuse;
- (void)setLinkView:(id)a3;
@end

@implementation LinkPreviewCollectionViewCell

- (void)setLinkView:(id)a3
{
  v5 = a3;
  if (self->_linkView != v5)
  {
    objc_storeStrong(&self->_linkView, a3);
    if (v5)
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
      v10 = [v9 CGColor];
      v11 = [(MFAvatarView *)self->_avatarView layer];
      [v11 setBorderColor:v10];

      v12 = [(MFAvatarView *)self->_avatarView layer];
      [v12 setCornerRadius:12.5];

      v13 = [(MFAvatarView *)self->_avatarView layer];
      [v13 setBorderWidth:1.0];

      [(MFAvatarView *)self->_avatarView setClipsToBounds:1];
      v14 = [(MFAvatarView *)self->_avatarView layer];
      [v14 setMasksToBounds:1];

      [(LinkPreviewCollectionViewCell *)self addSubview:self->_avatarView];
      [(LinkPreviewCollectionViewCell *)self bringSubviewToFront:self->_avatarView];
      v26 = [(MFAvatarView *)self->_avatarView trailingAnchor];
      v24 = [(LPLinkView *)self->_linkView trailingAnchor];
      v23 = [v26 constraintEqualToAnchor:-10.0 constant:?];
      v27[0] = v23;
      v25 = [(MFAvatarView *)self->_avatarView topAnchor];
      v15 = [(LPLinkView *)self->_linkView topAnchor];
      v16 = [v25 constraintEqualToAnchor:v15 constant:10.0];
      v27[1] = v16;
      v17 = [(MFAvatarView *)self->_avatarView widthAnchor];
      v18 = [v17 constraintEqualToConstant:25.0];
      v27[2] = v18;
      v19 = [(MFAvatarView *)self->_avatarView heightAnchor];
      v20 = [v19 constraintEqualToConstant:25.0];
      v27[3] = v20;
      v21 = [NSArray arrayWithObjects:v27 count:4];
      [NSLayoutConstraint activateConstraints:v21];
    }

    else
    {
      v22 = [(LinkPreviewCollectionViewCell *)self linkView];
      [v22 removeFromSuperview];
    }
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = LinkPreviewCollectionViewCell;
  [(LinkPreviewCollectionViewCell *)&v6 prepareForReuse];
  v3 = [(LinkPreviewCollectionViewCell *)self linkView];

  if (v3)
  {
    v4 = [(LinkPreviewCollectionViewCell *)self linkView];
    [v4 removeFromSuperview];

    v5 = [(LinkPreviewCollectionViewCell *)self avatarView];
    [v5 removeFromSuperview];
  }
}

- (void)linkViewNeedsResize:(id)a3
{
  v6 = a3;
  v4 = [(LinkPreviewCollectionViewCell *)self linkView];

  if (v4 == v6)
  {
    v5 = [(LinkPreviewCollectionViewCell *)self linkView];
    [v5 setNeedsLayout];
  }
}

- (void)_linkViewMetadataDidBecomeComplete:(id)a3
{
  v6 = a3;
  v4 = [(LinkPreviewCollectionViewCell *)self linkView];

  if (v4 == v6)
  {
    v5 = [(LinkPreviewCollectionViewCell *)self linkView];
    [v5 setNeedsLayout];
  }
}

@end
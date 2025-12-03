@interface SCATModernMenuContentViewContainer
- (CGSize)intrinsicContentSize;
- (SCATModernMenuContentViewContainer)initWithFrame:(CGRect)frame;
- (id)collectionView;
- (void)setContentView:(id)view;
@end

@implementation SCATModernMenuContentViewContainer

- (SCATModernMenuContentViewContainer)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SCATModernMenuContentViewContainer;
  return [(SCATModernMenuContentViewContainer *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(SCATModernMenuContentViewContainer *)self addSubview:viewCopy];
    [(SCATModernMenuContentViewContainer *)self contentViewConstraints];
    v7 = v22 = viewCopy;
    [NSLayoutConstraint deactivateConstraints:v7];

    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(SCATModernMenuContentViewContainer *)self topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v23[0] = v19;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(SCATModernMenuContentViewContainer *)self bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[1] = v9;
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(SCATModernMenuContentViewContainer *)self leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[2] = v12;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(SCATModernMenuContentViewContainer *)self trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[3] = v15;
    v16 = [NSArray arrayWithObjects:v23 count:4];
    [(SCATModernMenuContentViewContainer *)self setContentViewConstraints:v16];

    viewCopy = v22;
    contentViewConstraints = [(SCATModernMenuContentViewContainer *)self contentViewConstraints];
    [NSLayoutConstraint activateConstraints:contentViewConstraints];

    [(SCATModernMenuContentViewContainer *)self invalidateIntrinsicContentSize];
  }
}

- (id)collectionView
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  contentView = [(SCATModernMenuContentViewContainer *)self contentView];
  subviews = [contentView subviews];

  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (CGSize)intrinsicContentSize
{
  collectionView = [(SCATModernMenuContentViewContainer *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end
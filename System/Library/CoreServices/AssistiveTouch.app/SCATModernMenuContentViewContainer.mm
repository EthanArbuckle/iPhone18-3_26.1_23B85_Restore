@interface SCATModernMenuContentViewContainer
- (CGSize)intrinsicContentSize;
- (SCATModernMenuContentViewContainer)initWithFrame:(CGRect)a3;
- (id)collectionView;
- (void)setContentView:(id)a3;
@end

@implementation SCATModernMenuContentViewContainer

- (SCATModernMenuContentViewContainer)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SCATModernMenuContentViewContainer;
  return [(SCATModernMenuContentViewContainer *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(SCATModernMenuContentViewContainer *)self addSubview:v5];
    [(SCATModernMenuContentViewContainer *)self contentViewConstraints];
    v7 = v22 = v5;
    [NSLayoutConstraint deactivateConstraints:v7];

    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [(UIView *)self->_contentView topAnchor];
    v20 = [(SCATModernMenuContentViewContainer *)self topAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v23[0] = v19;
    v18 = [(UIView *)self->_contentView bottomAnchor];
    v8 = [(SCATModernMenuContentViewContainer *)self bottomAnchor];
    v9 = [v18 constraintEqualToAnchor:v8];
    v23[1] = v9;
    v10 = [(UIView *)self->_contentView leadingAnchor];
    v11 = [(SCATModernMenuContentViewContainer *)self leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[2] = v12;
    v13 = [(UIView *)self->_contentView trailingAnchor];
    v14 = [(SCATModernMenuContentViewContainer *)self trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v23[3] = v15;
    v16 = [NSArray arrayWithObjects:v23 count:4];
    [(SCATModernMenuContentViewContainer *)self setContentViewConstraints:v16];

    v5 = v22;
    v17 = [(SCATModernMenuContentViewContainer *)self contentViewConstraints];
    [NSLayoutConstraint activateConstraints:v17];

    [(SCATModernMenuContentViewContainer *)self invalidateIntrinsicContentSize];
  }
}

- (id)collectionView
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SCATModernMenuContentViewContainer *)self contentView];
  v3 = [v2 subviews];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(SCATModernMenuContentViewContainer *)self collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end
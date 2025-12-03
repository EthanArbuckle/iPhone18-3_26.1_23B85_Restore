@interface SampleTextCollectionViewCell
- (void)prepareForReuse;
- (void)setFontTextStyle:(id)style;
@end

@implementation SampleTextCollectionViewCell

- (void)setFontTextStyle:(id)style
{
  objc_storeStrong(&self->_fontTextStyle, style);
  styleCopy = style;
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = styleCopy;
  v7 = [UIFont preferredFontForTextStyle:styleCopy];
  [v6 setFont:v7];

  [v6 setAdjustsFontForContentSizeCategory:1];
  v8 = [styleCopy stringByReplacingOccurrencesOfString:@"UICTFontTextStyle" withString:&stru_1000DE3D8];
  [v6 setText:v8];

  contentView = [(SampleTextCollectionViewCell *)self contentView];
  [contentView addSubview:v6];

  topAnchor = [v6 topAnchor];
  contentView2 = [(SampleTextCollectionViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
  v28[0] = v24;
  leftAnchor = [v6 leftAnchor];
  contentView3 = [(SampleTextCollectionViewCell *)self contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:2.0];
  v28[1] = v19;
  rightAnchor = [v6 rightAnchor];
  contentView4 = [(SampleTextCollectionViewCell *)self contentView];
  rightAnchor2 = [contentView4 rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-2.0];
  v28[2] = v13;
  bottomAnchor = [v6 bottomAnchor];
  contentView5 = [(SampleTextCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
  v28[3] = v17;
  v18 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)prepareForReuse
{
  v13.receiver = self;
  v13.super_class = SampleTextCollectionViewCell;
  [(SampleTextCollectionViewCell *)&v13 prepareForReuse];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  contentView = [(SampleTextCollectionViewCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v8) removeFromSuperview];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

@end
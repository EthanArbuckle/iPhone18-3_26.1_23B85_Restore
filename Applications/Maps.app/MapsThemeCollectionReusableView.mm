@interface MapsThemeCollectionReusableView
- (MapsThemeCollectionReusableView)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MapsThemeCollectionReusableView

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v4 = [attributes copy];
  contentView = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];

  [v4 frame];
  [v4 setFrame:?];

  return v4;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MapsThemeCollectionReusableView;
  [(MapsThemeCollectionReusableView *)&v4 didMoveToWindow];
  window = [(MapsThemeCollectionReusableView *)self window];

  if (window)
  {
    [(MapsThemeCollectionReusableView *)self updateTheme];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MapsThemeCollectionReusableView;
  [(MapsThemeCollectionReusableView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[MapsThemeCollectionReusableView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(MapsThemeCollectionReusableView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(MapsThemeCollectionReusableView *)self updateTheme];
    }
  }
}

- (MapsThemeCollectionReusableView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = MapsThemeCollectionReusableView;
  v3 = [(MapsThemeCollectionReusableView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MapsThemeCollectionReusableView *)v3 setBackgroundColor:v4];

    v5 = [UIView alloc];
    [(MapsThemeCollectionReusableView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    contentView = v3->_contentView;
    v3->_contentView = v6;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_contentView setPreservesSuperviewLayoutMargins:1];
    [(MapsThemeCollectionReusableView *)v3 addSubview:v3->_contentView];
    v8 = v3->_contentView;
    layoutMarginsGuide = [(MapsThemeCollectionReusableView *)v3 layoutMarginsGuide];
    LODWORD(v10) = 1148846080;
    v11 = [(UIView *)v8 _maps_constraintsEqualToEdgesOfLayoutGuide:layoutMarginsGuide priority:v10];
    allConstraints = [v11 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v3;
}

@end
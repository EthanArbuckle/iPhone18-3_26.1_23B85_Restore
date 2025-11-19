@interface UserProfilePersonalizationLinkCell
+ (id)reuseIdentifier;
- (NSString)title;
- (UserProfilePersonalizationLinkCell)initWithFrame:(CGRect)a3;
- (id)_convertIconToImageWithBackground:(id)a3;
- (void)_updateConfiguration;
- (void)_updateFromUserProfileLinkModel;
- (void)setIcon:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserProfileLink:(id)a3;
- (void)updateTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
@end

@implementation UserProfilePersonalizationLinkCell

- (NSString)title
{
  WeakRetained = objc_loadWeakRetained(&self->_title);

  return WeakRetained;
}

- (void)_updateFromUserProfileLinkModel
{
  v3 = [(UserProfileLink *)self->_userProfileLink title];
  v4 = [(UserProfileLink *)self->_userProfileLink subtitle];
  v5 = [(UserProfileLink *)self->_userProfileLink icon];
  [(UserProfilePersonalizationLinkCell *)self updateTitle:v3 subtitle:v4 icon:v5];

  [(UserProfilePersonalizationLinkCell *)self _updateConfiguration];
}

- (void)updateTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(UserProfilePersonalizationLinkCell *)self setTitle:a3];
  [(UserProfilePersonalizationLinkCell *)self setSubtitle:v9];

  [(UserProfilePersonalizationLinkCell *)self setIcon:v8];

  [(UserProfilePersonalizationLinkCell *)self _updateConfiguration];
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  if (self->_icon != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_icon, a3);
    v6 = [(UserProfilePersonalizationLinkCell *)self _convertIconToImageWithBackground:v7];
    [(UIListContentConfiguration *)self->_contentConfig setImage:v6];

    v5 = v7;
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, a3);
    [(UIListContentConfiguration *)self->_contentConfig setSecondaryText:v5];
  }
}

- (void)setTitle:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_title);
  v5 = [WeakRetained isEqualToString:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_title, obj);
    [(UIListContentConfiguration *)self->_contentConfig setText:obj];
  }
}

- (void)setUserProfileLink:(id)a3
{
  v5 = a3;
  if (self->_userProfileLink != v5)
  {
    objc_storeStrong(&self->_userProfileLink, a3);
  }

  [(UserProfilePersonalizationLinkCell *)self _updateFromUserProfileLinkModel];
}

- (id)_convertIconToImageWithBackground:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  [(ImageIconWithBackgroundConfiguration *)v5 setBackgroundColor:self->_glyphBackgroundColor];
  v6 = [(UserProfilePersonalizationLinkCell *)self glyphTintColor];
  [(ImageIconWithBackgroundConfiguration *)v5 setTintColor:v6];

  [(ImageIconWithBackgroundConfiguration *)v5 setIconSize:30.0, 30.0];
  v7 = [v4 _maps_imageIconWithBackgroundConfiguration:v5];

  return v7;
}

- (void)_updateConfiguration
{
  [(UIListContentConfiguration *)self->_contentConfig setPrefersSideBySideTextAndSecondaryText:1];
  v3 = +[UIColor systemWhiteColor];
  v4 = [(UIListContentConfiguration *)self->_contentConfig imageProperties];
  [v4 setTintColor:v3];

  v5 = [(UIListContentConfiguration *)self->_contentConfig imageProperties];
  [v5 setCornerRadius:15.0];

  [(UIListContentConfiguration *)self->_contentConfig setImageToTextPadding:10.0];
  [(UIListContentConfiguration *)self->_contentConfig setDirectionalLayoutMargins:11.0, 16.0, 11.0, 16.0];
  [(UserProfilePersonalizationLinkCell *)self setContentConfiguration:self->_contentConfig];
  if (sub_10000FA08(self) != 5)
  {
    v6 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    v8 = v6;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [(UserProfilePersonalizationLinkCell *)self setAccessories:v7];
  }
}

- (UserProfilePersonalizationLinkCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = UserProfilePersonalizationLinkCell;
  v3 = [(UserProfilePersonalizationLinkCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(UserProfilePersonalizationLinkCell *)v3 setAccessibilityIdentifier:v5];

    if (sub_10000FA08(v3) == 5)
    {
      v6 = +[UIBackgroundConfiguration clearConfiguration];
      [(UserProfilePersonalizationLinkCell *)v3 setBackgroundConfiguration:v6];
    }

    v7 = +[UIListContentConfiguration valueCellConfiguration];
    contentConfig = v3->_contentConfig;
    v3->_contentConfig = v7;

    v9 = +[UIColor systemWhiteColor];
    glyphTintColor = v3->_glyphTintColor;
    v3->_glyphTintColor = v9;
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
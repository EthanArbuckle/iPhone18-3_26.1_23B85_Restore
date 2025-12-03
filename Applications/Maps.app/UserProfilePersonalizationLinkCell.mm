@interface UserProfilePersonalizationLinkCell
+ (id)reuseIdentifier;
- (NSString)title;
- (UserProfilePersonalizationLinkCell)initWithFrame:(CGRect)frame;
- (id)_convertIconToImageWithBackground:(id)background;
- (void)_updateConfiguration;
- (void)_updateFromUserProfileLinkModel;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUserProfileLink:(id)link;
- (void)updateTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
@end

@implementation UserProfilePersonalizationLinkCell

- (NSString)title
{
  WeakRetained = objc_loadWeakRetained(&self->_title);

  return WeakRetained;
}

- (void)_updateFromUserProfileLinkModel
{
  title = [(UserProfileLink *)self->_userProfileLink title];
  subtitle = [(UserProfileLink *)self->_userProfileLink subtitle];
  icon = [(UserProfileLink *)self->_userProfileLink icon];
  [(UserProfilePersonalizationLinkCell *)self updateTitle:title subtitle:subtitle icon:icon];

  [(UserProfilePersonalizationLinkCell *)self _updateConfiguration];
}

- (void)updateTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  iconCopy = icon;
  subtitleCopy = subtitle;
  [(UserProfilePersonalizationLinkCell *)self setTitle:title];
  [(UserProfilePersonalizationLinkCell *)self setSubtitle:subtitleCopy];

  [(UserProfilePersonalizationLinkCell *)self setIcon:iconCopy];

  [(UserProfilePersonalizationLinkCell *)self _updateConfiguration];
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if (self->_icon != iconCopy)
  {
    v7 = iconCopy;
    objc_storeStrong(&self->_icon, icon);
    v6 = [(UserProfilePersonalizationLinkCell *)self _convertIconToImageWithBackground:v7];
    [(UIListContentConfiguration *)self->_contentConfig setImage:v6];

    iconCopy = v7;
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, subtitle);
    [(UIListContentConfiguration *)self->_contentConfig setSecondaryText:subtitleCopy];
  }
}

- (void)setTitle:(id)title
{
  obj = title;
  WeakRetained = objc_loadWeakRetained(&self->_title);
  v5 = [WeakRetained isEqualToString:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_title, obj);
    [(UIListContentConfiguration *)self->_contentConfig setText:obj];
  }
}

- (void)setUserProfileLink:(id)link
{
  linkCopy = link;
  if (self->_userProfileLink != linkCopy)
  {
    objc_storeStrong(&self->_userProfileLink, link);
  }

  [(UserProfilePersonalizationLinkCell *)self _updateFromUserProfileLinkModel];
}

- (id)_convertIconToImageWithBackground:(id)background
{
  backgroundCopy = background;
  v5 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  [(ImageIconWithBackgroundConfiguration *)v5 setBackgroundColor:self->_glyphBackgroundColor];
  glyphTintColor = [(UserProfilePersonalizationLinkCell *)self glyphTintColor];
  [(ImageIconWithBackgroundConfiguration *)v5 setTintColor:glyphTintColor];

  [(ImageIconWithBackgroundConfiguration *)v5 setIconSize:30.0, 30.0];
  v7 = [backgroundCopy _maps_imageIconWithBackgroundConfiguration:v5];

  return v7;
}

- (void)_updateConfiguration
{
  [(UIListContentConfiguration *)self->_contentConfig setPrefersSideBySideTextAndSecondaryText:1];
  v3 = +[UIColor systemWhiteColor];
  imageProperties = [(UIListContentConfiguration *)self->_contentConfig imageProperties];
  [imageProperties setTintColor:v3];

  imageProperties2 = [(UIListContentConfiguration *)self->_contentConfig imageProperties];
  [imageProperties2 setCornerRadius:15.0];

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

- (UserProfilePersonalizationLinkCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = UserProfilePersonalizationLinkCell;
  v3 = [(UserProfilePersonalizationLinkCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
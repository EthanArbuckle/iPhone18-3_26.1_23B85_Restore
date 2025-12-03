@interface MapsAddButton
- (MapsAddButton)init;
- (MapsAddButton)initWithTitle:(id)title;
@end

@implementation MapsAddButton

- (MapsAddButton)initWithTitle:(id)title
{
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = MapsAddButton;
  v5 = [(MapsAddButton *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    if (titleCopy)
    {
      [UIButtonConfiguration _maps_pillButtonConfigurationWithImage:1 scalingImageForDynamicText:0 scalingTitleForDynamicText:0];
    }

    else
    {
      [UIButtonConfiguration _maps_pillButtonConfigurationWithImageOnlyScalingImageForDynamicText:0];
    }
    v6 = ;
    v7 = [UIImage systemImageNamed:@"plus"];
    [v6 setImage:v7];
    [(MapsAddButton *)v5 setConfiguration:v6];
    [(MapsAddButton *)v5 setImage:v7 forState:0];
    [(MapsAddButton *)v5 setTitle:titleCopy forState:0];
    heightAnchor = [(MapsAddButton *)v5 heightAnchor];
    LODWORD(v9) = 1144766464;
    v10 = [heightAnchor constraintEqualToConstant:32.0 priority:v9];
    v16[0] = v10;
    heightAnchor2 = [(MapsAddButton *)v5 heightAnchor];
    v12 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:32.0];
    v16[1] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    [NSLayoutConstraint activateConstraints:v13];
  }

  return v5;
}

- (MapsAddButton)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Create" value:@"localized string not found" table:0];
  v5 = [(MapsAddButton *)self initWithTitle:v4];

  return v5;
}

@end
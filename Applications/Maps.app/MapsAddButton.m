@interface MapsAddButton
- (MapsAddButton)init;
- (MapsAddButton)initWithTitle:(id)a3;
@end

@implementation MapsAddButton

- (MapsAddButton)initWithTitle:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MapsAddButton;
  v5 = [(MapsAddButton *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    if (v4)
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
    [(MapsAddButton *)v5 setTitle:v4 forState:0];
    v8 = [(MapsAddButton *)v5 heightAnchor];
    LODWORD(v9) = 1144766464;
    v10 = [v8 constraintEqualToConstant:32.0 priority:v9];
    v16[0] = v10;
    v11 = [(MapsAddButton *)v5 heightAnchor];
    v12 = [v11 constraintGreaterThanOrEqualToConstant:32.0];
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
@interface ACSettingsSwitchView
- (ACSettingsSwitchView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setIcon:(id)icon;
@end

@implementation ACSettingsSwitchView

- (ACSettingsSwitchView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = ACSettingsSwitchView;
  v3 = [(ACSettingsSnippetView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v8;

    [(UIImageView *)v3->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ACSettingsSwitchView *)v3 addSubview:v3->_iconImageView];
    v10 = +[SiriSharedUIContentLabel labelWithBodyFont];
    title = v3->_title;
    v3->_title = v10;

    [(UILabel *)v3->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ACSettingsSwitchView *)v3 addSubview:v3->_title];
    v12 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    switchControl = v3->_switchControl;
    v3->_switchControl = v12;

    v14 = v3->_switchControl;
    v15 = +[UIColor siriui_keylineColor];
    [(UISwitch *)v14 setTintColor:v15];

    [(UISwitch *)v3->_switchControl setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148846080;
    [(UISwitch *)v3->_switchControl setContentCompressionResistancePriority:0 forAxis:v16];
    [(ACSettingsSwitchView *)v3 addSubview:v3->_switchControl];
    v17 = _NSDictionaryOfVariableBindings(@"_iconImageView, _title, _switchControl", v3->_iconImageView, v3->_title, v3->_switchControl, 0);
    v43[0] = &off_89E0;
    v42[0] = @"iconHorizontalSpacing";
    v42[1] = @"horizontalSpacing";
    v18 = [NSNumber numberWithDouble:SiriUIPlatterStyle[29]];
    v43[1] = v18;
    v42[2] = @"leftEdgeInset";
    v19 = [NSNumber numberWithDouble:SiriUIPlatterStyle[32]];
    v43[2] = v19;
    v42[3] = @"rightEdgeInset";
    v20 = [NSNumber numberWithDouble:SiriUIPlatterStyle[34]];
    v43[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:4];
    v35 = v17;
    v22 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-leftEdgeInset-[_iconImageView]-iconHorizontalSpacing-[_title]-(>=horizontalSpacing@900)-[_switchControl]-rightEdgeInset-|", 1024, v21, v17);

    v23 = [NSSet setWithObjects:v3->_iconImageView, v3->_title, 0];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v37;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v36 + 1) + 8 * i);
          firstItem = [v29 firstItem];
          if ([v23 containsObject:firstItem])
          {
            secondItem = [v29 secondItem];
            v32 = [v23 containsObject:secondItem];

            if (v32)
            {
              objc_storeStrong(&v3->_iconHorizontalSpacingConstraint, v29);
              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v26);
    }

LABEL_13:

    v33 = [NSLayoutConstraint constraintWithItem:v3->_iconImageView attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [(ACSettingsSwitchView *)v3 addConstraints:v24];
    [(ACSettingsSwitchView *)v3 addConstraint:v33];
  }

  return v3;
}

- (void)setIcon:(id)icon
{
  objc_storeStrong(&self->_icon, icon);
  iconCopy = icon;
  iconHorizontalSpacingConstraint = self->_iconHorizontalSpacingConstraint;
  [iconCopy size];
  v8 = v7 == 0.0;
  v9 = 0.0;
  if (v8)
  {
    v9 = 1.0;
  }

  v10 = SiriUIPlatterStyle[29];
  if (!v8)
  {
    v9 = SiriUIPlatterStyle[29];
  }

  [(NSLayoutConstraint *)iconHorizontalSpacingConstraint setConstant:v9];
  [(UIImageView *)self->_iconImageView setImage:iconCopy];

  [(ACSettingsSwitchView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(UIImageView *)self->_iconImageView image:fits.width];
  [v5 size];
  v7 = v6 + SiriUIPlatterStyle[30] * 2.0;

  [(UILabel *)self->_title sizeThatFits:width, 1.79769313e308];
  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = fmax(v9, 47.0);
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

@end
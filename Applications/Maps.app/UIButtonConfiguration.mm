@interface UIButtonConfiguration
+ (id)_maps_cardFooterActionButtonConfigurationWithBaseConfiguration:(id)a3 isSecondary:(BOOL)a4;
+ (id)_maps_pillButtonConfigurationWithImage:(BOOL)a3 onlyHasImage:(BOOL)a4 scalingImageForDynamicText:(BOOL)a5 scalingTitleForDynamicText:(BOOL)a6;
+ (id)_maps_primaryCardFooterActionButtonConfiguration;
+ (id)_maps_roundPillSymbolButtonConfigurationScalingImageForDynamicText:(BOOL)a3;
+ (id)_maps_secondaryCardFooterActionButtonConfiguration;
@end

@implementation UIButtonConfiguration

+ (id)_maps_roundPillSymbolButtonConfigurationScalingImageForDynamicText:(BOOL)a3
{
  v3 = [a1 _maps_pillButtonConfigurationWithImage:1 scalingImageForDynamicText:a3 scalingTitleForDynamicText:0];
  [v3 contentInsets];
  v5 = v4;
  [v3 contentInsets];
  v7 = v6;
  [v3 contentInsets];
  v9 = v8;
  [v3 contentInsets];
  [v3 setContentInsets:{v5, v7, v9, v10}];
  [v3 contentInsets];
  v12 = v11;
  [v3 contentInsets];
  [v3 setImageReservation:32.0 - (v12 + v13)];

  return v3;
}

+ (id)_maps_pillButtonConfigurationWithImage:(BOOL)a3 onlyHasImage:(BOOL)a4 scalingImageForDynamicText:(BOOL)a5 scalingTitleForDynamicText:(BOOL)a6
{
  v7 = a5;
  v9 = a3;
  v10 = +[UIButtonConfiguration grayButtonConfiguration];
  [v10 setCornerStyle:4];
  if (!a4)
  {
    v11 = 8.0;
    if (!v9)
    {
      v11 = 10.0;
    }

    [v10 setContentInsets:{4.0, v11, 4.0, 10.0}];
  }

  v12 = +[UIColor secondarySystemFillColor];
  [v10 setBaseBackgroundColor:v12];

  [v10 setImagePadding:4.0];
  if (v7)
  {
    [UIFont _maps_fontWithTextStyle:UIFontTextStyleSubheadline weight:0 compatibleWithTraitCollection:UIFontWeightSemibold];
  }

  else
  {
    [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
  }
  v13 = ;
  v14 = [UIImageSymbolConfiguration configurationWithFont:v13 scale:2];
  [v10 setPreferredSymbolConfigurationForImage:v14];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100904694;
  v16[3] = &unk_10162E4D8;
  v17 = a6;
  [v10 setTitleTextAttributesTransformer:v16];

  return v10;
}

+ (id)_maps_cardFooterActionButtonConfigurationWithBaseConfiguration:(id)a3 isSecondary:(BOOL)a4
{
  v4 = a3;
  v5 = _UISolariumEnabled();
  v6 = &UIFontTextStyleTitle3;
  if (v5)
  {
    v6 = &UIFontTextStyleHeadline;
  }

  v7 = *v6;
  v8 = &UIFontWeightSemibold;
  if (!v5)
  {
    v8 = &UIFontWeightBold;
  }

  v9 = [UIFont _preferredFontForTextStyle:v7 weight:*v8];
  v10 = [UIFont _maps_cappedFont:v9 withMaxPoint:34.0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10090497C;
  v20[3] = &unk_101652B60;
  v21 = v10;
  v11 = v10;
  [v4 setTitleTextAttributesTransformer:v20];
  [v4 setImagePadding:4.0];
  if (_UISolariumEnabled())
  {
    v12 = 4;
  }

  else
  {
    v13 = [v4 background];
    [v13 setCornerRadius:12.0];

    v12 = -1;
  }

  [v4 setCornerStyle:v12];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v17 = [v4 background];
  [v17 setBackgroundInsets:{NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing}];

  [v4 setContentInsets:{12.0, 10.0, 12.0, 10.0}];
  [v4 setTitleAlignment:1];
  v18 = [UIImageSymbolConfiguration configurationWithFont:v11];
  [v4 setPreferredSymbolConfigurationForImage:v18];

  [v4 setTitleLineBreakMode:4];

  return v4;
}

+ (id)_maps_secondaryCardFooterActionButtonConfiguration
{
  v3 = +[UIButtonConfiguration grayButtonConfiguration];
  v4 = [a1 _maps_cardFooterActionButtonConfigurationWithBaseConfiguration:v3 isSecondary:1];

  return v4;
}

+ (id)_maps_primaryCardFooterActionButtonConfiguration
{
  v3 = +[UIButtonConfiguration filledButtonConfiguration];
  v4 = [a1 _maps_cardFooterActionButtonConfigurationWithBaseConfiguration:v3];

  return v4;
}

@end
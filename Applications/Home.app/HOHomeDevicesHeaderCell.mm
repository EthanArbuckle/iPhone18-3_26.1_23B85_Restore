@interface HOHomeDevicesHeaderCell
- (HOHomeDevicesHeaderCell)initWithFrame:(CGRect)a3;
@end

@implementation HOHomeDevicesHeaderCell

- (HOHomeDevicesHeaderCell)initWithFrame:(CGRect)a3
{
  v34.receiver = self;
  v34.super_class = HOHomeDevicesHeaderCell;
  v3 = [(HOHomeDevicesHeaderCell *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    v5 = objc_alloc_init(UILabel);
    [(HOHomeDevicesHeaderCell *)v3 setDevicesLabel:v5];

    v6 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v8 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [v8 setFont:v7];

    v9 = [UIColor colorWithWhite:0.5 alpha:1.0];
    v10 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [v10 setTextColor:v9];

    v11 = +[NSBundle mainBundle];
    v12 = @"HODeviceGridTitle";
    v13 = [v11 localizedStringForKey:@"HODeviceGridTitle" value:@"_" table:@"HOLocalizable"];

    if ([@"_" isEqualToString:v13])
    {
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = sub_10000C210();
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v33 = v4;
        v17 = *v36;
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * v18);
          v20 = +[NSBundle mainBundle];
          v21 = [v20 localizedStringForKey:@"HODeviceGridTitle" value:@"HODeviceGridTitle" table:v19];

          if (![(__CFString *)v21 isEqualToString:@"HODeviceGridTitle"])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            v21 = @"_";
            break;
          }
        }

        v4 = v33;
        v12 = @"HODeviceGridTitle";
      }

      else
      {
        v21 = @"_";
      }

      v13 = v21;
    }

    if ([@"_" isEqualToString:v13])
    {
      NSLog(@"Sensitive key '%@' not found!", @"HODeviceGridTitle");
    }

    else
    {
      v12 = v13;
    }

    v22 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [v22 setText:v12];

    v23 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [(HOHomeDevicesHeaderCell *)v3 addSubview:v23];

    v24 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    v25 = [v24 bottomAnchor];
    v26 = [(HOHomeDevicesHeaderCell *)v3 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-6.0];
    [v4 addObject:v27];

    v28 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    v29 = [v28 leadingAnchor];
    v30 = [(HOHomeDevicesHeaderCell *)v3 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:14.0];
    [v4 addObject:v31];

    [NSLayoutConstraint activateConstraints:v4];
  }

  return v3;
}

@end
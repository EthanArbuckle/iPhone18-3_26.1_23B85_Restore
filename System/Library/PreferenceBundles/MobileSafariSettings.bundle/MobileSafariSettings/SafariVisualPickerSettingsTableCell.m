@interface SafariVisualPickerSettingsTableCell
+ (id)visualPickerSpecifierWithButtons:(id)a3 preferenceDomain:(id)a4 preferenceKey:(id)a5;
+ (id)visualPickerSpecifierWithLeadingButton:(id)a3 trailingButton:(id)a4 preferenceDomain:(id)a5 preferenceKey:(id)a6;
- (SafariVisualPickerSettingsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)buttonTapped:(id)a3;
@end

@implementation SafariVisualPickerSettingsTableCell

+ (id)visualPickerSpecifierWithLeadingButton:(id)a3 trailingButton:(id)a4 preferenceDomain:(id)a5 preferenceKey:(id)a6
{
  v6 = 0;
  if (a3 && a4)
  {
    v17[0] = a3;
    v17[1] = a4;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    v15 = [NSArray arrayWithObjects:v17 count:2];

    v6 = [a1 visualPickerSpecifierWithButtons:v15 preferenceDomain:v12 preferenceKey:v11];
  }

  return v6;
}

+ (id)visualPickerSpecifierWithButtons:(id)a3 preferenceDomain:(id)a4 preferenceKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [PSSpecifier preferenceSpecifierNamed:0 target:a1 set:0 get:0 detail:0 cell:-1 edit:0];
  v21[0] = PSCellClassKey;
  v22[0] = objc_opt_class();
  v22[1] = v8;
  v21[1] = PSContainerBundleIDKey;
  v21[2] = PSDefaultsKey;
  v22[2] = v8;
  v22[3] = v9;
  v21[3] = PSKeyNameKey;
  v21[4] = PSIDKey;
  v22[4] = SFTabLayoutIdentifierKey;
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  [v11 setProperties:v12];

  v13 = [v10 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_2];
  v14 = [v13 count];
  v15 = [v10 count];

  v16 = 0;
  if (v14 == v15)
  {
    v19 = @"SafariSettingsVisualPickerUserInfoArray";
    v20 = v13;
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v11 setUserInfo:v17];

    v16 = v11;
  }

  return v16;
}

- (SafariVisualPickerSettingsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9 = a5;
  v60.receiver = self;
  v60.super_class = SafariVisualPickerSettingsTableCell;
  v10 = [(SafariVisualPickerSettingsTableCell *)&v60 initWithStyle:a3 reuseIdentifier:a4 specifier:v9];
  if (v10)
  {
    v11 = [v9 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"SafariSettingsVisualPickerUserInfoArray"];
    objc_opt_class();
    v56 = v9;
    if (objc_opt_isKindOfClass())
    {
      v52 = v11;
      v54 = v10;
      v13 = v12;
      v14 = +[NSMutableArray array];
      if ([v13 count])
      {
        v15 = 0;
        while (1)
        {
          v16 = [v13 objectAtIndexedSubscript:v15];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v17 = v16;
          v18 = [v17 safari_stringForKey:@"SafariSettingsVisualPickerButtonImageName"];

          if (v18)
          {
            v19 = [[SafariSettingsVisualPickerImageButtonConfiguration alloc] initWithDictionaryRepresentation:v17];
            if (v19)
            {
              v20 = v19;
              [v14 addObject:v19];
            }
          }

          if (++v15 >= [v13 count])
          {
            goto LABEL_10;
          }
        }

        v21 = 0;
      }

      else
      {
LABEL_10:
        v21 = v14;
      }

      v10 = v54;
      v11 = v52;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      objc_storeStrong(&v10->_specifier, a5);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = __79__SafariVisualPickerSettingsTableCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
      v57[3] = &unk_89BC0;
      v23 = v10;
      v58 = v23;
      v59 = v9;
      v24 = [v21 safari_mapObjectsUsingBlock:v57];
      buttons = v23->_buttons;
      v23->_buttons = v24;

      v26 = [[UIStackView alloc] initWithArrangedSubviews:v23->_buttons];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v26 setDistribution:1];
      [v26 setSpacing:60.0];
      v27 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      [v27 addSubview:v26];

      v51 = [v26 centerXAnchor];
      v53 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      v50 = [v53 centerXAnchor];
      v49 = [v51 constraintEqualToAnchor:v50];
      v61[0] = v49;
      v47 = [v26 centerYAnchor];
      v48 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      v46 = [v48 centerYAnchor];
      v45 = [v47 constraintEqualToAnchor:v46];
      v61[1] = v45;
      v44 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      v43 = [v44 heightAnchor];
      v42 = [v26 heightAnchor];
      v41 = [v43 constraintEqualToAnchor:v42 constant:30.0];
      v61[2] = v41;
      v40 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      v39 = [v40 widthAnchor];
      v38 = [v26 widthAnchor];
      v28 = [v39 constraintEqualToAnchor:v38 multiplier:1.5];
      LODWORD(v29) = 1132068864;
      [v28 sf_withPriority:v29];
      v30 = v55 = v21;
      v61[3] = v30;
      v31 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      v32 = [v31 widthAnchor];
      v33 = [v26 widthAnchor];
      v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:20.0];
      v61[4] = v34;
      [NSArray arrayWithObjects:v61 count:5];
      v36 = v35 = v10;
      [NSLayoutConstraint activateConstraints:v36];

      v10 = v35;
      v21 = v55;

      v22 = v23;
      v9 = v56;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

IconSettingsButton *__79__SafariVisualPickerSettingsTableCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[IconSettingsButton alloc] initWithButtonConfiguration:v3];
  [(IconSettingsButton *)v4 addTarget:*(a1 + 32) action:"buttonTapped:" forEvents:0x2000];
  v5 = [PSRootController readPreferenceValue:*(a1 + 40)];
  v6 = [v3 preferenceValue];
  -[IconSettingsButton setSelected:](v4, "setSelected:", [v5 isEqualToNumber:v6]);

  v7 = [v3 isEnabled];
  [(IconSettingsButton *)v4 setEnabled:v7];

  return v4;
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = [(NSArray *)self->_buttons firstObject];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_buttons;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10) setSelected:{v5 == *(*(&v12 + 1) + 8 * v10), v12}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [v5 preferenceValue];
  [PSRootController setPreferenceValue:v11 specifier:self->_specifier];
}

@end
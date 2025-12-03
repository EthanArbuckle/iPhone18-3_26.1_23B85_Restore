@interface SafariVisualPickerSettingsTableCell
+ (id)visualPickerSpecifierWithButtons:(id)buttons preferenceDomain:(id)domain preferenceKey:(id)key;
+ (id)visualPickerSpecifierWithLeadingButton:(id)button trailingButton:(id)trailingButton preferenceDomain:(id)domain preferenceKey:(id)key;
- (SafariVisualPickerSettingsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)buttonTapped:(id)tapped;
@end

@implementation SafariVisualPickerSettingsTableCell

+ (id)visualPickerSpecifierWithLeadingButton:(id)button trailingButton:(id)trailingButton preferenceDomain:(id)domain preferenceKey:(id)key
{
  v6 = 0;
  if (button && trailingButton)
  {
    v17[0] = button;
    v17[1] = trailingButton;
    keyCopy = key;
    domainCopy = domain;
    trailingButtonCopy = trailingButton;
    buttonCopy = button;
    v15 = [NSArray arrayWithObjects:v17 count:2];

    v6 = [self visualPickerSpecifierWithButtons:v15 preferenceDomain:domainCopy preferenceKey:keyCopy];
  }

  return v6;
}

+ (id)visualPickerSpecifierWithButtons:(id)buttons preferenceDomain:(id)domain preferenceKey:(id)key
{
  domainCopy = domain;
  keyCopy = key;
  buttonsCopy = buttons;
  v11 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v21[0] = PSCellClassKey;
  v22[0] = objc_opt_class();
  v22[1] = domainCopy;
  v21[1] = PSContainerBundleIDKey;
  v21[2] = PSDefaultsKey;
  v22[2] = domainCopy;
  v22[3] = keyCopy;
  v21[3] = PSKeyNameKey;
  v21[4] = PSIDKey;
  v22[4] = SFTabLayoutIdentifierKey;
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  [v11 setProperties:v12];

  v13 = [buttonsCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_2];
  v14 = [v13 count];
  v15 = [buttonsCopy count];

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

- (SafariVisualPickerSettingsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v60.receiver = self;
  v60.super_class = SafariVisualPickerSettingsTableCell;
  v10 = [(SafariVisualPickerSettingsTableCell *)&v60 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v10)
  {
    userInfo = [specifierCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"SafariSettingsVisualPickerUserInfoArray"];
    objc_opt_class();
    v56 = specifierCopy;
    if (objc_opt_isKindOfClass())
    {
      v52 = userInfo;
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
      userInfo = v52;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      objc_storeStrong(&v10->_specifier, specifier);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = __79__SafariVisualPickerSettingsTableCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
      v57[3] = &unk_89BC0;
      v23 = v10;
      v58 = v23;
      v59 = specifierCopy;
      v24 = [v21 safari_mapObjectsUsingBlock:v57];
      buttons = v23->_buttons;
      v23->_buttons = v24;

      v26 = [[UIStackView alloc] initWithArrangedSubviews:v23->_buttons];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v26 setDistribution:1];
      [v26 setSpacing:60.0];
      contentView = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      [contentView addSubview:v26];

      centerXAnchor = [v26 centerXAnchor];
      contentView2 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      centerXAnchor2 = [contentView2 centerXAnchor];
      v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v61[0] = v49;
      centerYAnchor = [v26 centerYAnchor];
      contentView3 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      centerYAnchor2 = [contentView3 centerYAnchor];
      v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v61[1] = v45;
      contentView4 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      heightAnchor = [contentView4 heightAnchor];
      heightAnchor2 = [v26 heightAnchor];
      v41 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:30.0];
      v61[2] = v41;
      contentView5 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      widthAnchor = [contentView5 widthAnchor];
      widthAnchor2 = [v26 widthAnchor];
      v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.5];
      LODWORD(v29) = 1132068864;
      [v28 sf_withPriority:v29];
      v30 = v55 = v21;
      v61[3] = v30;
      contentView6 = [(SafariVisualPickerSettingsTableCell *)v23 contentView];
      widthAnchor3 = [contentView6 widthAnchor];
      widthAnchor4 = [v26 widthAnchor];
      v34 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4 constant:20.0];
      v61[4] = v34;
      [NSArray arrayWithObjects:v61 count:5];
      v36 = v35 = v10;
      [NSLayoutConstraint activateConstraints:v36];

      v10 = v35;
      v21 = v55;

      v22 = v23;
      specifierCopy = v56;
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

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = tappedCopy;
  }

  else
  {
    firstObject = [(NSArray *)self->_buttons firstObject];
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

        [*(*(&v12 + 1) + 8 * v10) setSelected:{firstObject == *(*(&v12 + 1) + 8 * v10), v12}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  preferenceValue = [firstObject preferenceValue];
  [PSRootController setPreferenceValue:preferenceValue specifier:self->_specifier];
}

@end
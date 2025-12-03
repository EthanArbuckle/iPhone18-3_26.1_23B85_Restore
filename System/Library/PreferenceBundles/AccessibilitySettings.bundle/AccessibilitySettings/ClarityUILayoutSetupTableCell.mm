@interface ClarityUILayoutSetupTableCell
+ (id)_visualPickerSpecifierWithLeadingButton:(id)button trailingButton:(id)trailingButton preferenceKey:(id)key;
+ (id)visualLayoutPickerSpecifier;
- (ClarityUILayoutSetupTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)buttonTapped:(id)tapped;
@end

@implementation ClarityUILayoutSetupTableCell

+ (id)visualLayoutPickerSpecifier
{
  v2 = [ClarityUILayoutSetupVisualPickerButtonConfiguration alloc];
  v3 = settingsLocString(@"LIST_LAYOUT_STACK", @"ClarityUISettings");
  v4 = [(ClarityUILayoutSetupVisualPickerButtonConfiguration *)v2 initWithTitle:v3 preferenceValue:CLFListLayoutStack];

  v5 = [ClarityUILayoutSetupVisualPickerButtonConfiguration alloc];
  v6 = settingsLocString(@"LIST_LAYOUT_GRID", @"ClarityUISettings");
  v7 = [(ClarityUILayoutSetupVisualPickerButtonConfiguration *)v5 initWithTitle:v6 preferenceValue:CLFListLayoutGrid];

  v8 = [ClarityUILayoutSetupTableCell _visualPickerSpecifierWithLeadingButton:v4 trailingButton:v7 preferenceKey:@"ListLayout"];

  return v8;
}

+ (id)_visualPickerSpecifierWithLeadingButton:(id)button trailingButton:(id)trailingButton preferenceKey:(id)key
{
  keyCopy = key;
  trailingButtonCopy = trailingButton;
  buttonCopy = button;
  v11 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:self cell:-1 edit:0];
  v23[0] = PSCellClassKey;
  v12 = objc_opt_class();
  v23[1] = PSKeyNameKey;
  v24[0] = v12;
  v24[1] = keyCopy;
  v13 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v11 setProperties:v13];

  _dictionaryRepresentation = [buttonCopy _dictionaryRepresentation];

  _dictionaryRepresentation2 = [trailingButtonCopy _dictionaryRepresentation];

  v16 = 0;
  if (_dictionaryRepresentation && _dictionaryRepresentation2)
  {
    v20[1] = _dictionaryRepresentation2;
    v21 = @"ClarityUILayoutSetupVisualPickerUserInfoArray";
    v20[0] = _dictionaryRepresentation;
    v17 = [NSArray arrayWithObjects:v20 count:2];
    v22 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v11 setUserInfo:v18];

    v16 = v11;
  }

  return v16;
}

- (ClarityUILayoutSetupTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  v73.receiver = self;
  v73.super_class = ClarityUILayoutSetupTableCell;
  v10 = [(ClarityUILayoutSetupTableCell *)&v73 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];
  if (v10)
  {
    v71 = specifierCopy;
    v72 = identifierCopy;
    userInfo = [specifierCopy userInfo];
    v74 = 0;
    v12 = [userInfo objectForKeyedSubscript:@"ClarityUILayoutSetupVisualPickerUserInfoArray"];
    v13 = __UIAccessibilitySafeClass();

    if (v74 == 1)
    {
LABEL_17:
      abort();
    }

    if ([v13 count] == &dword_0 + 2)
    {
      specifierCopy2 = specifier;
      v14 = [NSMutableArray arrayWithCapacity:2];
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = v16;
        v74 = 0;
        v18 = [v13 objectAtIndexedSubscript:v15];
        v19 = __UIAccessibilitySafeClass();

        if (v74 == 1)
        {
          goto LABEL_17;
        }

        v74 = 0;
        objc_opt_class();
        v20 = [v19 objectForKeyedSubscript:@"ClarityUILayoutSetupVisualPickerButtonTitle"];
        v21 = __UIAccessibilityCastAsClass();

        if (v74 == 1)
        {
          goto LABEL_17;
        }

        v74 = 0;
        objc_opt_class();
        v22 = [v19 objectForKeyedSubscript:@"ClarityUILayoutSetupVisualPickerButtonPreferenceValue"];
        v23 = __UIAccessibilityCastAsClass();

        if (v74 == 1)
        {
          goto LABEL_17;
        }

        v24 = objc_alloc_init(ClarityUILayoutSetupVisualPickerButtonConfiguration);
        [(ClarityUILayoutSetupVisualPickerButtonConfiguration *)v24 setTitle:v21];
        [(ClarityUILayoutSetupVisualPickerButtonConfiguration *)v24 setPreferenceValue:v23];
        [v14 addObject:v24];

        v16 = 0;
        v15 = 1;
      }

      while ((v17 & 1) != 0);
      specifier = specifierCopy2;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      objc_storeStrong(&v10->_specifier, specifier);
      v26 = [v14 objectAtIndexedSubscript:0];
      v27 = [ClarityUIIconSettingsButton alloc];
      [v26 title];
      v29 = v28 = v10;
      v70 = v26;
      preferenceValue = [v26 preferenceValue];
      v31 = [(ClarityUIIconSettingsButton *)v27 initWithTitle:v29 preferenceValue:preferenceValue];
      v32 = v28[15];
      v28[15] = v31;

      [v28[15] addTarget:v28 action:"buttonTapped:" forControlEvents:0x2000];
      v33 = +[CLFSettings sharedInstance];
      listLayout = [v33 listLayout];

      preferenceValue2 = [v26 preferenceValue];
      [v28[15] setSelected:{objc_msgSend(listLayout, "isEqualToString:", preferenceValue2)}];

      v67 = [v14 objectAtIndexedSubscript:1];
      v35 = [ClarityUIIconSettingsButton alloc];
      title = [v67 title];
      preferenceValue3 = [v67 preferenceValue];
      v38 = [(ClarityUIIconSettingsButton *)v35 initWithTitle:title preferenceValue:preferenceValue3];
      v39 = v28[16];
      v28[16] = v38;

      [v28[16] addTarget:v28 action:"buttonTapped:" forControlEvents:0x2000];
      [v28[16] setSelected:{objc_msgSend(v28[15], "isSelected") ^ 1}];
      v40 = [UIStackView alloc];
      v76[0] = v28[15];
      v76[1] = v28[16];
      v41 = [NSArray arrayWithObjects:v76 count:2];
      v66 = v14;
      v42 = [v40 initWithArrangedSubviews:v41];

      [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v42 setDistribution:1];
      [v42 setSpacing:30.0];
      contentView = [v28 contentView];
      [contentView addSubview:v42];

      centerXAnchor = [v42 centerXAnchor];
      contentView2 = [v28 contentView];
      centerXAnchor2 = [contentView2 centerXAnchor];
      v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v75[0] = v62;
      contentView3 = [v28 contentView];
      heightAnchor = [contentView3 heightAnchor];
      heightAnchor2 = [v42 heightAnchor];
      v58 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:40.0];
      v75[1] = v58;
      centerYAnchor = [v42 centerYAnchor];
      contentView4 = [v28 contentView];
      centerYAnchor2 = [contentView4 centerYAnchor];
      v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v75[2] = v54;
      contentView5 = [v28 contentView];
      widthAnchor = [contentView5 widthAnchor];
      widthAnchor2 = [v42 widthAnchor];
      v46 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.2];
      v75[3] = v46;
      contentView6 = [v28 contentView];
      widthAnchor3 = [contentView6 widthAnchor];
      widthAnchor4 = [v42 widthAnchor];
      v50 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4 constant:10.0];
      v75[4] = v50;
      v51 = [NSArray arrayWithObjects:v75 count:5];
      [NSLayoutConstraint activateConstraints:v51];

      v10 = v28;
      v25 = v28;

      v14 = v66;
    }

    else
    {
      v25 = 0;
    }

    specifierCopy = v71;
    identifierCopy = v72;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)buttonTapped:(id)tapped
{
  trailingButton = self->_trailingButton;
  if (trailingButton != tapped)
  {
    trailingButton = self->_leadingButton;
  }

  v5 = trailingButton;
  leadingButton = self->_leadingButton;
  v19[0] = self->_trailingButton;
  v19[1] = leadingButton;
  [NSArray arrayWithObjects:v19 count:2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v11) setSelected:{v5 == *(*(&v14 + 1) + 8 * v11), v14}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  preferenceValue = [(ClarityUIIconSettingsButton *)v5 preferenceValue];
  v13 = +[CLFSettings sharedInstance];
  [v13 setListLayout:preferenceValue];
}

@end
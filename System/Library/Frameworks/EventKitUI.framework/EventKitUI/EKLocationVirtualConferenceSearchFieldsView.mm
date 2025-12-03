@interface EKLocationVirtualConferenceSearchFieldsView
- (BOOL)textFieldShouldReturn:(id)return;
- (EKLocationVirtualConferenceSearchFieldsDelegate)delegate;
- (EKLocationVirtualConferenceSearchFieldsView)init;
- (id)_newTextFieldWithLeftViewText:(id)text imageName:(id)name;
- (id)conferenceLabelText;
- (id)locationLabelText;
- (void)setDisableConferenceTextField:(BOOL)field;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)updateLeftViewForTextField:(id)field withText:(id)text imageName:(id)name;
@end

@implementation EKLocationVirtualConferenceSearchFieldsView

- (EKLocationVirtualConferenceSearchFieldsView)init
{
  v81[16] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = EKLocationVirtualConferenceSearchFieldsView;
  v2 = [(EKLocationVirtualConferenceSearchFieldsView *)&v79 init];
  v3 = v2;
  if (v2)
  {
    layer = [(EKLocationVirtualConferenceSearchFieldsView *)v2 layer];
    [layer setCornerRadius:10.0];

    [(EKLocationVirtualConferenceSearchFieldsView *)v3 setClipsToBounds:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 setBackgroundColor:clearColor];

    v74 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v75 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v74];
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    [v75 setBackgroundColor:systemFillColor];

    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v75];
    locationLabelText = [(EKLocationVirtualConferenceSearchFieldsView *)v3 locationLabelText];
    locationLabelImageName = [(EKLocationVirtualConferenceSearchFieldsView *)v3 locationLabelImageName];
    v9 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 _newTextFieldWithLeftViewText:locationLabelText imageName:locationLabelImageName];
    locationTextField = v3->_locationTextField;
    v3->_locationTextField = v9;

    [(UITextField *)v3->_locationTextField setTextContentType:*MEMORY[0x1E69DE4C0]];
    [(UITextField *)v3->_locationTextField setAccessibilityIdentifier:@"location-field"];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v3->_locationTextField];
    conferenceLabelText = [(EKLocationVirtualConferenceSearchFieldsView *)v3 conferenceLabelText];
    conferenceLabelImageName = [(EKLocationVirtualConferenceSearchFieldsView *)v3 conferenceLabelImageName];
    v13 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 _newTextFieldWithLeftViewText:conferenceLabelText imageName:conferenceLabelImageName];
    virtualConferenceTextField = v3->_virtualConferenceTextField;
    v3->_virtualConferenceTextField = v13;

    [(UITextField *)v3->_virtualConferenceTextField setAccessibilityIdentifier:@"video-call-field"];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v3->_virtualConferenceTextField];
    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    hairline = v3->_hairline;
    v3->_hairline = v15;

    [(UIView *)v3->_hairline setTranslatesAutoresizingMaskIntoConstraints:0];
    opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
    [(UIView *)v3->_hairline setBackgroundColor:opaqueSeparatorColor];

    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v3->_hairline];
    v30 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v75 leadingAnchor];
    leadingAnchor2 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 leadingAnchor];
    v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v81[0] = v71;
    topAnchor = [v75 topAnchor];
    topAnchor2 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 topAnchor];
    v68 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v81[1] = v68;
    bottomAnchor = [v75 bottomAnchor];
    bottomAnchor2 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 bottomAnchor];
    v65 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v81[2] = v65;
    trailingAnchor = [v75 trailingAnchor];
    trailingAnchor2 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 trailingAnchor];
    v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v81[3] = v62;
    leadingAnchor3 = [(UITextField *)v3->_locationTextField leadingAnchor];
    layoutMarginsGuide = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v81[4] = v58;
    topAnchor3 = [(UITextField *)v3->_locationTextField topAnchor];
    topAnchor4 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 topAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v81[5] = v55;
    trailingAnchor3 = [(UITextField *)v3->_locationTextField trailingAnchor];
    layoutMarginsGuide2 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v81[6] = v51;
    bottomAnchor3 = [(UITextField *)v3->_locationTextField bottomAnchor];
    topAnchor5 = [(UITextField *)v3->_virtualConferenceTextField topAnchor];
    v48 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
    v81[7] = v48;
    heightAnchor = [(UITextField *)v3->_locationTextField heightAnchor];
    heightAnchor2 = [(UITextField *)v3->_virtualConferenceTextField heightAnchor];
    v45 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v81[8] = v45;
    leadingAnchor5 = [(UITextField *)v3->_virtualConferenceTextField leadingAnchor];
    layoutMarginsGuide3 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide3 leadingAnchor];
    v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v81[9] = v41;
    trailingAnchor5 = [(UITextField *)v3->_virtualConferenceTextField trailingAnchor];
    layoutMarginsGuide4 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide4 trailingAnchor];
    v37 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v81[10] = v37;
    bottomAnchor4 = [(UITextField *)v3->_virtualConferenceTextField bottomAnchor];
    bottomAnchor5 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 bottomAnchor];
    v34 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v81[11] = v34;
    leadingAnchor7 = [(UIView *)v3->_hairline leadingAnchor];
    leadingAnchor8 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 leadingAnchor];
    v31 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v81[12] = v31;
    trailingAnchor7 = [(UIView *)v3->_hairline trailingAnchor];
    trailingAnchor8 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 trailingAnchor];
    v20 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v81[13] = v20;
    centerYAnchor = [(UIView *)v3->_hairline centerYAnchor];
    centerYAnchor2 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v81[14] = v23;
    heightAnchor3 = [(UIView *)v3->_hairline heightAnchor];
    v25 = [heightAnchor3 constraintEqualToConstant:1.0 / EKUIScaleFactor()];
    v81[15] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:16];
    [v30 activateConstraints:v26];

    objc_initWeak(&location, v3);
    v80 = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __51__EKLocationVirtualConferenceSearchFieldsView_init__block_invoke;
    v76[3] = &unk_1E843EBE8;
    objc_copyWeak(&v77, &location);
    v28 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 registerForTraitChanges:v27 withHandler:v76];

    objc_destroyWeak(&v77);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __51__EKLocationVirtualConferenceSearchFieldsView_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[53];
    v8 = WeakRetained;
    v3 = [WeakRetained locationLabelText];
    v4 = [v8 locationLabelImageName];
    [v8 updateLeftViewForTextField:v2 withText:v3 imageName:v4];

    v5 = v8[54];
    v6 = [v8 conferenceLabelText];
    v7 = [v8 conferenceLabelImageName];
    [v8 updateLeftViewForTextField:v5 withText:v6 imageName:v7];

    WeakRetained = v8;
  }
}

- (id)_newTextFieldWithLeftViewText:(id)text imageName:(id)name
{
  v6 = MEMORY[0x1E69DD0B0];
  nameCopy = name;
  textCopy = text;
  v9 = objc_alloc_init(v6);
  [v9 setLeftViewMode:3];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setClearButtonMode:3];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 setFont:v10];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTextColor:labelColor];

  [v9 setReturnKeyType:9];
  [v9 setEnablesReturnKeyAutomatically:0];
  [v9 setDelegate:self];
  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];
  [(EKLocationVirtualConferenceSearchFieldsView *)self updateLeftViewForTextField:v9 withText:textCopy imageName:nameCopy];

  return v9;
}

- (void)updateLeftViewForTextField:(id)field withText:(id)text imageName:(id)name
{
  textCopy = text;
  nameCopy = name;
  fieldCopy = field;
  traitCollection = [(EKLocationVirtualConferenceSearchFieldsView *)self traitCollection];
  v11 = EKUIUsesLargeTextLayout(traitCollection);

  if (v11)
  {
    v12 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy withConfiguration:v12];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTintColor:secondaryLabelColor];

    [fieldCopy setLeftView:v14];
    fieldCopy = v13;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v12 setText:textCopy];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v12 setTextColor:secondaryLabelColor2];

    [v12 setAdjustsFontForContentSizeCategory:1];
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v12 setFont:v17];

    [fieldCopy setLeftView:v12];
  }
}

- (void)setDisableConferenceTextField:(BOOL)field
{
  fieldCopy = field;
  if (self->_disableConferenceTextField != field)
  {
    virtualConferenceTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
    v6 = virtualConferenceTextField;
    if (fieldCopy)
    {
      [virtualConferenceTextField setEnabled:0];

      virtualConferenceTextField2 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
      [virtualConferenceTextField2 setClearButtonMode:0];

      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [virtualConferenceTextField setEnabled:1];

      virtualConferenceTextField3 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
      [virtualConferenceTextField3 setClearButtonMode:3];

      [MEMORY[0x1E69DC888] labelColor];
    }
    v9 = ;
    virtualConferenceTextField4 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
    [virtualConferenceTextField4 setTextColor:v9];
  }

  self->_disableConferenceTextField = fieldCopy;
}

- (id)locationLabelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Location: " value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)conferenceLabelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Video Call: " value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  delegate = [(EKLocationVirtualConferenceSearchFieldsView *)self delegate];
  text = [changeCopy text];
  [delegate textField:changeCopy didChange:text];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [(EKLocationVirtualConferenceSearchFieldsView *)self delegate];
  [delegate textFieldDoneTapped:returnCopy];

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selectedTextField = [(EKLocationVirtualConferenceSearchFieldsView *)self selectedTextField];

  if (selectedTextField != editingCopy)
  {
    [(EKLocationVirtualConferenceSearchFieldsView *)self setSelectedTextField:editingCopy];
    delegate = [(EKLocationVirtualConferenceSearchFieldsView *)self delegate];
    [delegate selectedTextFieldChanged:editingCopy];
  }
}

- (EKLocationVirtualConferenceSearchFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
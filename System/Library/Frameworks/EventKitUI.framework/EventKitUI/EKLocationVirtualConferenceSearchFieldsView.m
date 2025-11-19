@interface EKLocationVirtualConferenceSearchFieldsView
- (BOOL)textFieldShouldReturn:(id)a3;
- (EKLocationVirtualConferenceSearchFieldsDelegate)delegate;
- (EKLocationVirtualConferenceSearchFieldsView)init;
- (id)_newTextFieldWithLeftViewText:(id)a3 imageName:(id)a4;
- (id)conferenceLabelText;
- (id)locationLabelText;
- (void)setDisableConferenceTextField:(BOOL)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)updateLeftViewForTextField:(id)a3 withText:(id)a4 imageName:(id)a5;
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
    v4 = [(EKLocationVirtualConferenceSearchFieldsView *)v2 layer];
    [v4 setCornerRadius:10.0];

    [(EKLocationVirtualConferenceSearchFieldsView *)v3 setClipsToBounds:1];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 setBackgroundColor:v5];

    v74 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v75 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v74];
    v6 = [MEMORY[0x1E69DC888] systemFillColor];
    [v75 setBackgroundColor:v6];

    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v75];
    v7 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 locationLabelText];
    v8 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 locationLabelImageName];
    v9 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 _newTextFieldWithLeftViewText:v7 imageName:v8];
    locationTextField = v3->_locationTextField;
    v3->_locationTextField = v9;

    [(UITextField *)v3->_locationTextField setTextContentType:*MEMORY[0x1E69DE4C0]];
    [(UITextField *)v3->_locationTextField setAccessibilityIdentifier:@"location-field"];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v3->_locationTextField];
    v11 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 conferenceLabelText];
    v12 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 conferenceLabelImageName];
    v13 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 _newTextFieldWithLeftViewText:v11 imageName:v12];
    virtualConferenceTextField = v3->_virtualConferenceTextField;
    v3->_virtualConferenceTextField = v13;

    [(UITextField *)v3->_virtualConferenceTextField setAccessibilityIdentifier:@"video-call-field"];
    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v3->_virtualConferenceTextField];
    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    hairline = v3->_hairline;
    v3->_hairline = v15;

    [(UIView *)v3->_hairline setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
    [(UIView *)v3->_hairline setBackgroundColor:v17];

    [(EKLocationVirtualConferenceSearchFieldsView *)v3 addSubview:v3->_hairline];
    v30 = MEMORY[0x1E696ACD8];
    v73 = [v75 leadingAnchor];
    v72 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 leadingAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v81[0] = v71;
    v70 = [v75 topAnchor];
    v69 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 topAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v81[1] = v68;
    v67 = [v75 bottomAnchor];
    v66 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 bottomAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v81[2] = v65;
    v64 = [v75 trailingAnchor];
    v63 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 trailingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v81[3] = v62;
    v60 = [(UITextField *)v3->_locationTextField leadingAnchor];
    v61 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    v59 = [v61 leadingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v81[4] = v58;
    v57 = [(UITextField *)v3->_locationTextField topAnchor];
    v56 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v81[5] = v55;
    v53 = [(UITextField *)v3->_locationTextField trailingAnchor];
    v54 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    v52 = [v54 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v81[6] = v51;
    v50 = [(UITextField *)v3->_locationTextField bottomAnchor];
    v49 = [(UITextField *)v3->_virtualConferenceTextField topAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v81[7] = v48;
    v47 = [(UITextField *)v3->_locationTextField heightAnchor];
    v46 = [(UITextField *)v3->_virtualConferenceTextField heightAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v81[8] = v45;
    v43 = [(UITextField *)v3->_virtualConferenceTextField leadingAnchor];
    v44 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    v42 = [v44 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v81[9] = v41;
    v39 = [(UITextField *)v3->_virtualConferenceTextField trailingAnchor];
    v40 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 layoutMarginsGuide];
    v38 = [v40 trailingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v81[10] = v37;
    v36 = [(UITextField *)v3->_virtualConferenceTextField bottomAnchor];
    v35 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v81[11] = v34;
    v33 = [(UIView *)v3->_hairline leadingAnchor];
    v32 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v81[12] = v31;
    v18 = [(UIView *)v3->_hairline trailingAnchor];
    v19 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v81[13] = v20;
    v21 = [(UIView *)v3->_hairline centerYAnchor];
    v22 = [(EKLocationVirtualConferenceSearchFieldsView *)v3 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v81[14] = v23;
    v24 = [(UIView *)v3->_hairline heightAnchor];
    v25 = [v24 constraintEqualToConstant:1.0 / EKUIScaleFactor()];
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

- (id)_newTextFieldWithLeftViewText:(id)a3 imageName:(id)a4
{
  v6 = MEMORY[0x1E69DD0B0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setLeftViewMode:3];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setClearButtonMode:3];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 setFont:v10];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTextColor:v11];

  [v9 setReturnKeyType:9];
  [v9 setEnablesReturnKeyAutomatically:0];
  [v9 setDelegate:self];
  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];
  [(EKLocationVirtualConferenceSearchFieldsView *)self updateLeftViewForTextField:v9 withText:v8 imageName:v7];

  return v9;
}

- (void)updateLeftViewForTextField:(id)a3 withText:(id)a4 imageName:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(EKLocationVirtualConferenceSearchFieldsView *)self traitCollection];
  v11 = EKUIUsesLargeTextLayout(v10);

  if (v11)
  {
    v12 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v8 withConfiguration:v12];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTintColor:v15];

    [v9 setLeftView:v14];
    v9 = v13;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v12 setText:v18];
    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v12 setTextColor:v16];

    [v12 setAdjustsFontForContentSizeCategory:1];
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v12 setFont:v17];

    [v9 setLeftView:v12];
  }
}

- (void)setDisableConferenceTextField:(BOOL)a3
{
  v3 = a3;
  if (self->_disableConferenceTextField != a3)
  {
    v5 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
    v6 = v5;
    if (v3)
    {
      [v5 setEnabled:0];

      v7 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
      [v7 setClearButtonMode:0];

      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [v5 setEnabled:1];

      v8 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
      [v8 setClearButtonMode:3];

      [MEMORY[0x1E69DC888] labelColor];
    }
    v9 = ;
    v10 = [(EKLocationVirtualConferenceSearchFieldsView *)self virtualConferenceTextField];
    [v10 setTextColor:v9];
  }

  self->_disableConferenceTextField = v3;
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

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v6 = [(EKLocationVirtualConferenceSearchFieldsView *)self delegate];
  v5 = [v4 text];
  [v6 textField:v4 didChange:v5];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(EKLocationVirtualConferenceSearchFieldsView *)self delegate];
  [v5 textFieldDoneTapped:v4];

  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v6 = a3;
  v4 = [(EKLocationVirtualConferenceSearchFieldsView *)self selectedTextField];

  if (v4 != v6)
  {
    [(EKLocationVirtualConferenceSearchFieldsView *)self setSelectedTextField:v6];
    v5 = [(EKLocationVirtualConferenceSearchFieldsView *)self delegate];
    [v5 selectedTextFieldChanged:v6];
  }
}

- (EKLocationVirtualConferenceSearchFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
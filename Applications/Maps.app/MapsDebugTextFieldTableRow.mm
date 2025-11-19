@interface MapsDebugTextFieldTableRow
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (MapsDebugTextFieldTableRow)init;
- (id)_setupTextField;
- (void)_fieldDidChangeValue:(id)a3;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation MapsDebugTextFieldTableRow

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (-[MapsDebugTextFieldTableRow maximumNumberOfCharacters](self, "maximumNumberOfCharacters") && ((v11 = length + location, [v9 text], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11 > v13) || (objc_msgSend(v9, "text"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v16 = &v15[objc_msgSend(v10, "length") - length], v14, v16 > -[MapsDebugTextFieldTableRow maximumNumberOfCharacters](self, "maximumNumberOfCharacters"))))
  {
    v17 = 0;
  }

  else
  {
    v18 = [(MapsDebugTextFieldTableRow *)self filter];

    if (v18)
    {
      v19 = [(MapsDebugTextFieldTableRow *)self filter];
      v17 = (v19)[2](v19, v10);
    }

    else if ([(MapsDebugTextFieldTableRow *)self inputType]== 1)
    {
      if (qword_10195E3A0 != -1)
      {
        dispatch_once(&qword_10195E3A0, &stru_101633150);
      }

      v17 = [v10 rangeOfCharacterFromSet:qword_10195E398] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [(MapsDebugTextFieldTableRow *)self didBeginEditing];

  if (v4)
  {
    v5 = [(MapsDebugTextFieldTableRow *)self didBeginEditing];
    v5[2]();
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  [a3 resignFirstResponder];
  v4 = [(MapsDebugTextFieldTableRow *)self done];

  if (v4)
  {
    v5 = [(MapsDebugTextFieldTableRow *)self done];
    v6 = [(MapsDebugTextFieldTableRow *)self text];
    (v5)[2](v5, v6);
  }

  return 0;
}

- (void)_fieldDidChangeValue:(id)a3
{
  v6 = [a3 text];
  v4 = [(MapsDebugTextFieldTableRow *)self set];

  if (v4)
  {
    v5 = [(MapsDebugTextFieldTableRow *)self set];
    (v5)[2](v5, v6);
  }

  [(MapsDebugTextFieldTableRow *)self setText:v6];
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = MapsDebugTextFieldTableRow;
  [(MapsDebugTableRow *)&v39 configureCell:v4];
  v5 = [v4 contentView];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [v4 contentView];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if ([v12 tag] == 999)
        {
          [v12 removeFromSuperview];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v9);
  }

  [v4 setSelectionStyle:0];
  v13 = [(MapsDebugTextFieldTableRow *)self _setupTextField];
  [v5 addSubview:v13];

  v34 = v4;
  [v4 setPreservesSuperviewLayoutMargins:1];
  [v5 setPreservesSuperviewLayoutMargins:1];
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [(MapsDebugTableRow *)self title];
  v16 = [v15 length];

  textField = self->_textField;
  if (v16)
  {
    [(UITextField *)textField setTextAlignment:2];
    [(UITextField *)self->_textField leadingAnchor];
    v18 = v32 = v14;
    v19 = [v5 textLayoutGuide];
    v33 = [v19 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:5.0 constant:?];
    v41[0] = v20;
    v21 = [(UITextField *)self->_textField trailingAnchor];
    v22 = [v5 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-5.0];
    v41[1] = v23;
    v24 = [NSArray arrayWithObjects:v41 count:2];
    [(NSArray *)v32 addObjectsFromArray:v24];

    v25 = v18;
    v14 = v32;
  }

  else
  {
    [(UITextField *)textField setTextAlignment:0];
    v25 = [(UITextField *)self->_textField leadingAnchor];
    v19 = [v5 leadingAnchor];
    v33 = [v25 constraintEqualToAnchor:v19 constant:5.0];
    v40[0] = v33;
    v20 = [(UITextField *)self->_textField trailingAnchor];
    v21 = [v5 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-5.0];
    v40[1] = v22;
    v23 = [NSArray arrayWithObjects:v40 count:2];
    [(NSArray *)v14 addObjectsFromArray:v23];
  }

  v26 = [(UITextField *)self->_textField centerYAnchor];
  v27 = [v5 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [(NSArray *)v14 addObject:v28];

  v29 = [v5 heightAnchor];
  v30 = [v29 constraintGreaterThanOrEqualToConstant:44.0];
  [(NSArray *)v14 addObject:v30];

  if (self->_lastConstraints)
  {
    [v5 removeConstraints:?];
  }

  [v5 addConstraints:v14];
  lastConstraints = self->_lastConstraints;
  self->_lastConstraints = v14;
}

- (void)configureCollectionViewCell:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = MapsDebugTextFieldTableRow;
  [(MapsDebugTableRow *)&v49 configureCollectionViewCell:v4];
  v5 = v4;
  v6 = [v5 contentView];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = [v5 contentView];
  v8 = [v7 subviews];

  v9 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        if ([v13 tag] == 999)
        {
          [v13 removeFromSuperview];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v10);
  }

  v14 = [(MapsDebugTextFieldTableRow *)self _setupTextField];
  textField = self->_textField;
  self->_textField = v14;

  [(UITextField *)self->_textField setClearButtonMode:1];
  v16 = +[UIColor labelColor];
  [(UITextField *)self->_textField setTextColor:v16];

  [v6 addSubview:self->_textField];
  [v5 setPreservesSuperviewLayoutMargins:1];
  [v6 setPreservesSuperviewLayoutMargins:1];
  v17 = objc_alloc_init(NSMutableArray);
  v18 = [(MapsDebugTableRow *)self title];
  v19 = [v18 length];

  v20 = self->_textField;
  if (v19)
  {
    [(UITextField *)v20 setTextAlignment:2];
    v21 = [(UITextField *)self->_textField leadingAnchor];
    v22 = [v6 textLayoutGuide];
    v23 = [v22 trailingAnchor];
    v44 = [v21 constraintEqualToAnchor:v23 constant:16.0];
    v51[0] = v44;
    v24 = [(UITextField *)self->_textField trailingAnchor];
    v42 = [v6 trailingAnchor];
    v43 = v24;
    v25 = [v24 constraintEqualToAnchor:-16.0 constant:?];
    v51[1] = v25;
    v26 = [NSArray arrayWithObjects:v51 count:2];
    [(NSArray *)v17 addObjectsFromArray:v26];
  }

  else
  {
    [(UITextField *)v20 setTextAlignment:0];
    v41 = [(UITextField *)self->_textField leadingAnchor];
    v39 = [v6 leadingAnchor];
    v40 = [v41 constraintEqualToAnchor:v39 constant:16.0];
    v50[0] = v40;
    v27 = [(UITextField *)self->_textField trailingAnchor];
    v43 = [v6 trailingAnchor];
    v44 = v27;
    v42 = [v27 constraintEqualToAnchor:-16.0 constant:?];
    v50[1] = v42;
    v25 = [(UITextField *)self->_textField topAnchor];
    v26 = [v6 topAnchor];
    v38 = [v25 constraintEqualToAnchor:v26 constant:6.0];
    v50[2] = v38;
    v37 = [(UITextField *)self->_textField bottomAnchor];
    [v6 bottomAnchor];
    v29 = v28 = v17;
    v30 = [v37 constraintEqualToAnchor:v29 constant:-6.0];
    v50[3] = v30;
    [NSArray arrayWithObjects:v50 count:4];
    v32 = v31 = v5;
    [(NSArray *)v28 addObjectsFromArray:v32];

    v5 = v31;
    v22 = v39;

    v21 = v41;
    v17 = v28;
    v23 = v40;
  }

  v33 = [(UITextField *)self->_textField centerYAnchor];
  v34 = [v6 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [(NSArray *)v17 addObject:v35];

  if (self->_lastConstraints)
  {
    [v6 removeConstraints:?];
  }

  [v6 addConstraints:v17];
  lastConstraints = self->_lastConstraints;
  self->_lastConstraints = v17;
}

- (id)_setupTextField
{
  v3 = [(UITextField *)self->_textField traitCollection];
  v4 = [v3 userInterfaceIdiom];

  textField = self->_textField;
  if (!textField)
  {
    v6 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v7 = self->_textField;
    self->_textField = v6;

    v8 = +[UIColor secondaryLabelColor];
    [(UITextField *)self->_textField setTextColor:v8];

    if (v4 == 5)
    {
      [UIFont systemFontOfSize:15.0];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
    v9 = ;
    [(UITextField *)self->_textField setFont:v9];

    v10 = +[UIColor clearColor];
    [(UITextField *)self->_textField setBackgroundColor:v10];

    [(UITextField *)self->_textField setReturnKeyType:9];
    [(UITextField *)self->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)self->_textField setTag:999];
    textField = self->_textField;
  }

  [(UITextField *)textField setDelegate:self];
  v11 = [(MapsDebugTextFieldTableRow *)self placeholderText];
  [(UITextField *)self->_textField setPlaceholder:v11];

  [(UITextField *)self->_textField setAdjustsFontForContentSizeCategory:1];
  v12 = [(MapsDebugTextFieldTableRow *)self inputType]- 1;
  if (v12 > 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_101215CA0[v12];
  }

  [(UITextField *)self->_textField setKeyboardType:v13];
  [(UITextField *)self->_textField setAutocorrectionType:[(MapsDebugTextFieldTableRow *)self inputType]- 1 < 4];
  [(UITextField *)self->_textField setAutocapitalizationType:2 * ([(MapsDebugTextFieldTableRow *)self inputType]- 1 > 3)];
  v14 = [(UITextField *)self->_textField keyboardType];
  if (v14 == 8 || v14 == 4)
  {
    v15 = objc_alloc_init(UIToolbar);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setBarStyle:0];
    [v15 setUserInteractionEnabled:1];
    [v15 setTranslucent:1];
    v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_donePressed:"];
    v24[0] = v16;
    v24[1] = v17;
    v18 = [NSArray arrayWithObjects:v24 count:2];
    [v15 setItems:v18];

    [(UITextField *)self->_textField setInputAccessoryView:v15];
  }

  v19 = [(MapsDebugTextFieldTableRow *)self get];

  if (v19)
  {
    v20 = [(MapsDebugTextFieldTableRow *)self get];
    v21 = v20[2]();
    [(UITextField *)self->_textField setText:v21];
  }

  [(UITextField *)self->_textField addTarget:self action:"_fieldDidChangeValue:" forControlEvents:0x20000];
  [(UITextField *)self->_textField addTarget:self action:"_fieldDidChangeValue:" forControlEvents:0x40000];
  [(UITextField *)self->_textField sizeToFit];
  [(UITextField *)self->_textField removeFromSuperview];
  [(UITextField *)self->_textField setAccessibilityIdentifier:@"MapsDebugTextField"];
  v22 = self->_textField;

  return v22;
}

- (void)invalidate
{
  [(MapsDebugTextFieldTableRow *)self setGet:0];
  [(MapsDebugTextFieldTableRow *)self setSet:0];
  [(UITextField *)self->_textField removeTarget:self action:"_fieldDidChangeValue:" forControlEvents:0x20000];
  [(UITextField *)self->_textField removeTarget:self action:"_fieldDidChangeValue:" forControlEvents:0x40000];
  v3 = [(UITextField *)self->_textField delegate];

  if (v3 == self)
  {
    [(UITextField *)self->_textField setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = MapsDebugTextFieldTableRow;
  [(MapsDebugTableRow *)&v4 invalidate];
}

- (void)dealloc
{
  [(MapsDebugTextFieldTableRow *)self invalidate];
  v3.receiver = self;
  v3.super_class = MapsDebugTextFieldTableRow;
  [(MapsDebugTableRow *)&v3 dealloc];
}

- (MapsDebugTextFieldTableRow)init
{
  v8.receiver = self;
  v8.super_class = MapsDebugTextFieldTableRow;
  v2 = [(MapsDebugTableRow *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(MapsDebugTextFieldTableRow *)v2 setPlaceholderText:@"Value"];
    objc_initWeak(&location, v3);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100A82700;
    v5[3] = &unk_101661B98;
    objc_copyWeak(&v6, &location);
    [(MapsDebugTableRow *)v3 setSelectionAction:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end
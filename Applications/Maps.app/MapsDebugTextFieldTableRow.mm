@interface MapsDebugTextFieldTableRow
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (MapsDebugTextFieldTableRow)init;
- (id)_setupTextField;
- (void)_fieldDidChangeValue:(id)value;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)dealloc;
- (void)invalidate;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation MapsDebugTextFieldTableRow

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if (-[MapsDebugTextFieldTableRow maximumNumberOfCharacters](self, "maximumNumberOfCharacters") && ((v11 = length + location, [fieldCopy text], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11 > v13) || (objc_msgSend(fieldCopy, "text"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v16 = &v15[objc_msgSend(stringCopy, "length") - length], v14, v16 > -[MapsDebugTextFieldTableRow maximumNumberOfCharacters](self, "maximumNumberOfCharacters"))))
  {
    v17 = 0;
  }

  else
  {
    filter = [(MapsDebugTextFieldTableRow *)self filter];

    if (filter)
    {
      filter2 = [(MapsDebugTextFieldTableRow *)self filter];
      v17 = (filter2)[2](filter2, stringCopy);
    }

    else if ([(MapsDebugTextFieldTableRow *)self inputType]== 1)
    {
      if (qword_10195E3A0 != -1)
      {
        dispatch_once(&qword_10195E3A0, &stru_101633150);
      }

      v17 = [stringCopy rangeOfCharacterFromSet:qword_10195E398] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  didBeginEditing = [(MapsDebugTextFieldTableRow *)self didBeginEditing];

  if (didBeginEditing)
  {
    didBeginEditing2 = [(MapsDebugTextFieldTableRow *)self didBeginEditing];
    didBeginEditing2[2]();
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  [return resignFirstResponder];
  done = [(MapsDebugTextFieldTableRow *)self done];

  if (done)
  {
    done2 = [(MapsDebugTextFieldTableRow *)self done];
    text = [(MapsDebugTextFieldTableRow *)self text];
    (done2)[2](done2, text);
  }

  return 0;
}

- (void)_fieldDidChangeValue:(id)value
{
  text = [value text];
  v4 = [(MapsDebugTextFieldTableRow *)self set];

  if (v4)
  {
    v5 = [(MapsDebugTextFieldTableRow *)self set];
    (v5)[2](v5, text);
  }

  [(MapsDebugTextFieldTableRow *)self setText:text];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v39.receiver = self;
  v39.super_class = MapsDebugTextFieldTableRow;
  [(MapsDebugTableRow *)&v39 configureCell:cellCopy];
  contentView = [cellCopy contentView];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  contentView2 = [cellCopy contentView];
  subviews = [contentView2 subviews];

  v8 = [subviews countByEnumeratingWithState:&v35 objects:v42 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        if ([v12 tag] == 999)
        {
          [v12 removeFromSuperview];
        }
      }

      v9 = [subviews countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v9);
  }

  [cellCopy setSelectionStyle:0];
  _setupTextField = [(MapsDebugTextFieldTableRow *)self _setupTextField];
  [contentView addSubview:_setupTextField];

  v34 = cellCopy;
  [cellCopy setPreservesSuperviewLayoutMargins:1];
  [contentView setPreservesSuperviewLayoutMargins:1];
  v14 = objc_alloc_init(NSMutableArray);
  title = [(MapsDebugTableRow *)self title];
  v16 = [title length];

  textField = self->_textField;
  if (v16)
  {
    [(UITextField *)textField setTextAlignment:2];
    [(UITextField *)self->_textField leadingAnchor];
    v18 = v32 = v14;
    textLayoutGuide = [contentView textLayoutGuide];
    trailingAnchor = [textLayoutGuide trailingAnchor];
    trailingAnchor4 = [v18 constraintEqualToAnchor:5.0 constant:?];
    v41[0] = trailingAnchor4;
    trailingAnchor2 = [(UITextField *)self->_textField trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-5.0];
    v41[1] = v23;
    v24 = [NSArray arrayWithObjects:v41 count:2];
    [(NSArray *)v32 addObjectsFromArray:v24];

    leadingAnchor = v18;
    v14 = v32;
  }

  else
  {
    [(UITextField *)textField setTextAlignment:0];
    leadingAnchor = [(UITextField *)self->_textField leadingAnchor];
    textLayoutGuide = [contentView leadingAnchor];
    trailingAnchor = [leadingAnchor constraintEqualToAnchor:textLayoutGuide constant:5.0];
    v40[0] = trailingAnchor;
    trailingAnchor4 = [(UITextField *)self->_textField trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    trailingAnchor3 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v40[1] = trailingAnchor3;
    v23 = [NSArray arrayWithObjects:v40 count:2];
    [(NSArray *)v14 addObjectsFromArray:v23];
  }

  centerYAnchor = [(UITextField *)self->_textField centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)v14 addObject:v28];

  heightAnchor = [contentView heightAnchor];
  v30 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  [(NSArray *)v14 addObject:v30];

  if (self->_lastConstraints)
  {
    [contentView removeConstraints:?];
  }

  [contentView addConstraints:v14];
  lastConstraints = self->_lastConstraints;
  self->_lastConstraints = v14;
}

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v49.receiver = self;
  v49.super_class = MapsDebugTextFieldTableRow;
  [(MapsDebugTableRow *)&v49 configureCollectionViewCell:cellCopy];
  v5 = cellCopy;
  contentView = [v5 contentView];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  contentView2 = [v5 contentView];
  subviews = [contentView2 subviews];

  v9 = [subviews countByEnumeratingWithState:&v45 objects:v52 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        if ([v13 tag] == 999)
        {
          [v13 removeFromSuperview];
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v10);
  }

  _setupTextField = [(MapsDebugTextFieldTableRow *)self _setupTextField];
  textField = self->_textField;
  self->_textField = _setupTextField;

  [(UITextField *)self->_textField setClearButtonMode:1];
  v16 = +[UIColor labelColor];
  [(UITextField *)self->_textField setTextColor:v16];

  [contentView addSubview:self->_textField];
  [v5 setPreservesSuperviewLayoutMargins:1];
  [contentView setPreservesSuperviewLayoutMargins:1];
  v17 = objc_alloc_init(NSMutableArray);
  title = [(MapsDebugTableRow *)self title];
  v19 = [title length];

  v20 = self->_textField;
  if (v19)
  {
    [(UITextField *)v20 setTextAlignment:2];
    leadingAnchor = [(UITextField *)self->_textField leadingAnchor];
    textLayoutGuide = [contentView textLayoutGuide];
    trailingAnchor = [textLayoutGuide trailingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:16.0];
    v51[0] = v44;
    trailingAnchor2 = [(UITextField *)self->_textField trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    trailingAnchor5 = trailingAnchor2;
    topAnchor = [trailingAnchor2 constraintEqualToAnchor:-16.0 constant:?];
    v51[1] = topAnchor;
    topAnchor2 = [NSArray arrayWithObjects:v51 count:2];
    [(NSArray *)v17 addObjectsFromArray:topAnchor2];
  }

  else
  {
    [(UITextField *)v20 setTextAlignment:0];
    leadingAnchor2 = [(UITextField *)self->_textField leadingAnchor];
    leadingAnchor3 = [contentView leadingAnchor];
    v40 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
    v50[0] = v40;
    trailingAnchor4 = [(UITextField *)self->_textField trailingAnchor];
    trailingAnchor5 = [contentView trailingAnchor];
    v44 = trailingAnchor4;
    trailingAnchor3 = [trailingAnchor4 constraintEqualToAnchor:-16.0 constant:?];
    v50[1] = trailingAnchor3;
    topAnchor = [(UITextField *)self->_textField topAnchor];
    topAnchor2 = [contentView topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
    v50[2] = v38;
    bottomAnchor = [(UITextField *)self->_textField bottomAnchor];
    [contentView bottomAnchor];
    v29 = v28 = v17;
    v30 = [bottomAnchor constraintEqualToAnchor:v29 constant:-6.0];
    v50[3] = v30;
    [NSArray arrayWithObjects:v50 count:4];
    v32 = v31 = v5;
    [(NSArray *)v28 addObjectsFromArray:v32];

    v5 = v31;
    textLayoutGuide = leadingAnchor3;

    leadingAnchor = leadingAnchor2;
    v17 = v28;
    trailingAnchor = v40;
  }

  centerYAnchor = [(UITextField *)self->_textField centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)v17 addObject:v35];

  if (self->_lastConstraints)
  {
    [contentView removeConstraints:?];
  }

  [contentView addConstraints:v17];
  lastConstraints = self->_lastConstraints;
  self->_lastConstraints = v17;
}

- (id)_setupTextField
{
  traitCollection = [(UITextField *)self->_textField traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  textField = self->_textField;
  if (!textField)
  {
    v6 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v7 = self->_textField;
    self->_textField = v6;

    v8 = +[UIColor secondaryLabelColor];
    [(UITextField *)self->_textField setTextColor:v8];

    if (userInterfaceIdiom == 5)
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
  placeholderText = [(MapsDebugTextFieldTableRow *)self placeholderText];
  [(UITextField *)self->_textField setPlaceholder:placeholderText];

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
  keyboardType = [(UITextField *)self->_textField keyboardType];
  if (keyboardType == 8 || keyboardType == 4)
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
  delegate = [(UITextField *)self->_textField delegate];

  if (delegate == self)
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
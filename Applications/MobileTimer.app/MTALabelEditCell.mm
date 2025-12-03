@interface MTALabelEditCell
- (BOOL)showingClearButton;
- (MTALabelEditCell)initWithDelegate:(id)delegate currentTitle:(id)title isEmpty:(BOOL)empty;
- (MTALabelEditCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTALabelEditCellDelegate)delegate;
- (id)getCurrentLabel;
- (void)activate;
- (void)adjustClearButtonInset;
- (void)awakeFromNib;
- (void)dealloc;
- (void)localSetup;
- (void)setCurrentTitle:(id)title;
- (void)setFont:(id)font;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setupLabel;
- (void)setupLayoutConstraints;
- (void)setupTextField;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textValueChanged:(id)changed;
@end

@implementation MTALabelEditCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = MTALabelEditCell;
  [(MTALabelEditCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = MTALabelEditCell;
  [(MTALabelEditCell *)&v4 setSelected:selected animated:animated];
}

- (MTALabelEditCell)initWithDelegate:(id)delegate currentTitle:(id)title isEmpty:(BOOL)empty
{
  emptyCopy = empty;
  delegateCopy = delegate;
  titleCopy = title;
  v10 = [(MTALabelEditCell *)self init];
  v11 = v10;
  if (v10)
  {
    [(MTALabelEditCell *)v10 setDelegate:delegateCopy];
    textfield = [(MTALabelEditCell *)v11 textfield];
    v13 = textfield;
    if (emptyCopy)
    {
      [textfield setPlaceholder:titleCopy];
    }

    else
    {
      [textfield setText:titleCopy];
    }
  }

  return v11;
}

- (MTALabelEditCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTALabelEditCell;
  v4 = [(MTALabelEditCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTALabelEditCell *)v4 localSetup];
  }

  return v5;
}

- (void)localSetup
{
  [(MTALabelEditCell *)self setupLabel];
  [(MTALabelEditCell *)self setupTextField];

  [(MTALabelEditCell *)self setupLayoutConstraints];
}

- (void)setupLabel
{
  v3 = objc_opt_new();
  [(MTALabelEditCell *)self setLabel:v3];

  label = [(MTALabelEditCell *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  label2 = [(MTALabelEditCell *)self label];
  [label2 setFont:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"EDIT_LABEL" value:&stru_1000AEF10 table:0];
  label3 = [(MTALabelEditCell *)self label];
  [label3 setText:v8];

  label4 = [(MTALabelEditCell *)self label];
  LODWORD(v11) = 1144750080;
  [label4 setContentHuggingPriority:0 forAxis:v11];

  label5 = [(MTALabelEditCell *)self label];
  LODWORD(v13) = 1148846080;
  [label5 setContentCompressionResistancePriority:0 forAxis:v13];

  contentView = [(MTALabelEditCell *)self contentView];
  label6 = [(MTALabelEditCell *)self label];
  [contentView addSubview:label6];
}

- (void)setupTextField
{
  v3 = objc_opt_new();
  [(MTALabelEditCell *)self setTextfield:v3];

  textfield = [(MTALabelEditCell *)self textfield];
  [textfield setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor mtui_secondaryTextColor];
  textfield2 = [(MTALabelEditCell *)self textfield];
  [textfield2 setTextColor:v5];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  textfield3 = [(MTALabelEditCell *)self textfield];
  [textfield3 setFont:v7];

  textfield4 = [(MTALabelEditCell *)self textfield];
  [textfield4 setDelegate:self];

  textfield5 = [(MTALabelEditCell *)self textfield];
  [textfield5 setTextAlignment:2];

  textfield6 = [(MTALabelEditCell *)self textfield];
  [textfield6 setReturnKeyType:9];

  textfield7 = [(MTALabelEditCell *)self textfield];
  [textfield7 setClearButtonMode:1];

  textfield8 = [(MTALabelEditCell *)self textfield];
  LODWORD(v14) = 1144750080;
  [textfield8 setContentCompressionResistancePriority:0 forAxis:v14];

  v15 = +[NSNotificationCenter defaultCenter];
  textfield9 = [(MTALabelEditCell *)self textfield];
  [v15 addObserver:self selector:"textValueChanged:" name:UITextFieldTextDidChangeNotification object:textfield9];

  contentView = [(MTALabelEditCell *)self contentView];
  textfield10 = [(MTALabelEditCell *)self textfield];
  [contentView addSubview:textfield10];
}

- (void)setupLayoutConstraints
{
  v31 = objc_opt_new();
  label = [(MTALabelEditCell *)self label];
  leadingAnchor = [label leadingAnchor];
  contentView = [(MTALabelEditCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v31 addObject:v8];

  label2 = [(MTALabelEditCell *)self label];
  centerYAnchor = [label2 centerYAnchor];
  contentView2 = [(MTALabelEditCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v31 addObject:v13];

  textfield = [(MTALabelEditCell *)self textfield];
  leadingAnchor3 = [textfield leadingAnchor];
  label3 = [(MTALabelEditCell *)self label];
  trailingAnchor = [label3 trailingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  [v31 addObject:v18];

  textfield2 = [(MTALabelEditCell *)self textfield];
  trailingAnchor2 = [textfield2 trailingAnchor];
  contentView3 = [(MTALabelEditCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  v24 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [(MTALabelEditCell *)self setTextfieldTrailConstraint:v24];

  textfieldTrailConstraint = [(MTALabelEditCell *)self textfieldTrailConstraint];
  [v31 addObject:textfieldTrailConstraint];

  textfield3 = [(MTALabelEditCell *)self textfield];
  centerYAnchor3 = [textfield3 centerYAnchor];
  contentView4 = [(MTALabelEditCell *)self contentView];
  centerYAnchor4 = [contentView4 centerYAnchor];
  v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v31 addObject:v30];

  [NSLayoutConstraint activateConstraints:v31];
}

- (void)activate
{
  textfield = [(MTALabelEditCell *)self textfield];
  [textfield becomeFirstResponder];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTALabelEditCell;
  [(MTALabelEditCell *)&v4 dealloc];
}

- (BOOL)showingClearButton
{
  textfield = [(MTALabelEditCell *)self textfield];
  if ([textfield isFirstResponder])
  {
    textfield2 = [(MTALabelEditCell *)self textfield];
    text = [textfield2 text];
    v6 = [text length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)adjustClearButtonInset
{
  showingClearButton = [(MTALabelEditCell *)self showingClearButton];
  textfieldTrailConstraint = [(MTALabelEditCell *)self textfieldTrailConstraint];
  v5 = textfieldTrailConstraint;
  v6 = 0.0;
  if (showingClearButton)
  {
    v6 = 8.0;
  }

  [textfieldTrailConstraint setConstant:v6];

  [(MTALabelEditCell *)self setNeedsLayout];
}

- (void)setFont:(id)font
{
  v7.receiver = self;
  v7.super_class = MTALabelEditCell;
  fontCopy = font;
  [(MTALabelEditCell *)&v7 setFont:fontCopy];
  v5 = [(MTALabelEditCell *)self label:v7.receiver];
  [v5 setFont:fontCopy];

  textfield = [(MTALabelEditCell *)self textfield];
  [textfield setFont:fontCopy];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v9 = [text stringByTrimmingCharactersInSet:v5];

  if (![v9 length])
  {
    delegate = [(MTALabelEditCell *)self delegate];
    defaultEditLabel = [delegate defaultEditLabel];
    textfield = [(MTALabelEditCell *)self textfield];
    [textfield setPlaceholder:defaultEditLabel];
  }

  [(MTALabelEditCell *)self adjustClearButtonInset];
}

- (void)textValueChanged:(id)changed
{
  object = [changed object];
  delegate = [(MTALabelEditCell *)self delegate];
  text = [object text];
  [delegate didUpdateWithLabel:text sender:self];

  [(MTALabelEditCell *)self adjustClearButtonInset];
}

- (void)setCurrentTitle:(id)title
{
  titleCopy = title;
  textfield = [(MTALabelEditCell *)self textfield];
  [textfield setText:titleCopy];
}

- (id)getCurrentLabel
{
  textfield = [(MTALabelEditCell *)self textfield];
  text = [textfield text];

  return text;
}

- (MTALabelEditCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
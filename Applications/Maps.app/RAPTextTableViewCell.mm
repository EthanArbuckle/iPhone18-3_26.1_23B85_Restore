@interface RAPTextTableViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (RAPTextCellDelegate)delegate;
- (RAPTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_instrumentTextFieldTap;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)fieldChanged:(id)changed;
- (void)setCorrectableItemKind:(int64_t)kind;
- (void)setPlaceholder:(id)placeholder;
- (void)setPreferredKeyboardType:(int64_t)type;
- (void)setValue:(id)value;
@end

@implementation RAPTextTableViewCell

- (RAPTextCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setPreferredKeyboardType:(int64_t)type
{
  if ([(UITextField *)self->_valueField keyboardType]!= type)
  {
    valueField = self->_valueField;

    [(UITextField *)valueField setKeyboardType:type];
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (![(NSString *)self->_value isEqualToString:?])
  {
    objc_storeStrong(&self->_value, value);
    [(UITextField *)self->_valueField setText:valueCopy];
    [(RAPTextTableViewCell *)self setNeedsLayout];
    [(RAPTextTableViewCell *)self layoutIfNeeded];
  }
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (![(NSString *)self->_placeholder isEqualToString:?])
  {
    objc_storeStrong(&self->_placeholder, placeholder);
    [(UITextField *)self->_valueField setPlaceholder:placeholderCopy];
  }
}

- (void)setCorrectableItemKind:(int64_t)kind
{
  if (self->_correctableItemKind == kind)
  {
    return;
  }

  self->_correctableItemKind = kind;
  if (!kind)
  {
    [(UITextField *)self->_valueField setAutocapitalizationType:1];
    goto LABEL_8;
  }

  if (kind == 2)
  {
    v5 = 1;
    v6 = 5;
    goto LABEL_9;
  }

  if (kind != 4)
  {
LABEL_8:
    v5 = 0;
    v6 = 13;
    goto LABEL_9;
  }

  v5 = 0;
  v6 = 3;
LABEL_9:
  [(UITextField *)self->_valueField setKeyboardType:v6];
  textInputTraits = [(UITextField *)self->_valueField textInputTraits];
  [textInputTraits setContentsIsSingleValue:v5];
}

- (void)_instrumentTextFieldTap
{
  correctableItemKind = self->_correctableItemKind;
  if (correctableItemKind)
  {
    if (correctableItemKind == 2)
    {
      v3 = 10180;
    }

    else
    {
      if (correctableItemKind != 4)
      {
        return;
      }

      v3 = 10179;
    }
  }

  else
  {
    v3 = 10166;
  }

  analyticTarget = [(RAPTextTableViewCell *)self analyticTarget];

  [GEOAPPortal captureUserAction:v3 target:analyticTarget value:0];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  fieldCopy = field;
  stringCopy = string;
  if (-[RAPTextTableViewCell correctableItemKind](self, "correctableItemKind") == 2 && [stringCopy length])
  {
    if ([stringCopy hasPrefix:@"tel:"])
    {
      v9 = [stringCopy substringFromIndex:{objc_msgSend(@"tel:", "length")}];

      stringCopy = [v9 stringByRemovingPercentEncoding];
    }

    text = [fieldCopy text];
    v11 = [text stringByAppendingString:stringCopy];

    if ([v11 length])
    {
      v12 = [CNPhoneNumber phoneNumberWithStringValue:v11];
      formattedStringValue = [v12 formattedStringValue];
      v14 = [formattedStringValue length];
      v15 = v14 == 0;
      if (v14)
      {
        [(UITextField *)self->_valueField setText:formattedStringValue];
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)fieldChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  correctableItemKind = [(RAPTextTableViewCell *)self correctableItemKind];
  text = [(UITextField *)self->_valueField text];
  [WeakRetained valueForCorrectableItemKind:correctableItemKind changedTo:text];
}

- (RAPTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = RAPTextTableViewCell;
  v4 = [(RAPTextTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RAPTextTableViewCell *)v4 _setupViews];
    [(RAPTextTableViewCell *)v5 _setupConstraints];
    [(RAPTextTableViewCell *)v5 setAccessoryType:0];
    [(RAPTextTableViewCell *)v5 setSelectionStyle:0];
    v5->_correctableItemKind = -1;
  }

  return v5;
}

- (void)_setupConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(UITextField *)self->_valueField setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RAPTextTableViewCell *)self contentView];
  traitCollection = [(RAPTextTableViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  valueField = self->_valueField;
  if (userInterfaceIdiom == 5)
  {
    topAnchor = [(UITextField *)valueField topAnchor];
    topAnchor2 = [contentView topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];

    bottomAnchor = [(UITextField *)self->_valueField bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  }

  else
  {
    lastBaselineAnchor = [(UITextField *)valueField lastBaselineAnchor];
    topAnchor3 = [contentView topAnchor];
    font = [(UITextField *)self->_valueField font];
    [font _scaledValueForValue:33.0];
    v16 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
    topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
    self->_topToFirstBaselineConstraint = v16;

    bottomAnchor3 = [contentView bottomAnchor];
    lastBaselineAnchor2 = [(UITextField *)self->_valueField lastBaselineAnchor];
    font2 = [(UITextField *)self->_valueField font];
    [font2 _scaledValueForValue:22.0];
    v21 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
    lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
    self->_lastBaselineToBottomConstraint = v21;

    v9 = self->_topToFirstBaselineConstraint;
    v12 = self->_lastBaselineToBottomConstraint;
  }

  leadingAnchor = [contentView leadingAnchor];
  leadingAnchor2 = [(UITextField *)self->_valueField leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-15.0];
  v31[0] = v25;
  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [(UITextField *)self->_valueField trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:15.0];
  v31[1] = v28;
  v31[2] = v9;
  v31[3] = v12;
  v29 = [NSArray arrayWithObjects:v31 count:4];
  constraints = self->_constraints;
  self->_constraints = v29;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v4 = +[RAPFontManager regularTitleFont];
  [(UITextField *)self->_valueField setFont:v4];

  font = [(UITextField *)self->_valueField font];
  [font _scaledValueForValue:33.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  font2 = [(UITextField *)self->_valueField font];
  [font2 _scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];
}

- (void)_setupViews
{
  v3 = objc_alloc_init(UITextField);
  valueField = self->_valueField;
  self->_valueField = v3;

  [(UITextField *)self->_valueField setClearButtonMode:1];
  v5 = +[RAPFontManager regularTitleFont];
  [(UITextField *)self->_valueField setFont:v5];

  [(UITextField *)self->_valueField setAutocorrectionType:1];
  [(UITextField *)self->_valueField setSpellCheckingType:1];
  [(UITextField *)self->_valueField setAutocapitalizationType:0];
  _clearButton = [(UITextField *)self->_valueField _clearButton];
  v6 = +[UIColor systemGrayColor];
  [_clearButton setTintColor:v6];

  v7 = [UIImage systemImageNamed:@"xmark.circle.fill"];
  [_clearButton setImage:v7 forState:0];

  v8 = [UIImageSymbolConfiguration configurationWithPointSize:16.0];
  [_clearButton setPreferredSymbolConfiguration:v8 forImageInState:0];

  contentView = [(RAPTextTableViewCell *)self contentView];
  [contentView addSubview:self->_valueField];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"fieldChanged:" name:UITextFieldTextDidChangeNotification object:self->_valueField];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"fieldSelected:" name:UITextFieldTextDidBeginEditingNotification object:self->_valueField];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

@end
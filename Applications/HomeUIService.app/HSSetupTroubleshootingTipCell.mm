@interface HSSetupTroubleshootingTipCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HSSetupTroubleshootingTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HSSetupTroubleshootingTipCellDelegate)delegate;
- (NSAttributedString)attributedBodyString;
- (NSString)titleString;
- (void)prepareForReuse;
- (void)setAttributedBodyString:(id)string;
- (void)setTip:(unint64_t)tip;
- (void)setTitleString:(id)string;
- (void)updateConstraints;
@end

@implementation HSSetupTroubleshootingTipCell

- (HSSetupTroubleshootingTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v44.receiver = self;
  v44.super_class = HSSetupTroubleshootingTipCell;
  v7 = [(HSSetupTroubleshootingTipCell *)&v44 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [(HSSetupTroubleshootingTipCell *)v7 setSeparatorInset:UIEdgeInsetsZero.top, left, bottom, right];
    v12 = +[UIColor clearColor];
    [(HSSetupTroubleshootingTipCell *)v8 setBackgroundColor:v12];

    v13 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v17 = [v13 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSSetupTroubleshootingTipCell *)v8 setTitleLabel:v17];

    titleLabel = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [HUFontUtilities preferredFontForTextStyle:UIFontTextStyleSubheadline traits:32770];
    titleLabel3 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [titleLabel3 setFont:v20];

    contentView = [(HSSetupTroubleshootingTipCell *)v8 contentView];
    titleLabel4 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [contentView addSubview:titleLabel4];

    v24 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSSetupTroubleshootingTipCell *)v8 setBodyTextView:v24];

    v25 = +[UIColor clearColor];
    bodyTextView = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView setBackgroundColor:v25];

    bodyTextView2 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView2 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    bodyTextView3 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    textContainer = [bodyTextView3 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    bodyTextView4 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView4 setEditable:0];

    bodyTextView5 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView5 setScrollEnabled:0];

    bodyTextView6 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView6 setDelegate:v8];

    bodyTextView7 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView7 setTranslatesAutoresizingMaskIntoConstraints:0];

    bodyTextView8 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [bodyTextView8 _setInteractiveTextSelectionDisabled:1];

    contentView2 = [(HSSetupTroubleshootingTipCell *)v8 contentView];
    bodyTextView9 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [contentView2 addSubview:bodyTextView9];

    objc_initWeak(&location, v8);
    v37 = [NAUILayoutConstraintSet alloc];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100025088;
    v41[3] = &unk_1000C6620;
    objc_copyWeak(&v42, &location);
    v38 = [v37 initWithOwningView:v8 constraintBuilder:v41];
    constraintSet = v8->_constraintSet;
    v8->_constraintSet = v38;

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HSSetupTroubleshootingTipCell;
  [(HSSetupTroubleshootingTipCell *)&v3 prepareForReuse];
  [(HSSetupTroubleshootingTipCell *)self setAttributedBodyString:0];
}

- (void)updateConstraints
{
  constraintSet = [(HSSetupTroubleshootingTipCell *)self constraintSet];
  [constraintSet activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HSSetupTroubleshootingTipCell;
  [(HSSetupTroubleshootingTipCell *)&v4 updateConstraints];
}

- (NSString)titleString
{
  titleLabel = [(HSSetupTroubleshootingTipCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  titleLabel = [(HSSetupTroubleshootingTipCell *)self titleLabel];
  [titleLabel setText:stringCopy];
}

- (NSAttributedString)attributedBodyString
{
  bodyTextView = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  attributedText = [bodyTextView attributedText];

  return attributedText;
}

- (void)setAttributedBodyString:(id)string
{
  v9 = [string mutableCopy];
  v4 = [HUFontUtilities preferredFontForTextStyle:UIFontTextStyleSubheadline traits:0x8000];
  [v9 addAttribute:NSFontAttributeName value:v4 range:{0, objc_msgSend(v9, "length")}];
  bodyTextView = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  [bodyTextView setAttributedText:v9];

  v6 = +[UIColor secondaryLabelColor];
  bodyTextView2 = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  [bodyTextView2 setTextColor:v6];

  bodyTextView3 = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  [bodyTextView3 setNeedsLayout];
}

- (void)setTip:(unint64_t)tip
{
  self->_tip = tip;
  if (tip > 1)
  {
    if (tip == 2)
    {
      v21 = [NSAttributedString alloc];
      v22 = sub_100063A44(@"HSSetupTroubleshootingTipUseManufacturersApp");
      v23 = [v21 initWithString:v22];
      [(HSSetupTroubleshootingTipCell *)self setAttributedBodyString:v23];

      v7 = @"HSSetupTroubleshootingTipUseManufacturersAppTitle";
    }

    else
    {
      if (tip != 3)
      {
        return;
      }

      v8 = [NSAttributedString alloc];
      v9 = sub_100063A44(@"HSTroubleshootingTipReset");
      v10 = [v8 initWithString:v9];
      [(HSSetupTroubleshootingTipCell *)self setAttributedBodyString:v10];

      v7 = @"HSTroubleshootingTipResetTitle";
    }

    goto LABEL_11;
  }

  if (tip)
  {
    if (tip != 1)
    {
      return;
    }

    v4 = [NSAttributedString alloc];
    v5 = sub_100063A44(@"HSSetupTroubleshootingTipMakeAccessoryDiscoverable");
    v6 = [v4 initWithString:v5];
    [(HSSetupTroubleshootingTipCell *)self setAttributedBodyString:v6];

    v7 = @"HSSetupTroubleshootingTipMakeAccessoryDiscoverableTitle";
LABEL_11:
    v24 = sub_100063A44(v7);
    [(HSSetupTroubleshootingTipCell *)self setTitleString:?];
    goto LABEL_12;
  }

  v24 = sub_100063A44(@"HSTroubleshootingTipManuallyEnterCodeLink");
  v17 = sub_100063B5C(@"HSTroubleshootingTipManuallyEnterCodeFormat", @"%@", v11, v12, v13, v14, v15, v16, v24);
  v18 = [NSURL URLWithString:@"home://HSSetupTroubleshootingTipEnterASetupCodePunchoutURLString"];
  v19 = [NSAttributedString hf_attributedLinkStringForString:v17 linkString:v24 linkURL:v18];
  [(HSSetupTroubleshootingTipCell *)self setAttributedBodyString:v19];
  v20 = sub_100063A44(@"HSTroubleshootingTipManuallyEnterCodeTitle");
  [(HSSetupTroubleshootingTipCell *)self setTitleString:v20];

LABEL_12:
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v13, 0x16u);
  }

  absoluteString = [lCopy absoluteString];
  v10 = [absoluteString isEqual:@"home://HSSetupTroubleshootingTipEnterASetupCodePunchoutURLString"];

  if (v10)
  {
    delegate = [(HSSetupTroubleshootingTipCell *)self delegate];
    [delegate actionInvokedForTip:0];
  }

  return v10 ^ 1;
}

- (HSSetupTroubleshootingTipCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
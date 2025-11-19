@interface HSSetupTroubleshootingTipCell
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HSSetupTroubleshootingTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HSSetupTroubleshootingTipCellDelegate)delegate;
- (NSAttributedString)attributedBodyString;
- (NSString)titleString;
- (void)prepareForReuse;
- (void)setAttributedBodyString:(id)a3;
- (void)setTip:(unint64_t)a3;
- (void)setTitleString:(id)a3;
- (void)updateConstraints;
@end

@implementation HSSetupTroubleshootingTipCell

- (HSSetupTroubleshootingTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v44.receiver = self;
  v44.super_class = HSSetupTroubleshootingTipCell;
  v7 = [(HSSetupTroubleshootingTipCell *)&v44 initWithStyle:a3 reuseIdentifier:v6];
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

    v18 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [v18 setNumberOfLines:0];

    v19 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [HUFontUtilities preferredFontForTextStyle:UIFontTextStyleSubheadline traits:32770];
    v21 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [v21 setFont:v20];

    v22 = [(HSSetupTroubleshootingTipCell *)v8 contentView];
    v23 = [(HSSetupTroubleshootingTipCell *)v8 titleLabel];
    [v22 addSubview:v23];

    v24 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSSetupTroubleshootingTipCell *)v8 setBodyTextView:v24];

    v25 = +[UIColor clearColor];
    v26 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v26 setBackgroundColor:v25];

    v27 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v27 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    v28 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    v29 = [v28 textContainer];
    [v29 setLineFragmentPadding:0.0];

    v30 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v30 setEditable:0];

    v31 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v31 setScrollEnabled:0];

    v32 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v32 setDelegate:v8];

    v33 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

    v34 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v34 _setInteractiveTextSelectionDisabled:1];

    v35 = [(HSSetupTroubleshootingTipCell *)v8 contentView];
    v36 = [(HSSetupTroubleshootingTipCell *)v8 bodyTextView];
    [v35 addSubview:v36];

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
  v3 = [(HSSetupTroubleshootingTipCell *)self constraintSet];
  [v3 activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HSSetupTroubleshootingTipCell;
  [(HSSetupTroubleshootingTipCell *)&v4 updateConstraints];
}

- (NSString)titleString
{
  v2 = [(HSSetupTroubleshootingTipCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleString:(id)a3
{
  v4 = a3;
  v5 = [(HSSetupTroubleshootingTipCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSAttributedString)attributedBodyString
{
  v2 = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setAttributedBodyString:(id)a3
{
  v9 = [a3 mutableCopy];
  v4 = [HUFontUtilities preferredFontForTextStyle:UIFontTextStyleSubheadline traits:0x8000];
  [v9 addAttribute:NSFontAttributeName value:v4 range:{0, objc_msgSend(v9, "length")}];
  v5 = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  [v5 setAttributedText:v9];

  v6 = +[UIColor secondaryLabelColor];
  v7 = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  [v7 setTextColor:v6];

  v8 = [(HSSetupTroubleshootingTipCell *)self bodyTextView];
  [v8 setNeedsLayout];
}

- (void)setTip:(unint64_t)a3
{
  self->_tip = a3;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v21 = [NSAttributedString alloc];
      v22 = sub_100063A44(@"HSSetupTroubleshootingTipUseManufacturersApp");
      v23 = [v21 initWithString:v22];
      [(HSSetupTroubleshootingTipCell *)self setAttributedBodyString:v23];

      v7 = @"HSSetupTroubleshootingTipUseManufacturersAppTitle";
    }

    else
    {
      if (a3 != 3)
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

  if (a3)
  {
    if (a3 != 1)
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v13, 0x16u);
  }

  v9 = [v7 absoluteString];
  v10 = [v9 isEqual:@"home://HSSetupTroubleshootingTipEnterASetupCodePunchoutURLString"];

  if (v10)
  {
    v11 = [(HSSetupTroubleshootingTipCell *)self delegate];
    [v11 actionInvokedForTip:0];
  }

  return v10 ^ 1;
}

- (HSSetupTroubleshootingTipCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
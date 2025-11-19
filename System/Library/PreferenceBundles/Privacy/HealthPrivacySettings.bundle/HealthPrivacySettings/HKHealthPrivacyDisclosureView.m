@interface HKHealthPrivacyDisclosureView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HKHealthPrivacyDisclosureView)initWithBodyText:(id)a3 linkText:(id)a4 linkAction:(id)a5;
- (void)_setUpFooterTextViewWithBodyText:(id)a3 linkRange:(_NSRange)a4 link:(id)a5;
- (void)_setUpFooterTextViewWithFullText:(id)a3 linkText:(id)a4 link:(id)a5;
- (void)_setupConstraints;
@end

@implementation HKHealthPrivacyDisclosureView

- (HKHealthPrivacyDisclosureView)initWithBodyText:(id)a3 linkText:(id)a4 linkAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HKHealthPrivacyDisclosureView;
  v11 = [(HKHealthPrivacyDisclosureView *)&v17 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v11)
  {
    v12 = objc_retainBlock(v10);
    linkAction = v11->_linkAction;
    v11->_linkAction = v12;

    v14 = [NSURL URLWithString:@"tap://"];
    v15 = [NSString stringWithFormat:@"%@\n%@", v8, v9];
    [(HKHealthPrivacyDisclosureView *)v11 _setUpFooterTextViewWithFullText:v15 linkText:v9 link:v14];
    [(HKHealthPrivacyDisclosureView *)v11 _setupConstraints];
  }

  return v11;
}

- (void)_setUpFooterTextViewWithFullText:(id)a3 linkText:(id)a4 link:(id)a5
{
  v8 = a5;
  v11 = a3;
  v9 = [v11 rangeOfString:a4];
  [(HKHealthPrivacyDisclosureView *)self _setUpFooterTextViewWithBodyText:v11 linkRange:v9 link:v10, v8];
}

- (void)_setUpFooterTextViewWithBodyText:(id)a3 linkRange:(_NSRange)a4 link:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = +[UIListContentConfiguration footerConfiguration];
  v12 = [v11 textProperties];
  v13 = [v12 color];

  v39[0] = NSFontAttributeName;
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v39[1] = NSForegroundColorAttributeName;
  v40[0] = v14;
  v40[1] = v13;
  v15 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

  v16 = [[NSMutableAttributedString alloc] initWithString:v10 attributes:v15];
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = NSLinkAttributeName;
    v38 = v9;
    v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v16 addAttributes:v17 range:{location, length}];
  }

  v18 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(HKHealthPrivacyDisclosureView *)self setFooterTextView:v18];

  v19 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v19 setAttributedText:v16];

  v35 = NSForegroundColorAttributeName;
  v20 = +[UIColor hk_appKeyColor];
  v36 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v22 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v22 setLinkTextAttributes:v21];

  v23 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v23 setAdjustsFontForContentSizeCategory:1];

  v24 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v25 setScrollEnabled:0];

  v26 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v26 setUserInteractionEnabled:1];

  v27 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v27 setDelegate:self];

  v28 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v28 setEditable:0];

  v29 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v29 _setInteractiveTextSelectionDisabled:1];

  v30 = +[UIColor clearColor];
  v31 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v31 setBackgroundColor:v30];

  v32 = [(HKHealthPrivacyDisclosureView *)self contentView];
  v33 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [v32 addSubview:v33];

  v34 = +[UIColor clearColor];
  [(HKHealthPrivacyDisclosureView *)self setBackgroundColor:v34];
}

- (void)_setupConstraints
{
  v4 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  v3 = [(HKHealthPrivacyDisclosureView *)self contentView];
  [v4 hk_alignConstraintsWithView:v3];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  linkAction = self->_linkAction;
  if (linkAction)
  {
    linkAction[2](self->_linkAction, a2, a3, a4, a5.location, a5.length, a6);
  }

  return linkAction == 0;
}

@end
@interface HKHealthPrivacyDisclosureView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HKHealthPrivacyDisclosureView)initWithBodyText:(id)text linkText:(id)linkText linkAction:(id)action;
- (void)_setUpFooterTextViewWithBodyText:(id)text linkRange:(_NSRange)range link:(id)link;
- (void)_setUpFooterTextViewWithFullText:(id)text linkText:(id)linkText link:(id)link;
- (void)_setupConstraints;
@end

@implementation HKHealthPrivacyDisclosureView

- (HKHealthPrivacyDisclosureView)initWithBodyText:(id)text linkText:(id)linkText linkAction:(id)action
{
  textCopy = text;
  linkTextCopy = linkText;
  actionCopy = action;
  v17.receiver = self;
  v17.super_class = HKHealthPrivacyDisclosureView;
  v11 = [(HKHealthPrivacyDisclosureView *)&v17 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v11)
  {
    v12 = objc_retainBlock(actionCopy);
    linkAction = v11->_linkAction;
    v11->_linkAction = v12;

    v14 = [NSURL URLWithString:@"tap://"];
    linkTextCopy = [NSString stringWithFormat:@"%@\n%@", textCopy, linkTextCopy];
    [(HKHealthPrivacyDisclosureView *)v11 _setUpFooterTextViewWithFullText:linkTextCopy linkText:linkTextCopy link:v14];
    [(HKHealthPrivacyDisclosureView *)v11 _setupConstraints];
  }

  return v11;
}

- (void)_setUpFooterTextViewWithFullText:(id)text linkText:(id)linkText link:(id)link
{
  linkCopy = link;
  textCopy = text;
  v9 = [textCopy rangeOfString:linkText];
  [(HKHealthPrivacyDisclosureView *)self _setUpFooterTextViewWithBodyText:textCopy linkRange:v9 link:v10, linkCopy];
}

- (void)_setUpFooterTextViewWithBodyText:(id)text linkRange:(_NSRange)range link:(id)link
{
  length = range.length;
  location = range.location;
  linkCopy = link;
  textCopy = text;
  v11 = +[UIListContentConfiguration footerConfiguration];
  textProperties = [v11 textProperties];
  color = [textProperties color];

  v39[0] = NSFontAttributeName;
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v39[1] = NSForegroundColorAttributeName;
  v40[0] = v14;
  v40[1] = color;
  v15 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

  v16 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:v15];
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = NSLinkAttributeName;
    v38 = linkCopy;
    v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v16 addAttributes:v17 range:{location, length}];
  }

  v18 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(HKHealthPrivacyDisclosureView *)self setFooterTextView:v18];

  footerTextView = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView setAttributedText:v16];

  v35 = NSForegroundColorAttributeName;
  v20 = +[UIColor hk_appKeyColor];
  v36 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  footerTextView2 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView2 setLinkTextAttributes:v21];

  footerTextView3 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView3 setAdjustsFontForContentSizeCategory:1];

  footerTextView4 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  footerTextView5 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView5 setScrollEnabled:0];

  footerTextView6 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView6 setUserInteractionEnabled:1];

  footerTextView7 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView7 setDelegate:self];

  footerTextView8 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView8 setEditable:0];

  footerTextView9 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView9 _setInteractiveTextSelectionDisabled:1];

  v30 = +[UIColor clearColor];
  footerTextView10 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [footerTextView10 setBackgroundColor:v30];

  contentView = [(HKHealthPrivacyDisclosureView *)self contentView];
  footerTextView11 = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  [contentView addSubview:footerTextView11];

  v34 = +[UIColor clearColor];
  [(HKHealthPrivacyDisclosureView *)self setBackgroundColor:v34];
}

- (void)_setupConstraints
{
  footerTextView = [(HKHealthPrivacyDisclosureView *)self footerTextView];
  contentView = [(HKHealthPrivacyDisclosureView *)self contentView];
  [footerTextView hk_alignConstraintsWithView:contentView];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  linkAction = self->_linkAction;
  if (linkAction)
  {
    linkAction[2](self->_linkAction, a2, view, l, range.location, range.length, interaction);
  }

  return linkAction == 0;
}

@end
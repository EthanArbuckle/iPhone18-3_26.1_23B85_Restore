@interface MessageHeaderSubjectBlock
- (MessageHeaderSubjectBlock)initWithFrame:(CGRect)frame;
- (id)_contextForDDDetectionController;
- (id)_subjectFont;
- (void)_updateFonts;
- (void)_updateSubjectText;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)model;
- (void)initializePrimaryLayoutConstraints;
- (void)prepareForReuse;
- (void)setBottomSeparatorIsHidden:(BOOL)hidden;
- (void)setDisplayMetrics:(id)metrics;
- (void)setInteractivelyResizing:(BOOL)resizing;
@end

@implementation MessageHeaderSubjectBlock

- (MessageHeaderSubjectBlock)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MessageHeaderSubjectBlock;
  v3 = [(MessageHeaderSubjectBlock *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_fontMetricCacheDidInvalidate:" name:MFFontMetricCacheInvalidationNotification object:0];
  }

  [(MessageHeaderSubjectBlock *)v3 setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewSubjectBlock];
  return v3;
}

- (void)createPrimaryViews
{
  v22.receiver = self;
  v22.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v22 createPrimaryViews];
  v3 = +[UIStackView mf_baselineAlignedVerticalStackView];
  [(MessageHeaderSubjectBlock *)self setSubjectStackView:v3];

  subjectStackView = [(MessageHeaderSubjectBlock *)self subjectStackView];
  [(MessageHeaderSubjectBlock *)self addSubview:subjectStackView];

  v5 = [UITextView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor mailComposeTextViewBackgroundColor];
  [v9 setBackgroundColor:v10];

  [v9 setClipsToBounds:0];
  [v9 setScrollEnabled:0];
  [v9 setSelectable:1];
  [v9 setEditable:0];
  [v9 setDataDetectorTypes:-1];
  textContainer = [v9 textContainer];
  [textContainer setMaximumNumberOfLines:13];

  textContainer2 = [v9 textContainer];
  [textContainer2 setLineFragmentPadding:0.0];

  textContainer3 = [v9 textContainer];
  [textContainer3 setLineBreakMode:4];

  v14 = +[UIColor labelColor];
  [v9 setTextColor:v14];

  v15 = MSAccessibilityIdentifierMailMessageViewSubjectLabel;
  [v9 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageViewSubjectLabel];
  linkTextAttributes = [v9 linkTextAttributes];
  v17 = [linkTextAttributes mutableCopy];

  [v17 setObject:&__kCFBooleanTrue forKey:NSUnderlineStyleAttributeName];
  [v9 setLinkTextAttributes:v17];
  subjectStackView2 = [(MessageHeaderSubjectBlock *)self subjectStackView];
  [subjectStackView2 addArrangedSubview:v9];

  [(MessageHeaderSubjectBlock *)self setSubjectTextView:v9];
  v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = +[UIColor clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setClipsToBounds:0];
  [v19 setNumberOfLines:13];
  [v19 setLineBreakMode:4];
  v21 = +[UIColor labelColor];
  [v19 setTextColor:v21];

  [v19 setAccessibilityIdentifier:v15];
  [(MessageHeaderSubjectBlock *)self setSubjectLabel:v19];
  [(MessageHeaderSubjectBlock *)self _updateFonts];
}

- (void)initializePrimaryLayoutConstraints
{
  v23.receiver = self;
  v23.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v23 initializePrimaryLayoutConstraints];
  subjectStackView = [(MessageHeaderSubjectBlock *)self subjectStackView];
  [(MessageHeaderSubjectBlock *)self _subjectMaxOffset];
  v5 = v4;
  firstBaselineAnchor = [subjectStackView firstBaselineAnchor];
  topAnchor = [(MessageHeaderSubjectBlock *)self topAnchor];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(MessageHeaderSubjectBlock *)self setFirstBaselineConstraint:v8];

  bottomAnchor = [(MessageHeaderSubjectBlock *)self bottomAnchor];
  lastBaselineAnchor = [subjectStackView lastBaselineAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
  [(MessageHeaderSubjectBlock *)self setLastBaselineConstraint:v11];

  leadingAnchor = [subjectStackView leadingAnchor];
  layoutMarginsGuide = [(MessageHeaderSubjectBlock *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v5];
  v24[0] = v13;
  trailingAnchor = [subjectStackView trailingAnchor];
  layoutMarginsGuide2 = [(MessageHeaderSubjectBlock *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v5];
  v24[1] = v17;
  firstBaselineConstraint = [(MessageHeaderSubjectBlock *)self firstBaselineConstraint];
  v24[2] = firstBaselineConstraint;
  lastBaselineConstraint = [(MessageHeaderSubjectBlock *)self lastBaselineConstraint];
  v24[3] = lastBaselineConstraint;
  v20 = [NSArray arrayWithObjects:v24 count:4];

  [NSLayoutConstraint activateConstraints:v20];
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  displayMetrics = [(MessageHeaderSubjectBlock *)self displayMetrics];
  v22.receiver = self;
  v22.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v22 setDisplayMetrics:metricsCopy];
  displayMetrics2 = [(MessageHeaderSubjectBlock *)self displayMetrics];
  if (displayMetrics2)
  {
    [metricsCopy firstSeparatorToSubjectBaseline];
    v8 = v7;
    [displayMetrics firstSeparatorToSubjectBaseline];
    if (v8 != v9)
    {

LABEL_5:
      displayMetrics3 = [(MessageHeaderSubjectBlock *)self displayMetrics];
      [displayMetrics3 firstSeparatorToSubjectBaseline];
      v16 = v15;
      firstBaselineConstraint = [(MessageHeaderSubjectBlock *)self firstBaselineConstraint];
      [firstBaselineConstraint setConstant:v16];

      displayMetrics4 = [(MessageHeaderSubjectBlock *)self displayMetrics];
      [displayMetrics4 headerBottomPadding];
      v20 = v19;
      lastBaselineConstraint = [(MessageHeaderSubjectBlock *)self lastBaselineConstraint];
      [lastBaselineConstraint setConstant:v20];

      goto LABEL_6;
    }

    [metricsCopy headerBottomPadding];
    v11 = v10;
    [displayMetrics headerBottomPadding];
    v13 = v12;

    if (v11 != v13)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (void)setBottomSeparatorIsHidden:(BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v3 setBottomSeparatorIsHidden:1];
}

- (void)setInteractivelyResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  interactivelyResizing = [(MessageHeaderSubjectBlock *)self interactivelyResizing];
  v10.receiver = self;
  v10.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v10 setInteractivelyResizing:resizingCopy];
  if (interactivelyResizing != resizingCopy)
  {
    if (resizingCopy)
    {
      subjectTextView = [(MessageHeaderSubjectBlock *)self subjectTextView];
      [(MessageHeaderSubjectBlock *)self subjectLabel];
    }

    else
    {
      subjectTextView = [(MessageHeaderSubjectBlock *)self subjectLabel];
      [(MessageHeaderSubjectBlock *)self subjectTextView];
    }
    v7 = ;
    subjectStackView = [(MessageHeaderSubjectBlock *)self subjectStackView];
    [subjectStackView removeArrangedSubview:subjectTextView];

    [subjectTextView removeFromSuperview];
    subjectStackView2 = [(MessageHeaderSubjectBlock *)self subjectStackView];
    [subjectStackView2 addArrangedSubview:v7];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v3 prepareForReuse];
  [(MessageHeaderSubjectBlock *)self setHidden:0];
}

- (void)displayMessageUsingViewModel:(id)model
{
  modelCopy = model;
  v5.receiver = self;
  v5.super_class = MessageHeaderSubjectBlock;
  [(MessageHeaderSubjectBlock *)&v5 displayMessageUsingViewModel:modelCopy];
  [(MessageHeaderSubjectBlock *)self _updateSubjectText];
}

- (void)_updateSubjectText
{
  viewModel = [(MessageHeaderSubjectBlock *)self viewModel];
  subject = [viewModel subject];

  if ([subject length])
  {
    v4 = +[DDDetectionController sharedController];
    _contextForDDDetectionController = [(MessageHeaderSubjectBlock *)self _contextForDDDetectionController];
    subjectTextView = [(MessageHeaderSubjectBlock *)self subjectTextView];
    [v4 setContext:_contextForDDDetectionController forContainer:subjectTextView];

    v7 = [ECSubjectFormatter subjectStringForDisplayForSubject:subject];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v7 = [v8 localizedStringForKey:@"NO_SUBJECT" value:&stru_100662A88 table:@"Main"];
  }

  subjectTextView2 = [(MessageHeaderSubjectBlock *)self subjectTextView];
  [subjectTextView2 setText:v7];

  subjectLabel = [(MessageHeaderSubjectBlock *)self subjectLabel];
  [subjectLabel setText:v7];
}

- (id)_contextForDDDetectionController
{
  v3 = +[NSMutableDictionary dictionary];
  viewModel = [(MessageHeaderSubjectBlock *)self viewModel];
  subject = [viewModel subject];
  subjectWithoutPrefix = [subject subjectWithoutPrefix];

  viewModel2 = [(MessageHeaderSubjectBlock *)self viewModel];
  dateSent = [viewModel2 dateSent];

  if (subjectWithoutPrefix)
  {
    [v3 setObject:subjectWithoutPrefix forKey:kDataDetectorsEventTitleKey];
  }

  if (dateSent)
  {
    [v3 setObject:dateSent forKey:kDataDetectorsReferenceDateKey];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (void)_updateFonts
{
  _subjectFont = [(MessageHeaderSubjectBlock *)self _subjectFont];
  subjectTextView = [(MessageHeaderSubjectBlock *)self subjectTextView];
  [subjectTextView setFont:_subjectFont];

  subjectLabel = [(MessageHeaderSubjectBlock *)self subjectLabel];
  [subjectLabel setFont:_subjectFont];
}

- (id)_subjectFont
{
  v3 = +[MFFontMetricCache sharedFontMetricCache];
  displayMetrics = [(MessageHeaderSubjectBlock *)self displayMetrics];
  hasCompactLayout = [displayMetrics hasCompactLayout];

  if (hasCompactLayout)
  {
    v6 = &stru_100651630;
  }

  else
  {
    v6 = &stru_100651650;
  }

  if (hasCompactLayout)
  {
    v7 = @"MessageHeaderSubjectBlock.compactSubjectFont";
  }

  else
  {
    v7 = @"MessageHeaderSubjectBlock.regularSubjectFont";
  }

  v8 = [v3 cachedFont:v6 forKey:v7];

  return v8;
}

@end
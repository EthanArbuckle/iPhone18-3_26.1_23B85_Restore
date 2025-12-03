@interface VMMessageTranscriptView
- (BOOL)shouldShowFeedbackTextView;
- (VMMessageTranscriptViewDelegate)delegate;
- (double)textViewFirstBaselineLayoutConstraintConstant;
- (double)textViewLastBaselineLayoutConstraintConstant;
- (double)textViewLineHeight;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (void)_refreshAttributedText;
- (void)commonInit;
- (void)handleFeedbackTextViewTapGesture:(id)gesture;
- (void)handleSuggestionsTapGesture:(id)gesture;
- (void)handleTextViewTapGesture:(id)gesture;
- (void)loadConstraints;
- (void)openFeedbackURL:(id)l;
- (void)setHideAccessoryViews:(BOOL)views;
- (void)setViewModel:(id)model;
- (void)tintColorDidChange;
- (void)updateConstraintsConstants;
- (void)updateQuickActionsStackView;
@end

@implementation VMMessageTranscriptView

- (void)commonInit
{
  v50.receiver = self;
  v50.super_class = VMMessageTranscriptView;
  [(VMMessageTranscriptView *)&v50 commonInit];
  [(VMMessageTranscriptView *)self setClipsToBounds:1];
  v3 = objc_alloc_init(TUFeatureFlags);
  featureFlags = self->_featureFlags;
  self->_featureFlags = v3;

  if (([(TUFeatureFlags *)self->_featureFlags smartVoicemailActionsEnabled]& 1) != 0)
  {
    v5 = [UIStackView alloc];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    appSuggestionStackView = self->_appSuggestionStackView;
    self->_appSuggestionStackView = v10;

    [(UIStackView *)self->_appSuggestionStackView setAlignment:0];
    [(UIStackView *)self->_appSuggestionStackView setAxis:1];
    [(UIStackView *)self->_appSuggestionStackView setDistribution:0];
    [(UIStackView *)self->_appSuggestionStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_appSuggestionStackView setSpacing:10.0];
    [(VMMessageTranscriptView *)self addSubview:self->_appSuggestionStackView];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    suggestionsLabel = self->_suggestionsLabel;
    self->_suggestionsLabel = v12;

    [(UILabel *)self->_suggestionsLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)self->_suggestionsLabel setLineBreakMode:4];
    [(UILabel *)self->_suggestionsLabel setTextAlignment:4];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FOLLOW_UP_SUGGESTIONS" value:&stru_10028F310 table:@"VoicemailUI"];
    [(UILabel *)self->_suggestionsLabel setText:v15];

    [(UILabel *)self->_suggestionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_suggestionsLabel setUserInteractionEnabled:0];
    [(VMMessageTranscriptView *)self addSubview:self->_suggestionsLabel];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v16 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v16;

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:0];
  [(UILabel *)self->_titleLabel setLineBreakMode:4];
  [(UILabel *)self->_titleLabel setTextAlignment:4];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_TITLE" value:&stru_10028F310 table:@"VoicemailUI"];
  [(UILabel *)self->_titleLabel setText:v19];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setUserInteractionEnabled:0];
  [(VMMessageTranscriptView *)self addSubview:self->_titleLabel];
  v20 = [[UITextView alloc] initWithFrame:{x, y, width, height}];
  textView = self->_textView;
  self->_textView = v20;

  v22 = +[UIColor clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v22];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(UITextView *)self->_textView setContentInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(UITextView *)self->_textView setDataDetectorTypes:-1];
  [(UITextView *)self->_feedbackTextView setDelaysContentTouches:0];
  [(UITextView *)self->_textView setEditable:0];
  [(VMMessageTranscriptView *)self textViewLineHeight];
  [(UITextView *)self->_textView setLineHeight:?];
  [(UITextView *)self->_textView setScrollEnabled:0];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineBreakMode:4];

  textContainer2 = [(UITextView *)self->_textView textContainer];
  [textContainer2 setLineFragmentPadding:0.0];

  textContainer3 = [(UITextView *)self->_textView textContainer];
  [textContainer3 setMaximumNumberOfLines:0];

  [(UITextView *)self->_textView setTextContainerInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setUserInteractionEnabled:1];
  [(UITextView *)self->_textView setTextAlignment:4];
  [(VMMessageTranscriptView *)self addSubview:self->_textView];
  if (CPIsInternalDevice())
  {
    v29 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTextViewTapGesture:"];
    [v29 setNumberOfTouchesRequired:2];
    [(VMMessageTranscriptView *)self addGestureRecognizer:v29];
  }

  v30 = objc_alloc_init(UITextView);
  feedbackTextView = self->_feedbackTextView;
  self->_feedbackTextView = v30;

  v32 = +[UIColor clearColor];
  [(UITextView *)self->_feedbackTextView setBackgroundColor:v32];

  [(UITextView *)self->_feedbackTextView setContentInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(UITextView *)self->_feedbackTextView setDataDetectorTypes:2];
  [(UITextView *)self->_feedbackTextView setDelaysContentTouches:0];
  [(UITextView *)self->_feedbackTextView setEditable:0];
  v52 = NSForegroundColorAttributeName;
  v33 = +[UIColor systemBlueColor];
  v53 = v33;
  v34 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [(UITextView *)self->_feedbackTextView setLinkTextAttributes:v34];

  [(UITextView *)self->_feedbackTextView setScrollEnabled:0];
  [(UITextView *)self->_feedbackTextView setSelectable:0];
  textContainer4 = [(UITextView *)self->_feedbackTextView textContainer];
  [textContainer4 setLineFragmentPadding:0.0];

  textContainer5 = [(UITextView *)self->_feedbackTextView textContainer];
  [textContainer5 setMaximumNumberOfLines:0];

  [(UITextView *)self->_feedbackTextView setTextContainerInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(UITextView *)self->_feedbackTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_feedbackTextView setTextAlignment:4];
  [(VMMessageTranscriptView *)self addSubview:self->_feedbackTextView];
  v37 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleFeedbackTextViewTapGesture:"];
  [(UITextView *)self->_feedbackTextView addGestureRecognizer:v37];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  gestureRecognizers = [(UITextView *)self->_feedbackTextView gestureRecognizers];
  v39 = [gestureRecognizers countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v47;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v43 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v43 setEnabled:0];
        }
      }

      v40 = [gestureRecognizers countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v40);
  }

  v44 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  indicatorView = self->_indicatorView;
  self->_indicatorView = v44;

  [(UIActivityIndicatorView *)self->_indicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_indicatorView setUserInteractionEnabled:0];
  [(VMMessageTranscriptView *)self addSubview:self->_indicatorView];
}

- (void)loadConstraints
{
  indicatorView = [(VMMessageTranscriptView *)self indicatorView];
  topAnchor = [indicatorView topAnchor];
  topAnchor2 = [(VMMessageTranscriptView *)self topAnchor];
  [(VMMessageTranscriptView *)self indicatorViewTopLayoutConstraintConstant];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];

  v7 = NSStringFromSelector("indicatorViewTopLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMMessageTranscriptView *)self setIndicatorViewTopLayoutConstraint:v6];
  indicatorView2 = [(VMMessageTranscriptView *)self indicatorView];
  centerXAnchor = [indicatorView2 centerXAnchor];
  centerXAnchor2 = [(VMMessageTranscriptView *)self centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  v12 = NSStringFromSelector("indicatorViewCenterXLayoutConstraint");
  [v11 setIdentifier:v12];

  [v11 setActive:1];
  [(VMMessageTranscriptView *)self setIndicatorViewCenterXLayoutConstraint:v11];
  titleLabel = [(VMMessageTranscriptView *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  indicatorView3 = [(VMMessageTranscriptView *)self indicatorView];
  bottomAnchor = [indicatorView3 bottomAnchor];
  [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v17 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];

  v18 = NSStringFromSelector("titleLabelTopLayoutConstraint");
  [v17 setIdentifier:v18];

  LODWORD(v19) = 1.0;
  [v17 setPriority:v19];
  [v17 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelTopLayoutConstraint:v17];
  titleLabel2 = [(VMMessageTranscriptView *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel2 firstBaselineAnchor];
  topAnchor3 = [(VMMessageTranscriptView *)self topAnchor];
  [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v23 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor3 constant:?];

  v24 = NSStringFromSelector("titleLabelFirstBaselineLayoutConstraint");
  [v23 setIdentifier:v24];

  LODWORD(v25) = 1148829696;
  [v23 setPriority:v25];
  [v23 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelFirstBaselineLayoutConstraint:v23];
  titleLabel3 = [(VMMessageTranscriptView *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  leadingAnchor2 = [(VMMessageTranscriptView *)self leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  v30 = NSStringFromSelector("titleLabelLeadingLayoutConstraint");
  [v29 setIdentifier:v30];

  [v29 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelLeadingLayoutConstraint:v29];
  trailingAnchor = [(VMMessageTranscriptView *)self trailingAnchor];
  titleLabel4 = [(VMMessageTranscriptView *)self titleLabel];
  trailingAnchor2 = [titleLabel4 trailingAnchor];
  v34 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];

  v35 = NSStringFromSelector("titleLabelTrailingLayoutConstraint");
  [v34 setIdentifier:v35];

  [v34 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelTrailingLayoutConstraint:v34];
  textView = [(VMMessageTranscriptView *)self textView];
  leadingAnchor3 = [textView leadingAnchor];
  leadingAnchor4 = [(VMMessageTranscriptView *)self leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  v40 = NSStringFromSelector("textViewLeadingLayoutConstraint");
  [v39 setIdentifier:v40];

  [v39 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewLeadingLayoutConstraint:v39];
  trailingAnchor3 = [(VMMessageTranscriptView *)self trailingAnchor];
  textView2 = [(VMMessageTranscriptView *)self textView];
  trailingAnchor4 = [textView2 trailingAnchor];
  v44 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  v45 = NSStringFromSelector("textViewTrailingLayoutConstraint");
  [v44 setIdentifier:v45];

  [v44 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewTrailingLayoutConstraint:v44];
  textView3 = [(VMMessageTranscriptView *)self textView];
  firstBaselineAnchor3 = [textView3 firstBaselineAnchor];
  titleLabel5 = [(VMMessageTranscriptView *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
  v50 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:?];

  LODWORD(v51) = 1148829696;
  [v50 setPriority:v51];
  v52 = NSStringFromSelector("textViewFirstBaselineLayoutConstraint");
  [v50 setIdentifier:v52];

  [v50 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewFirstBaselineLayoutConstraint:v50];
  feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
  topAnchor4 = [feedbackTextView topAnchor];
  textView4 = [(VMMessageTranscriptView *)self textView];
  lastBaselineAnchor2 = [textView4 lastBaselineAnchor];
  [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraintConstant];
  v57 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2 constant:?];

  v58 = NSStringFromSelector("textViewLastBaselineLayoutConstraint");
  [v57 setIdentifier:v58];

  [v57 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewLastBaselineLayoutConstraint:v57];
  textView5 = [(VMMessageTranscriptView *)self textView];
  firstBaselineAnchor4 = [textView5 firstBaselineAnchor];
  topAnchor5 = [(VMMessageTranscriptView *)self topAnchor];
  [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
  v62 = [firstBaselineAnchor4 constraintEqualToAnchor:topAnchor5 constant:?];

  LODWORD(v63) = 1.0;
  [v62 setPriority:v63];
  v64 = NSStringFromSelector("textViewFirstBaselineWithoutAccessoryViewsLayoutConstraint");
  [v62 setIdentifier:v64];

  [v62 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewFirstBaselineWithoutAccessoryViewsLayoutConstraint:v62];
  featureFlags = [(VMMessageTranscriptView *)self featureFlags];
  LOBYTE(textView5) = [featureFlags smartVoicemailActionsEnabled];

  if (textView5)
  {
    feedbackTextView2 = [(VMMessageTranscriptView *)self feedbackTextView];
    leadingAnchor5 = [feedbackTextView2 leadingAnchor];
    leadingAnchor6 = [(VMMessageTranscriptView *)self leadingAnchor];
    v69 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

    v70 = NSStringFromSelector("feedbackTextViewLeadingLayoutConstraint");
    [v69 setIdentifier:v70];

    [v69 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewLeadingLayoutConstraint:v69];
    trailingAnchor5 = [(VMMessageTranscriptView *)self trailingAnchor];
    feedbackTextView3 = [(VMMessageTranscriptView *)self feedbackTextView];
    trailingAnchor6 = [feedbackTextView3 trailingAnchor];
    v74 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];

    v75 = NSStringFromSelector("feedbackTextViewTrailingLayoutConstraint");
    [v74 setIdentifier:v75];

    [v74 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTrailingLayoutConstraint:v74];
    feedbackTextView4 = [(VMMessageTranscriptView *)self feedbackTextView];
    topAnchor6 = [feedbackTextView4 topAnchor];
    textView6 = [(VMMessageTranscriptView *)self textView];
    bottomAnchor2 = [textView6 bottomAnchor];
    [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraintConstant];
    v80 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:?];

    v81 = NSStringFromSelector("feedbackTextViewTopLayoutConstraint");
    [v80 setIdentifier:v81];

    [v80 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTopLayoutConstraint:v80];
    suggestionsLabel = [(VMMessageTranscriptView *)self suggestionsLabel];
    leadingAnchor7 = [suggestionsLabel leadingAnchor];
    leadingAnchor8 = [(VMMessageTranscriptView *)self leadingAnchor];
    v85 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];

    v86 = NSStringFromSelector("suggestionsLabelLeadingLayoutConstraint");
    [v85 setIdentifier:v86];

    [v85 setActive:1];
    [(VMMessageTranscriptView *)self setSuggestionsLabelLeadingLayoutConstraint:v85];
    trailingAnchor7 = [(VMMessageTranscriptView *)self trailingAnchor];
    suggestionsLabel2 = [(VMMessageTranscriptView *)self suggestionsLabel];
    trailingAnchor8 = [suggestionsLabel2 trailingAnchor];
    v90 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];

    v91 = NSStringFromSelector("suggestionsLabelTrailingLayoutConstraint");
    [v90 setIdentifier:v91];

    [v90 setActive:1];
    [(VMMessageTranscriptView *)self setSuggestionsLabelTrailingLayoutConstraint:v90];
    suggestionsLabel3 = [(VMMessageTranscriptView *)self suggestionsLabel];
    topAnchor7 = [suggestionsLabel3 topAnchor];
    feedbackTextView5 = [(VMMessageTranscriptView *)self feedbackTextView];
    bottomAnchor3 = [feedbackTextView5 bottomAnchor];
    v96 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:30.0];

    v97 = NSStringFromSelector("suggestionsLabelTopLayoutConstraint");
    [v96 setIdentifier:v97];

    [v96 setActive:1];
    [(VMMessageTranscriptView *)self setSuggestionsLabelTopLayoutConstraint:v96];
    appSuggestionStackView = [(VMMessageTranscriptView *)self appSuggestionStackView];
    leadingAnchor9 = [appSuggestionStackView leadingAnchor];
    leadingAnchor10 = [(VMMessageTranscriptView *)self leadingAnchor];
    v101 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];

    v102 = NSStringFromSelector("appSuggestionStackViewLeadingLayoutConstraint");
    [v101 setIdentifier:v102];

    [v101 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewLeadingLayoutConstraint:v101];
    trailingAnchor9 = [(VMMessageTranscriptView *)self trailingAnchor];
    appSuggestionStackView2 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    trailingAnchor10 = [appSuggestionStackView2 trailingAnchor];
    v106 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];

    v107 = NSStringFromSelector("appSuggestionStackViewTrailingLayoutConstraint");
    [v106 setIdentifier:v107];

    [v106 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewTrailingLayoutConstraint:v106];
    appSuggestionStackView3 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    topAnchor8 = [appSuggestionStackView3 topAnchor];
    suggestionsLabel4 = [(VMMessageTranscriptView *)self suggestionsLabel];
    bottomAnchor4 = [suggestionsLabel4 bottomAnchor];
    v112 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4 constant:30.0];

    v113 = NSStringFromSelector("appSuggestionStackViewTopLayoutConstraint");
    [v112 setIdentifier:v113];

    [v112 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewTopLayoutConstraint:v112];
    bottomAnchor5 = [(VMMessageTranscriptView *)self bottomAnchor];
    appSuggestionStackView4 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    bottomAnchor6 = [appSuggestionStackView4 bottomAnchor];
    v117 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];

    v118 = NSStringFromSelector("appSuggestionStackViewBottomLayoutConstraint");
    [v117 setIdentifier:v118];

    [v117 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewBottomLayoutConstraint:v117];
  }

  else
  {
    bottomAnchor7 = [(VMMessageTranscriptView *)self bottomAnchor];
    textView7 = [(VMMessageTranscriptView *)self textView];
    lastBaselineAnchor3 = [textView7 lastBaselineAnchor];
    [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
    v122 = [bottomAnchor7 constraintEqualToAnchor:lastBaselineAnchor3 constant:?];

    LODWORD(v123) = 1.0;
    [v122 setPriority:v123];
    v124 = NSStringFromSelector("textViewBottomLayoutConstraint");
    [v122 setIdentifier:v124];

    [v122 setActive:1];
    [(VMMessageTranscriptView *)self setTextViewBottomLayoutConstraint:v122];
    feedbackTextView6 = [(VMMessageTranscriptView *)self feedbackTextView];
    leadingAnchor11 = [feedbackTextView6 leadingAnchor];
    leadingAnchor12 = [(VMMessageTranscriptView *)self leadingAnchor];
    v128 = [leadingAnchor11 constraintGreaterThanOrEqualToAnchor:leadingAnchor12];

    v129 = NSStringFromSelector("feedbackTextViewLeadingLayoutConstraint");
    [v128 setIdentifier:v129];

    [v128 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewLeadingLayoutConstraint:v128];
    trailingAnchor11 = [(VMMessageTranscriptView *)self trailingAnchor];
    feedbackTextView7 = [(VMMessageTranscriptView *)self feedbackTextView];
    trailingAnchor12 = [feedbackTextView7 trailingAnchor];
    v133 = [trailingAnchor11 constraintGreaterThanOrEqualToAnchor:trailingAnchor12];

    v134 = NSStringFromSelector("feedbackTextViewTrailingLayoutConstraint");
    [v133 setIdentifier:v134];

    [v133 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTrailingLayoutConstraint:v133];
    textViewLastBaselineLayoutConstraint = [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraint];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTopLayoutConstraint:textViewLastBaselineLayoutConstraint];

    bottomAnchor8 = [(VMMessageTranscriptView *)self bottomAnchor];
    feedbackTextView8 = [(VMMessageTranscriptView *)self feedbackTextView];
    lastBaselineAnchor4 = [feedbackTextView8 lastBaselineAnchor];
    [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
    v117 = [bottomAnchor8 constraintEqualToAnchor:lastBaselineAnchor4 constant:?];

    v139 = NSStringFromSelector("feedbackTextViewBottomLayoutConstraint");
    [v117 setIdentifier:v139];

    [v117 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewBottomLayoutConstraint:v117];
  }

  v140.receiver = self;
  v140.super_class = VMMessageTranscriptView;
  [(VMMessageTranscriptView *)&v140 loadConstraints];
}

- (void)updateConstraintsConstants
{
  v41.receiver = self;
  v41.super_class = VMMessageTranscriptView;
  [(VMMessageTranscriptView *)&v41 updateConstraintsConstants];
  [(VMMessageTranscriptView *)self _refreshAttributedText];
  [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  titleLabelFirstBaselineLayoutConstraint = [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraint];
  [titleLabelFirstBaselineLayoutConstraint setConstant:v4];

  [(VMMessageTranscriptView *)self indicatorViewTopLayoutConstraintConstant];
  v7 = v6;
  indicatorViewTopLayoutConstraint = [(VMMessageTranscriptView *)self indicatorViewTopLayoutConstraint];
  [indicatorViewTopLayoutConstraint setConstant:v7];

  [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
  v10 = v9;
  textViewFirstBaselineLayoutConstraint = [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraint];
  [textViewFirstBaselineLayoutConstraint setConstant:v10];

  [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraintConstant];
  v13 = v12;
  textViewLastBaselineLayoutConstraint = [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraint];
  [textViewLastBaselineLayoutConstraint setConstant:v13];

  [(VMMessageTranscriptView *)self textViewLineHeight];
  v16 = v15;
  textView = [(VMMessageTranscriptView *)self textView];
  [textView setLineHeight:v16];

  [(VMMessageTranscriptView *)self bounds];
  Width = CGRectGetWidth(v42);
  feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView _setPreferredMaxLayoutWidth:Width];

  feedbackTextView2 = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView2 _preferredMaxLayoutWidth];
  v22 = v21;
  textView2 = [(VMMessageTranscriptView *)self textView];
  [textView2 _setPreferredMaxLayoutWidth:v22];

  feedbackTextView3 = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView3 _preferredMaxLayoutWidth];
  v26 = v25;
  titleLabel = [(VMMessageTranscriptView *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:v26];

  v28 = [(VMMessageTranscriptView *)self isAccessiblityConstraintsEnabled]^ 1;
  titleLabel2 = [(VMMessageTranscriptView *)self titleLabel];
  [titleLabel2 setNumberOfLines:v28];

  feedbackTextView4 = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView4 sizeToFit];

  textView3 = [(VMMessageTranscriptView *)self textView];
  [textView3 sizeToFit];

  titleLabel3 = [(VMMessageTranscriptView *)self titleLabel];
  [titleLabel3 sizeToFit];

  featureFlags = [(VMMessageTranscriptView *)self featureFlags];
  LODWORD(titleLabel2) = [featureFlags smartVoicemailActionsEnabled];

  if (titleLabel2)
  {
    [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
    v35 = v34;
    suggestionsLabelFirstBaselineLayoutConstraint = [(VMMessageTranscriptView *)self suggestionsLabelFirstBaselineLayoutConstraint];
    [suggestionsLabelFirstBaselineLayoutConstraint setConstant:v35];

    [(VMMessageTranscriptView *)self bounds];
    v37 = CGRectGetWidth(v43);
    suggestionsLabel = [(VMMessageTranscriptView *)self suggestionsLabel];
    [suggestionsLabel setPreferredMaxLayoutWidth:v37];

    appSuggestionStackViewTopLayoutConstraint = [(VMMessageTranscriptView *)self appSuggestionStackViewTopLayoutConstraint];
    [appSuggestionStackViewTopLayoutConstraint setConstant:30.0];

    appSuggestionStackView = [(VMMessageTranscriptView *)self appSuggestionStackView];
    [appSuggestionStackView sizeToFit];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v27 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(VMMessageTranscriptViewModel *)self->_viewModel setTintColorDelegate:self];
    [(VMMessageTranscriptView *)self _refreshAttributedText];
    isTranscribing = [(VMMessageTranscriptViewModel *)v27 isTranscribing];
    indicatorView = [(VMMessageTranscriptView *)self indicatorView];
    [indicatorView setHidden:isTranscribing ^ 1];

    featureFlags = [(VMMessageTranscriptView *)self featureFlags];
    LODWORD(indicatorView) = [featureFlags voicemailSearchEnabled];

    isTranscribing2 = [(VMMessageTranscriptViewModel *)v27 isTranscribing];
    hideAccessoryViews = indicatorView | isTranscribing2;
    if (indicatorView && (isTranscribing2 & 1) == 0)
    {
      hideAccessoryViews = [(VMMessageTranscriptView *)self hideAccessoryViews];
    }

    feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
    [feedbackTextView setHidden:hideAccessoryViews & 1];

    LODWORD(feedbackTextView) = [(VMMessageTranscriptViewModel *)v27 isTranscribing];
    indicatorView2 = [(VMMessageTranscriptView *)self indicatorView];
    v13 = indicatorView2;
    if (feedbackTextView)
    {
      [indicatorView2 startAnimating];
      v14 = 1.0;
      v15 = 999.0;
    }

    else
    {
      [indicatorView2 stopAnimating];
      v15 = 1.0;
      v14 = 999.0;
    }

    titleLabelFirstBaselineLayoutConstraint = [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraint];
    *&v17 = v14;
    [titleLabelFirstBaselineLayoutConstraint setPriority:v17];

    titleLabelTopLayoutConstraint = [(VMMessageTranscriptView *)self titleLabelTopLayoutConstraint];
    *&v19 = v15;
    [titleLabelTopLayoutConstraint setPriority:v19];

    featureFlags2 = [(VMMessageTranscriptView *)self featureFlags];
    smartVoicemailActionsEnabled = [featureFlags2 smartVoicemailActionsEnabled];

    if (smartVoicemailActionsEnabled)
    {
      suggestionsLabelFirstBaselineLayoutConstraint = [(VMMessageTranscriptView *)self suggestionsLabelFirstBaselineLayoutConstraint];
      LODWORD(v23) = 1.0;
      [suggestionsLabelFirstBaselineLayoutConstraint setPriority:v23];

      suggestionsLabelTopLayoutConstraint = [(VMMessageTranscriptView *)self suggestionsLabelTopLayoutConstraint];
      LODWORD(v25) = 1148829696;
      [suggestionsLabelTopLayoutConstraint setPriority:v25];

      quickActionSuggestions = [(VMMessageTranscriptViewModel *)self->_viewModel quickActionSuggestions];

      if (quickActionSuggestions)
      {
        [(VMMessageTranscriptView *)self updateQuickActionsStackView];
      }
    }

    [(VMMessageTranscriptView *)self setNeedsUpdateConstraints];
    modelCopy = v27;
  }
}

- (void)setHideAccessoryViews:(BOOL)views
{
  if (self->_hideAccessoryViews != views)
  {
    viewsCopy = views;
    self->_hideAccessoryViews = views;
    if (views)
    {
      featureFlags = [(VMMessageTranscriptView *)self featureFlags];
      voicemailSearchEnabled = [featureFlags voicemailSearchEnabled];

      v8 = 1.0;
      v9 = 999.0;
      if (voicemailSearchEnabled)
      {
        [(VMMessageTranscriptView *)self loadConstraints];
      }
    }

    else
    {
      v9 = 1.0;
      v8 = 999.0;
    }

    titleLabel = [(VMMessageTranscriptView *)self titleLabel];
    [titleLabel setHidden:viewsCopy];

    feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
    [feedbackTextView setHidden:viewsCopy];

    textViewFirstBaselineWithoutAccessoryViewsLayoutConstraint = [(VMMessageTranscriptView *)self textViewFirstBaselineWithoutAccessoryViewsLayoutConstraint];
    *&v13 = v9;
    [textViewFirstBaselineWithoutAccessoryViewsLayoutConstraint setPriority:v13];

    textViewBottomLayoutConstraint = [(VMMessageTranscriptView *)self textViewBottomLayoutConstraint];
    *&v15 = v9;
    [textViewBottomLayoutConstraint setPriority:v15];

    textViewFirstBaselineLayoutConstraint = [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraint];
    *&v16 = v8;
    [textViewFirstBaselineLayoutConstraint setPriority:v16];
  }
}

- (void)updateQuickActionsStackView
{
  v3 = +[UIButtonConfiguration tintedButtonConfiguration];
  [v3 setCornerStyle:1];
  [v3 setButtonSize:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  quickActionSuggestions = [(VMMessageTranscriptViewModel *)self->_viewModel quickActionSuggestions];
  v5 = [quickActionSuggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(quickActionSuggestions);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [UIButton buttonWithType:1];
        [v10 setTitle:v9 forState:0];
        [v10 addTarget:self action:"handleSuggestionsTapGesture:" forControlEvents:64];
        [v10 setConfiguration:v3];
        [(VMMessageTranscriptView *)self bounds];
        Width = CGRectGetWidth(v19);
        titleLabel = [v10 titleLabel];
        [titleLabel setPreferredMaxLayoutWidth:Width];

        [v10 setContentHorizontalAlignment:1];
        appSuggestionStackView = [(VMMessageTranscriptView *)self appSuggestionStackView];
        [appSuggestionStackView addArrangedSubview:v10];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [quickActionSuggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldShowFeedbackTextView
{
  if (PHVoicemailFeedbackReportingAvailable())
  {
    feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
    attributedText = [feedbackTextView attributedText];
    if ([attributedText length])
    {
      viewModel = [(VMMessageTranscriptView *)self viewModel];
      v6 = [viewModel donated] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)handleSuggestionsTapGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(VMMessageTranscriptView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VMMessageTranscriptView *)self delegate];
    titleLabel = [gestureCopy titleLabel];
    text = [titleLabel text];
    [delegate2 messageTranscriptView:self suggestionsDidReceiveTapGesture:text];
  }
}

- (void)handleFeedbackTextViewTapGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = gestureCopy;
    if ([v4 state] == 3)
    {
      feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
      [v4 locationInView:feedbackTextView];
      v7 = v6;
      v9 = v8;

      feedbackTextView2 = [(VMMessageTranscriptView *)self feedbackTextView];
      v11 = [feedbackTextView2 closestPositionToPoint:{v7, v9}];

      feedbackTextView3 = [(VMMessageTranscriptView *)self feedbackTextView];
      v13 = [feedbackTextView3 textStylingAtPosition:v11 inDirection:0];
      v14 = [v13 objectForKey:NSLinkAttributeName];

      if (v14)
      {
        [(VMMessageTranscriptView *)self openFeedbackURL:v14];
      }
    }
  }

  _objc_release_x1();
}

- (void)handleTextViewTapGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = gestureCopy;
    delegate = [(VMMessageTranscriptView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(VMMessageTranscriptView *)self delegate];
      [delegate2 messageTranscriptView:self didReceiveTapGesture:v4];
    }
  }

  _objc_release_x1();
}

- (void)openFeedbackURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = +[VMMessageTranscriptViewModel neutralFeedbackURL];
  absoluteString2 = [v4 absoluteString];
  v6 = [absoluteString isEqualToString:absoluteString2];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[VMMessageTranscriptViewModel negativeFeedbackURL];
    absoluteString3 = [v8 absoluteString];
    v10 = [absoluteString isEqualToString:absoluteString3];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = +[VMMessageTranscriptViewModel positiveFeedbackURL];
      absoluteString4 = [v11 absoluteString];
      v13 = [absoluteString isEqualToString:absoluteString4];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  delegate = [(VMMessageTranscriptView *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(VMMessageTranscriptView *)self delegate];
    [delegate2 messageTranscriptView:self didReportFeedback:v7];
  }

  feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
  attributedText = [feedbackTextView attributedText];
  v19 = [attributedText mutableCopy];

  v20 = [v19 length];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FEEDBACK_REPORTED" value:&stru_10028F310 table:@"VoicemailUI"];
  [v19 replaceCharactersInRange:0 withString:{v20, v22}];

  [v19 removeAttribute:NSLinkAttributeName range:{0, objc_msgSend(v19, "length")}];
  feedbackTextView2 = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView2 setAttributedText:v19];

  feedbackTextView3 = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView3 sizeToFit];
}

- (double)textViewFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont voicemailHeadlineShortFont];
  [v2 _scaledValueForValue:24.0];
  v4 = ceil(v3);

  return v4;
}

- (double)textViewLastBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  [v2 _scaledValueForValue:20.0];
  v4 = ceil(v3);

  return v4;
}

- (double)textViewLineHeight
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  [v2 _scaledValueForValue:22.0];
  v4 = ceil(v3);

  return v4;
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont voicemailCaptionRegularFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:24.0];
    v7 = v6;
  }

  else
  {
    v7 = 24.0;
  }

  return v7;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VMMessageTranscriptView;
  [(VMMessageTranscriptView *)&v3 tintColorDidChange];
  [(VMMessageTranscriptView *)self _refreshAttributedText];
}

- (void)_refreshAttributedText
{
  viewModel = [(VMMessageTranscriptView *)self viewModel];
  localizedAttributedFeedbackText = [viewModel localizedAttributedFeedbackText];
  feedbackTextView = [(VMMessageTranscriptView *)self feedbackTextView];
  [feedbackTextView setAttributedText:localizedAttributedFeedbackText];

  viewModel2 = [(VMMessageTranscriptView *)self viewModel];
  localizedAttributedText = [viewModel2 localizedAttributedText];
  textView = [(VMMessageTranscriptView *)self textView];
  [textView setAttributedText:localizedAttributedText];

  viewModel3 = [(VMMessageTranscriptView *)self viewModel];
  localizedAttributedTitle = [viewModel3 localizedAttributedTitle];
  titleLabel = [(VMMessageTranscriptView *)self titleLabel];
  [titleLabel setAttributedText:localizedAttributedTitle];

  viewModel4 = [(VMMessageTranscriptView *)self viewModel];
  localizedAttributedFollowUpSuggestionsText = [viewModel4 localizedAttributedFollowUpSuggestionsText];
  suggestionsLabel = [(VMMessageTranscriptView *)self suggestionsLabel];
  [suggestionsLabel setAttributedText:localizedAttributedFollowUpSuggestionsText];
}

- (VMMessageTranscriptViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface VMMessageTranscriptView
- (BOOL)shouldShowFeedbackTextView;
- (VMMessageTranscriptViewDelegate)delegate;
- (double)textViewFirstBaselineLayoutConstraintConstant;
- (double)textViewLastBaselineLayoutConstraintConstant;
- (double)textViewLineHeight;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (void)_refreshAttributedText;
- (void)commonInit;
- (void)handleFeedbackTextViewTapGesture:(id)a3;
- (void)handleSuggestionsTapGesture:(id)a3;
- (void)handleTextViewTapGesture:(id)a3;
- (void)loadConstraints;
- (void)openFeedbackURL:(id)a3;
- (void)setHideAccessoryViews:(BOOL)a3;
- (void)setViewModel:(id)a3;
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
    v15 = [v14 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FOLLOW_UP_SUGGESTIONS" value:&stru_10008C168 table:@"VoicemailUI"];
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
  v19 = [v18 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_TITLE" value:&stru_10008C168 table:@"VoicemailUI"];
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
  v26 = [(UITextView *)self->_textView textContainer];
  [v26 setLineBreakMode:4];

  v27 = [(UITextView *)self->_textView textContainer];
  [v27 setLineFragmentPadding:0.0];

  v28 = [(UITextView *)self->_textView textContainer];
  [v28 setMaximumNumberOfLines:0];

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
  v35 = [(UITextView *)self->_feedbackTextView textContainer];
  [v35 setLineFragmentPadding:0.0];

  v36 = [(UITextView *)self->_feedbackTextView textContainer];
  [v36 setMaximumNumberOfLines:0];

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
  v38 = [(UITextView *)self->_feedbackTextView gestureRecognizers];
  v39 = [v38 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v43 setEnabled:0];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
  v3 = [(VMMessageTranscriptView *)self indicatorView];
  v4 = [v3 topAnchor];
  v5 = [(VMMessageTranscriptView *)self topAnchor];
  [(VMMessageTranscriptView *)self indicatorViewTopLayoutConstraintConstant];
  v6 = [v4 constraintEqualToAnchor:v5 constant:?];

  v7 = NSStringFromSelector("indicatorViewTopLayoutConstraint");
  [v6 setIdentifier:v7];

  [v6 setActive:1];
  [(VMMessageTranscriptView *)self setIndicatorViewTopLayoutConstraint:v6];
  v8 = [(VMMessageTranscriptView *)self indicatorView];
  v9 = [v8 centerXAnchor];
  v10 = [(VMMessageTranscriptView *)self centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  v12 = NSStringFromSelector("indicatorViewCenterXLayoutConstraint");
  [v11 setIdentifier:v12];

  [v11 setActive:1];
  [(VMMessageTranscriptView *)self setIndicatorViewCenterXLayoutConstraint:v11];
  v13 = [(VMMessageTranscriptView *)self titleLabel];
  v14 = [v13 firstBaselineAnchor];
  v15 = [(VMMessageTranscriptView *)self indicatorView];
  v16 = [v15 bottomAnchor];
  [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v17 = [v14 constraintEqualToAnchor:v16 constant:?];

  v18 = NSStringFromSelector("titleLabelTopLayoutConstraint");
  [v17 setIdentifier:v18];

  LODWORD(v19) = 1.0;
  [v17 setPriority:v19];
  [v17 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelTopLayoutConstraint:v17];
  v20 = [(VMMessageTranscriptView *)self titleLabel];
  v21 = [v20 firstBaselineAnchor];
  v22 = [(VMMessageTranscriptView *)self topAnchor];
  [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v23 = [v21 constraintEqualToAnchor:v22 constant:?];

  v24 = NSStringFromSelector("titleLabelFirstBaselineLayoutConstraint");
  [v23 setIdentifier:v24];

  LODWORD(v25) = 1148829696;
  [v23 setPriority:v25];
  [v23 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelFirstBaselineLayoutConstraint:v23];
  v26 = [(VMMessageTranscriptView *)self titleLabel];
  v27 = [v26 leadingAnchor];
  v28 = [(VMMessageTranscriptView *)self leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  v30 = NSStringFromSelector("titleLabelLeadingLayoutConstraint");
  [v29 setIdentifier:v30];

  [v29 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelLeadingLayoutConstraint:v29];
  v31 = [(VMMessageTranscriptView *)self trailingAnchor];
  v32 = [(VMMessageTranscriptView *)self titleLabel];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintGreaterThanOrEqualToAnchor:v33];

  v35 = NSStringFromSelector("titleLabelTrailingLayoutConstraint");
  [v34 setIdentifier:v35];

  [v34 setActive:1];
  [(VMMessageTranscriptView *)self setTitleLabelTrailingLayoutConstraint:v34];
  v36 = [(VMMessageTranscriptView *)self textView];
  v37 = [v36 leadingAnchor];
  v38 = [(VMMessageTranscriptView *)self leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  v40 = NSStringFromSelector("textViewLeadingLayoutConstraint");
  [v39 setIdentifier:v40];

  [v39 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewLeadingLayoutConstraint:v39];
  v41 = [(VMMessageTranscriptView *)self trailingAnchor];
  v42 = [(VMMessageTranscriptView *)self textView];
  v43 = [v42 trailingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];

  v45 = NSStringFromSelector("textViewTrailingLayoutConstraint");
  [v44 setIdentifier:v45];

  [v44 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewTrailingLayoutConstraint:v44];
  v46 = [(VMMessageTranscriptView *)self textView];
  v47 = [v46 firstBaselineAnchor];
  v48 = [(VMMessageTranscriptView *)self titleLabel];
  v49 = [v48 lastBaselineAnchor];
  [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
  v50 = [v47 constraintEqualToAnchor:v49 constant:?];

  LODWORD(v51) = 1148829696;
  [v50 setPriority:v51];
  v52 = NSStringFromSelector("textViewFirstBaselineLayoutConstraint");
  [v50 setIdentifier:v52];

  [v50 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewFirstBaselineLayoutConstraint:v50];
  v53 = [(VMMessageTranscriptView *)self feedbackTextView];
  v54 = [v53 topAnchor];
  v55 = [(VMMessageTranscriptView *)self textView];
  v56 = [v55 lastBaselineAnchor];
  [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraintConstant];
  v57 = [v54 constraintGreaterThanOrEqualToAnchor:v56 constant:?];

  v58 = NSStringFromSelector("textViewLastBaselineLayoutConstraint");
  [v57 setIdentifier:v58];

  [v57 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewLastBaselineLayoutConstraint:v57];
  v59 = [(VMMessageTranscriptView *)self textView];
  v60 = [v59 firstBaselineAnchor];
  v61 = [(VMMessageTranscriptView *)self topAnchor];
  [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
  v62 = [v60 constraintEqualToAnchor:v61 constant:?];

  LODWORD(v63) = 1.0;
  [v62 setPriority:v63];
  v64 = NSStringFromSelector("textViewFirstBaselineWithoutAccessoryViewsLayoutConstraint");
  [v62 setIdentifier:v64];

  [v62 setActive:1];
  [(VMMessageTranscriptView *)self setTextViewFirstBaselineWithoutAccessoryViewsLayoutConstraint:v62];
  v65 = [(VMMessageTranscriptView *)self featureFlags];
  LOBYTE(v59) = [v65 smartVoicemailActionsEnabled];

  if (v59)
  {
    v66 = [(VMMessageTranscriptView *)self feedbackTextView];
    v67 = [v66 leadingAnchor];
    v68 = [(VMMessageTranscriptView *)self leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    v70 = NSStringFromSelector("feedbackTextViewLeadingLayoutConstraint");
    [v69 setIdentifier:v70];

    [v69 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewLeadingLayoutConstraint:v69];
    v71 = [(VMMessageTranscriptView *)self trailingAnchor];
    v72 = [(VMMessageTranscriptView *)self feedbackTextView];
    v73 = [v72 trailingAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];

    v75 = NSStringFromSelector("feedbackTextViewTrailingLayoutConstraint");
    [v74 setIdentifier:v75];

    [v74 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTrailingLayoutConstraint:v74];
    v76 = [(VMMessageTranscriptView *)self feedbackTextView];
    v77 = [v76 topAnchor];
    v78 = [(VMMessageTranscriptView *)self textView];
    v79 = [v78 bottomAnchor];
    [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraintConstant];
    v80 = [v77 constraintEqualToAnchor:v79 constant:?];

    v81 = NSStringFromSelector("feedbackTextViewTopLayoutConstraint");
    [v80 setIdentifier:v81];

    [v80 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTopLayoutConstraint:v80];
    v82 = [(VMMessageTranscriptView *)self suggestionsLabel];
    v83 = [v82 leadingAnchor];
    v84 = [(VMMessageTranscriptView *)self leadingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    v86 = NSStringFromSelector("suggestionsLabelLeadingLayoutConstraint");
    [v85 setIdentifier:v86];

    [v85 setActive:1];
    [(VMMessageTranscriptView *)self setSuggestionsLabelLeadingLayoutConstraint:v85];
    v87 = [(VMMessageTranscriptView *)self trailingAnchor];
    v88 = [(VMMessageTranscriptView *)self suggestionsLabel];
    v89 = [v88 trailingAnchor];
    v90 = [v87 constraintEqualToAnchor:v89];

    v91 = NSStringFromSelector("suggestionsLabelTrailingLayoutConstraint");
    [v90 setIdentifier:v91];

    [v90 setActive:1];
    [(VMMessageTranscriptView *)self setSuggestionsLabelTrailingLayoutConstraint:v90];
    v92 = [(VMMessageTranscriptView *)self suggestionsLabel];
    v93 = [v92 topAnchor];
    v94 = [(VMMessageTranscriptView *)self feedbackTextView];
    v95 = [v94 bottomAnchor];
    v96 = [v93 constraintEqualToAnchor:v95 constant:30.0];

    v97 = NSStringFromSelector("suggestionsLabelTopLayoutConstraint");
    [v96 setIdentifier:v97];

    [v96 setActive:1];
    [(VMMessageTranscriptView *)self setSuggestionsLabelTopLayoutConstraint:v96];
    v98 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    v99 = [v98 leadingAnchor];
    v100 = [(VMMessageTranscriptView *)self leadingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];

    v102 = NSStringFromSelector("appSuggestionStackViewLeadingLayoutConstraint");
    [v101 setIdentifier:v102];

    [v101 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewLeadingLayoutConstraint:v101];
    v103 = [(VMMessageTranscriptView *)self trailingAnchor];
    v104 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    v105 = [v104 trailingAnchor];
    v106 = [v103 constraintEqualToAnchor:v105];

    v107 = NSStringFromSelector("appSuggestionStackViewTrailingLayoutConstraint");
    [v106 setIdentifier:v107];

    [v106 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewTrailingLayoutConstraint:v106];
    v108 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    v109 = [v108 topAnchor];
    v110 = [(VMMessageTranscriptView *)self suggestionsLabel];
    v111 = [v110 bottomAnchor];
    v112 = [v109 constraintEqualToAnchor:v111 constant:30.0];

    v113 = NSStringFromSelector("appSuggestionStackViewTopLayoutConstraint");
    [v112 setIdentifier:v113];

    [v112 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewTopLayoutConstraint:v112];
    v114 = [(VMMessageTranscriptView *)self bottomAnchor];
    v115 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    v116 = [v115 bottomAnchor];
    v117 = [v114 constraintEqualToAnchor:v116];

    v118 = NSStringFromSelector("appSuggestionStackViewBottomLayoutConstraint");
    [v117 setIdentifier:v118];

    [v117 setActive:1];
    [(VMMessageTranscriptView *)self setAppSuggestionStackViewBottomLayoutConstraint:v117];
  }

  else
  {
    v119 = [(VMMessageTranscriptView *)self bottomAnchor];
    v120 = [(VMMessageTranscriptView *)self textView];
    v121 = [v120 lastBaselineAnchor];
    [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
    v122 = [v119 constraintEqualToAnchor:v121 constant:?];

    LODWORD(v123) = 1.0;
    [v122 setPriority:v123];
    v124 = NSStringFromSelector("textViewBottomLayoutConstraint");
    [v122 setIdentifier:v124];

    [v122 setActive:1];
    [(VMMessageTranscriptView *)self setTextViewBottomLayoutConstraint:v122];
    v125 = [(VMMessageTranscriptView *)self feedbackTextView];
    v126 = [v125 leadingAnchor];
    v127 = [(VMMessageTranscriptView *)self leadingAnchor];
    v128 = [v126 constraintGreaterThanOrEqualToAnchor:v127];

    v129 = NSStringFromSelector("feedbackTextViewLeadingLayoutConstraint");
    [v128 setIdentifier:v129];

    [v128 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewLeadingLayoutConstraint:v128];
    v130 = [(VMMessageTranscriptView *)self trailingAnchor];
    v131 = [(VMMessageTranscriptView *)self feedbackTextView];
    v132 = [v131 trailingAnchor];
    v133 = [v130 constraintGreaterThanOrEqualToAnchor:v132];

    v134 = NSStringFromSelector("feedbackTextViewTrailingLayoutConstraint");
    [v133 setIdentifier:v134];

    [v133 setActive:1];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTrailingLayoutConstraint:v133];
    v135 = [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraint];
    [(VMMessageTranscriptView *)self setFeedbackTextViewTopLayoutConstraint:v135];

    v136 = [(VMMessageTranscriptView *)self bottomAnchor];
    v137 = [(VMMessageTranscriptView *)self feedbackTextView];
    v138 = [v137 lastBaselineAnchor];
    [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
    v117 = [v136 constraintEqualToAnchor:v138 constant:?];

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
  v5 = [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraint];
  [v5 setConstant:v4];

  [(VMMessageTranscriptView *)self indicatorViewTopLayoutConstraintConstant];
  v7 = v6;
  v8 = [(VMMessageTranscriptView *)self indicatorViewTopLayoutConstraint];
  [v8 setConstant:v7];

  [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraintConstant];
  v10 = v9;
  v11 = [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraint];
  [v11 setConstant:v10];

  [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraintConstant];
  v13 = v12;
  v14 = [(VMMessageTranscriptView *)self textViewLastBaselineLayoutConstraint];
  [v14 setConstant:v13];

  [(VMMessageTranscriptView *)self textViewLineHeight];
  v16 = v15;
  v17 = [(VMMessageTranscriptView *)self textView];
  [v17 setLineHeight:v16];

  [(VMMessageTranscriptView *)self bounds];
  Width = CGRectGetWidth(v42);
  v19 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v19 _setPreferredMaxLayoutWidth:Width];

  v20 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v20 _preferredMaxLayoutWidth];
  v22 = v21;
  v23 = [(VMMessageTranscriptView *)self textView];
  [v23 _setPreferredMaxLayoutWidth:v22];

  v24 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v24 _preferredMaxLayoutWidth];
  v26 = v25;
  v27 = [(VMMessageTranscriptView *)self titleLabel];
  [v27 setPreferredMaxLayoutWidth:v26];

  v28 = [(VMMessageTranscriptView *)self isAccessiblityConstraintsEnabled]^ 1;
  v29 = [(VMMessageTranscriptView *)self titleLabel];
  [v29 setNumberOfLines:v28];

  v30 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v30 sizeToFit];

  v31 = [(VMMessageTranscriptView *)self textView];
  [v31 sizeToFit];

  v32 = [(VMMessageTranscriptView *)self titleLabel];
  [v32 sizeToFit];

  v33 = [(VMMessageTranscriptView *)self featureFlags];
  LODWORD(v29) = [v33 smartVoicemailActionsEnabled];

  if (v29)
  {
    [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraintConstant];
    v35 = v34;
    v36 = [(VMMessageTranscriptView *)self suggestionsLabelFirstBaselineLayoutConstraint];
    [v36 setConstant:v35];

    [(VMMessageTranscriptView *)self bounds];
    v37 = CGRectGetWidth(v43);
    v38 = [(VMMessageTranscriptView *)self suggestionsLabel];
    [v38 setPreferredMaxLayoutWidth:v37];

    v39 = [(VMMessageTranscriptView *)self appSuggestionStackViewTopLayoutConstraint];
    [v39 setConstant:30.0];

    v40 = [(VMMessageTranscriptView *)self appSuggestionStackView];
    [v40 sizeToFit];
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v27 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(VMMessageTranscriptViewModel *)self->_viewModel setTintColorDelegate:self];
    [(VMMessageTranscriptView *)self _refreshAttributedText];
    v6 = [(VMMessageTranscriptViewModel *)v27 isTranscribing];
    v7 = [(VMMessageTranscriptView *)self indicatorView];
    [v7 setHidden:v6 ^ 1];

    v8 = [(VMMessageTranscriptView *)self featureFlags];
    LODWORD(v7) = [v8 voicemailSearchEnabled];

    v9 = [(VMMessageTranscriptViewModel *)v27 isTranscribing];
    v10 = v7 | v9;
    if (v7 && (v9 & 1) == 0)
    {
      v10 = [(VMMessageTranscriptView *)self hideAccessoryViews];
    }

    v11 = [(VMMessageTranscriptView *)self feedbackTextView];
    [v11 setHidden:v10 & 1];

    LODWORD(v11) = [(VMMessageTranscriptViewModel *)v27 isTranscribing];
    v12 = [(VMMessageTranscriptView *)self indicatorView];
    v13 = v12;
    if (v11)
    {
      [v12 startAnimating];
      v14 = 1.0;
      v15 = 999.0;
    }

    else
    {
      [v12 stopAnimating];
      v15 = 1.0;
      v14 = 999.0;
    }

    v16 = [(VMMessageTranscriptView *)self titleLabelFirstBaselineLayoutConstraint];
    *&v17 = v14;
    [v16 setPriority:v17];

    v18 = [(VMMessageTranscriptView *)self titleLabelTopLayoutConstraint];
    *&v19 = v15;
    [v18 setPriority:v19];

    v20 = [(VMMessageTranscriptView *)self featureFlags];
    v21 = [v20 smartVoicemailActionsEnabled];

    if (v21)
    {
      v22 = [(VMMessageTranscriptView *)self suggestionsLabelFirstBaselineLayoutConstraint];
      LODWORD(v23) = 1.0;
      [v22 setPriority:v23];

      v24 = [(VMMessageTranscriptView *)self suggestionsLabelTopLayoutConstraint];
      LODWORD(v25) = 1148829696;
      [v24 setPriority:v25];

      v26 = [(VMMessageTranscriptViewModel *)self->_viewModel quickActionSuggestions];

      if (v26)
      {
        [(VMMessageTranscriptView *)self updateQuickActionsStackView];
      }
    }

    [(VMMessageTranscriptView *)self setNeedsUpdateConstraints];
    v5 = v27;
  }
}

- (void)setHideAccessoryViews:(BOOL)a3
{
  if (self->_hideAccessoryViews != a3)
  {
    v4 = a3;
    self->_hideAccessoryViews = a3;
    if (a3)
    {
      v6 = [(VMMessageTranscriptView *)self featureFlags];
      v7 = [v6 voicemailSearchEnabled];

      v8 = 1.0;
      v9 = 999.0;
      if (v7)
      {
        [(VMMessageTranscriptView *)self loadConstraints];
      }
    }

    else
    {
      v9 = 1.0;
      v8 = 999.0;
    }

    v10 = [(VMMessageTranscriptView *)self titleLabel];
    [v10 setHidden:v4];

    v11 = [(VMMessageTranscriptView *)self feedbackTextView];
    [v11 setHidden:v4];

    v12 = [(VMMessageTranscriptView *)self textViewFirstBaselineWithoutAccessoryViewsLayoutConstraint];
    *&v13 = v9;
    [v12 setPriority:v13];

    v14 = [(VMMessageTranscriptView *)self textViewBottomLayoutConstraint];
    *&v15 = v9;
    [v14 setPriority:v15];

    v17 = [(VMMessageTranscriptView *)self textViewFirstBaselineLayoutConstraint];
    *&v16 = v8;
    [v17 setPriority:v16];
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
  v4 = [(VMMessageTranscriptViewModel *)self->_viewModel quickActionSuggestions];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [UIButton buttonWithType:1];
        [v10 setTitle:v9 forState:0];
        [v10 addTarget:self action:"handleSuggestionsTapGesture:" forControlEvents:64];
        [v10 setConfiguration:v3];
        [(VMMessageTranscriptView *)self bounds];
        Width = CGRectGetWidth(v19);
        v12 = [v10 titleLabel];
        [v12 setPreferredMaxLayoutWidth:Width];

        [v10 setContentHorizontalAlignment:1];
        v13 = [(VMMessageTranscriptView *)self appSuggestionStackView];
        [v13 addArrangedSubview:v10];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldShowFeedbackTextView
{
  if (PHVoicemailFeedbackReportingAvailable())
  {
    v3 = [(VMMessageTranscriptView *)self feedbackTextView];
    v4 = [v3 attributedText];
    if ([v4 length])
    {
      v5 = [(VMMessageTranscriptView *)self viewModel];
      v6 = [v5 donated] ^ 1;
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

- (void)handleSuggestionsTapGesture:(id)a3
{
  v9 = a3;
  v4 = [(VMMessageTranscriptView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VMMessageTranscriptView *)self delegate];
    v7 = [v9 titleLabel];
    v8 = [v7 text];
    [v6 messageTranscriptView:self suggestionsDidReceiveTapGesture:v8];
  }
}

- (void)handleFeedbackTextViewTapGesture:(id)a3
{
  v15 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v15;
    if ([v4 state] == 3)
    {
      v5 = [(VMMessageTranscriptView *)self feedbackTextView];
      [v4 locationInView:v5];
      v7 = v6;
      v9 = v8;

      v10 = [(VMMessageTranscriptView *)self feedbackTextView];
      v11 = [v10 closestPositionToPoint:{v7, v9}];

      v12 = [(VMMessageTranscriptView *)self feedbackTextView];
      v13 = [v12 textStylingAtPosition:v11 inDirection:0];
      v14 = [v13 objectForKey:NSLinkAttributeName];

      if (v14)
      {
        [(VMMessageTranscriptView *)self openFeedbackURL:v14];
      }
    }
  }

  _objc_release_x1();
}

- (void)handleTextViewTapGesture:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v8;
    v5 = [(VMMessageTranscriptView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(VMMessageTranscriptView *)self delegate];
      [v7 messageTranscriptView:self didReceiveTapGesture:v4];
    }
  }

  _objc_release_x1();
}

- (void)openFeedbackURL:(id)a3
{
  v25 = [a3 absoluteString];
  v4 = +[VMMessageTranscriptViewModel neutralFeedbackURL];
  v5 = [v4 absoluteString];
  v6 = [v25 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[VMMessageTranscriptViewModel negativeFeedbackURL];
    v9 = [v8 absoluteString];
    v10 = [v25 isEqualToString:v9];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = +[VMMessageTranscriptViewModel positiveFeedbackURL];
      v12 = [v11 absoluteString];
      v13 = [v25 isEqualToString:v12];

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

  v14 = [(VMMessageTranscriptView *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(VMMessageTranscriptView *)self delegate];
    [v16 messageTranscriptView:self didReportFeedback:v7];
  }

  v17 = [(VMMessageTranscriptView *)self feedbackTextView];
  v18 = [v17 attributedText];
  v19 = [v18 mutableCopy];

  v20 = [v19 length];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FEEDBACK_REPORTED" value:&stru_10008C168 table:@"VoicemailUI"];
  [v19 replaceCharactersInRange:0 withString:{v20, v22}];

  [v19 removeAttribute:NSLinkAttributeName range:{0, objc_msgSend(v19, "length")}];
  v23 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v23 setAttributedText:v19];

  v24 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v24 sizeToFit];
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
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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
  v3 = [(VMMessageTranscriptView *)self viewModel];
  v4 = [v3 localizedAttributedFeedbackText];
  v5 = [(VMMessageTranscriptView *)self feedbackTextView];
  [v5 setAttributedText:v4];

  v6 = [(VMMessageTranscriptView *)self viewModel];
  v7 = [v6 localizedAttributedText];
  v8 = [(VMMessageTranscriptView *)self textView];
  [v8 setAttributedText:v7];

  v9 = [(VMMessageTranscriptView *)self viewModel];
  v10 = [v9 localizedAttributedTitle];
  v11 = [(VMMessageTranscriptView *)self titleLabel];
  [v11 setAttributedText:v10];

  v14 = [(VMMessageTranscriptView *)self viewModel];
  v12 = [v14 localizedAttributedFollowUpSuggestionsText];
  v13 = [(VMMessageTranscriptView *)self suggestionsLabel];
  [v13 setAttributedText:v12];
}

- (VMMessageTranscriptViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
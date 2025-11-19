@interface MFExpandableCaptionView
- (MFExpandableCaptionView)initWithFrame:(CGRect)a3;
- (MFExpandableCaptionViewDelegate)delegate;
- (id)captionLabel:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5;
- (id)viewForFirstBaselineLayout;
- (void)_addAtomListForAddresses:(id)a3 label:(id)a4 title:(id)a5 key:(id)a6;
- (void)_createPrimaryViews;
- (void)_initializePrimaryLayoutConstraints;
- (void)_reattachBottomConstraint;
- (void)_recipientAtomPressed:(id)a3;
- (void)_replyToAtomPressed:(id)a3;
- (void)_senderAtomPressed:(id)a3;
- (void)_setRecipientDetailsVisible:(BOOL)a3;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)iterateAtomListsWithBlock:(id)a3;
- (void)labelledAtomList:(id)a3 displayContactCardForAddressAtom:(id)a4;
- (void)labelledAtomList:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)reloadData;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4 force:(BOOL)a5;
- (void)setFont:(id)a3;
- (void)setListSpacing:(double)a3;
- (void)setOtherSigners:(id)a3;
- (void)setParticipants:(id)a3;
- (void)updateConstraints;
@end

@implementation MFExpandableCaptionView

- (MFExpandableCaptionView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MFExpandableCaptionView;
  v3 = [(MFExpandableCaptionView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFExpandableCaptionView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[UIColor clearColor];
    [(MFExpandableCaptionView *)v4 setBackgroundColor:v5];

    v6 = +[NSMutableDictionary dictionary];
    [(MFExpandableCaptionView *)v4 setParticipantDictionary:v6];

    [(MFExpandableCaptionView *)v4 _createPrimaryViews];
    [(MFExpandableCaptionView *)v4 _initializePrimaryLayoutConstraints];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"contentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFExpandableCaptionView;
  [(MFExpandableCaptionView *)&v4 dealloc];
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    v6 = [(MFExpandableCaptionView *)self timestampLabel];
    [v6 setFont:v5];

    v7 = [(MFExpandableCaptionView *)self captionLabel];
    [v7 setFont:v5];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C8388;
    v8[3] = &unk_100654098;
    v9 = v5;
    [(MFExpandableCaptionView *)self iterateAtomListsWithBlock:v8];
  }
}

- (void)_createPrimaryViews
{
  v5 = objc_alloc_init(MFCaptionLabel);
  [(MFExpandableCaptionView *)self setCaptionLabel:?];

  v6 = [(MFExpandableCaptionView *)self captionLabel];
  [v6 setDataSource:self];

  v7 = [(MFExpandableCaptionView *)self captionLabel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = +[UIColor mailSubtitleGrayColor];
  v3 = [(MFExpandableCaptionView *)self captionLabel];
  [v3 setTextColor:v8];

  v9 = +[MFCaptionLabel defaultFont];
  v4 = [(MFExpandableCaptionView *)self captionLabel];
  [v4 setFont:v9];

  v10 = [(MFExpandableCaptionView *)self captionLabel];
  [(MFExpandableCaptionView *)self addSubview:?];

  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MFExpandableCaptionView *)self setLastBaseLineDeceptionLabel:?];

  v12 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  [(MFExpandableCaptionView *)self addSubview:?];
}

- (void)_initializePrimaryLayoutConstraints
{
  v3 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  v4 = [v3 lastBaselineAnchor];
  v5 = [(MFExpandableCaptionView *)self captionLabel];
  v6 = [v5 lastBaselineAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [(MFExpandableCaptionView *)self setLastBaselineLabelConstraint:v7];

  v25 = [(MFExpandableCaptionView *)self captionLabel];
  v24 = [v25 leadingAnchor];
  v22 = [(MFExpandableCaptionView *)self leadingAnchor];
  v21 = [v24 constraintEqualToAnchor:?];
  v26[0] = v21;
  v20 = [(MFExpandableCaptionView *)self captionLabel];
  v23 = [v20 trailingAnchor];
  v19 = [(MFExpandableCaptionView *)self trailingAnchor];
  v18 = [v23 constraintLessThanOrEqualToAnchor:?];
  v26[1] = v18;
  v8 = [(MFExpandableCaptionView *)self captionLabel];
  v9 = [v8 topAnchor];
  v10 = [(MFExpandableCaptionView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[2] = v11;
  v12 = [(MFExpandableCaptionView *)self bottomAnchor];
  v13 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v26[3] = v15;
  v16 = [(MFExpandableCaptionView *)self lastBaselineLabelConstraint];
  v26[4] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:5];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)setListSpacing:(double)a3
{
  if (self->_listSpacing != a3)
  {
    self->_listSpacing = a3;
    [(MFExpandableCaptionView *)self setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v8 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  v9 = [(MFExpandableCaptionView *)self timestampLabel];
  [v9 setNumberOfLines:!IsAccessibilityCategory];

  v10 = [UIApp preferredContentSizeCategory];
  v5 = UIContentSizeCategoryIsAccessibilityCategory(v10);

  v6 = [(MFExpandableCaptionView *)self timestampLabel];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  v11 = v6;
  [v6 setLineBreakMode:v7];
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = MFExpandableCaptionView;
  [(MFExpandableCaptionView *)&v13 updateConstraints];
  v3 = [(MFExpandableCaptionView *)self captionLabelTrailingConstraint];

  if (!v3)
  {
    v4 = [(MFExpandableCaptionView *)self captionLabel];
    v5 = [v4 trailingAnchor];
    v6 = [(MFExpandableCaptionView *)self trailingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:-5.0];
    [(MFExpandableCaptionView *)self setCaptionLabelTrailingConstraint:v7];

    v8 = [(MFExpandableCaptionView *)self captionLabelTrailingConstraint];
    [v8 setActive:1];
  }

  [(MFExpandableCaptionView *)self listSpacing];
  v10 = v9;
  v11 = [(MFExpandableCaptionView *)self atomListStackView];
  [v11 setSpacing:v10];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C8C18;
  v12[3] = &unk_100654098;
  v12[4] = self;
  [(MFExpandableCaptionView *)self iterateAtomListsWithBlock:v12];
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(MFExpandableCaptionView *)self captionLabel];
  v3 = [v2 viewForFirstBaselineLayout];

  return v3;
}

- (void)setParticipants:(id)a3
{
  v7 = a3;
  v4 = [(MFExpandableCaptionView *)self participantDictionary];
  v5 = EFDictionarysAreEqual();

  if ((v5 & 1) == 0)
  {
    v6 = [v7 mutableCopy];
    [(MFExpandableCaptionView *)self setParticipantDictionary:v6];

    [(MFExpandableCaptionView *)self reloadData];
  }
}

- (void)setOtherSigners:(id)a3
{
  v6 = a3;
  v4 = [(MFExpandableCaptionView *)self participantDictionary];

  if (v4)
  {
    v5 = [(MFExpandableCaptionView *)self participantDictionary];
    [v5 setObject:v6 forKeyedSubscript:@"OtherSignersAtomsKey"];

    [(MFExpandableCaptionView *)self reloadData];
  }
}

- (void)reloadData
{
  if ([(MFExpandableCaptionView *)self isOutgoing])
  {
    v3 = [(MFExpandableCaptionView *)self captionLabel];
    [v3 setToRecipients:0];

    v4 = [(MFExpandableCaptionView *)self participantDictionary];
    v5 = [v4 objectForKeyedSubscript:@"FromAtomsKey"];
    v6 = [(MFExpandableCaptionView *)self captionLabel];
    [v6 setFromSenders:v5];
  }

  else
  {
    v7 = [(MFExpandableCaptionView *)self participantDictionary];
    v8 = [v7 objectForKeyedSubscript:@"ToAtomsKey"];
    v9 = [(MFExpandableCaptionView *)self captionLabel];
    [v9 setToRecipients:v8];

    v4 = [(MFExpandableCaptionView *)self captionLabel];
    [v4 setFromSenders:0];
  }

  v10 = [(MFExpandableCaptionView *)self participantDictionary];
  v11 = [v10 objectForKeyedSubscript:@"CcAtomsKey"];
  v12 = [(MFExpandableCaptionView *)self captionLabel];
  [v12 setCcRecipients:v11];

  v13 = [(MFExpandableCaptionView *)self participantDictionary];
  v14 = [v13 objectForKeyedSubscript:@"BccAtomsKey"];
  v15 = [(MFExpandableCaptionView *)self captionLabel];
  [v15 setBccRecipients:v14];

  v16 = [(MFExpandableCaptionView *)self participantDictionary];
  v17 = [v16 objectForKeyedSubscript:@"OtherSignersAtomsKey"];
  v18 = [(MFExpandableCaptionView *)self captionLabel];
  [v18 setOtherSigners:v17];

  v19 = [(MFExpandableCaptionView *)self participantDictionary];
  v20 = [v19 objectForKeyedSubscript:@"ReplyToAtomsKey"];
  v21 = [(MFExpandableCaptionView *)self captionLabel];
  [v21 setReplyToSenders:v20];

  v22 = [(MFExpandableCaptionView *)self participantDictionary];
  v23 = [v22 objectForKeyedSubscript:@"FromAtomsKey"];
  v24 = [(MFExpandableCaptionView *)self captionLabel];
  v25 = [v24 replyToSenders];
  v26 = [MFAddressAtomStatusManager shouldDecorateAtomListForSender:v23 replyTo:v25];
  v27 = [(MFExpandableCaptionView *)self captionLabel];
  [v27 setHasDifferentReplyToAddress:v26];

  if ([(MFExpandableCaptionView *)self isExpanded])
  {
    [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:0];
    [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:1];

    [(MFExpandableCaptionView *)self _reattachBottomConstraint];
  }
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4 force:(BOOL)a5
{
  if (self->_expanded != a3 || a5)
  {
    v6 = a4;
    v7 = a3;
    if (a3)
    {
      [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:0, a4, a5];
      [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:1];
    }

    v9 = [[MFSimpleAnimationCoordinator alloc] initCoordinatorAnimated:v6];
    v10 = [(MFExpandableCaptionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v10 expandableCaptionView:self willBecomeExpanded:v7 withAnimationCoordinator:v9];
    }

    if (v7 && v6)
    {
      [(MFExpandableCaptionView *)self layoutIfNeeded];
    }

    self->_expanded = v7;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001C943C;
    v22[3] = &unk_1006540C0;
    v22[4] = self;
    v24 = v7;
    v11 = v9;
    v23 = v11;
    v12 = objc_retainBlock(v22);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1001C94FC;
    v18 = &unk_1006540E8;
    v21 = v7;
    v19 = self;
    v13 = v11;
    v20 = v13;
    v14 = objc_retainBlock(&v15);
    [(MFExpandableCaptionView *)self setNeedsUpdateConstraints:v15];
    if (v6)
    {
      [UIView animateWithDuration:0 delay:v12 usingSpringWithDamping:v14 initialSpringVelocity:0.349999994 options:0.0 animations:1.0 completion:0.0];
    }

    else
    {
      (v12[2])(v12);
      (v14[2])(v14, 1);
    }
  }
}

- (void)_reattachBottomConstraint
{
  v8 = [(MFExpandableCaptionView *)self lastBaselineLabelConstraint];
  [v8 setActive:0];

  expanded = self->_expanded;
  v9 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  [v9 lastBaselineAnchor];
  if (expanded)
    v4 = {;
    [(MFExpandableCaptionView *)self atomListStackView];
  }

  else
    v4 = {;
    [(MFExpandableCaptionView *)self captionLabel];
  }
  v5 = ;
  v6 = [v5 lastBaselineAnchor];
  v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6];
  [(MFExpandableCaptionView *)self setLastBaselineLabelConstraint:v7];

  v10 = [(MFExpandableCaptionView *)self lastBaselineLabelConstraint];
  [v10 setActive:1];
}

- (void)_setRecipientDetailsVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFExpandableCaptionView *)self atomListStackView];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      v7 = +[UIStackView mf_baselineAlignedVerticalStackView];
      [(MFExpandableCaptionView *)self setAtomListStackView:v7];

      if ([(MFExpandableCaptionView *)self isExpanded])
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      v9 = [(MFExpandableCaptionView *)self atomListStackView];
      [v9 setAlpha:v8];

      v10 = [(MFExpandableCaptionView *)self atomListStackView];
      v11 = [(MFExpandableCaptionView *)self captionLabel];
      [(MFExpandableCaptionView *)self insertSubview:v10 belowSubview:v11];
    }

    if (![(MFExpandableCaptionView *)self isOutgoing])
    {
      v12 = [(MFExpandableCaptionView *)self participantDictionary];
      v13 = [v12 objectForKeyedSubscript:@"ToAtomsKey"];

      if ([v13 count])
      {
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"TO_HEADER" value:&stru_100662A88 table:@"Main"];
        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"TO_TITLE" value:&stru_100662A88 table:@"Main"];
        [(MFExpandableCaptionView *)self _addAtomListForAddresses:v13 label:v15 title:v17 key:@"ToAtomsKey"];
      }
    }

    v18 = [(MFExpandableCaptionView *)self participantDictionary];
    v19 = [v18 objectForKeyedSubscript:@"CcAtomsKey"];

    v81 = v19;
    if ([v19 count])
    {
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"CC_HEADER" value:&stru_100662A88 table:@"Main"];
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"CC_TITLE" value:&stru_100662A88 table:@"Main"];
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v81 label:v21 title:v23 key:@"CcAtomsKey"];
    }

    v24 = [(MFExpandableCaptionView *)self participantDictionary];
    v25 = [v24 objectForKeyedSubscript:@"BccAtomsKey"];

    v80 = v25;
    if ([v25 count])
    {
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"BCC_HEADER" value:&stru_100662A88 table:@"Main"];
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"BCC_TITLE" value:&stru_100662A88 table:@"Main"];
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v80 label:v27 title:v29 key:@"BccAtomsKey"];
    }

    v30 = [(MFExpandableCaptionView *)self participantDictionary];
    v31 = [v30 objectForKeyedSubscript:@"OtherSignersAtomsKey"];

    v79 = v31;
    if ([v31 count])
    {
      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"OTHER_SIGNERS_HEADER" value:&stru_100662A88 table:@"Main"];
      v34 = +[NSBundle mainBundle];
      v35 = [v34 localizedStringForKey:@"OTHER_SIGNERS_TITLE" value:&stru_100662A88 table:@"Main"];
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v79 label:v33 title:v35 key:@"OtherSignersAtomsKey"];
    }

    if ([(MFExpandableCaptionView *)self isOutgoing])
    {
      v36 = [(MFExpandableCaptionView *)self participantDictionary];
      v37 = [v36 objectForKeyedSubscript:@"FromAtomsKey"];

      if ([v37 count])
      {
        v38 = +[NSBundle mainBundle];
        v39 = [v38 localizedStringForKey:@"FROM_HEADER" value:&stru_100662A88 table:@"Main"];
        v40 = +[NSBundle mainBundle];
        v41 = [v40 localizedStringForKey:@"FROM_TITLE" value:&stru_100662A88 table:@"Main"];
        [(MFExpandableCaptionView *)self _addAtomListForAddresses:v37 label:v39 title:v41 key:@"FromAtomsKey"];
      }
    }

    v42 = [(MFExpandableCaptionView *)self participantDictionary];
    v43 = [v42 objectForKeyedSubscript:@"ReplyToAtomsKey"];

    v78 = v43;
    if ([v43 count])
    {
      v44 = _EFLocalizedString();
      v45 = _EFLocalizedString();
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v78 label:v44 title:v45 key:@"ReplyToAtomsKey"];
    }

    if ([(MFExpandableCaptionView *)self showsTimestampWhenExpanded])
    {
      v46 = [(MFExpandableCaptionView *)self timestampLabel];

      if (!v46)
      {
        v47 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [(MFExpandableCaptionView *)self setTimestampLabel:v47];

        v48 = [(MFExpandableCaptionView *)self timestampLabel];
        [v48 setTranslatesAutoresizingMaskIntoConstraints:0];

        v49 = [(MFExpandableCaptionView *)self font];
        v50 = [(MFExpandableCaptionView *)self timestampLabel];
        [v50 setFont:v49];

        v51 = +[UIColor mailSubtitleGrayColor];
        v52 = [(MFExpandableCaptionView *)self timestampLabel];
        [v52 setTextColor:v51];

        v53 = [UIApp preferredContentSizeCategory];
        LODWORD(v52) = UIContentSizeCategoryIsAccessibilityCategory(v53);

        v54 = [(MFExpandableCaptionView *)self timestampLabel];
        [v54 setNumberOfLines:v52 ^ 1];

        v55 = [UIApp preferredContentSizeCategory];
        LODWORD(v52) = UIContentSizeCategoryIsAccessibilityCategory(v55);

        v56 = [(MFExpandableCaptionView *)self timestampLabel];
        v57 = v56;
        if (v52)
        {
          v58 = 0;
        }

        else
        {
          v58 = 4;
        }

        [v56 setLineBreakMode:v58];
      }

      v59 = [(MFExpandableCaptionView *)self dateSent];
      v60 = [NSDateFormatter ef_formatDate:v59 shortStyle:0];

      v61 = [(MFExpandableCaptionView *)self timestampLabel];
      [v61 setText:v60];

      v62 = [(MFExpandableCaptionView *)self atomListStackView];
      v63 = [(MFExpandableCaptionView *)self timestampLabel];
      [v62 addArrangedSubview:v63];
    }

    v77 = [(MFExpandableCaptionView *)self atomListStackView];
    v82 = [v77 firstBaselineAnchor];
    v76 = [(MFExpandableCaptionView *)self captionLabel];
    v75 = [v76 firstBaselineAnchor];
    v74 = [v82 constraintEqualToAnchor:?];
    v83[0] = v74;
    v64 = [(MFExpandableCaptionView *)self atomListStackView];
    v65 = [v64 leadingAnchor];
    v66 = [(MFExpandableCaptionView *)self leadingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    v83[1] = v67;
    v68 = [(MFExpandableCaptionView *)self atomListStackView];
    v69 = [v68 trailingAnchor];
    v70 = [(MFExpandableCaptionView *)self trailingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    v83[2] = v71;
    v72 = [NSArray arrayWithObjects:v83 count:3];

    [NSLayoutConstraint activateConstraints:v72];
  }

  else
  {
    [v5 removeFromSuperview];

    [(MFExpandableCaptionView *)self setAtomListStackView:0];
  }

  v73 = [(MFExpandableCaptionView *)self timestampLabel];
  [v73 setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewReceivedDateTime];
}

- (id)captionLabel:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(MFExpandableCaptionView *)self delegate];
  v9 = [v8 expandableCaptionView:self displayNameForEmailAddress:v7 abbreviated:v5];

  return v9;
}

- (void)iterateAtomListsWithBlock:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MFExpandableCaptionView *)self atomListStackView];
  v6 = [v5 arrangedSubviews];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4[2](v4, v10);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_addAtomListForAddresses:(id)a3 label:(id)a4 title:(id)a5 key:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 isEqualToString:@"FromAtomsKey"])
  {
    v14 = 1;
  }

  else if ([v13 isEqualToString:@"ReplyToAtomsKey"])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = [MFModernLabelledAtomList alloc];
  v16 = +[MFAddressBookManager sharedManager];
  v17 = [v15 initWithLabel:v11 title:v12 atomType:v14 addressBook:{objc_msgSend(v16, "addressBook")}];

  [v17 setDelegate:self];
  [(MFExpandableCaptionView *)self listSpacing];
  [v17 setLineSpacing:?];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1001CA748;
  v23 = &unk_100654110;
  v18 = v13;
  v24 = v18;
  v25 = self;
  [v17 setAddresses:v10 withCompletion:&v20];
  v19 = [(MFExpandableCaptionView *)self atomListStackView:v20];
  [v19 addArrangedSubview:v17];
}

- (void)_recipientAtomPressed:(id)a3
{
  v5 = a3;
  v4 = [(MFExpandableCaptionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 expandableCaptionView:self didTapAtom:v5 forAtomType:0];
  }
}

- (void)_senderAtomPressed:(id)a3
{
  v5 = a3;
  v4 = [(MFExpandableCaptionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 expandableCaptionView:self didTapAtom:v5 forAtomType:1];
  }
}

- (void)_replyToAtomPressed:(id)a3
{
  v5 = a3;
  v4 = [(MFExpandableCaptionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 expandableCaptionView:self didTapAtom:v5 forAtomType:2];
  }
}

- (void)labelledAtomList:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(MFExpandableCaptionView *)self delegate];
  [v8 expandableCaptionView:self searchForDisplayName:v9 emailAddresses:v7];
}

- (void)labelledAtomList:(id)a3 displayContactCardForAddressAtom:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MFExpandableCaptionView *)self delegate];
  [v7 expandableCaptionView:self displayContactCardForAddressAtom:v6 atomType:{objc_msgSend(v8, "atomType")}];
}

- (MFExpandableCaptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
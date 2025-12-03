@interface MFExpandableCaptionView
- (MFExpandableCaptionView)initWithFrame:(CGRect)frame;
- (MFExpandableCaptionViewDelegate)delegate;
- (id)captionLabel:(id)label displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)viewForFirstBaselineLayout;
- (void)_addAtomListForAddresses:(id)addresses label:(id)label title:(id)title key:(id)key;
- (void)_createPrimaryViews;
- (void)_initializePrimaryLayoutConstraints;
- (void)_reattachBottomConstraint;
- (void)_recipientAtomPressed:(id)pressed;
- (void)_replyToAtomPressed:(id)pressed;
- (void)_senderAtomPressed:(id)pressed;
- (void)_setRecipientDetailsVisible:(BOOL)visible;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)iterateAtomListsWithBlock:(id)block;
- (void)labelledAtomList:(id)list displayContactCardForAddressAtom:(id)atom;
- (void)labelledAtomList:(id)list searchForDisplayName:(id)name emailAddresses:(id)addresses;
- (void)reloadData;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated force:(BOOL)force;
- (void)setFont:(id)font;
- (void)setListSpacing:(double)spacing;
- (void)setOtherSigners:(id)signers;
- (void)setParticipants:(id)participants;
- (void)updateConstraints;
@end

@implementation MFExpandableCaptionView

- (MFExpandableCaptionView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MFExpandableCaptionView;
  v3 = [(MFExpandableCaptionView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([fontCopy isEqual:self->_font] & 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    timestampLabel = [(MFExpandableCaptionView *)self timestampLabel];
    [timestampLabel setFont:fontCopy];

    captionLabel = [(MFExpandableCaptionView *)self captionLabel];
    [captionLabel setFont:fontCopy];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000EC38;
    v8[3] = &unk_100034C40;
    v9 = fontCopy;
    [(MFExpandableCaptionView *)self iterateAtomListsWithBlock:v8];
  }
}

- (void)_createPrimaryViews
{
  v5 = objc_alloc_init(MFCaptionLabel);
  [(MFExpandableCaptionView *)self setCaptionLabel:?];

  captionLabel = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel setDataSource:self];

  captionLabel2 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = +[UIColor mailSubtitleGrayColor];
  captionLabel3 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel3 setTextColor:v8];

  v9 = +[MFCaptionLabel defaultFont];
  captionLabel4 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel4 setFont:v9];

  captionLabel5 = [(MFExpandableCaptionView *)self captionLabel];
  [(MFExpandableCaptionView *)self addSubview:?];

  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MFExpandableCaptionView *)self setLastBaseLineDeceptionLabel:?];

  lastBaseLineDeceptionLabel = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  [lastBaseLineDeceptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  lastBaseLineDeceptionLabel2 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  [(MFExpandableCaptionView *)self addSubview:?];
}

- (void)_initializePrimaryLayoutConstraints
{
  lastBaseLineDeceptionLabel = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  lastBaselineAnchor = [lastBaseLineDeceptionLabel lastBaselineAnchor];
  captionLabel = [(MFExpandableCaptionView *)self captionLabel];
  lastBaselineAnchor2 = [captionLabel lastBaselineAnchor];
  v7 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  [(MFExpandableCaptionView *)self setLastBaselineLabelConstraint:v7];

  captionLabel2 = [(MFExpandableCaptionView *)self captionLabel];
  leadingAnchor = [captionLabel2 leadingAnchor];
  leadingAnchor2 = [(MFExpandableCaptionView *)self leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:?];
  v26[0] = v21;
  captionLabel3 = [(MFExpandableCaptionView *)self captionLabel];
  trailingAnchor = [captionLabel3 trailingAnchor];
  trailingAnchor2 = [(MFExpandableCaptionView *)self trailingAnchor];
  v18 = [trailingAnchor constraintLessThanOrEqualToAnchor:?];
  v26[1] = v18;
  captionLabel4 = [(MFExpandableCaptionView *)self captionLabel];
  topAnchor = [captionLabel4 topAnchor];
  topAnchor2 = [(MFExpandableCaptionView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v11;
  bottomAnchor = [(MFExpandableCaptionView *)self bottomAnchor];
  lastBaseLineDeceptionLabel2 = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  bottomAnchor2 = [lastBaseLineDeceptionLabel2 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v15;
  lastBaselineLabelConstraint = [(MFExpandableCaptionView *)self lastBaselineLabelConstraint];
  v26[4] = lastBaselineLabelConstraint;
  v17 = [NSArray arrayWithObjects:v26 count:5];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)setListSpacing:(double)spacing
{
  if (self->_listSpacing != spacing)
  {
    self->_listSpacing = spacing;
    [(MFExpandableCaptionView *)self setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  timestampLabel = [(MFExpandableCaptionView *)self timestampLabel];
  [timestampLabel setNumberOfLines:!IsAccessibilityCategory];

  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  v5 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  timestampLabel2 = [(MFExpandableCaptionView *)self timestampLabel];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  v11 = timestampLabel2;
  [timestampLabel2 setLineBreakMode:v7];
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = MFExpandableCaptionView;
  [(MFExpandableCaptionView *)&v13 updateConstraints];
  captionLabelTrailingConstraint = [(MFExpandableCaptionView *)self captionLabelTrailingConstraint];

  if (!captionLabelTrailingConstraint)
  {
    captionLabel = [(MFExpandableCaptionView *)self captionLabel];
    trailingAnchor = [captionLabel trailingAnchor];
    trailingAnchor2 = [(MFExpandableCaptionView *)self trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    [(MFExpandableCaptionView *)self setCaptionLabelTrailingConstraint:v7];

    captionLabelTrailingConstraint2 = [(MFExpandableCaptionView *)self captionLabelTrailingConstraint];
    [captionLabelTrailingConstraint2 setActive:1];
  }

  [(MFExpandableCaptionView *)self listSpacing];
  v10 = v9;
  atomListStackView = [(MFExpandableCaptionView *)self atomListStackView];
  [atomListStackView setSpacing:v10];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F4C8;
  v12[3] = &unk_100034C40;
  v12[4] = self;
  [(MFExpandableCaptionView *)self iterateAtomListsWithBlock:v12];
}

- (id)viewForFirstBaselineLayout
{
  captionLabel = [(MFExpandableCaptionView *)self captionLabel];
  viewForFirstBaselineLayout = [captionLabel viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (void)setParticipants:(id)participants
{
  participantsCopy = participants;
  participantDictionary = [(MFExpandableCaptionView *)self participantDictionary];
  v5 = EFDictionarysAreEqual();

  if ((v5 & 1) == 0)
  {
    v6 = [participantsCopy mutableCopy];
    [(MFExpandableCaptionView *)self setParticipantDictionary:v6];

    [(MFExpandableCaptionView *)self reloadData];
  }
}

- (void)setOtherSigners:(id)signers
{
  signersCopy = signers;
  participantDictionary = [(MFExpandableCaptionView *)self participantDictionary];

  if (participantDictionary)
  {
    participantDictionary2 = [(MFExpandableCaptionView *)self participantDictionary];
    [participantDictionary2 setObject:signersCopy forKeyedSubscript:@"OtherSignersAtomsKey"];

    [(MFExpandableCaptionView *)self reloadData];
  }
}

- (void)reloadData
{
  if ([(MFExpandableCaptionView *)self isOutgoing])
  {
    captionLabel = [(MFExpandableCaptionView *)self captionLabel];
    [captionLabel setToRecipients:0];

    participantDictionary = [(MFExpandableCaptionView *)self participantDictionary];
    v5 = [participantDictionary objectForKeyedSubscript:@"FromAtomsKey"];
    captionLabel2 = [(MFExpandableCaptionView *)self captionLabel];
    [captionLabel2 setFromSenders:v5];
  }

  else
  {
    participantDictionary2 = [(MFExpandableCaptionView *)self participantDictionary];
    v8 = [participantDictionary2 objectForKeyedSubscript:@"ToAtomsKey"];
    captionLabel3 = [(MFExpandableCaptionView *)self captionLabel];
    [captionLabel3 setToRecipients:v8];

    participantDictionary = [(MFExpandableCaptionView *)self captionLabel];
    [participantDictionary setFromSenders:0];
  }

  participantDictionary3 = [(MFExpandableCaptionView *)self participantDictionary];
  v11 = [participantDictionary3 objectForKeyedSubscript:@"CcAtomsKey"];
  captionLabel4 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel4 setCcRecipients:v11];

  participantDictionary4 = [(MFExpandableCaptionView *)self participantDictionary];
  v14 = [participantDictionary4 objectForKeyedSubscript:@"BccAtomsKey"];
  captionLabel5 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel5 setBccRecipients:v14];

  participantDictionary5 = [(MFExpandableCaptionView *)self participantDictionary];
  v17 = [participantDictionary5 objectForKeyedSubscript:@"OtherSignersAtomsKey"];
  captionLabel6 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel6 setOtherSigners:v17];

  participantDictionary6 = [(MFExpandableCaptionView *)self participantDictionary];
  v20 = [participantDictionary6 objectForKeyedSubscript:@"ReplyToAtomsKey"];
  captionLabel7 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel7 setReplyToSenders:v20];

  participantDictionary7 = [(MFExpandableCaptionView *)self participantDictionary];
  v23 = [participantDictionary7 objectForKeyedSubscript:@"FromAtomsKey"];
  captionLabel8 = [(MFExpandableCaptionView *)self captionLabel];
  replyToSenders = [captionLabel8 replyToSenders];
  v26 = [MFAddressAtomStatusManager shouldDecorateAtomListForSender:v23 replyTo:replyToSenders];
  captionLabel9 = [(MFExpandableCaptionView *)self captionLabel];
  [captionLabel9 setHasDifferentReplyToAddress:v26];

  if ([(MFExpandableCaptionView *)self isExpanded])
  {
    [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:0];
    [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:1];

    [(MFExpandableCaptionView *)self _reattachBottomConstraint];
  }
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated force:(BOOL)force
{
  if (self->_expanded != expanded || force)
  {
    animatedCopy = animated;
    expandedCopy = expanded;
    if (expanded)
    {
      [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:0, animated, force];
      [(MFExpandableCaptionView *)self _setRecipientDetailsVisible:1];
    }

    v9 = [[MFSimpleAnimationCoordinator alloc] initCoordinatorAnimated:animatedCopy];
    delegate = [(MFExpandableCaptionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate expandableCaptionView:self willBecomeExpanded:expandedCopy withAnimationCoordinator:v9];
    }

    if (expandedCopy && animatedCopy)
    {
      [(MFExpandableCaptionView *)self layoutIfNeeded];
    }

    self->_expanded = expandedCopy;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000FCEC;
    v22[3] = &unk_100034C68;
    v22[4] = self;
    v24 = expandedCopy;
    v11 = v9;
    v23 = v11;
    v12 = objc_retainBlock(v22);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000FDAC;
    v18 = &unk_100034C90;
    v21 = expandedCopy;
    selfCopy = self;
    v13 = v11;
    v20 = v13;
    v14 = objc_retainBlock(&v15);
    [(MFExpandableCaptionView *)self setNeedsUpdateConstraints:v15];
    if (animatedCopy)
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
  lastBaselineLabelConstraint = [(MFExpandableCaptionView *)self lastBaselineLabelConstraint];
  [lastBaselineLabelConstraint setActive:0];

  expanded = self->_expanded;
  lastBaseLineDeceptionLabel = [(MFExpandableCaptionView *)self lastBaseLineDeceptionLabel];
  [lastBaseLineDeceptionLabel lastBaselineAnchor];
  if (expanded)
    v4 = {;
    [(MFExpandableCaptionView *)self atomListStackView];
  }

  else
    v4 = {;
    [(MFExpandableCaptionView *)self captionLabel];
  }
  v5 = ;
  lastBaselineAnchor = [v5 lastBaselineAnchor];
  v7 = [v4 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor];
  [(MFExpandableCaptionView *)self setLastBaselineLabelConstraint:v7];

  lastBaselineLabelConstraint2 = [(MFExpandableCaptionView *)self lastBaselineLabelConstraint];
  [lastBaselineLabelConstraint2 setActive:1];
}

- (void)_setRecipientDetailsVisible:(BOOL)visible
{
  visibleCopy = visible;
  atomListStackView = [(MFExpandableCaptionView *)self atomListStackView];
  v6 = atomListStackView;
  if (visibleCopy)
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

      atomListStackView2 = [(MFExpandableCaptionView *)self atomListStackView];
      [atomListStackView2 setAlpha:v8];

      atomListStackView3 = [(MFExpandableCaptionView *)self atomListStackView];
      captionLabel = [(MFExpandableCaptionView *)self captionLabel];
      [(MFExpandableCaptionView *)self insertSubview:atomListStackView3 belowSubview:captionLabel];
    }

    if (![(MFExpandableCaptionView *)self isOutgoing])
    {
      participantDictionary = [(MFExpandableCaptionView *)self participantDictionary];
      v13 = [participantDictionary objectForKeyedSubscript:@"ToAtomsKey"];

      if ([v13 count])
      {
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"TO_HEADER" value:&stru_100035108 table:@"Main"];
        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"TO_TITLE" value:&stru_100035108 table:@"Main"];
        [(MFExpandableCaptionView *)self _addAtomListForAddresses:v13 label:v15 title:v17 key:@"ToAtomsKey"];
      }
    }

    participantDictionary2 = [(MFExpandableCaptionView *)self participantDictionary];
    v19 = [participantDictionary2 objectForKeyedSubscript:@"CcAtomsKey"];

    v81 = v19;
    if ([v19 count])
    {
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"CC_HEADER" value:&stru_100035108 table:@"Main"];
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"CC_TITLE" value:&stru_100035108 table:@"Main"];
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v81 label:v21 title:v23 key:@"CcAtomsKey"];
    }

    participantDictionary3 = [(MFExpandableCaptionView *)self participantDictionary];
    v25 = [participantDictionary3 objectForKeyedSubscript:@"BccAtomsKey"];

    v80 = v25;
    if ([v25 count])
    {
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"BCC_HEADER" value:&stru_100035108 table:@"Main"];
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"BCC_TITLE" value:&stru_100035108 table:@"Main"];
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v80 label:v27 title:v29 key:@"BccAtomsKey"];
    }

    participantDictionary4 = [(MFExpandableCaptionView *)self participantDictionary];
    v31 = [participantDictionary4 objectForKeyedSubscript:@"OtherSignersAtomsKey"];

    v79 = v31;
    if ([v31 count])
    {
      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"OTHER_SIGNERS_HEADER" value:&stru_100035108 table:@"Main"];
      v34 = +[NSBundle mainBundle];
      v35 = [v34 localizedStringForKey:@"OTHER_SIGNERS_TITLE" value:&stru_100035108 table:@"Main"];
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v79 label:v33 title:v35 key:@"OtherSignersAtomsKey"];
    }

    if ([(MFExpandableCaptionView *)self isOutgoing])
    {
      participantDictionary5 = [(MFExpandableCaptionView *)self participantDictionary];
      v37 = [participantDictionary5 objectForKeyedSubscript:@"FromAtomsKey"];

      if ([v37 count])
      {
        v38 = +[NSBundle mainBundle];
        v39 = [v38 localizedStringForKey:@"FROM_HEADER" value:&stru_100035108 table:@"Main"];
        v40 = +[NSBundle mainBundle];
        v41 = [v40 localizedStringForKey:@"FROM_TITLE" value:&stru_100035108 table:@"Main"];
        [(MFExpandableCaptionView *)self _addAtomListForAddresses:v37 label:v39 title:v41 key:@"FromAtomsKey"];
      }
    }

    participantDictionary6 = [(MFExpandableCaptionView *)self participantDictionary];
    v43 = [participantDictionary6 objectForKeyedSubscript:@"ReplyToAtomsKey"];

    v78 = v43;
    if ([v43 count])
    {
      v44 = _EFLocalizedString();
      v45 = _EFLocalizedString();
      [(MFExpandableCaptionView *)self _addAtomListForAddresses:v78 label:v44 title:v45 key:@"ReplyToAtomsKey"];
    }

    if ([(MFExpandableCaptionView *)self showsTimestampWhenExpanded])
    {
      timestampLabel = [(MFExpandableCaptionView *)self timestampLabel];

      if (!timestampLabel)
      {
        v47 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [(MFExpandableCaptionView *)self setTimestampLabel:v47];

        timestampLabel2 = [(MFExpandableCaptionView *)self timestampLabel];
        [timestampLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

        font = [(MFExpandableCaptionView *)self font];
        timestampLabel3 = [(MFExpandableCaptionView *)self timestampLabel];
        [timestampLabel3 setFont:font];

        v51 = +[UIColor mailSubtitleGrayColor];
        timestampLabel4 = [(MFExpandableCaptionView *)self timestampLabel];
        [timestampLabel4 setTextColor:v51];

        preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
        LODWORD(timestampLabel4) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

        timestampLabel5 = [(MFExpandableCaptionView *)self timestampLabel];
        [timestampLabel5 setNumberOfLines:timestampLabel4 ^ 1];

        preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
        LODWORD(timestampLabel4) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

        timestampLabel6 = [(MFExpandableCaptionView *)self timestampLabel];
        v57 = timestampLabel6;
        if (timestampLabel4)
        {
          v58 = 0;
        }

        else
        {
          v58 = 4;
        }

        [timestampLabel6 setLineBreakMode:v58];
      }

      dateSent = [(MFExpandableCaptionView *)self dateSent];
      v60 = [NSDateFormatter ef_formatDate:dateSent shortStyle:0];

      timestampLabel7 = [(MFExpandableCaptionView *)self timestampLabel];
      [timestampLabel7 setText:v60];

      atomListStackView4 = [(MFExpandableCaptionView *)self atomListStackView];
      timestampLabel8 = [(MFExpandableCaptionView *)self timestampLabel];
      [atomListStackView4 addArrangedSubview:timestampLabel8];
    }

    atomListStackView5 = [(MFExpandableCaptionView *)self atomListStackView];
    firstBaselineAnchor = [atomListStackView5 firstBaselineAnchor];
    captionLabel2 = [(MFExpandableCaptionView *)self captionLabel];
    firstBaselineAnchor2 = [captionLabel2 firstBaselineAnchor];
    v74 = [firstBaselineAnchor constraintEqualToAnchor:?];
    v83[0] = v74;
    atomListStackView6 = [(MFExpandableCaptionView *)self atomListStackView];
    leadingAnchor = [atomListStackView6 leadingAnchor];
    leadingAnchor2 = [(MFExpandableCaptionView *)self leadingAnchor];
    v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v83[1] = v67;
    atomListStackView7 = [(MFExpandableCaptionView *)self atomListStackView];
    trailingAnchor = [atomListStackView7 trailingAnchor];
    trailingAnchor2 = [(MFExpandableCaptionView *)self trailingAnchor];
    v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v83[2] = v71;
    v72 = [NSArray arrayWithObjects:v83 count:3];

    [NSLayoutConstraint activateConstraints:v72];
  }

  else
  {
    [atomListStackView removeFromSuperview];

    [(MFExpandableCaptionView *)self setAtomListStackView:0];
  }

  timestampLabel9 = [(MFExpandableCaptionView *)self timestampLabel];
  [timestampLabel9 setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewReceivedDateTime];
}

- (id)captionLabel:(id)label displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  addressCopy = address;
  delegate = [(MFExpandableCaptionView *)self delegate];
  v9 = [delegate expandableCaptionView:self displayNameForEmailAddress:addressCopy abbreviated:abbreviatedCopy];

  return v9;
}

- (void)iterateAtomListsWithBlock:(id)block
{
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  atomListStackView = [(MFExpandableCaptionView *)self atomListStackView];
  arrangedSubviews = [atomListStackView arrangedSubviews];

  v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          blockCopy[2](blockCopy, v10);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_addAtomListForAddresses:(id)addresses label:(id)label title:(id)title key:(id)key
{
  addressesCopy = addresses;
  labelCopy = label;
  titleCopy = title;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"FromAtomsKey"])
  {
    v14 = 1;
  }

  else if ([keyCopy isEqualToString:@"ReplyToAtomsKey"])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = [MFModernLabelledAtomList alloc];
  v16 = +[MFAddressBookManager sharedManager];
  v17 = [v15 initWithLabel:labelCopy title:titleCopy atomType:v14 addressBook:{objc_msgSend(v16, "addressBook")}];

  [v17 setDelegate:self];
  [(MFExpandableCaptionView *)self listSpacing];
  [v17 setLineSpacing:?];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100010FF8;
  v23 = &unk_100034CB8;
  v18 = keyCopy;
  v24 = v18;
  selfCopy = self;
  [v17 setAddresses:addressesCopy withCompletion:&v20];
  v19 = [(MFExpandableCaptionView *)self atomListStackView:v20];
  [v19 addArrangedSubview:v17];
}

- (void)_recipientAtomPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(MFExpandableCaptionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate expandableCaptionView:self didTapAtom:pressedCopy forAtomType:0];
  }
}

- (void)_senderAtomPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(MFExpandableCaptionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate expandableCaptionView:self didTapAtom:pressedCopy forAtomType:1];
  }
}

- (void)_replyToAtomPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(MFExpandableCaptionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate expandableCaptionView:self didTapAtom:pressedCopy forAtomType:2];
  }
}

- (void)labelledAtomList:(id)list searchForDisplayName:(id)name emailAddresses:(id)addresses
{
  nameCopy = name;
  addressesCopy = addresses;
  delegate = [(MFExpandableCaptionView *)self delegate];
  [delegate expandableCaptionView:self searchForDisplayName:nameCopy emailAddresses:addressesCopy];
}

- (void)labelledAtomList:(id)list displayContactCardForAddressAtom:(id)atom
{
  listCopy = list;
  atomCopy = atom;
  delegate = [(MFExpandableCaptionView *)self delegate];
  [delegate expandableCaptionView:self displayContactCardForAddressAtom:atomCopy atomType:{objc_msgSend(listCopy, "atomType")}];
}

- (MFExpandableCaptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
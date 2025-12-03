@interface EKUIAutocompleteOccurrenceTableViewCell
+ (BOOL)_shouldShowOtherTimeZoneForResult:(id)result;
+ (double)cellHeightForResult:(id)result forWidth:(double)width;
+ (id)_foundInStringForResult:(id)result pasteboardEvent:(BOOL)event;
+ (id)_inviteeStringForResult:(id)result;
+ (id)_locationStringForResult:(id)result;
+ (id)_timeStringForResult:(id)result usingTimeZone:(id)zone;
+ (id)_titleStringForResult:(id)result;
+ (id)reuseIdentifier;
- (EKUIAutocompleteOccurrenceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_addConstraintsForLabel:(id)label belowView:(id)view toArray:(id)array;
- (void)setLabelFonts;
- (void)setupConstraints;
- (void)updateWithResult:(id)result;
@end

@implementation EKUIAutocompleteOccurrenceTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__EKUIAutocompleteOccurrenceTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (reuseIdentifier_onceToken != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken, block);
  }

  v2 = reuseIdentifier_reuseIdentifier;

  return v2;
}

void __58__EKUIAutocompleteOccurrenceTableViewCell_reuseIdentifier__block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = reuseIdentifier_reuseIdentifier;
  reuseIdentifier_reuseIdentifier = v1;
}

- (EKUIAutocompleteOccurrenceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32[5] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = EKUIAutocompleteOccurrenceTableViewCell;
  v4 = [(EKUIAutocompleteSearchResultBaseCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(EKUITableViewCell *)v4 setDrawsOwnRowSeparators:1];
      systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [(EKUITableViewCell *)v4 setRowSeparatorColor:systemMidGrayColor];

      v6 = EKHalfSystemGroupedBackgroundColor();
      [(EKUIAutocompleteOccurrenceTableViewCell *)v4 setBackgroundColor:v6];

      [(EKUITableViewCell *)v4 setUsesInsetMargin:0];
    }

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    colorDotView = v4->_colorDotView;
    v4->_colorDotView = v7;

    [(UIImageView *)v4->_colorDotView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_colorDotView];

    createPrimaryLabel = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
    titleTextLabel = v4->_titleTextLabel;
    v4->_titleTextLabel = createPrimaryLabel;

    contentView2 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_titleTextLabel];

    createSecondaryLabel = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    locationTextLabel = v4->_locationTextLabel;
    v4->_locationTextLabel = createSecondaryLabel;

    contentView3 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_locationTextLabel];

    createSecondaryLabel2 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    timeTextLabelWithThisTimeZone = v4->_timeTextLabelWithThisTimeZone;
    v4->_timeTextLabelWithThisTimeZone = createSecondaryLabel2;

    contentView4 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_timeTextLabelWithThisTimeZone];

    createSecondaryLabel3 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    timeTextLabelWithResultTimeZone = v4->_timeTextLabelWithResultTimeZone;
    v4->_timeTextLabelWithResultTimeZone = createSecondaryLabel3;

    contentView5 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_timeTextLabelWithResultTimeZone];

    createSecondaryLabel4 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    inviteesTextLabel = v4->_inviteesTextLabel;
    v4->_inviteesTextLabel = createSecondaryLabel4;

    contentView6 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView6 addSubview:v4->_inviteesTextLabel];

    createSecondaryLabel5 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    foundInTextLabel = v4->_foundInTextLabel;
    v4->_foundInTextLabel = createSecondaryLabel5;

    contentView7 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [contentView7 addSubview:v4->_foundInTextLabel];

    v32[0] = v4->_locationTextLabel;
    v32[1] = v4->_timeTextLabelWithThisTimeZone;
    v32[2] = v4->_timeTextLabelWithResultTimeZone;
    v32[3] = v4->_inviteesTextLabel;
    v32[4] = v4->_foundInTextLabel;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
    secondaryLabels = v4->_secondaryLabels;
    v4->_secondaryLabels = v28;

    [(EKUIAutocompleteOccurrenceTableViewCell *)v4 setLabelFonts];
    [(EKUIAutocompleteOccurrenceTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

- (void)setLabelFonts
{
  v15 = *MEMORY[0x1E69E9840];
  primaryTextLabelFont = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  secondaryTextLabelFont = [objc_opt_class() secondaryTextLabelFont];
  [(UILabel *)self->_titleTextLabel setFont:primaryTextLabelFont];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_secondaryLabels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setFont:{secondaryTextLabelFont, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setupConstraints
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_ekUIAutocompleteOccurrenceTableViewCellConstraints)
  {
    contentView = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
    [contentView removeConstraints:self->_ekUIAutocompleteOccurrenceTableViewCellConstraints];

    ekUIAutocompleteOccurrenceTableViewCellConstraints = self->_ekUIAutocompleteOccurrenceTableViewCellConstraints;
    self->_ekUIAutocompleteOccurrenceTableViewCellConstraints = 0;
  }

  v5 = objc_opt_new();
  v6 = MEMORY[0x1E696ACD8];
  colorDotView = self->_colorDotView;
  contentView2 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  v9 = [v6 constraintWithItem:colorDotView attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:18.0];
  [(NSArray *)v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = self->_colorDotView;
  contentView3 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToColorDot];
  v14 = [v10 constraintWithItem:v11 attribute:3 relatedBy:0 toItem:contentView3 attribute:3 multiplier:1.0 constant:v13];
  [(NSArray *)v5 addObject:v14];

  v15 = MEMORY[0x1E696ACD8];
  v16 = self->_colorDotView;
  image = [(UIImageView *)v16 image];
  [image size];
  v19 = [v15 constraintWithItem:v16 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v18];
  [(NSArray *)v5 addObject:v19];

  v20 = MEMORY[0x1E696ACD8];
  v21 = self->_colorDotView;
  image2 = [(UIImageView *)v21 image];
  [image2 size];
  v23 = [v20 constraintWithItem:v21 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
  [(NSArray *)v5 addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  titleTextLabel = self->_titleTextLabel;
  contentView4 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForTopLabel];
  v28 = [v24 constraintWithItem:titleTextLabel attribute:11 relatedBy:0 toItem:contentView4 attribute:3 multiplier:1.0 constant:v27];
  [(NSArray *)v5 addObject:v28];

  [(EKUIAutocompleteOccurrenceTableViewCell *)self _addConstraintsForLabel:self->_titleTextLabel belowView:0 toArray:v5];
  v29 = self->_titleTextLabel;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = self->_secondaryLabels;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v41;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v40 + 1) + 8 * i);
        if (([v35 isHidden] & 1) == 0)
        {
          [(EKUIAutocompleteOccurrenceTableViewCell *)self _addConstraintsForLabel:v35 belowView:v29 toArray:v5];
          v36 = v35;

          v29 = v36;
        }
      }

      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v32);
  }

  contentView5 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [contentView5 addConstraints:v5];

  v38 = self->_ekUIAutocompleteOccurrenceTableViewCellConstraints;
  self->_ekUIAutocompleteOccurrenceTableViewCellConstraints = v5;
  v39 = v5;
}

- (void)_addConstraintsForLabel:(id)label belowView:(id)view toArray:(id)array
{
  labelCopy = label;
  viewCopy = view;
  arrayCopy = array;
  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:labelCopy attribute:5 relatedBy:0 toItem:self->_colorDotView attribute:6 multiplier:1.0 constant:12.0];
  [arrayCopy addObject:v10];

  v11 = MEMORY[0x1E696ACD8];
  contentView = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  contentView2 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [contentView2 layoutMargins];
  v15 = [v11 constraintWithItem:labelCopy attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:-v14];
  [arrayCopy addObject:v15];

  if (viewCopy)
  {
    v16 = MEMORY[0x1E696ACD8];
    [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForBottomLabel];
    v18 = [v16 constraintWithItem:labelCopy attribute:11 relatedBy:0 toItem:viewCopy attribute:11 multiplier:1.0 constant:v17];
    [arrayCopy addObject:v18];
  }
}

+ (id)_titleStringForResult:(id)result
{
  resultCopy = result;
  if ([resultCopy source] == 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Maybe: %@" value:&stru_1F4EF6790 table:0];
    title = [resultCopy title];
    title2 = [v4 localizedStringWithFormat:v6, title];
  }

  else
  {
    title2 = [resultCopy title];
  }

  return title2;
}

+ (id)_locationStringForResult:(id)result
{
  resultCopy = result;
  v4 = MEMORY[0x1E69669D0];
  notes = [resultCopy notes];
  v6 = [v4 deserializeConference:notes];
  conference = [v6 conference];

  joinMethods = [conference joinMethods];
  firstObject = [joinMethods firstObject];
  v10 = [firstObject URL];

  joinMethods2 = [conference joinMethods];
  firstObject2 = [joinMethods2 firstObject];
  isBroadcast = [firstObject2 isBroadcast];

  array = [MEMORY[0x1E695DF70] array];
  displayLocationWithoutPrediction = [resultCopy displayLocationWithoutPrediction];

  if (displayLocationWithoutPrediction)
  {
    displayLocationWithoutPrediction2 = [resultCopy displayLocationWithoutPrediction];
    [array addObject:displayLocationWithoutPrediction2];
  }

  notes2 = [resultCopy notes];

  if (notes2)
  {
    notes3 = [resultCopy notes];
    [array addObject:notes3];
  }

  v19 = [resultCopy URL];

  if (v19)
  {
    v20 = [resultCopy URL];
    absoluteString = [v20 absoluteString];
    [array addObject:absoluteString];
  }

  v22 = [MEMORY[0x1E6992F40] conferenceURLFromSources:array];
  v23 = MEMORY[0x1E6993408];
  displayLocation = [resultCopy displayLocation];
  displayLocationWithoutPrediction3 = [resultCopy displayLocationWithoutPrediction];
  preferredLocation = [resultCopy preferredLocation];
  if (v10)
  {
    v27 = v10;
  }

  else
  {
    v27 = v22;
  }

  v28 = [v23 locationStringForLocation:displayLocation locationWithoutPrediction:displayLocationWithoutPrediction3 preferredLocation:preferredLocation conferenceURL:v27 conferenceURLIsBroadcast:isBroadcast];

  return v28;
}

+ (id)_foundInStringForResult:(id)result pasteboardEvent:(BOOL)event
{
  eventCopy = event;
  foundInBundleID = [result foundInBundleID];
  v6 = 0;
  if (!foundInBundleID && eventCopy)
  {
    v7 = MEMORY[0x1E69DB7F0];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.clipboard"];
    v9 = [v7 textAttachmentWithImage:v8];

    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"%@ From clipboard" value:&stru_1F4EF6790 table:0];
    v14 = [v11 initWithString:v13];

    v6 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v14, v10];
  }

  return v6;
}

+ (BOOL)_shouldShowOtherTimeZoneForResult:(id)result
{
  resultCopy = result;
  if (([resultCopy allDay] & 1) != 0 || (objc_msgSend(resultCopy, "timeZone"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v7 = 0;
  }

  else
  {
    timeZone = [resultCopy timeZone];
    startDate = [resultCopy startDate];
    if (CUIKShouldShowTimezoneClarification())
    {
      v7 = 1;
    }

    else
    {
      timeZone2 = [resultCopy timeZone];
      endDate = [resultCopy endDate];
      v7 = CUIKShouldShowTimezoneClarification();
    }
  }

  return v7;
}

+ (id)_timeStringForResult:(id)result usingTimeZone:(id)zone
{
  v5 = zone != 0;
  zoneCopy = zone;
  resultCopy = result;
  v8 = +[EKStringFactory sharedInstance];
  startDate = [resultCopy startDate];
  endDate = [resultCopy endDate];
  allDay = [resultCopy allDay];

  v12 = [v8 dateStringForSuggestedEventWithStartDate:startDate endDate:endDate timeZone:zoneCopy allDay:allDay showTimeZone:v5];

  return v12;
}

+ (id)_inviteeStringForResult:(id)result
{
  v3 = MEMORY[0x1E6993400];
  attendees = [result attendees];
  v5 = [v3 inviteeStringForAttendees:attendees];

  return v5;
}

- (void)updateWithResult:(id)result
{
  resultCopy = result;
  source = [resultCopy source];
  if (source == 4)
  {
    pasteboardResults = [resultCopy pasteboardResults];
    firstObject = [pasteboardResults firstObject];

    v7 = firstObject;
  }

  else
  {
    v7 = resultCopy;
  }

  v27 = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v7, "calendarColor")}];
  if (self->_eventCalendarColor != v8)
  {
    objc_storeStrong(&self->_eventCalendarColor, v8);
    eventCalendarColor = self->_eventCalendarColor;
    font = [(UILabel *)self->_titleTextLabel font];
    v11 = ScaledCalendarColorDotImageForColor_SuggestedEvent(eventCalendarColor, font);
    [(UIImageView *)self->_colorDotView setImage:v11];
  }

  v12 = [MEMORY[0x1E69933A0] titleStringForResult:v27];
  eventTitle = self->_eventTitle;
  if (!eventTitle)
  {
    if ([v12 length])
    {
      goto LABEL_10;
    }

    eventTitle = self->_eventTitle;
  }

  if (![(NSString *)eventTitle isEqualToString:v12])
  {
LABEL_10:
    objc_storeStrong(&self->_eventTitle, v12);
    [(UILabel *)self->_titleTextLabel setText:self->_eventTitle];
  }

  v14 = [MEMORY[0x1E69933A0] locationStringForResult:v27 outGlyphNames:0];
  eventLocation = self->_eventLocation;
  if (!eventLocation)
  {
    if ([v14 length])
    {
      goto LABEL_15;
    }

    eventLocation = self->_eventLocation;
  }

  if (![(NSAttributedString *)eventLocation isEqualToAttributedString:v14])
  {
LABEL_15:
    objc_storeStrong(&self->_eventLocation, v14);
    [(UILabel *)self->_locationTextLabel setAttributedText:v14];
  }

  [(UILabel *)self->_locationTextLabel setHidden:self->_eventLocation == 0];
  v16 = [MEMORY[0x1E69933A0] timeStringForResult:v27 usingTimeZone:0];
  eventTimeWithThisTimeZone = self->_eventTimeWithThisTimeZone;
  if (!eventTimeWithThisTimeZone)
  {
    if ([v16 length])
    {
      goto LABEL_20;
    }

    eventTimeWithThisTimeZone = self->_eventTimeWithThisTimeZone;
  }

  if (![(NSString *)eventTimeWithThisTimeZone isEqualToString:v16])
  {
LABEL_20:
    objc_storeStrong(&self->_eventTimeWithThisTimeZone, v16);
    [(UILabel *)self->_timeTextLabelWithThisTimeZone setText:v16];
  }

  [(UILabel *)self->_timeTextLabelWithThisTimeZone setHidden:self->_eventTimeWithThisTimeZone == 0];
  if (![MEMORY[0x1E69933A0] shouldShowOtherTimeZoneForResult:v27])
  {
    [(UILabel *)self->_timeTextLabelWithResultTimeZone setHidden:1];
    goto LABEL_29;
  }

  v18 = MEMORY[0x1E69933A0];
  timeZone = [v27 timeZone];
  v20 = [v18 timeStringForResult:v27 usingTimeZone:timeZone];

  eventTimeWithResultTimeZone = self->_eventTimeWithResultTimeZone;
  if (eventTimeWithResultTimeZone)
  {
LABEL_23:
    if ([(NSString *)eventTimeWithResultTimeZone isEqualToString:v20])
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (![v20 length])
  {
    eventTimeWithResultTimeZone = self->_eventTimeWithResultTimeZone;
    goto LABEL_23;
  }

LABEL_27:
  objc_storeStrong(&self->_eventTimeWithResultTimeZone, v20);
  [(UILabel *)self->_timeTextLabelWithResultTimeZone setText:v20];
LABEL_28:
  [(UILabel *)self->_timeTextLabelWithResultTimeZone setHidden:self->_eventTimeWithResultTimeZone == 0];

LABEL_29:
  v22 = [MEMORY[0x1E69933A0] inviteeStringForResult:v27];
  eventInvitees = self->_eventInvitees;
  if (!eventInvitees)
  {
    if ([v22 length])
    {
      goto LABEL_33;
    }

    eventInvitees = self->_eventInvitees;
  }

  if (![(NSString *)eventInvitees isEqualToString:v22])
  {
LABEL_33:
    objc_storeStrong(&self->_eventInvitees, v22);
    [(UILabel *)self->_inviteesTextLabel setText:v22];
  }

  [(UILabel *)self->_inviteesTextLabel setHidden:self->_eventInvitees == 0];
  v24 = [objc_opt_class() _foundInStringForResult:v27 pasteboardEvent:source == 4];
  eventFoundIn = self->_eventFoundIn;
  if (!eventFoundIn)
  {
    if ([v24 length])
    {
      goto LABEL_38;
    }

    eventFoundIn = self->_eventFoundIn;
  }

  if (![(NSAttributedString *)eventFoundIn isEqualToAttributedString:v24])
  {
LABEL_38:
    objc_storeStrong(&self->_eventFoundIn, v24);
    [(UILabel *)self->_foundInTextLabel setAttributedText:self->_eventFoundIn];
  }

  [(UILabel *)self->_foundInTextLabel setHidden:self->_eventFoundIn == 0];
  [(EKUIAutocompleteOccurrenceTableViewCell *)self setupConstraints];
}

+ (double)cellHeightForResult:(id)result forWidth:(double)width
{
  resultCopy = result;
  source = [resultCopy source];
  if (source == 4)
  {
    pasteboardResults = [resultCopy pasteboardResults];
    firstObject = [pasteboardResults firstObject];

    resultCopy = firstObject;
  }

  v10 = [self primaryTextLabelFontForWidth:width];
  secondaryTextLabelFont = [self secondaryTextLabelFont];
  v12 = [MEMORY[0x1E69933A0] locationStringForResult:resultCopy outGlyphNames:0];

  v13 = [MEMORY[0x1E69933A0] timeStringForResult:resultCopy usingTimeZone:0];

  v14 = 1;
  if (v12)
  {
    v14 = 2;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12 != 0;
  }

  if ([MEMORY[0x1E69933A0] shouldShowOtherTimeZoneForResult:resultCopy])
  {
    v16 = MEMORY[0x1E69933A0];
    timeZone = [resultCopy timeZone];
    v18 = [v16 timeStringForResult:resultCopy usingTimeZone:timeZone];

    if (v18)
    {
      ++v15;
    }
  }

  v19 = source == 4;
  v20 = [MEMORY[0x1E69933A0] inviteeStringForResult:resultCopy];

  if (v20)
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = v15;
  }

  v22 = [self _foundInStringForResult:resultCopy pasteboardEvent:v19];

  if (v22)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v21;
  }

  [self verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:v10];
  v25 = v24;
  [self verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:v10];
  v27 = v25 + v26;
  [self verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:secondaryTextLabelFont];
  v29 = v27 + v23 * v28;
  [self rowSeparatorThickness];
  CalRoundToScreenScale(v29 + v30);
  v32 = v31;

  return v32;
}

@end
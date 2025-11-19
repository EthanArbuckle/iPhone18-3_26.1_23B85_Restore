@interface EKUIAutocompleteOccurrenceTableViewCell
+ (BOOL)_shouldShowOtherTimeZoneForResult:(id)a3;
+ (double)cellHeightForResult:(id)a3 forWidth:(double)a4;
+ (id)_foundInStringForResult:(id)a3 pasteboardEvent:(BOOL)a4;
+ (id)_inviteeStringForResult:(id)a3;
+ (id)_locationStringForResult:(id)a3;
+ (id)_timeStringForResult:(id)a3 usingTimeZone:(id)a4;
+ (id)_titleStringForResult:(id)a3;
+ (id)reuseIdentifier;
- (EKUIAutocompleteOccurrenceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_addConstraintsForLabel:(id)a3 belowView:(id)a4 toArray:(id)a5;
- (void)setLabelFonts;
- (void)setupConstraints;
- (void)updateWithResult:(id)a3;
@end

@implementation EKUIAutocompleteOccurrenceTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__EKUIAutocompleteOccurrenceTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EKUIAutocompleteOccurrenceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32[5] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = EKUIAutocompleteOccurrenceTableViewCell;
  v4 = [(EKUIAutocompleteSearchResultBaseCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(EKUITableViewCell *)v4 setDrawsOwnRowSeparators:1];
      v5 = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [(EKUITableViewCell *)v4 setRowSeparatorColor:v5];

      v6 = EKHalfSystemGroupedBackgroundColor();
      [(EKUIAutocompleteOccurrenceTableViewCell *)v4 setBackgroundColor:v6];

      [(EKUITableViewCell *)v4 setUsesInsetMargin:0];
    }

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    colorDotView = v4->_colorDotView;
    v4->_colorDotView = v7;

    [(UIImageView *)v4->_colorDotView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_colorDotView];

    v10 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
    titleTextLabel = v4->_titleTextLabel;
    v4->_titleTextLabel = v10;

    v12 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v12 addSubview:v4->_titleTextLabel];

    v13 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    locationTextLabel = v4->_locationTextLabel;
    v4->_locationTextLabel = v13;

    v15 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v15 addSubview:v4->_locationTextLabel];

    v16 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    timeTextLabelWithThisTimeZone = v4->_timeTextLabelWithThisTimeZone;
    v4->_timeTextLabelWithThisTimeZone = v16;

    v18 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v18 addSubview:v4->_timeTextLabelWithThisTimeZone];

    v19 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    timeTextLabelWithResultTimeZone = v4->_timeTextLabelWithResultTimeZone;
    v4->_timeTextLabelWithResultTimeZone = v19;

    v21 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v21 addSubview:v4->_timeTextLabelWithResultTimeZone];

    v22 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    inviteesTextLabel = v4->_inviteesTextLabel;
    v4->_inviteesTextLabel = v22;

    v24 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v24 addSubview:v4->_inviteesTextLabel];

    v25 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createSecondaryLabel];
    foundInTextLabel = v4->_foundInTextLabel;
    v4->_foundInTextLabel = v25;

    v27 = [(EKUIAutocompleteOccurrenceTableViewCell *)v4 contentView];
    [v27 addSubview:v4->_foundInTextLabel];

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
  v3 = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  v4 = [objc_opt_class() secondaryTextLabelFont];
  [(UILabel *)self->_titleTextLabel setFont:v3];
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

        [*(*(&v10 + 1) + 8 * v9++) setFont:{v4, v10}];
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
    v3 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
    [v3 removeConstraints:self->_ekUIAutocompleteOccurrenceTableViewCellConstraints];

    ekUIAutocompleteOccurrenceTableViewCellConstraints = self->_ekUIAutocompleteOccurrenceTableViewCellConstraints;
    self->_ekUIAutocompleteOccurrenceTableViewCellConstraints = 0;
  }

  v5 = objc_opt_new();
  v6 = MEMORY[0x1E696ACD8];
  colorDotView = self->_colorDotView;
  v8 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  v9 = [v6 constraintWithItem:colorDotView attribute:5 relatedBy:0 toItem:v8 attribute:5 multiplier:1.0 constant:18.0];
  [(NSArray *)v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = self->_colorDotView;
  v12 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToColorDot];
  v14 = [v10 constraintWithItem:v11 attribute:3 relatedBy:0 toItem:v12 attribute:3 multiplier:1.0 constant:v13];
  [(NSArray *)v5 addObject:v14];

  v15 = MEMORY[0x1E696ACD8];
  v16 = self->_colorDotView;
  v17 = [(UIImageView *)v16 image];
  [v17 size];
  v19 = [v15 constraintWithItem:v16 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v18];
  [(NSArray *)v5 addObject:v19];

  v20 = MEMORY[0x1E696ACD8];
  v21 = self->_colorDotView;
  v22 = [(UIImageView *)v21 image];
  [v22 size];
  v23 = [v20 constraintWithItem:v21 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
  [(NSArray *)v5 addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  titleTextLabel = self->_titleTextLabel;
  v26 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForTopLabel];
  v28 = [v24 constraintWithItem:titleTextLabel attribute:11 relatedBy:0 toItem:v26 attribute:3 multiplier:1.0 constant:v27];
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

  v37 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [v37 addConstraints:v5];

  v38 = self->_ekUIAutocompleteOccurrenceTableViewCellConstraints;
  self->_ekUIAutocompleteOccurrenceTableViewCellConstraints = v5;
  v39 = v5;
}

- (void)_addConstraintsForLabel:(id)a3 belowView:(id)a4 toArray:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v19 attribute:5 relatedBy:0 toItem:self->_colorDotView attribute:6 multiplier:1.0 constant:12.0];
  [v9 addObject:v10];

  v11 = MEMORY[0x1E696ACD8];
  v12 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  v13 = [(EKUIAutocompleteOccurrenceTableViewCell *)self contentView];
  [v13 layoutMargins];
  v15 = [v11 constraintWithItem:v19 attribute:6 relatedBy:0 toItem:v12 attribute:6 multiplier:1.0 constant:-v14];
  [v9 addObject:v15];

  if (v8)
  {
    v16 = MEMORY[0x1E696ACD8];
    [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForBottomLabel];
    v18 = [v16 constraintWithItem:v19 attribute:11 relatedBy:0 toItem:v8 attribute:11 multiplier:1.0 constant:v17];
    [v9 addObject:v18];
  }
}

+ (id)_titleStringForResult:(id)a3
{
  v3 = a3;
  if ([v3 source] == 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Maybe: %@" value:&stru_1F4EF6790 table:0];
    v7 = [v3 title];
    v8 = [v4 localizedStringWithFormat:v6, v7];
  }

  else
  {
    v8 = [v3 title];
  }

  return v8;
}

+ (id)_locationStringForResult:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69669D0];
  v5 = [v3 notes];
  v6 = [v4 deserializeConference:v5];
  v7 = [v6 conference];

  v8 = [v7 joinMethods];
  v9 = [v8 firstObject];
  v10 = [v9 URL];

  v11 = [v7 joinMethods];
  v12 = [v11 firstObject];
  v13 = [v12 isBroadcast];

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [v3 displayLocationWithoutPrediction];

  if (v15)
  {
    v16 = [v3 displayLocationWithoutPrediction];
    [v14 addObject:v16];
  }

  v17 = [v3 notes];

  if (v17)
  {
    v18 = [v3 notes];
    [v14 addObject:v18];
  }

  v19 = [v3 URL];

  if (v19)
  {
    v20 = [v3 URL];
    v21 = [v20 absoluteString];
    [v14 addObject:v21];
  }

  v22 = [MEMORY[0x1E6992F40] conferenceURLFromSources:v14];
  v23 = MEMORY[0x1E6993408];
  v24 = [v3 displayLocation];
  v25 = [v3 displayLocationWithoutPrediction];
  v26 = [v3 preferredLocation];
  if (v10)
  {
    v27 = v10;
  }

  else
  {
    v27 = v22;
  }

  v28 = [v23 locationStringForLocation:v24 locationWithoutPrediction:v25 preferredLocation:v26 conferenceURL:v27 conferenceURLIsBroadcast:v13];

  return v28;
}

+ (id)_foundInStringForResult:(id)a3 pasteboardEvent:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 foundInBundleID];
  v6 = 0;
  if (!v5 && v4)
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

+ (BOOL)_shouldShowOtherTimeZoneForResult:(id)a3
{
  v3 = a3;
  if (([v3 allDay] & 1) != 0 || (objc_msgSend(v3, "timeZone"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v7 = 0;
  }

  else
  {
    v5 = [v3 timeZone];
    v6 = [v3 startDate];
    if (CUIKShouldShowTimezoneClarification())
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 timeZone];
      v9 = [v3 endDate];
      v7 = CUIKShouldShowTimezoneClarification();
    }
  }

  return v7;
}

+ (id)_timeStringForResult:(id)a3 usingTimeZone:(id)a4
{
  v5 = a4 != 0;
  v6 = a4;
  v7 = a3;
  v8 = +[EKStringFactory sharedInstance];
  v9 = [v7 startDate];
  v10 = [v7 endDate];
  v11 = [v7 allDay];

  v12 = [v8 dateStringForSuggestedEventWithStartDate:v9 endDate:v10 timeZone:v6 allDay:v11 showTimeZone:v5];

  return v12;
}

+ (id)_inviteeStringForResult:(id)a3
{
  v3 = MEMORY[0x1E6993400];
  v4 = [a3 attendees];
  v5 = [v3 inviteeStringForAttendees:v4];

  return v5;
}

- (void)updateWithResult:(id)a3
{
  v26 = a3;
  v4 = [v26 source];
  if (v4 == 4)
  {
    v5 = [v26 pasteboardResults];
    v6 = [v5 firstObject];

    v7 = v6;
  }

  else
  {
    v7 = v26;
  }

  v27 = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v7, "calendarColor")}];
  if (self->_eventCalendarColor != v8)
  {
    objc_storeStrong(&self->_eventCalendarColor, v8);
    eventCalendarColor = self->_eventCalendarColor;
    v10 = [(UILabel *)self->_titleTextLabel font];
    v11 = ScaledCalendarColorDotImageForColor_SuggestedEvent(eventCalendarColor, v10);
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
  v19 = [v27 timeZone];
  v20 = [v18 timeStringForResult:v27 usingTimeZone:v19];

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
  v24 = [objc_opt_class() _foundInStringForResult:v27 pasteboardEvent:v4 == 4];
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

+ (double)cellHeightForResult:(id)a3 forWidth:(double)a4
{
  v6 = a3;
  v7 = [v6 source];
  if (v7 == 4)
  {
    v8 = [v6 pasteboardResults];
    v9 = [v8 firstObject];

    v6 = v9;
  }

  v10 = [a1 primaryTextLabelFontForWidth:a4];
  v11 = [a1 secondaryTextLabelFont];
  v12 = [MEMORY[0x1E69933A0] locationStringForResult:v6 outGlyphNames:0];

  v13 = [MEMORY[0x1E69933A0] timeStringForResult:v6 usingTimeZone:0];

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

  if ([MEMORY[0x1E69933A0] shouldShowOtherTimeZoneForResult:v6])
  {
    v16 = MEMORY[0x1E69933A0];
    v17 = [v6 timeZone];
    v18 = [v16 timeStringForResult:v6 usingTimeZone:v17];

    if (v18)
    {
      ++v15;
    }
  }

  v19 = v7 == 4;
  v20 = [MEMORY[0x1E69933A0] inviteeStringForResult:v6];

  if (v20)
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = v15;
  }

  v22 = [a1 _foundInStringForResult:v6 pasteboardEvent:v19];

  if (v22)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v21;
  }

  [a1 verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:v10];
  v25 = v24;
  [a1 verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:v10];
  v27 = v25 + v26;
  [a1 verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:v11];
  v29 = v27 + v23 * v28;
  [a1 rowSeparatorThickness];
  CalRoundToScreenScale(v29 + v30);
  v32 = v31;

  return v32;
}

@end
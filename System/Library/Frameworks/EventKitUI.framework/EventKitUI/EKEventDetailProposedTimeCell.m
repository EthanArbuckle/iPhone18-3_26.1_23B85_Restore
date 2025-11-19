@interface EKEventDetailProposedTimeCell
- (BOOL)update;
- (EKEventDetailProposedTimeCell)initWithEvent:(id)a3 andAttendee:(id)a4;
- (void)setRoundedCorners:(unint64_t)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)setShowsTopSeparator:(BOOL)a3;
@end

@implementation EKEventDetailProposedTimeCell

- (EKEventDetailProposedTimeCell)initWithEvent:(id)a3 andAttendee:(id)a4
{
  v67[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v61.receiver = self;
  v61.super_class = EKEventDetailProposedTimeCell;
  v9 = [(EKEventDetailCell *)&v61 initWithEvent:v7 editable:0 style:1];
  if (v9)
  {
    v60 = v8;
    if (MEMORY[0x1D38B98D0]())
    {
      v10 = [(EKEventDetailProposedTimeCell *)v9 contentView];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      bgView = v9->_bgView;
      v9->_bgView = v11;

      [(UIView *)v9->_bgView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v9->_bgView setPreservesSuperviewLayoutMargins:1];
      v13 = EKHalfSystemGroupedBackgroundColor();
      [(UIView *)v9->_bgView setBackgroundColor:v13];

      [(EKEventDetailProposedTimeCell *)v9 addSubview:v9->_bgView];
      v14 = MEMORY[0x1E696ACD8];
      v59 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_bgView attribute:3 relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:0.0];
      v67[0] = v59;
      v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_bgView attribute:4 relatedBy:0 toItem:v9 attribute:4 multiplier:1.0 constant:0.0];
      v67[1] = v15;
      v16 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_bgView attribute:5 relatedBy:0 toItem:v9 attribute:17 multiplier:1.0 constant:0.0];
      v67[2] = v16;
      v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_bgView attribute:6 relatedBy:0 toItem:v9 attribute:18 multiplier:1.0 constant:0.0];
      v67[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
      [v14 activateConstraints:v18];

      v10 = v9->_bgView;
    }

    v19 = v10;
    objc_storeStrong(&v9->_attendee, a4);
    objc_storeStrong(&v9->_event, a3);
    [(EKUITableViewCell *)v9 setDrawsOwnRowSeparators:1];
    [(EKUITableViewCell *)v9 setSeparatorEdges:0];
    v20 = [(EKEventDetailProposedTimeCell *)v9 setSeparatorStyle:0];
    v9->_showsTopSeparator = 1;
    if (MEMORY[0x1D38B98D0](v20))
    {
      v21 = [EKEventDetailsHighlightControl alloc];
      v22 = [(EKEventDetailsHighlightControl *)v21 initWithFrame:*MEMORY[0x1E695F058] leadingMargin:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 0.0];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = v22;
    objc_storeStrong(&v9->_control, v22);

    [(EKEventDetailsHighlightControl *)v9->_control setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKEventDetailsHighlightControl *)v9->_control setEnabled:0];
    v24 = [(EKEventDetailProposedTimeCell *)v9 contentView];
    [v24 addSubview:v9->_control];

    v25 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v26 = [(EKEventDetailProposedTimeCell *)v9 traitCollection];
    v27 = TableViewDisclosureIndicatorImage(v26);
    v28 = [v25 initWithImage:v27];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(EKEventDetailProposedTimeCell *)v9 contentView];
    [v29 addSubview:v28];

    v30 = MEMORY[0x1E696ACD8];
    v31 = 0.0;
    v32 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_control attribute:5 relatedBy:0 toItem:v19 attribute:17 multiplier:1.0 constant:0.0];
    v66[0] = v32;
    v33 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_control attribute:6 relatedBy:0 toItem:v28 attribute:5 multiplier:1.0 constant:-16.0];
    v66[1] = v33;
    v34 = MEMORY[0x1E696ACD8];
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(EKEventDetailProposedTimeCell *)v9 layoutMargins];
      v31 = -v35;
    }

    v36 = [v34 constraintWithItem:v28 attribute:6 relatedBy:0 toItem:v19 attribute:18 multiplier:1.0 constant:v31];
    v66[2] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    [v30 activateConstraints:v37];

    v38 = _NSDictionaryOfVariableBindings(&cfstr_Control.isa, v9->_control, 0);
    v39 = MEMORY[0x1D38B98D0]();
    v40 = @"V:|[_control(>=48)]|";
    if (v39)
    {
      v40 = @"V:|-(10)-[_control(>=48)]-(10)-|";
    }

    v41 = v40;
    v42 = [(EKEventDetailProposedTimeCell *)v9 contentView];
    v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v41 options:0 metrics:0 views:v38];

    [v42 addConstraints:v43];
    v44 = MEMORY[0x1E696ACD8];
    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:v28 attribute:10 relatedBy:0 toItem:v9 attribute:10 multiplier:1.0 constant:0.0];
    v65 = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    [v44 activateConstraints:v46];

    v47 = objc_opt_new();
    topSeparator = v9->_topSeparator;
    v9->_topSeparator = v47;

    [(UIView *)v9->_topSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v9->_topSeparator setBackgroundColor:v49];

    [(EKEventDetailProposedTimeCell *)v9 addSubview:v9->_topSeparator];
    v50 = _NSDictionaryOfVariableBindings(&cfstr_Topseparator.isa, v9->_topSeparator, 0);

    v63 = @"separatorHeight";
    v51 = [MEMORY[0x1E696AD98] numberWithDouble:EKUISeparatorLineThickness()];
    v64 = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

    v53 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_topSeparator(separatorHeight)]" options:0 metrics:v52 views:v50];
    [(EKEventDetailProposedTimeCell *)v9 addConstraints:v53];

    v54 = MEMORY[0x1E696ACD8];
    v55 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_topSeparator attribute:5 relatedBy:0 toItem:v19 attribute:5 multiplier:1.0 constant:0.0];
    v62[0] = v55;
    v56 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_topSeparator attribute:6 relatedBy:0 toItem:v19 attribute:6 multiplier:1.0 constant:0.0];
    v62[1] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    [v54 activateConstraints:v57];

    v8 = v60;
  }

  return v9;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = EKEventDetailProposedTimeCell;
  [(EKEventDetailProposedTimeCell *)&v3 setSeparatorStyle:0];
}

- (void)setShowsTopSeparator:(BOOL)a3
{
  if (self->_showsTopSeparator != a3)
  {
    if (a3)
    {
      [MEMORY[0x1E69DC888] separatorColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v5 = ;
    [(UIView *)self->_topSeparator setBackgroundColor:v5];

    self->_showsTopSeparator = a3;
  }
}

- (void)setRoundedCorners:(unint64_t)a3
{
  v5 = [(UIView *)self->_bgView layer];
  [v5 setMaskedCorners:a3];

  if (a3)
  {
    v6 = 5.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(UIView *)self->_bgView layer];
  [v7 setCornerRadius:v6];
}

- (BOOL)update
{
  v79[2] = *MEMORY[0x1E69E9840];
  v53 = CUIKDisplayStringForNotificationIdentity();
  [(EKEventDetailsHighlightControl *)self->_control setTitleText:?];
  v55 = *MEMORY[0x1E69DB648];
  v78[0] = *MEMORY[0x1E69DB648];
  v3 = *MEMORY[0x1E69DDD08];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v79[0] = v4;
  v5 = *MEMORY[0x1E69DB650];
  v78[1] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] labelColor];
  v79[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];

  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"Proposed a new time" value:&stru_1F4EF6790 table:0];

  v51 = v9;
  v52 = v7;
  v54 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:v7];
  event = self->_event;
  v11 = EKUIWidthSizeClassForViewHierarchy(self);
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v12 = [(EKCalendarEventInvitationNotificationAttendee *)self->_attendee proposedStartDate];
  CalDetailStringsForCalendarEvent(event, v11, &v69, &v68, &v67, &v66, &v65, &v64, &v63, &v62, v12, 0);
  v13 = v69;
  v14 = v68;
  v15 = v67;
  v16 = v66;
  v17 = v65;
  v58 = v64;
  v57 = v63;
  v56 = v62;

  v59 = v14;
  v60 = v15;
  v61 = v16;
  if (v13)
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v13];
    v76[0] = v55;
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
    v76[1] = v5;
    v77[0] = v20;
    v77[1] = v17;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
    v22 = [v18 initWithString:v19 attributes:v21];

    v16 = v61;
    v15 = v60;

    v14 = v59;
    [v54 appendAttributedString:v22];
  }

  if (v14)
  {
    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v14];
    v74[0] = v55;
    v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
    v74[1] = v5;
    v75[0] = v25;
    v75[1] = v58;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
    v27 = [v23 initWithString:v24 attributes:v26];

    v16 = v61;
    v15 = v60;

    [v54 appendAttributedString:v27];
  }

  if (v15)
  {
    v28 = objc_alloc(MEMORY[0x1E696AAB0]);
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v15];
    v72[0] = v55;
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
    v72[1] = v5;
    v73[0] = v30;
    v73[1] = v57;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v32 = [v28 initWithString:v29 attributes:v31];

    v16 = v61;
    [v54 appendAttributedString:v32];
  }

  if (v16)
  {
    v33 = objc_alloc(MEMORY[0x1E696AAB0]);
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v16];
    v70[0] = v55;
    v35 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
    v70[1] = v5;
    v71[0] = v35;
    v71[1] = v56;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
    v37 = [v33 initWithString:v34 attributes:v36];

    [v54 appendAttributedString:v37];
  }

  [(EKEventDetailsHighlightControl *)self->_control setSubtitleAttributedText:v54];
  v38 = EKUIScaleFactor();
  v39 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:20.0 scale:{20.0, v38}];
  [v39 setDrawBorder:1];
  v40 = MEMORY[0x1E6993380];
  v41 = [(EKCalendarEventInvitationNotificationAttendee *)self->_attendee proposedStartDate];
  v42 = CUIKCalendar();
  v43 = [v40 iconDateNameFormatTypeForDateBasedOnDistanceFromNow:v41 calendar:v42];

  v44 = objc_alloc(MEMORY[0x1E69A8A00]);
  v45 = [(EKCalendarEventInvitationNotificationAttendee *)self->_attendee proposedStartDate];
  v46 = CUIKCalendar();
  v47 = [v44 initWithDate:v45 calendar:v46 format:v43];

  v48 = [v47 prepareImageForDescriptor:v39];
  v49 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v48 scale:"CGImage") orientation:{0, v38}];
  if (!v49)
  {
    v49 = [MEMORY[0x1E69DCAB8] _applicationIconImageForBundleIdentifier:@"com.apple.mobilecal" format:5];
  }

  [(EKEventDetailsHighlightControl *)self->_control setIconImage:v49];
  [(EKEventDetailProposedTimeCell *)self setNeedsLayout];

  return 1;
}

@end
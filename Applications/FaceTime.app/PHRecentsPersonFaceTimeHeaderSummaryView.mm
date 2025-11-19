@interface PHRecentsPersonFaceTimeHeaderSummaryView
- (CGSize)intrinsicContentSize;
- (PHRecentsPersonFaceTimeHeaderSummaryView)initWithFrame:(CGRect)a3 recentCall:(id)a4 occurrenceDate:(id)a5 status:(unsigned int)a6 duration:(double)a7 type:(unsigned int)a8 dataUsage:(int64_t)a9;
@end

@implementation PHRecentsPersonFaceTimeHeaderSummaryView

- (PHRecentsPersonFaceTimeHeaderSummaryView)initWithFrame:(CGRect)a3 recentCall:(id)a4 occurrenceDate:(id)a5 status:(unsigned int)a6 duration:(double)a7 type:(unsigned int)a8 dataUsage:(int64_t)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v103.receiver = self;
  v103.super_class = PHRecentsPersonFaceTimeHeaderSummaryView;
  v19 = [(PHRecentsPersonFaceTimeHeaderSummaryView *)&v103 initWithFrame:x, y, width, height];
  if (!v19)
  {
    goto LABEL_52;
  }

  if ([UIApp userInterfaceStyle] == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v20 = ;
  v21 = [UILabel alloc];
  v22 = CGRectZero.origin.y;
  v23 = CGRectZero.size.width;
  v24 = CGRectZero.size.height;
  v25 = [v21 initWithFrame:{CGRectZero.origin.x, v22, v23, v24}];
  v102 = UIFontDescriptorTextStyleCaption1;
  v26 = [UIFont phPreferredBoldFontForTextStyle:?];
  [v25 setFont:v26];

  [v25 setTextColor:v20];
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addSubview:v25];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v27) = 1144750080;
  [v25 setContentCompressionResistancePriority:0 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v28];
  LODWORD(v29) = 1132068864;
  [v25 setContentHuggingPriority:0 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [v25 setContentHuggingPriority:1 forAxis:v30];
  [v25 setNumberOfLines:0];
  v31 = kCHCallTypeFaceTimeAudio;
  if (kCHCallStatusMissed == a6)
  {
    v32 = +[NSBundle mainBundle];
    if (v31 == a8)
    {
      v33 = @"MISSED_FACETIME_AUDIO";
    }

    else
    {
      v33 = @"MISSED_FACETIME";
    }

LABEL_20:
    v101 = [v32 localizedStringForKey:v33 value:&stru_10010E930 table:@"Recents"];
    v100 = 0;
LABEL_21:
    v36 = v102;
    v37 = OS_os_log_ptr;
LABEL_22:

    goto LABEL_23;
  }

  if (kCHCallStatusCancelled == a6)
  {
    v32 = +[NSBundle mainBundle];
    if (v31 == a8)
    {
      v33 = @"CANCELED_FACETIME_AUDIO";
    }

    else
    {
      v33 = @"CANCELED_FACETIME";
    }

    goto LABEL_20;
  }

  if (kCHCallStatusAnsweredElsewhere == a6)
  {
    v32 = +[NSBundle mainBundle];
    if (v31 == a8)
    {
      v33 = @"ANSWERED_ELSEWHERE_FACETIME_AUDIO";
    }

    else
    {
      v33 = @"ANSWERED_ELSEWHERE_FACETIME";
    }

    goto LABEL_20;
  }

  if (kCHCallStatusConnectedOutgoing == a6)
  {
    v34 = +[NSBundle mainBundle];
    v32 = v34;
    if (v31 == a8)
    {
      v35 = @"OUTGOING_FACETIME_AUDIO";
    }

    else
    {
      v35 = @"OUTGOING_FACETIME";
    }

    v101 = [v34 localizedStringForKey:v35 value:&stru_10010E930 table:@"Recents"];
    v100 = 1;
    goto LABEL_21;
  }

  if (kCHCallStatusConnectedIncoming == a6)
  {
    v96 = +[NSBundle mainBundle];
    v32 = v96;
    v37 = OS_os_log_ptr;
    if (v31 == a8)
    {
      v97 = @"INCOMING_FACETIME_AUDIO";
    }

    else
    {
      v97 = @"INCOMING_FACETIME";
    }

    v101 = [v96 localizedStringForKey:v97 value:&stru_10010E930 table:@"Recents"];
    v100 = 1;
    v36 = v102;
    goto LABEL_22;
  }

  v100 = 0;
  v101 = 0;
  v36 = v102;
  v37 = OS_os_log_ptr;
LABEL_23:
  [v25 setText:v101];
  [v25 sizeThatFits:{177.0, 1.79769313e308}];
  v39 = v38 + 0.0;
  v40 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v22, v23, v24}];
  v41 = [v37[69] phPreferredBoldFontForTextStyle:v36];
  [v40 setFont:v41];

  [v40 setTextColor:v20];
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addSubview:v40];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v42) = 1144750080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v43];
  LODWORD(v44) = 1132068864;
  [v40 setContentHuggingPriority:0 forAxis:v44];
  LODWORD(v45) = 1148846080;
  [v40 setContentHuggingPriority:1 forAxis:v45];
  [v40 setNumberOfLines:1];
  [v40 setText:v101];
  [v40 setAlpha:0.0];
  v98 = v18;
  v99 = v20;
  if (v100)
  {
    v46 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v22, v23, v24}];
    [v46 setTextColor:v20];
    v47 = [v37[69] phPreferredFontForTextStyle:v36];
    [v46 setFont:v47];

    [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addSubview:v46];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v48) = 1148846080;
    [v46 setContentCompressionResistancePriority:0 forAxis:v48];
    LODWORD(v49) = 1148846080;
    [v46 setContentCompressionResistancePriority:1 forAxis:v49];
    LODWORD(v50) = 1148846080;
    [v46 setContentHuggingPriority:0 forAxis:v50];
    LODWORD(v51) = 1148846080;
    [v46 setContentHuggingPriority:1 forAxis:v51];
    v52 = sub_100036F4C(a7);
    v53 = [NSByteCountFormatter stringFromByteCount:a9 countStyle:0];
    v54 = [NSString stringWithFormat:@"%@ (%@)", v52, v53];
    [v46 setText:v54];

    v18 = v98;
    [v46 sizeThatFits:{177.0, 1.79769313e308}];
    v39 = v39 + v55;
  }

  else
  {
    v46 = 0;
  }

  v56 = [v18 screenSharingType];
  if (v56)
  {
    v57 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v22, v23, v24}];
    [v57 setTextColor:v99];
    v58 = [UIFont phPreferredFontForTextStyle:v102];
    [v57 setFont:v58];

    [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addSubview:v57];
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v59) = 1148846080;
    [v57 setContentCompressionResistancePriority:0 forAxis:v59];
    LODWORD(v60) = 1148846080;
    [v57 setContentCompressionResistancePriority:1 forAxis:v60];
    LODWORD(v61) = 1148846080;
    [v57 setContentHuggingPriority:0 forAxis:v61];
    LODWORD(v62) = 1148846080;
    [v57 setContentHuggingPriority:1 forAxis:v62];
    v63 = [v18 screenSharingType];
    if ((CHCallScreenSharingTypeScreenShareOrRemoteControl & ~v63) != 0)
    {
      if (([v18 screenSharingType] & 2) != 0)
      {
        v71 = +[NSBundle mainBundle];
        v72 = [v71 localizedStringForKey:@"REMOTE_CONTROL" value:&stru_10010E930 table:@"Recents"];
        v73 = v18;
        v74 = v72;
        v75 = [v73 callerNameForDisplay];
        v76 = [NSString localizedStringWithFormat:v74, v75];
        [v57 setText:v76];
      }

      else if ([v18 screenSharingType])
      {
        v69 = +[NSBundle mainBundle];
        v70 = [v69 localizedStringForKey:@"SHARED_SCREEN" value:&stru_10010E930 table:@"Recents"];
        [v57 setText:v70];
      }
    }

    else
    {
      +[NSBundle mainBundle];
      v65 = v64 = v18;
      v66 = [v65 localizedStringForKey:@"SHARED_ALLOWED_REMOTE_CONTROL" value:&stru_10010E930 table:@"Recents"];
      v67 = [v64 callerNameForDisplay];
      v68 = [NSString localizedStringWithFormat:v66, v67];
      [v57 setText:v68];

      [v57 setNumberOfLines:2];
    }

    [v57 sizeThatFits:{177.0, 1.79769313e308}];
    v39 = v39 + v77;
  }

  else
  {
    v57 = 0;
  }

  v104[0] = @"Type";
  v104[1] = @"FakeType";
  v105[0] = v25;
  v105[1] = v40;
  v104[2] = @"Duration";
  v78 = v46;
  if (!v46)
  {
    v78 = +[NSNull null];
  }

  v105[2] = v78;
  v104[3] = @"ScreenSharingInfo";
  v79 = v57;
  if (!v57)
  {
    v79 = +[NSNull null];
  }

  v105[3] = v79;
  v80 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:4];
  if (!v57)
  {

    if (v46)
    {
      goto LABEL_41;
    }

LABEL_54:

    goto LABEL_41;
  }

  if (!v46)
  {
    goto LABEL_54;
  }

LABEL_41:
  v81 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-0@1000-[Type]-0@1000-|", 0, 0, v80);
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraints:v81];

  v82 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0@1000-[FakeType]", 0, 0, v80);
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraints:v82];

  v83 = [NSLayoutConstraint constraintWithItem:v25 attribute:3 relatedBy:0 toItem:v40 attribute:3 multiplier:1.0 constant:0.0];
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraint:v83];

  if (v56)
  {
    v84 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-0@1000-[ScreenSharingInfo]-0@1000-|", 0, 0, v80);
    [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraints:v84];

    v85 = [NSLayoutConstraint constraintWithItem:v57 attribute:3 relatedBy:0 toItem:v25 attribute:4 multiplier:1.0 constant:0.0];
    [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraint:v85];
  }

  if (v100)
  {
    v86 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-0@1000-[Duration]-0@1000-|", 0, 0, v80);
    [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraints:v86];

    if (v57)
    {
      v88 = v57;
    }

    else
    {
      v88 = v25;
    }

    LODWORD(v87) = 1148846080;
    v89 = [NSLayoutConstraint constraintWithItem:v46 attribute:3 relatedBy:0 toItem:v88 attribute:11 multiplier:1.0 constant:4.30000019 priority:v87];
    [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 addConstraint:v89];

    v90 = [UIFont phPreferredFontForTextStyle:v102];
    [v90 _bodyLeading];
    v92 = v91;
    [v25 _baselineOffsetFromBottom];
    v39 = v39 - (v93 - v92 * 0.75);
  }

  v18 = v98;
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 setTopmostLabel:v40];
  if (v46)
  {
    v94 = v46;
  }

  else
  {
    v94 = v25;
  }

  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 setBottommostLabel:v94];
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)v19 setIntrinsicContentHeight:v39];

LABEL_52:
  return v19;
}

- (CGSize)intrinsicContentSize
{
  [(PHRecentsPersonFaceTimeHeaderSummaryView *)self intrinsicContentHeight];
  v3 = v2;
  v4 = 177.0;
  result.height = v3;
  result.width = v4;
  return result;
}

@end
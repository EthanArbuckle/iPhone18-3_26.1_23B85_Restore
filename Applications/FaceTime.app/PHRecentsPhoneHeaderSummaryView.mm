@interface PHRecentsPhoneHeaderSummaryView
- (CGSize)intrinsicContentSize;
- (PHRecentsPhoneHeaderSummaryView)initWithFrame:(CGRect)frame recentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type;
@end

@implementation PHRecentsPhoneHeaderSummaryView

- (PHRecentsPhoneHeaderSummaryView)initWithFrame:(CGRect)frame recentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type
{
  v8 = *&type;
  v50.receiver = self;
  v50.super_class = PHRecentsPhoneHeaderSummaryView;
  v12 = [(PHRecentsPhoneHeaderSummaryView *)&v50 initWithFrame:call, date, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (!v12)
  {
    return v12;
  }

  if ([UIApp userInterfaceStyle] == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v13 = ;
  v14 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v19 = UIFontDescriptorTextStyleCaption1;
  v20 = [UIFont phPreferredBoldFontForTextStyle:UIFontDescriptorTextStyleCaption1];
  [v18 setFont:v20];

  [v18 setTextColor:v13];
  [(PHRecentsPhoneHeaderSummaryView *)v12 addSubview:v18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v21) = 1144750080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v22];
  LODWORD(v23) = 1132068864;
  [v18 setContentHuggingPriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v18 setContentHuggingPriority:1 forAxis:v24];
  if (kCHCallStatusMissed == status)
  {
    v25 = 0;
    v26 = @"MISSED";
    goto LABEL_15;
  }

  if (kCHCallStatusCancelled == status)
  {
    v25 = 0;
    v26 = @"CANCELLED";
    goto LABEL_15;
  }

  if (kCHCallStatusAnsweredElsewhere == status)
  {
    v25 = 0;
    v26 = @"ANSWERED_ELSEWHERE";
    goto LABEL_15;
  }

  if (kCHCallStatusConnectedOutgoing == status)
  {
    v25 = 1;
    v26 = @"OUTGOING";
    goto LABEL_15;
  }

  if (kCHCallStatusConnectedIncoming == status)
  {
    v25 = 1;
    v26 = @"INCOMING";
LABEL_15:
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:v26 value:&stru_10010E930 table:@"Recents"];

    if (v28)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v25 = 0;
LABEL_16:
  v29 = [NSString stringWithFormat:@"Unable to generate type string for recent call type %d", v8];
  NSLog(@"** TUAssertion failure: %@", v29);

  if (_TUAssertShouldCrashApplication())
  {
    v30 = +[NSAssertionHandler currentHandler];
    [v30 handleFailureInMethod:a2 object:v12 file:@"PHRecentsPhoneHeaderView.m" lineNumber:102 description:{@"Unable to generate type string for recent call type %d", v8}];
  }

  v28 = 0;
LABEL_19:
  [v18 setText:v28];
  [v18 intrinsicContentSize];
  v32 = v31;
  if ((v25 & 1) == 0)
  {
    v51 = @"Type";
    v52 = @"Duration";
    v53[0] = v18;
    goto LABEL_23;
  }

  v33 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v34 = [UIFont phPreferredFontForTextStyle:v19];
  [v33 setFont:v34];

  [v33 setTextColor:v13];
  v35 = sub_100036F4C(duration);
  [v33 setText:v35];

  [(PHRecentsPhoneHeaderSummaryView *)v12 addSubview:v33];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v36) = 1148846080;
  [v33 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [v33 setContentHuggingPriority:0 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [v33 setContentHuggingPriority:1 forAxis:v39];
  v51 = @"Type";
  v52 = @"Duration";
  v53[0] = v18;
  if (!v33)
  {
LABEL_23:
    v41 = +[NSNull null];
    v33 = 0;
    v40 = 1;
    goto LABEL_24;
  }

  v40 = 0;
  v41 = v33;
LABEL_24:
  v53[1] = v41;
  v42 = [NSDictionary dictionaryWithObjects:v53 forKeys:&v51 count:2];
  if (v40)
  {

    v43 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0@1000-[Type]-0@1000-|", 0, 0, v42);
    [(PHRecentsPhoneHeaderSummaryView *)v12 addConstraints:v43];
    v44 = @"|-0@1000-[Type]->=0@999-|";
  }

  else
  {
    v45 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0@1000-[Type]-0@1000-|", 0, 0, v42);
    [(PHRecentsPhoneHeaderSummaryView *)v12 addConstraints:v45];

    v46 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0@500-[Duration]-0@500-|", 0, 0, v42);
    [(PHRecentsPhoneHeaderSummaryView *)v12 addConstraints:v46];

    LODWORD(v47) = 1148846080;
    v43 = [NSLayoutConstraint constraintWithItem:v33 attribute:11 relatedBy:0 toItem:v18 attribute:11 multiplier:1.0 constant:0.0 priority:v47];
    [(PHRecentsPhoneHeaderSummaryView *)v12 addConstraint:v43];
    v44 = @"|-0@1000-[Type]->=0@999-[Duration]-0@1000-|";
  }

  v48 = [NSLayoutConstraint constraintsWithVisualFormat:v44 options:0 metrics:0 views:v42];
  [(PHRecentsPhoneHeaderSummaryView *)v12 addConstraints:v48];

  [(PHRecentsPhoneHeaderSummaryView *)v12 setTopmostLabel:v18];
  [(PHRecentsPhoneHeaderSummaryView *)v12 setBottommostLabel:v18];
  [(PHRecentsPhoneHeaderSummaryView *)v12 setIntrinsicContentHeight:v32 + 0.0];

  return v12;
}

- (CGSize)intrinsicContentSize
{
  [(PHRecentsPhoneHeaderSummaryView *)self intrinsicContentHeight];
  v3 = v2;
  v4 = 177.0;
  result.height = v3;
  result.width = v4;
  return result;
}

@end
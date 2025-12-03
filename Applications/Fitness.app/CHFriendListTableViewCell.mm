@interface CHFriendListTableViewCell
+ (double)measuredHeightWithDisplayMode:(int64_t)mode formattingManager:(id)manager;
- (CHFriendListTableViewCell)initWithFrame:(CGRect)frame;
- (CHFriendListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_lastBaseline;
- (void)_setupCell;
- (void)layoutSubviews;
- (void)setFriend:(id)friend snapshot:(id)snapshot formattingManager:(id)manager animated:(BOOL)animated;
@end

@implementation CHFriendListTableViewCell

- (void)_setupCell
{
  v3 = +[UIColor systemBackgroundColor];
  [(CHFriendListTableViewCell *)self setBackgroundColor:v3];

  v4 = sub_100046170();
  contentView = [(CHFriendListTableViewCell *)self contentView];
  [contentView setBackgroundColor:v4];

  v6 = sub_10013A904();
  contentView2 = [(CHFriendListTableViewCell *)self contentView];
  layer = [contentView2 layer];
  [layer setCornerRadius:v6];

  v9 = +[UIColor labelColor];
  textLabel = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel setTextColor:v9];

  textLabel2 = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel2 setLineBreakMode:4];

  v12 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  detailLineOneLabel = self->_detailLineOneLabel;
  self->_detailLineOneLabel = v16;

  contentView3 = [(CHFriendListTableViewCell *)self contentView];
  detailLineOneLabel = [(CHFriendListTableViewCell *)self detailLineOneLabel];
  [contentView3 addSubview:detailLineOneLabel];

  v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  detailLineTwoLabel = self->_detailLineTwoLabel;
  self->_detailLineTwoLabel = v20;

  contentView4 = [(CHFriendListTableViewCell *)self contentView];
  [contentView4 addSubview:self->_detailLineTwoLabel];

  v23 = [ARUIRingsView alloc];
  v24 = [ARUIRingGroup activityRingGroupForRingType:3];
  forCompanion = [v24 forCompanion];
  v26 = [v23 initWithRingGroup:forCompanion];
  ringsView = self->_ringsView;
  self->_ringsView = v26;

  [(CHFriendListTableViewCell *)self valueForSmallWidth:0.788 mediumWidth:0.923 largeWidth:1.0];
  v29 = v28;
  *&y = v28 * 52.0;
  ringGroup = [(ARUIRingsView *)self->_ringsView ringGroup];
  LODWORD(v31) = LODWORD(y);
  [ringGroup setGroupDiameter:v31];

  ringGroup2 = [(ARUIRingsView *)self->_ringsView ringGroup];
  *&y = v29 * 6.0;
  LODWORD(v33) = LODWORD(y);
  [ringGroup2 setThickness:v33];

  ringGroup3 = [(ARUIRingsView *)self->_ringsView ringGroup];
  *&v29 = v29 * 1.0;
  LODWORD(v35) = LODWORD(v29);
  [ringGroup3 setInterspacing:v35];

  v36 = +[UIColor clearColor];
  [(ARUIRingsView *)self->_ringsView setBackgroundColor:v36];

  contentView5 = [(CHFriendListTableViewCell *)self contentView];
  [contentView5 addSubview:self->_ringsView];
}

- (CHFriendListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CHFriendListTableViewCell;
  v4 = [(CHFriendListTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CHFriendListTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendListTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendListTableViewCell;
  v3 = [(CHFriendListTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendListTableViewCell *)v3 _setupCell];
  }

  return v4;
}

- (void)layoutSubviews
{
  *&recta.origin.y = self;
  *&recta.size.width = CHFriendListTableViewCell;
  [(CGFloat *)&recta.origin.y layoutSubviews];
  v3 = sub_10013A92C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  contentView = [(CHFriendListTableViewCell *)self contentView];
  [contentView frame];
  v12 = v5 + v11;
  v14 = v3 + v13;
  v16 = v15 - (v5 + v9);
  v18 = v17 - (v3 + v7);
  contentView2 = [(CHFriendListTableViewCell *)self contentView];
  [contentView2 setFrame:{v12, v14, v16, v18}];

  contentView3 = [(CHFriendListTableViewCell *)self contentView];
  [contentView3 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(CHFriendListTableViewCell *)self valueForSmallWidth:0.788 mediumWidth:0.923 largeWidth:1.0];
  v30 = 52.0 * v29 + 1.0;
  [(CHFriendListTableViewCell *)self valueForSmallWidth:17.0 mediumWidth:20.0 largeWidth:22.0];
  v32 = v31;
  v66.origin.x = v22;
  v66.origin.y = v24;
  v66.size.width = v26;
  v66.size.height = v28;
  [(ARUIRingsView *)self->_ringsView setFrame:v32, CGRectGetMidY(v66) + v30 * -0.5, v30, v30];
  [(ARUIRingsView *)self->_ringsView frame];
  v33 = v32 + CGRectGetMaxX(v67);
  textLabel = [(CHFriendListTableViewCell *)self textLabel];
  font = [textLabel font];
  [font _scaledValueForValue:28.0];
  v37 = v36;

  textLabel2 = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel2 sizeToFit];

  textLabel3 = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel3 frame];
  v41 = v40;
  v43 = v42;

  recta.origin.x = v22;
  v68.origin.x = v22;
  v68.origin.y = v24;
  v68.size.width = v26;
  v68.size.height = v28;
  v44 = CGRectGetMaxX(v68) - v33 + -4.0;
  textLabel4 = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel4 setFrame:{v33, v41, v44, v43}];

  textLabel5 = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel5 _setFirstLineBaselineFrameOriginY:v37];

  p_detailLineOneLabel = &self->_detailLineOneLabel;
  [(UILabel *)self->_detailLineOneLabel sizeToFit];
  [(UILabel *)self->_detailLineOneLabel frame];
  [(UILabel *)self->_detailLineOneLabel setFrame:v33];
  displayMode = self->_displayMode;
  if (displayMode < 4)
  {
    [(UILabel *)*p_detailLineOneLabel _setLastLineBaselineFrameOriginY:v37 + 28.0];
    v49 = v37 + 28.0 + 28.0;
LABEL_3:
    p_detailLineOneLabel = &self->_detailLineTwoLabel;
    [(UILabel *)self->_detailLineTwoLabel sizeToFit];
    [(UILabel *)self->_detailLineTwoLabel frame];
    [(UILabel *)self->_detailLineTwoLabel setFrame:v33];
LABEL_4:
    [(UILabel *)*p_detailLineOneLabel _setLastLineBaselineFrameOriginY:v49, *&recta.origin.x];
    goto LABEL_5;
  }

  if (displayMode == 4)
  {
    font2 = [(UILabel *)*p_detailLineOneLabel font];
    [font2 _scaledValueForValue:20.0];
    v60 = v59;

    v61 = v37 + v60;
    [(UILabel *)*p_detailLineOneLabel _setLastLineBaselineFrameOriginY:v61];
    v49 = v61 + 28.0;
    goto LABEL_3;
  }

  if (displayMode == 5)
  {
    v49 = v37 + 42.0;
    goto LABEL_4;
  }

LABEL_5:
  if (self->_competitionBadgeView)
  {
    [(CHFriendListTableViewCell *)self bounds];
    [(UIImageView *)self->_competitionBadgeView setFrame:CGRectGetWidth(v69) + -34.0 + -21.0, 0.0, 21.0, 21.0];
    competitionBadgeView = self->_competitionBadgeView;
    [(UIImageView *)competitionBadgeView frame];
    MidX = CGRectGetMidX(v70);
    v71.origin.x = recta.origin.x;
    v71.origin.y = v24;
    v71.size.width = v26;
    v71.size.height = v28;
    [(UIImageView *)competitionBadgeView setCenter:MidX, CGRectGetMidY(v71)];
  }

  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0, *&recta.origin.x]== 1)
  {
    textLabel6 = [(CHFriendListTableViewCell *)self textLabel];
    *&recta.size.height = textLabel6;
    detailLineOneLabel = [(CHFriendListTableViewCell *)self detailLineOneLabel];
    v63 = detailLineOneLabel;
    detailLineTwoLabel = [(CHFriendListTableViewCell *)self detailLineTwoLabel];
    v64 = detailLineTwoLabel;
    ringsView = [(CHFriendListTableViewCell *)self ringsView];
    v65 = ringsView;
    v56 = [NSArray arrayWithObjects:&recta.size.height count:4];

    if (self->_competitionBadgeView)
    {
      v57 = [v56 arrayByAddingObject:?];

      v56 = v57;
    }

    [(CHFriendListTableViewCell *)self ch_transformViewsForRightToLeftLanguages:v56];
  }
}

+ (double)measuredHeightWithDisplayMode:(int64_t)mode formattingManager:(id)manager
{
  v5 = qword_1008F9958;
  managerCopy = manager;
  if (v5 != -1)
  {
    sub_10069B5D8();
  }

  [qword_1008F9950 setDisplayMode:mode];
  [qword_1008F9950 setFriend:0 snapshot:0 formattingManager:managerCopy animated:0];

  [qword_1008F9950 layoutIfNeeded];
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 _scaledValueForValue:21.0];
  v9 = v8;
  [qword_1008F9950 _lastBaseline];
  v11 = v9 + v10;

  return v11;
}

- (void)setFriend:(id)friend snapshot:(id)snapshot formattingManager:(id)manager animated:(BOOL)animated
{
  animatedCopy = animated;
  friendCopy = friend;
  snapshotCopy = snapshot;
  managerCopy = manager;
  v12 = [ASDisplayContext displayContextWithName:kASDisplayContextCompanion];
  nameFont = [v12 nameFont];
  textLabel = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel setFont:nameFont];

  textLabel2 = [(CHFriendListTableViewCell *)self textLabel];
  font = [textLabel2 font];
  v17 = [v12 keyColorForDisplayMode:{-[CHFriendListTableViewCell displayMode](self, "displayMode")}];
  v18 = [friendCopy as_friendListNameStringWithDotPrefix:font keyColor:v17];
  textLabel3 = [(CHFriendListTableViewCell *)self textLabel];
  [textLabel3 setAttributedText:v18];

  if ([snapshotCopy hasCarriedForwardGoals])
  {
    activitySummary = 0;
  }

  else
  {
    activitySummary = [snapshotCopy activitySummary];
  }

  [(ARUIRingsView *)self->_ringsView hk_configureWithActivitySummary:activitySummary animated:animatedCopy];
  if ([snapshotCopy hasCarriedForwardGoals])
  {
    activitySummary2 = [snapshotCopy activitySummary];
    _isStandalonePhoneSummary = [activitySummary2 _isStandalonePhoneSummary];

    ringGroup = [(ARUIRingsView *)self->_ringsView ringGroup];
    [ringGroup setIsStandalonePhoneFitnessMode:_isStandalonePhoneSummary animated:animatedCopy];
  }

  competitionBadgeView = self->_competitionBadgeView;
  if (competitionBadgeView)
  {
    [(UIImageView *)competitionBadgeView removeFromSuperview];
    v25 = self->_competitionBadgeView;
    self->_competitionBadgeView = 0;
  }

  if ([friendCopy isAwaitingCompetitionResponseFromMe])
  {
    v26 = [UIImageView alloc];
    v27 = ActivitySharingBundle();
    v28 = [UIImage imageNamed:@"InvitationPendingBadge" inBundle:v27];
    v29 = [v26 initWithImage:v28];
    v30 = self->_competitionBadgeView;
    self->_competitionBadgeView = v29;

    [(CHFriendListTableViewCell *)self addSubview:self->_competitionBadgeView];
  }

  if (!activitySummary)
  {
    activitySummary = objc_opt_new();
  }

  displayMode = [(CHFriendListTableViewCell *)self displayMode];
  if (displayMode <= 2)
  {
    if (displayMode >= 2)
    {
      if (displayMode != 2)
      {
        goto LABEL_24;
      }

      v35 = [activitySummary as_exerciseProgressStringWithContext:v12];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v35];

      v33 = [activitySummary as_exerciseDurationStringWithContext:v12];
    }

    else
    {
      v32 = [activitySummary as_movePercentStringWithContext:v12 snapshot:snapshotCopy];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v32];

      v33 = [activitySummary as_moveProgressStringWithContext:v12 formattingManager:managerCopy snapshot:snapshotCopy];
    }

    goto LABEL_22;
  }

  switch(displayMode)
  {
    case 3:
      v36 = [activitySummary as_stepsStringWithContext:v12];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v36];

      v33 = [activitySummary as_distanceStringWithContext:v12 formattingManager:managerCopy];
LABEL_22:
      v37 = v33;
      [(UILabel *)self->_detailLineTwoLabel setAttributedText:v33];

      contentView = [(CHFriendListTableViewCell *)self contentView];
      v39 = contentView;
      detailLineTwoLabel = self->_detailLineTwoLabel;
LABEL_23:
      [contentView addSubview:detailLineTwoLabel];

      break;
    case 4:
      friendWorkouts = [friendCopy friendWorkouts];
      v52 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [snapshotCopy snapshotIndex]);
      v53 = [friendWorkouts objectForKeyedSubscript:v52];
      v54 = ASWorkoutNameString();
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v54];

      friendWorkouts2 = [friendCopy friendWorkouts];
      v56 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [snapshotCopy snapshotIndex]);
      v57 = [friendWorkouts2 objectForKeyedSubscript:v56];
      v58 = ASWorkoutCaloriesString();
      [(UILabel *)self->_detailLineTwoLabel setAttributedText:v58];

      contentView = [(CHFriendListTableViewCell *)self contentView];
      v39 = contentView;
      detailLineTwoLabel = self->_detailLineTwoLabel;
      goto LABEL_23;
    case 5:
      v34 = [activitySummary as_pushesStringWithContext:v12];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v34];

      [(UILabel *)self->_detailLineTwoLabel removeFromSuperview];
      break;
  }

LABEL_24:
  if (friendCopy)
  {
    if ([friendCopy isMe])
    {
      uUIDString = @"me";
    }

    else
    {
      uUID = [friendCopy UUID];
      uUIDString = [uUID UUIDString];
    }

    startDate = [snapshotCopy startDate];
    v44 = startDate;
    if (startDate)
    {
      v45 = startDate;
    }

    else
    {
      v45 = +[NSDate date];
    }

    v46 = v45;

    v47 = +[NSCalendar currentCalendar];
    v48 = +[NSDate date];
    v49 = [v47 components:16 fromDate:v46 toDate:v48 options:0];

    v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"friend_row_%ld_%@", [v49 day], uUIDString);
    [(CHFriendListTableViewCell *)self setAccessibilityIdentifier:v50];
  }

  [(CHFriendListTableViewCell *)self setNeedsLayout];
}

- (double)_lastBaseline
{
  p_detailLineTwoLabel = &self->_detailLineTwoLabel;
  superview = [(UILabel *)self->_detailLineTwoLabel superview];

  if (!superview)
  {
    p_detailLineTwoLabel = &self->_detailLineOneLabel;
  }

  v5 = *p_detailLineTwoLabel;

  [(UILabel *)v5 _lastLineBaselineFrameOriginY];
  return result;
}

@end
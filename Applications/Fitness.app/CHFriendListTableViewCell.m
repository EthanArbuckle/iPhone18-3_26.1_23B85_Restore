@interface CHFriendListTableViewCell
+ (double)measuredHeightWithDisplayMode:(int64_t)a3 formattingManager:(id)a4;
- (CHFriendListTableViewCell)initWithFrame:(CGRect)a3;
- (CHFriendListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_lastBaseline;
- (void)_setupCell;
- (void)layoutSubviews;
- (void)setFriend:(id)a3 snapshot:(id)a4 formattingManager:(id)a5 animated:(BOOL)a6;
@end

@implementation CHFriendListTableViewCell

- (void)_setupCell
{
  v3 = +[UIColor systemBackgroundColor];
  [(CHFriendListTableViewCell *)self setBackgroundColor:v3];

  v4 = sub_100046170();
  v5 = [(CHFriendListTableViewCell *)self contentView];
  [v5 setBackgroundColor:v4];

  v6 = sub_10013A904();
  v7 = [(CHFriendListTableViewCell *)self contentView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v6];

  v9 = +[UIColor labelColor];
  v10 = [(CHFriendListTableViewCell *)self textLabel];
  [v10 setTextColor:v9];

  v11 = [(CHFriendListTableViewCell *)self textLabel];
  [v11 setLineBreakMode:4];

  v12 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  detailLineOneLabel = self->_detailLineOneLabel;
  self->_detailLineOneLabel = v16;

  v18 = [(CHFriendListTableViewCell *)self contentView];
  v19 = [(CHFriendListTableViewCell *)self detailLineOneLabel];
  [v18 addSubview:v19];

  v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  detailLineTwoLabel = self->_detailLineTwoLabel;
  self->_detailLineTwoLabel = v20;

  v22 = [(CHFriendListTableViewCell *)self contentView];
  [v22 addSubview:self->_detailLineTwoLabel];

  v23 = [ARUIRingsView alloc];
  v24 = [ARUIRingGroup activityRingGroupForRingType:3];
  v25 = [v24 forCompanion];
  v26 = [v23 initWithRingGroup:v25];
  ringsView = self->_ringsView;
  self->_ringsView = v26;

  [(CHFriendListTableViewCell *)self valueForSmallWidth:0.788 mediumWidth:0.923 largeWidth:1.0];
  v29 = v28;
  *&y = v28 * 52.0;
  v30 = [(ARUIRingsView *)self->_ringsView ringGroup];
  LODWORD(v31) = LODWORD(y);
  [v30 setGroupDiameter:v31];

  v32 = [(ARUIRingsView *)self->_ringsView ringGroup];
  *&y = v29 * 6.0;
  LODWORD(v33) = LODWORD(y);
  [v32 setThickness:v33];

  v34 = [(ARUIRingsView *)self->_ringsView ringGroup];
  *&v29 = v29 * 1.0;
  LODWORD(v35) = LODWORD(v29);
  [v34 setInterspacing:v35];

  v36 = +[UIColor clearColor];
  [(ARUIRingsView *)self->_ringsView setBackgroundColor:v36];

  v37 = [(CHFriendListTableViewCell *)self contentView];
  [v37 addSubview:self->_ringsView];
}

- (CHFriendListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CHFriendListTableViewCell;
  v4 = [(CHFriendListTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CHFriendListTableViewCell *)v4 _setupCell];
  }

  return v5;
}

- (CHFriendListTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHFriendListTableViewCell;
  v3 = [(CHFriendListTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v10 = [(CHFriendListTableViewCell *)self contentView];
  [v10 frame];
  v12 = v5 + v11;
  v14 = v3 + v13;
  v16 = v15 - (v5 + v9);
  v18 = v17 - (v3 + v7);
  v19 = [(CHFriendListTableViewCell *)self contentView];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(CHFriendListTableViewCell *)self contentView];
  [v20 bounds];
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
  v34 = [(CHFriendListTableViewCell *)self textLabel];
  v35 = [v34 font];
  [v35 _scaledValueForValue:28.0];
  v37 = v36;

  v38 = [(CHFriendListTableViewCell *)self textLabel];
  [v38 sizeToFit];

  v39 = [(CHFriendListTableViewCell *)self textLabel];
  [v39 frame];
  v41 = v40;
  v43 = v42;

  recta.origin.x = v22;
  v68.origin.x = v22;
  v68.origin.y = v24;
  v68.size.width = v26;
  v68.size.height = v28;
  v44 = CGRectGetMaxX(v68) - v33 + -4.0;
  v45 = [(CHFriendListTableViewCell *)self textLabel];
  [v45 setFrame:{v33, v41, v44, v43}];

  v46 = [(CHFriendListTableViewCell *)self textLabel];
  [v46 _setFirstLineBaselineFrameOriginY:v37];

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
    v58 = [(UILabel *)*p_detailLineOneLabel font];
    [v58 _scaledValueForValue:20.0];
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
    v52 = [(CHFriendListTableViewCell *)self textLabel];
    *&recta.size.height = v52;
    v53 = [(CHFriendListTableViewCell *)self detailLineOneLabel];
    v63 = v53;
    v54 = [(CHFriendListTableViewCell *)self detailLineTwoLabel];
    v64 = v54;
    v55 = [(CHFriendListTableViewCell *)self ringsView];
    v65 = v55;
    v56 = [NSArray arrayWithObjects:&recta.size.height count:4];

    if (self->_competitionBadgeView)
    {
      v57 = [v56 arrayByAddingObject:?];

      v56 = v57;
    }

    [(CHFriendListTableViewCell *)self ch_transformViewsForRightToLeftLanguages:v56];
  }
}

+ (double)measuredHeightWithDisplayMode:(int64_t)a3 formattingManager:(id)a4
{
  v5 = qword_1008F9958;
  v6 = a4;
  if (v5 != -1)
  {
    sub_10069B5D8();
  }

  [qword_1008F9950 setDisplayMode:a3];
  [qword_1008F9950 setFriend:0 snapshot:0 formattingManager:v6 animated:0];

  [qword_1008F9950 layoutIfNeeded];
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 _scaledValueForValue:21.0];
  v9 = v8;
  [qword_1008F9950 _lastBaseline];
  v11 = v9 + v10;

  return v11;
}

- (void)setFriend:(id)a3 snapshot:(id)a4 formattingManager:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v59 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [ASDisplayContext displayContextWithName:kASDisplayContextCompanion];
  v13 = [v12 nameFont];
  v14 = [(CHFriendListTableViewCell *)self textLabel];
  [v14 setFont:v13];

  v15 = [(CHFriendListTableViewCell *)self textLabel];
  v16 = [v15 font];
  v17 = [v12 keyColorForDisplayMode:{-[CHFriendListTableViewCell displayMode](self, "displayMode")}];
  v18 = [v59 as_friendListNameStringWithDotPrefix:v16 keyColor:v17];
  v19 = [(CHFriendListTableViewCell *)self textLabel];
  [v19 setAttributedText:v18];

  if ([v10 hasCarriedForwardGoals])
  {
    v20 = 0;
  }

  else
  {
    v20 = [v10 activitySummary];
  }

  [(ARUIRingsView *)self->_ringsView hk_configureWithActivitySummary:v20 animated:v6];
  if ([v10 hasCarriedForwardGoals])
  {
    v21 = [v10 activitySummary];
    v22 = [v21 _isStandalonePhoneSummary];

    v23 = [(ARUIRingsView *)self->_ringsView ringGroup];
    [v23 setIsStandalonePhoneFitnessMode:v22 animated:v6];
  }

  competitionBadgeView = self->_competitionBadgeView;
  if (competitionBadgeView)
  {
    [(UIImageView *)competitionBadgeView removeFromSuperview];
    v25 = self->_competitionBadgeView;
    self->_competitionBadgeView = 0;
  }

  if ([v59 isAwaitingCompetitionResponseFromMe])
  {
    v26 = [UIImageView alloc];
    v27 = ActivitySharingBundle();
    v28 = [UIImage imageNamed:@"InvitationPendingBadge" inBundle:v27];
    v29 = [v26 initWithImage:v28];
    v30 = self->_competitionBadgeView;
    self->_competitionBadgeView = v29;

    [(CHFriendListTableViewCell *)self addSubview:self->_competitionBadgeView];
  }

  if (!v20)
  {
    v20 = objc_opt_new();
  }

  v31 = [(CHFriendListTableViewCell *)self displayMode];
  if (v31 <= 2)
  {
    if (v31 >= 2)
    {
      if (v31 != 2)
      {
        goto LABEL_24;
      }

      v35 = [v20 as_exerciseProgressStringWithContext:v12];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v35];

      v33 = [v20 as_exerciseDurationStringWithContext:v12];
    }

    else
    {
      v32 = [v20 as_movePercentStringWithContext:v12 snapshot:v10];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v32];

      v33 = [v20 as_moveProgressStringWithContext:v12 formattingManager:v11 snapshot:v10];
    }

    goto LABEL_22;
  }

  switch(v31)
  {
    case 3:
      v36 = [v20 as_stepsStringWithContext:v12];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v36];

      v33 = [v20 as_distanceStringWithContext:v12 formattingManager:v11];
LABEL_22:
      v37 = v33;
      [(UILabel *)self->_detailLineTwoLabel setAttributedText:v33];

      v38 = [(CHFriendListTableViewCell *)self contentView];
      v39 = v38;
      detailLineTwoLabel = self->_detailLineTwoLabel;
LABEL_23:
      [v38 addSubview:detailLineTwoLabel];

      break;
    case 4:
      v51 = [v59 friendWorkouts];
      v52 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 snapshotIndex]);
      v53 = [v51 objectForKeyedSubscript:v52];
      v54 = ASWorkoutNameString();
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v54];

      v55 = [v59 friendWorkouts];
      v56 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 snapshotIndex]);
      v57 = [v55 objectForKeyedSubscript:v56];
      v58 = ASWorkoutCaloriesString();
      [(UILabel *)self->_detailLineTwoLabel setAttributedText:v58];

      v38 = [(CHFriendListTableViewCell *)self contentView];
      v39 = v38;
      detailLineTwoLabel = self->_detailLineTwoLabel;
      goto LABEL_23;
    case 5:
      v34 = [v20 as_pushesStringWithContext:v12];
      [(UILabel *)self->_detailLineOneLabel setAttributedText:v34];

      [(UILabel *)self->_detailLineTwoLabel removeFromSuperview];
      break;
  }

LABEL_24:
  if (v59)
  {
    if ([v59 isMe])
    {
      v41 = @"me";
    }

    else
    {
      v42 = [v59 UUID];
      v41 = [v42 UUIDString];
    }

    v43 = [v10 startDate];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = +[NSDate date];
    }

    v46 = v45;

    v47 = +[NSCalendar currentCalendar];
    v48 = +[NSDate date];
    v49 = [v47 components:16 fromDate:v46 toDate:v48 options:0];

    v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"friend_row_%ld_%@", [v49 day], v41);
    [(CHFriendListTableViewCell *)self setAccessibilityIdentifier:v50];
  }

  [(CHFriendListTableViewCell *)self setNeedsLayout];
}

- (double)_lastBaseline
{
  p_detailLineTwoLabel = &self->_detailLineTwoLabel;
  v4 = [(UILabel *)self->_detailLineTwoLabel superview];

  if (!v4)
  {
    p_detailLineTwoLabel = &self->_detailLineOneLabel;
  }

  v5 = *p_detailLineTwoLabel;

  [(UILabel *)v5 _lastLineBaselineFrameOriginY];
  return result;
}

@end
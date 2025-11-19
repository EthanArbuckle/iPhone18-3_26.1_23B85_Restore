@interface CHFriendListCompetitionTableViewCell
- (CHFriendListCompetitionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_sectionWidth;
- (void)layoutSubviews;
- (void)setFriend:(id)a3;
@end

@implementation CHFriendListCompetitionTableViewCell

- (CHFriendListCompetitionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27.receiver = self;
  v27.super_class = CHFriendListCompetitionTableViewCell;
  v4 = [(CHFriendListCompetitionTableViewCell *)&v27 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CHFriendListCompetitionTableViewCell *)v4 setBackgroundColor:v5];

    v6 = sub_100046170();
    v7 = [(CHFriendListCompetitionTableViewCell *)v4 contentView];
    [v7 setBackgroundColor:v6];

    v8 = sub_10013A904();
    v9 = [(CHFriendListCompetitionTableViewCell *)v4 contentView];
    v10 = [v9 layer];
    [v10 setCornerRadius:v8];

    v11 = +[ASCompetitionScoreViewConfiguration companionFriendListConfiguration];
    configuration = v4->_configuration;
    v4->_configuration = v11;

    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setSideMargin:16.0];
    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setMinimumMiddleMargin:0.0];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setNameFont:v13];

    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setPrimaryScoreFont:v14];

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setPrimaryScoreUnitFont:v15];

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setSecondaryScoreFont:v16];

    [(CHFriendListCompetitionTableViewCell *)v4 _sectionWidth];
    [(ASCompetitionScoreViewConfiguration *)v4->_configuration setOpponentScoreViewWidth:v17 + 10.0];
    v18 = [[ASCompetitionScoreView alloc] initWithConfiguration:v4->_configuration];
    scoreView = v4->_scoreView;
    v4->_scoreView = v18;

    v20 = [(CHFriendListCompetitionTableViewCell *)v4 contentView];
    [v20 addSubview:v4->_scoreView];

    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    daysRemainingLabel = v4->_daysRemainingLabel;
    v4->_daysRemainingLabel = v21;

    v23 = +[UIColor as_lightCompetitionGold];
    [(UILabel *)v4->_daysRemainingLabel setTextColor:v23];

    v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v4->_daysRemainingLabel setFont:v24];

    [(UILabel *)v4->_daysRemainingLabel setNumberOfLines:0];
    [(UILabel *)v4->_daysRemainingLabel setLineBreakMode:0];
    [(UILabel *)v4->_daysRemainingLabel setTextAlignment:2];
    v25 = [(CHFriendListCompetitionTableViewCell *)v4 contentView];
    [v25 addSubview:v4->_daysRemainingLabel];
  }

  return v4;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CHFriendListCompetitionTableViewCell;
  [(CHFriendListCompetitionTableViewCell *)&v27 layoutSubviews];
  v3 = sub_10013A92C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(CHFriendListCompetitionTableViewCell *)self contentView];
  [v10 frame];
  v12 = v5 + v11;
  v14 = v3 + v13;
  v16 = v15 - (v5 + v9);
  v18 = v17 - (v3 + v7);
  v19 = [(CHFriendListCompetitionTableViewCell *)self contentView];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(CHFriendListCompetitionTableViewCell *)self contentView];
  [v20 bounds];
  Width = CGRectGetWidth(v29);

  v22 = [(CHFriendListCompetitionTableViewCell *)self contentView];
  [v22 bounds];
  Height = CGRectGetHeight(v30);

  [(ASCompetitionScoreView *)self->_scoreView setFrame:0.0, 0.0, Width, Height];
  [(CHFriendListCompetitionTableViewCell *)self _sectionWidth];
  [(UILabel *)self->_daysRemainingLabel sizeThatFits:?];
  [(UILabel *)self->_daysRemainingLabel setFrame:Width + -16.0 - v24, (Height - v25) * 0.5, v24, v25];
  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0]== 1)
  {
    daysRemainingLabel = self->_daysRemainingLabel;
    v26 = [NSArray arrayWithObjects:&daysRemainingLabel count:1];
    [(CHFriendListCompetitionTableViewCell *)self ch_transformViewsForRightToLeftLanguages:v26];
  }
}

- (double)_sectionWidth
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;

  sub_10013A92C();
  return (v4 - v5 + -32.0 - v6) / 3.0;
}

- (void)setFriend:(id)a3
{
  scoreView = self->_scoreView;
  v5 = a3;
  v6 = [v5 currentCompetition];
  [(ASCompetitionScoreView *)scoreView setFriend:v5 competition:v6];

  v7 = [v5 as_competitionStageString];
  [(UILabel *)self->_daysRemainingLabel setText:v7];

  v10 = [v5 UUID];

  v8 = [v10 UUIDString];
  v9 = [NSString stringWithFormat:@"friend_competition_row_%@", v8];
  [(CHFriendListCompetitionTableViewCell *)self setAccessibilityIdentifier:v9];
}

@end
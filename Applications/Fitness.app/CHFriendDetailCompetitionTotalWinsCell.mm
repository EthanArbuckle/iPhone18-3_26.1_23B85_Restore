@interface CHFriendDetailCompetitionTotalWinsCell
- (CHFriendDetailCompetitionTotalWinsCell)initWithFrame:(CGRect)frame;
- (void)_updateConfigurationForStandalone:(BOOL)standalone;
- (void)layoutSubviews;
- (void)setFriend:(id)friend competition:(id)competition;
@end

@implementation CHFriendDetailCompetitionTotalWinsCell

- (CHFriendDetailCompetitionTotalWinsCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendDetailCompetitionTotalWinsCell;
  v3 = [(CHFriendDetailCompetitionTotalWinsCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendDetailCompetitionTotalWinsCell *)v3 _updateConfigurationForStandalone:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CHFriendDetailCompetitionTotalWinsCell;
  [(CHFriendDetailCompetitionTotalWinsCell *)&v3 layoutSubviews];
  [(CHFriendDetailCompetitionTotalWinsCell *)self bounds];
  [(ASCompetitionScoreView *)self->_scoreView setFrame:?];
}

- (void)setFriend:(id)friend competition:(id)competition
{
  friendCopy = friend;
  competitionCopy = competition;
  if (self->_standalone != ([friendCopy isCompetitionActive] ^ 1))
  {
    [(CHFriendDetailCompetitionTotalWinsCell *)self _updateConfigurationForStandalone:?];
  }

  [(ASCompetitionScoreView *)self->_scoreView setFriend:friendCopy competition:competitionCopy];
}

- (void)_updateConfigurationForStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  self->_standalone = standalone;
  [(ASCompetitionScoreView *)self->_scoreView removeFromSuperview];
  if (standaloneCopy)
  {
    +[ASCompetitionScoreViewConfiguration companionTotalWinsStandaloneFriendDetailConfiguration];
  }

  else
  {
    +[ASCompetitionScoreViewConfiguration companionTotalWinsFriendDetailConfiguration];
  }
  v5 = ;
  configuration = self->_configuration;
  self->_configuration = v5;

  v7 = [[ASCompetitionScoreView alloc] initWithConfiguration:self->_configuration];
  scoreView = self->_scoreView;
  self->_scoreView = v7;

  v9 = self->_scoreView;

  [(CHFriendDetailCompetitionTotalWinsCell *)self addSubview:v9];
}

@end
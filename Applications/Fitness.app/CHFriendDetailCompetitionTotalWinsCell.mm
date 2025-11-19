@interface CHFriendDetailCompetitionTotalWinsCell
- (CHFriendDetailCompetitionTotalWinsCell)initWithFrame:(CGRect)a3;
- (void)_updateConfigurationForStandalone:(BOOL)a3;
- (void)layoutSubviews;
- (void)setFriend:(id)a3 competition:(id)a4;
@end

@implementation CHFriendDetailCompetitionTotalWinsCell

- (CHFriendDetailCompetitionTotalWinsCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHFriendDetailCompetitionTotalWinsCell;
  v3 = [(CHFriendDetailCompetitionTotalWinsCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setFriend:(id)a3 competition:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_standalone != ([v7 isCompetitionActive] ^ 1))
  {
    [(CHFriendDetailCompetitionTotalWinsCell *)self _updateConfigurationForStandalone:?];
  }

  [(ASCompetitionScoreView *)self->_scoreView setFriend:v7 competition:v6];
}

- (void)_updateConfigurationForStandalone:(BOOL)a3
{
  v3 = a3;
  self->_standalone = a3;
  [(ASCompetitionScoreView *)self->_scoreView removeFromSuperview];
  if (v3)
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
@interface CHFriendDetailCompetitionScoreCell
- (CHFriendDetailCompetitionScoreCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CHFriendDetailCompetitionScoreCell

- (CHFriendDetailCompetitionScoreCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CHFriendDetailCompetitionScoreCell;
  v3 = [(CHFriendDetailCompetitionScoreCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[ASCompetitionScoreViewConfiguration companionTotalScoreFriendDetailConfiguration];
    configuration = v3->_configuration;
    v3->_configuration = v4;

    v6 = [[ASCompetitionScoreView alloc] initWithConfiguration:v3->_configuration];
    scoreView = v3->_scoreView;
    v3->_scoreView = v6;

    [(CHFriendDetailCompetitionScoreCell *)v3 addSubview:v3->_scoreView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CHFriendDetailCompetitionScoreCell;
  [(CHFriendDetailCompetitionScoreCell *)&v3 layoutSubviews];
  [(CHFriendDetailCompetitionScoreCell *)self bounds];
  [(ASCompetitionScoreView *)self->_scoreView setFrame:?];
}

@end
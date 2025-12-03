@interface CHFriendDetailCompetitionScoreCell
- (CHFriendDetailCompetitionScoreCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CHFriendDetailCompetitionScoreCell

- (CHFriendDetailCompetitionScoreCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CHFriendDetailCompetitionScoreCell;
  v3 = [(CHFriendDetailCompetitionScoreCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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